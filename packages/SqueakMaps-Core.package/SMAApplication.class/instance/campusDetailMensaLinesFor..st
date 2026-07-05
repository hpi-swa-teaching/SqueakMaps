building
campusDetailMensaLinesFor: aCampusDetailTarget

	| mensaDate |

	(aCampusDetailTarget isKindOf: SMAPOICanteen)
		ifFalse: [^ #()].
	mensaDate := self nextMensaMenuDate.
	^ self
		campusDetailLinesForMensaMenu: (self mensaMenuAPI
			menuForDate: mensaDate
			canteenId: aCampusDetailTarget openMensaCanteenId)
		onDate: mensaDate