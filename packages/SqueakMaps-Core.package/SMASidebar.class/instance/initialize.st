initialization
initialize

	super initialize.
	self 
		color: Color transparent;
		visible: true;
		layoutPolicy: TableLayout new;
		cellGap: 2;
		layoutInset: 0;
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		listCentering: #topLeft;
		cellPositioning: #topLeft.
	self initializeSubelements.