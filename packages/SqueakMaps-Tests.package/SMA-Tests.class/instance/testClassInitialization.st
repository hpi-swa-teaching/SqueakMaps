opening
testClassInitialization
	SMAWindow initialize.
	self assert: true equals: (TheWorldMenu registry includes: {'Squeak Maps Window'. {SMAWindow . #open}})