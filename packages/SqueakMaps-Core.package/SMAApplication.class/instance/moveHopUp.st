building
moveHopUp

	| selectedIndex |

	selectedIndex := self selectedHopIndex.

	(selectedIndex <= 1) ifTrue: [
		^ self
	].

	self hopLocations
		swap: selectedIndex
		with: selectedIndex - 1.

	self changed: #hopLocations.
	self changed: #hopLocationLabels.
	self selectedHopIndex: selectedIndex - 1.