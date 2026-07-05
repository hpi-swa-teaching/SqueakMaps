building
routeToSelectedDetailTarget

	| target |

	target := self selectedCampusDetailTarget.
	target ifNil: [^ self].
	(self routeToDestinationTarget: target) ifFalse: [
		^ self inform: 'Für diese Auswahl konnte keine Route gefunden werden.']