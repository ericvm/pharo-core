redMorphTab
	
	^ (LockableTab
		label: 'Red Morph'
		icon: Smalltalk ui icons smallBackIcon
		morph:
			(Morph new
				color: Color red;
				yourself))
		closeable: false;
		yourself