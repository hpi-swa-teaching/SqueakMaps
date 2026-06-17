testing
testNextLevelPops

	| manager before |

	manager := GGLevelManager new.
	before := manager remainingCount.
	self assert: manager nextLevel notNil.
	self assert: manager remainingCount equals: before - 1
