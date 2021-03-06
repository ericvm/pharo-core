testNextPutAllStartingAtToStream
	| encoder |
	encoder := ZnUTF8Encoder new.
	#( 'ccc' '���' 'c' '�' '�c' 'c�' '��' ) do: [ :each |
		#( ( '' '' ) ( 'ABC' '' ) ( '' 'ABC' ) ( 'ABC' 'ABC' ) 
			( 'A�C' '' ) ( '' 'A�C' ) ( 'A�C' 'A�C' ) 
			( 'AXC' 'A�C' ) ( 'A�C' 'AXC' ) 
			( 'PRE' '�' ) ) do: [ :extra |
				| prefix postfix string bytes |
				prefix := extra first.
				postfix := extra last.
				string := prefix, each, postfix.
				bytes := ByteArray streamContents: [ :out |
					encoder next: each size putAll: string startingAt: prefix size + 1 toStream: out ].
				self assert: (encoder decodeBytes: bytes) equals: each ] ]