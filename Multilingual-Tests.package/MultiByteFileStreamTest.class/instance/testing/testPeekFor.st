testPeekFor
	| testString filename  |
	testString := '������������'.
	filename := 'test-file-' , 99 atRandom printString , '.txt'.
	MultiByteFileStream 
		forceNewFileNamed: filename
		do: [ :stream | 
			stream
				nextPutAll: testString;
				crlf ].
	[  
	filename asFileReference
		readStreamDo: [ :stream |
			self assert: (stream peekFor: $� ).
			self assert: (stream peekFor: $� ).
			self deny: (stream peekFor: $a). "If peekFor fails, it doesn't advance position"
			self assert: (stream peekFor: $�)
		] ]
	ensure: [ filename asFileReference ensureDelete ] 