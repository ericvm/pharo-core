gtInspectorGoferReferencesIn: composite
    <gtInspectorPresentationOrder: 40>
      
	composite list
   	 	title: 'Gofer';
   	 	display: [ self goferReferences sorted ];
	   format: [:each | each name  asString ];
		icon: [ Smalltalk ui icons packageIcon ];
		act: [:com | com selection ifNotNilDo: [:each |
				Gofer new 
					repository: com entity;
					version: each name;
					load 				 
		 ]] 
		icon: Smalltalk ui icons downIcon entitled: 'Load'
			