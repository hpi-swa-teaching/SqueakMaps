geoguessr
endRound
	"Hook: warn-or-end-round handling (acceptance criterion 2) attaches here and at the
	window-close seam once rounds carry gameplay state. roundActive tracks that state."

	self
		roundActive: false;
		currentScreen: #start.
	self changed: #buildOverlayChildren
