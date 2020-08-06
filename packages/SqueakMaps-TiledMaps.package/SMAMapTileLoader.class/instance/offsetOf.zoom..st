as yet unclassified
offsetOf: aPosition zoom: aZoom
	
	| scaledPosition loc |
	
	scaledPosition := aPosition * (1 bitShift: aZoom).
	loc := scaledPosition truncated.
	^ scaledPosition - loc