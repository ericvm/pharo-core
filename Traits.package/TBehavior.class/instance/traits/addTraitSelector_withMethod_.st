addTraitSelector: aSymbol withMethod: aCompiledMethod
	"Add aMethod with selector aSymbol to my
	methodDict. aMethod must not be defined locally."

	| source method |
	[(self includesLocalSelector: aSymbol) not] assert.
	self ensureLocalSelectors.
		
	source := aCompiledMethod getSourceReplacingSelectorWith: aSymbol.
	method  := aCompiledMethod copy.
	method selector: aSymbol.
	method methodClass: self.
		
	method putSource: source
		withPreamble: [:f | f cr; nextPut: $!; nextChunkPut: 'Trait method'; cr].
	
	self isTrait ifFalse: [ method properties at: #traitSource put: aCompiledMethod].
	
	self basicAddSelector: aSymbol withMethod: method