building
buildingKeyForRoom: aRoom

	| ref dashIndex |
	ref := aRoom ref.
	ref ifNil: [^ nil].
	dashIndex := ref indexOf: $-.
	dashIndex = 0 ifTrue: [^ nil].
	^ ref copyFrom: 1 to: dashIndex - 1