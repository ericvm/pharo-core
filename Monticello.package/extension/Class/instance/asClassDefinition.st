asClassDefinition
	"we use a very ugly hack to encode complex slots as string with MC... later MC shoudl model Slots directly"
	self usesSpecialVariables ifFalse: [  
	 ^MCClassDefinition
		name: self name
		superclassName: self superclass name
		traitComposition: self traitCompositionString
		classTraitComposition: self class traitCompositionString
		category: self category 
		instVarNames: self instVarNames
		classVarNames: self classVarNames
		poolDictionaryNames: self sharedPoolNames
		classInstVarNames: self class instVarNames
		type: self typeOfClass
		comment: self organization classComment	asString
		commentStamp: self organization commentStamp].
	
	^MCClassDefinition
		name: self name
		superclassName: self superclass name
		traitComposition: self traitCompositionString
		classTraitComposition: self class traitCompositionString
		category: self category 
		instVarNames: (self slots collect: #definitionString)
		classVarNames: (self classVariables collect: #definitionString)
		poolDictionaryNames: self sharedPoolNames
		classInstVarNames: (self class slots collect: #definitionString)
		type: self typeOfClass
		comment: self organization classComment	 asString
		commentStamp: self organization commentStamp.
	



