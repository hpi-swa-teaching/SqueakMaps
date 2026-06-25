building
campusDetailTypeFor: aCampusDetailTarget

	(aCampusDetailTarget respondsTo: #detailType)
		ifTrue: [^ aCampusDetailTarget detailType].

	^ ''