allInstVarNames

	^self allInstanceVariables collect:[ :ivar| ivar name ]