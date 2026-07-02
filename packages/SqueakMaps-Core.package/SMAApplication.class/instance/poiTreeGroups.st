building
poiTreeGroups

	| groups ordered |
	groups := Dictionary new.
	self tiledMapMorph pointsOfInterest do: [:poi | | groupName node |
		groupName := self poiGroupName: poi.
		node := groups
			at: groupName
			ifAbsentPut: [SMAListNode new label: groupName; yourself].
		node addChild: (self treeNodeForPOI: poi)].
	ordered := OrderedCollection new.
	#('Drucker' 'Trinkwasserspender' 'Büro' 'Speisen') do: [:type |
		(groups includesKey: type) ifTrue: [
			ordered add: (groups removeKey: type)]].
	groups keys asSortedCollection do: [:type |
		ordered add: (groups at: type)].
	^ ordered