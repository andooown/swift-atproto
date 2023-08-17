import Foundation

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
