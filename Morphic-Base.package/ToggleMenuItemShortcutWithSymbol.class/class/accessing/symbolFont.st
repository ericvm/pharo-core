symbolFont
	^ SymbolFont ifNil: [ SymbolFont := self createSymbolFont ]