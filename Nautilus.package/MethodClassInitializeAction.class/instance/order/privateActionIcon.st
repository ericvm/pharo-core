privateActionIcon

	 ^IconicButton new 
			target: self browser;
			actionSelector: #runClassInitializeMethod:;
		 	arguments: { method };
			labelGraphic: (Smalltalk ui icons scriptManagerIcon) ;
			color: Color transparent;
			extent: self iconExtent;
			helpText: '(Re)initialize class';
			borderWidth: 0 