setIndexesFromModel

	| indexes |
	
	indexes := self getIndexesSelector 
				ifNil: [ ^ self ]
				ifNotNil: [:s | self model perform: s ].
	
	self list adoptIndexes: indexes.