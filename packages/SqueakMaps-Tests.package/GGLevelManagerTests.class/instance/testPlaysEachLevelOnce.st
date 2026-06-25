testing
testPlaysEachLevelOnce

	| manager played |

	manager := GGLevelManager new.
	played := OrderedCollection new.
	[manager hasMoreLevels] whileTrue: [played add: manager nextLevel].
	self assert: played size equals: manager totalCount.
	self assert: played asSet size equals: played size
