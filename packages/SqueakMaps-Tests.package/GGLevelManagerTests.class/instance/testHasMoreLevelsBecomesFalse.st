testing
testHasMoreLevelsBecomesFalse

	| manager |

	manager := GGLevelManager new.
	[manager hasMoreLevels] whileTrue: [manager nextLevel].
	self deny: manager hasMoreLevels
