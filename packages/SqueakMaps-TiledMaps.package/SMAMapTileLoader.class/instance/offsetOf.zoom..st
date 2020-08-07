as yet unclassified
offsetOf: aPosition zoom: aZoom
	
	| scaledPosition |
	
	scaledPosition := aPosition * (1 bitShift: aZoom).
	
	^ scaledPosition - scaledPosition truncated