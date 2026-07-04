private
drawFloorChangeLabelsFor: aRouteLine on: aCanvas

	| segments |
	segments := aRouteLine segments.
	1 to: segments size - 1 do: [:index |
		| currentSegment nextSegment currentVisible nextVisible label |
		currentSegment := segments at: index.
		nextSegment := segments at: index + 1.
		currentVisible := self routeSegmentIsVisible: currentSegment third
			ifTrue: [true]
			ifFalse: [false].
		nextVisible := self routeSegmentIsVisible: nextSegment third
			ifTrue: [true]
			ifFalse: [false].
		(currentVisible and: [nextVisible not]) ifTrue: [
			label := self floorChangeLabelForLevels: nextSegment third.
			self drawFloorChangeLabel: label at: currentSegment second on: aCanvas]]