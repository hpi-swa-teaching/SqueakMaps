building
buttonLabeled: aLabel action: aBlock

	^ PluggableButtonMorph new
		label: aLabel font: self geoGuessrButtonFont;
		target: aBlock;
		actionSelector: #value;
		yourself
