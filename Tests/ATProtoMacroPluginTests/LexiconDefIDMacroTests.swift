import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest

@testable import ATProtoMacroPlugin

final class LexiconDefIDMacroTests: XCTestCase {
    private let macros = ["LexiconDefID": LexiconDefIDMacro.self]

    func testExpansion() {
        assertMacroExpansion(
            """
            let valid = #LexiconDefID("com.example.foo")
            """,
            expandedSource: """
            let valid = try! LexiconDefinitionID(string: "com.example.foo")
            """,
            macros: macros
        )
    }

    func testExpansionWithNonStaticString() {
        assertMacroExpansion(
            #"""
            let invalid = #LexiconDefID("com.example.\(name)")
            """#,
            expandedSource: #"""
            let invalid = #LexiconDefID("com.example.\(name)")
            """#,
            diagnostics: [
                DiagnosticSpec(message: #"#LexiconDefID requires a static string literal"#, line: 1, column: 15, severity: .error),
            ],
            macros: macros
        )
    }

    func testExpansionWithInvalidID() {
        assertMacroExpansion(
            """
            let invalid = #LexiconDefID("invalid.")
            """,
            expandedSource: """
            let invalid = #LexiconDefID("invalid.")
            """,
            diagnostics: [
                DiagnosticSpec(message: #"Malformed ID string: "invalid.""#, line: 1, column: 15, severity: .error),
            ],
            macros: macros
        )
    }
}
