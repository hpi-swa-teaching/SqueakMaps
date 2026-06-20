as yet unclassified
newAt: aPoint labeled: aLabel withColor: aColor
	
	^ (self new
		worldPos: aPoint;
		label: aLabel;
		color: aColor;
		yourself)