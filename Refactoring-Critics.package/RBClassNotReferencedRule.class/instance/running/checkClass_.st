checkClass: aClass 
	(self basicCheck: aClass) ifTrue: [
		result
			addClass: aClass;
			addClass: aClass theMetaClass ]