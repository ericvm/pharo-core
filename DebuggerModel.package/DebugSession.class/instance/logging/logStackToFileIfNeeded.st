logStackToFileIfNeeded
	self class logDebuggerStackToFile ifFalse: [ ^self ].
	
	[Smalltalk logError: name inContext: interruptedContext  ] ifError: [ ]