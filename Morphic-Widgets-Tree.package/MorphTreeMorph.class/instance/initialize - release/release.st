release
	lineColorBlock := nil.
	columnResizers := nil.
	preferedPaneColor := nil.
	expandedToggleImage := nil.
	notExpandedToggleImage := nil.
	columns 
		ifNotNil: [
			columns do: [:col | col release]. 
			columns := nil].
	listManager 
		ifNotNil: [
			listManager release.
			listManager := nil].
	super release.