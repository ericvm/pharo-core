testOptimizedBlockWrittenAfterClosedOverCase2
	| ast scopes |
	ast := (OCOpalExamples>>#optimizedBlockWrittenAfterClosedOverCase2) parseTree.
	self nameAnalysisNoClosureIn: OCOpalExamples for: ast.
	self assert: ast scope isMethodScope.
	self assert: ast scope tempVars size = 1.
	
	self deny: (ast scope lookupVar: 'index') isEscaping. 
	self assert: (ast scope lookupVar: 'index') definingScope= ast scope.
	
	scopes := (OCScopesCollector new visitNode: ast) scopes.
	
	self assert: ( scopes third lookupVar: 'temp') isEscapingWrite.
	self assert: ( scopes third lookupVar: 'temp') isEscaping.

