building
buildStartScreenChildren: aBuilder

	| children |

	children := OrderedCollection with: (self buildStartTitle: aBuilder).
	self startMenuEntries do: [:anEntry |
		children add: (self buildStartMenuButton: anEntry with: aBuilder)].
	^ children
