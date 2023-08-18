import Foundation
import Parsing

extension JSONDecoder {
    static let forXRPC: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .custom { decoder in
            let container = try decoder.singleValueContainer()
            let string = try container.decode(String.self)

            if let date = ISO8601DateFormatter.withFractionalSeconds.date(from: string) {
                return date
            }
            if let date = ISO8601DateFormatter.withTimeZone.date(from: string) {
                return date
            }
            if let date = try DateParsing().parse(string) {
                return date
            }

            throw DecodingError.dataCorruptedError(
                in: container,
                debugDescription: "Invalid date string: \(string)"
            )
        }

        return decoder
    }()
}

private extension ISO8601DateFormatter {
    convenience init(options: Options) {
        self.init()
        formatOptions = options
    }

    static let withFractionalSeconds = ISO8601DateFormatter(options: [.withInternetDateTime, .withFractionalSeconds])
    static let withTimeZone = ISO8601DateFormatter(options: [.withInternetDateTime, .withTimeZone])
}

private struct DateParsing: Parser {
    var body: some Parser<Substring.UTF8View, Date?> {
        Parse(Date.init(year:month:day:hour:minute:second:nanosecond:timeZone:)) {
            Digits(4)
            "-".utf8
            Digits(2).filter { (1...12).contains($0) }
            "-".utf8
            Digits(2).filter { (1...31).contains($0) }
            "T".utf8
            Digits(2).filter { $0 < 24 }
            ":".utf8
            Digits(2).filter { $0 < 60 }
            ":".utf8
            Digits(2).filter { $0 <= 60 }
            Parse {
                ".".utf8
                Prefix(1...9, while: (UInt8(ascii: "0")...UInt8(ascii: "9")).contains)
                    .compactMap { n in Int(Substring(n)).map { $0 * Int(pow(10, 9 - Double(n.count))) } }
            }
            .replaceError(with: 0)
            OneOf {
                "Z".utf8.map { 0 }
                Parse {
                    OneOf {
                        "+".utf8.map { 1 }
                        "-".utf8.map { -1 }
                    }
                    Digits(2).filter { $0 < 24 }.map { $0 * 60 * 60 }
                    ":".utf8
                    Digits(2).filter { $0 < 60 }.map { $0 * 60 }
                }
                .map { $0 * ($1 + $2) }
            }
            .replaceError(with: 0)
        }
    }
}

private extension Date {
    init?(
        year: Int,
        month: Int,
        day: Int,
        hour: Int,
        minute: Int,
        second: Int,
        nanosecond: Int,
        timeZone: Int
    ) {
        let component = DateComponents(
            calendar: Calendar(identifier: .gregorian),
            timeZone: TimeZone(secondsFromGMT: 0),
            year: year,
            month: month,
            day: day,
            hour: hour,
            minute: minute,
            second: second,
            nanosecond: nanosecond
        )

        guard let date = component.date else {
            return nil
        }

        self = date.addingTimeInterval(TimeInterval(-timeZone))
    }
}
