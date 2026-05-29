hop management
moveHopDown

	| selectedIndex n |

	selectedIndex := self selectedHopIndex.
	n := self hopLocations size.

	(selectedIndex = n) ifTrue: [
		^ self
	].

	self hopLocations
		swap: selectedIndex
		with: selectedIndex + 1.

	self changed: #hopLocations.
	self changed: #hopLocationLabels.
	self selectedHopIndex: selectedIndex + 1.