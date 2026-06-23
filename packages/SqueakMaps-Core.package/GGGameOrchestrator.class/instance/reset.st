game flow
reset

	state := #start.
	levelManager := GGLevelManager new.
	currentLevel := nil.
	roundResults := OrderedCollection new.
	totalScorep0 := 0.
	totalScorep1 := 0.
	
