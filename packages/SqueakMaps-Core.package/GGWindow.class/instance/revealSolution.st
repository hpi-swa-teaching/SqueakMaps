guessing
revealSolution

	self mapConfigurator clear.
	self currentGuess isPresent ifTrue: [self mapConfigurator displayLocation: self guessLocation].
	self mapConfigurator displayLocation: self solutionLocation
