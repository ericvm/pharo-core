sortedVariablesOfType: aSymbol
	"version for complex vars, { definition . definition }"
	^(((self selectVariables: aSymbol) asSortedCollection collect: [:each | Smalltalk evaluate: each])) asArray.
		