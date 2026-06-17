game flow
reset

	state := #start.
	levelManager := GGLevelManager new.
	currentLevel := nil.
	roundResults := OrderedCollection new.
	totalScore := 0
