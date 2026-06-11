building
campusDetailTitleFor: aCampusDetailTarget

	(aCampusDetailTarget respondsTo: #detailTitle)
		ifTrue: [^ aCampusDetailTarget detailTitle].

	^ aCampusDetailTarget printString