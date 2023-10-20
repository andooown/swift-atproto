import ATProtoCore

@freestanding(expression)
public macro LexiconDefID(_ stringLiteral: String) -> LexiconDefinitionID = #externalMacro(
    module: "ATProtoMacroPlugin",
    type: "LexiconDefIDMacro"
)
