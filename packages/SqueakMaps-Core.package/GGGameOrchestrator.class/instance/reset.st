game flow
reset

	state := #start.
	levelManager := GGLevelManager new.
	currentLevel := nil.
	roundResults := OrderedCollection new.
	players := { GGPlayer label: 'Player 0'. GGPlayer label: 'Player 1' }.
	currentPlayerIndex := 0.
	isMultiplayer := false.
	
