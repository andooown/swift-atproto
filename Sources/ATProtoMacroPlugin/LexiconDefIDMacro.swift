import ATProtoCore
import Foundation
import SwiftSyntax
import SwiftSyntaxMacros

public enum LexiconDefIDMacro: ExpressionMacro {
    private enum MacroError: Error, CustomStringConvertible {
        case noStaticStringLiteral
        case malformedID(ExprSyntax)

        var description: String {
            switch self {
            case .noStaticStringLiteral:
                return "#LexiconDefID requires a static string literal"

            case .malformedID(let value):
                return "Malformed ID string: \(value)"
            }
        }
    }

    public static func expansion(
        of node: some FreestandingMacroExpansionSyntax,
        in context: some MacroExpansionContext
    ) throws -> ExprSyntax {
        guard let argument = node.argumentList.first?.expression,
              let segments = argument.as(StringLiteralExprSyntax.self)?.segments,
              segments.count == 1,
              case .stringSegment(let literalSegment)? = segments.first
        else {
            throw MacroError.noStaticStringLiteral
        }

        do {
            _ = try LexiconDefinitionID(string: literalSegment.content.text)
        } catch {
            throw MacroError.malformedID(argument)
        }

        return "try! LexiconDefinitionID(string: \(argument))"
    }
}
