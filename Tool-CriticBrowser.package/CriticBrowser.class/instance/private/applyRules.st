applyRules
	| packageCount nbPackage process rules |	
	rules := rulesModel roots first. 
	rules resetResult.
	nbPackage := rbEnvironment packages size.
	packageCount := 0.
	self updateTree.
	process := [  
		rbEnvironment packages do: [ :package |
			| windowTitle |
			packageCount := packageCount + 1.
			windowTitle := String streamContents: [ :s | 
				s 
					<< 'run rules on '
					<< package packageName
					<< ' ('
					<< packageCount asString
					<< '/'
					<< nbPackage asString
					<< ')' ].				
			self setTitle: windowTitle.
			checker runRules: rules onPackage: package withoutTestCase: removeTestCase ].
			checker rule: rules.
			self setTitle: 'Critics Browser'.
			cache packages: rbEnvironment.
			cache initCache. 
			self updateTree.
			self registerToAnnouncements ] newProcess.
	
	process name: 'SmallLint'.
	process resume.
