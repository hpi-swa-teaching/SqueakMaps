building
campusDetailMensaLinesFor: aCampusDetailTarget

	(aCampusDetailTarget isKindOf: SMAPOICanteen)
		ifFalse: [^ #()].
	^ self campusDetailLinesForMensaMenu:
		(self mensaMenuAPI
			menuForDate: Date today
			canteenId: aCampusDetailTarget openMensaCanteenId)