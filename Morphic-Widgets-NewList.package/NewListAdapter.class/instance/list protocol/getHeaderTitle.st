getHeaderTitle

	 ^ self getHeaderTitleSelector 
		ifNil: [ '' ]
		ifNotNil: [:s | self model perform: s ]