writeFieldAt: byteOffset with: valueName
	^ String streamContents:[ :stream|
		stream 
			nextPutAll:'handle replaceFrom: ';
			print: byteOffset;
			nextPutAll: ' to: ';
			print: byteOffset + self externalTypeSize - 1;
			nextPutAll: ' with: anObject startingAt: 1' ].