items 
	^ items ifNil: [ items := self calculateItems ]