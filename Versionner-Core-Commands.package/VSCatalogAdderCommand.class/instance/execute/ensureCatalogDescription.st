ensureCatalogDescription

	^ self hasCatalogDescription 
		ifFalse: [ self defineCatalogDescriptionTemplate ]