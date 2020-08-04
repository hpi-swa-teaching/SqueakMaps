as yet unclassified
offsetOf: pos zoom: zoom
	| scaledPos loc |
	scaledPos := pos * (1 bitShift: zoom).
	loc := scaledPos truncated.
	^ scaledPos - loc