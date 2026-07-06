testing
testDirectoryModelGroupsAndTogglesPOIFilter

	| map printer water model roots printerGroup pois |

	map := SMADecoratedMapMorph new.
	printer := SMAPOIPrinter new.
	water := SMAPOIDrinkingWater new.
	map pointsOfInterest: { water. printer } asOrderedCollection.
	model := SMADirectoryModel new
		source: map;
		yourself.
	roots := model groupedRoots.
	printerGroup := roots first.
	pois := model toggleFilterFor: printerGroup.

	self assert: printerGroup label equals: 'Drucker'.
	self assert: pois size equals: 1.
	self assert: pois anyOne equals: printer.
	self assert: model activeCategoryFilterLabel equals: 'Drucker'
