afterClass: aClassOrClassName selector: aSelector arguments: aCollection
	<gtExamplePragma>
	<description: 'A method (implemented by a gtExampleProvider) to be performed after this example has run ~ similar but not identical to teardown of sunit'>
	
	after := (self methodForClass: aClassOrClassName selector: aSelector)
		arguments: aCollection;
		yourself