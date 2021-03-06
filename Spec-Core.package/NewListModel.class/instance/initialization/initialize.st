initialize
	"Initialization code for NewListModel"

	super initialize.
	
	items := #() asValueHolder.
	deSelectOnReclick := false asValueHolder.
	draggedItemAtIndex := [ :index | self getRawItemAt: index ] asValueHolder.
	displayBlock := [ :object | object asStringOrText ] asValueHolder.
	headerHeight := 0 asValueHolder.
	headerTitle := nil asValueHolder.
	menuTitle := nil asValueHolder.
	menuHolder := nil asValueHolder.
	handlesDoubleClick := false asValueHolder.
	doubleClick := [  ] asValueHolder.
	iconHolder := [ nil ] asValueHolder.
	iconMaxSize := nil asValueHolder.
	keyStrokeAction := [ false ] asValueHolder.
	isMultipleSelection := false asValueHolder.
	unselectOnChange := false asValueHolder.
	sortingBlock := self defaultSortingBlock asValueHolder.
	filteringBlock := self defaultFilteringBlock asValueHolder.
	allowToSelect := true asValueHolder.
	listAnnouncer := Announcer new.
	headerClicked := [] asValueHolder.
	selectedIndex := 0 asValueHolder.
	selectedItem := nil asValueHolder.
	selectedIndexes := #() asValueHolder.
	selectedItems := #() asValueHolder.
	separatorBlock := [ false ] asValueHolder.
	
	self registerEvents