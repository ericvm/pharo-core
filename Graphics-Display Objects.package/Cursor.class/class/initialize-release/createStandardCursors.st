createStandardCursors 
	self 
		initOrigin;
		initRightArrow;
		initMenu;
		initCorner;
		initRead;
		initWrite;
		initWait.
	BlankCursor := Cursor new.
	self 
		initXeq;
		initSquare;
		initNormalWithMask;
		initCrossHair;
		initMarker;
		initUp;
		initDown;
		initMove;
		initBottomLeft;
		initBottomRight;
		initResizeLeft;
		initResizeTop;
		initResizeTopLeft;
		initResizeTopRight;
		initTopLeft;
		initTopRight;
		initTarget;
		initOverEditableText;
		makeCursorsWithMask.