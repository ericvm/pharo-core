bytecodeGeneratorClass
	^ bytecodeGeneratorClass ifNil: [ bytecodeGeneratorClass := IRBytecodeGenerator ]