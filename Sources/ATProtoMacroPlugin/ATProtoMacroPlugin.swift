import SwiftCompilerPlugin
import SwiftSyntaxMacros

@main
struct ATProtoMacroPlugin: CompilerPlugin {
    let providingMacros: [any Macro.Type] = [
        LexiconDefIDMacro.self,
    ]
}
