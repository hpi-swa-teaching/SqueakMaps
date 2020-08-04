as yet unclassified
resultZoom: r
	| g bounds |
	g := r at: 'geometry'.
	bounds := g at: 'viewport' ifAbsent: [g at: 'bounds'].
	bounds ifNil: [^ 19 "Pointlike, so fairly high zoom"].
	^ self zoomForRectangle: ((self pointFromJson: (bounds at: 'southwest')) corner: (self pointFromJson: (bounds at: 'northeast')))