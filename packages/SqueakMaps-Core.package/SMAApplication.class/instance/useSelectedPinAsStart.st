pin management
useSelectedPinAsStart

	| startIndex |

	self selectedPin ifNil: [^ self].
	self selectedStartPinRouteTarget: self selectedPin.
	startIndex := self
		routeSelectionIndexForTarget: self selectedStartPinRouteTarget
		in: self routeTargets.
	startIndex = 0 ifTrue: [
		^ self inform: 'Diese Adresse kann nicht als Start verwendet werden.'].
	self applyStartRouteTargetIndex: startIndex.
	self destinationRouteSelectionIndex: 0.
	self destinationSearchInput: ''