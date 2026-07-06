building
groupedRoots

	| roots gebaeude |
	roots := OrderedCollection new.
	gebaeude := self buildingTreeGroup.
	gebaeude hasChildren ifTrue: [roots add: gebaeude].
	self poiTreeGroups do: [:group |
		group hasChildren ifTrue: [roots add: group]].
	^ roots
