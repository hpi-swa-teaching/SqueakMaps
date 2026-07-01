game flow
advanceRound

	self isEvaluating ifFalse: [^ self].
	isMultiplayer ifTrue: [
		state := #playing.
	    self currentPlayer ifTrue:[
	        levelManager hasMoreLevels 
	            ifTrue: [currentLevel := levelManager nextLevel]
	            ifFalse: [state := #ended]].
	    currentPlayer := currentPlayer not]
	ifFalse: [
	    levelManager hasMoreLevels 
	        ifTrue: [currentLevel := levelManager nextLevel. state := #playing]
	        ifFalse: [state := #ended]].