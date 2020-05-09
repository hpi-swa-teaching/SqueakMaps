as yet unclassified
pointFromJson: j
	^ (j at: 'lng') @ (j at: 'lat')
