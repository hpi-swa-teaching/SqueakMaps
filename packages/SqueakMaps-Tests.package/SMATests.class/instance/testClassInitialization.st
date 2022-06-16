opening
testClassInitialization

	SMAWindow initialize.
	self assert: true equals: (TheWorldMenu registry includes: {'Squeak Maps'. {SMAWindow . #open}})