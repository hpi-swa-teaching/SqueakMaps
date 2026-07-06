testing
testConcreteRouteTargetsOfDifferentPlaceTypesDoNotEqualOrCrash

	| targetPoint targetBuilding |
	targetPoint := SMAConcreteRouteTarget on: SMAPoint new label: 'Point'.
	targetBuilding := SMAConcreteRouteTarget on: SMABuilding new label: 'Building'.

	self deny: targetPoint = targetBuilding.
	self deny: targetBuilding = targetPoint

