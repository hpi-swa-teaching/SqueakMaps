testing
testRemainingLevelsAccessor
	| manager levels |
	manager := GGLevelManager new.
	levels := OrderedCollection with: GGLevel new.
	manager remainingLevels: levels.
	self assert: manager remainingLevels == levels.
	manager totalLevelCount: 1.
	self assert: manager totalLevelCount equals: 1.
	self assert: manager remainingCount equals: 1
