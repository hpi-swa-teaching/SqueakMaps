submorphs - components
newRow
	^ BorderedMorph new
		color: Color transparent;
		borderWidth: 0;
		cellGap: 2;
		layoutInset: 2;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		listCentering: #topLeft;
		cellPositioning: #topLeft;
		"on: #mouseEnter send: #paneTransition: to: self;
		on: #mouseLeave send: #paneTransition: to: self;"
		yourself.