as yet unclassified
quadkeyForX: tileX y: tileY zoom: zoom
	| mask headX headY tailX tailY digit |
	zoom = 0 ifTrue: [^ ''].
	mask := (1 bitShift: zoom) - 1.
	tailX := tileX bitAnd: mask.
	tailY := tileY bitAnd: mask.
	headX := (tileX bitShift: 1- zoom) bitAnd: 1.
	headY := (tileY bitShift: 1 - zoom) bitAnd: 1.
	digit := #('0' '1' '2' '3') at: (((headY bitShift: 1) bitOr: headX) + 1).
	^ digit, (self quadkeyForX: tailX y: tailY zoom: zoom - 1)