guessing
revealSolution

	self mapConfigurator clear.
	self currentGuess ifNotNil: [self mapConfigurator displayLocation: self guessLocation].
	self mapConfigurator displayLocation: self solutionLocation
