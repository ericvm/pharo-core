testNonExistantName
	self shouldFail: (RBAbstractClassVariableRefactoring 
			variable: #Foo
			class: RBBasicLintRuleTest)