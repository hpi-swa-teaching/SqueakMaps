private
quadkeyForX: aTileX y: aTileY zoom: aZoom

	| mask headX headY tailX tailY digit |
	
	aZoom = 0 ifTrue: [^ ''].
	mask := (1 bitShift: aZoom) - 1.
	tailX := aTileX bitAnd: mask.
	tailY := aTileY bitAnd: mask.
	headX := (aTileX bitShift: 1- aZoom) bitAnd: 1.
	headY := (aTileY bitShift: 1 - aZoom) bitAnd: 1.
	digit := #('0' '1' '2' '3') at: (((headY bitShift: 1) bitOr: headX) + 1).
	
	^ digit, (self quadkeyForX: tailX y: tailY zoom: aZoom - 1)