opening
testClassInitialization

	SMAApplication initialize.
	self assert: true equals: (TheWorldMenu registry includes: { 'Squeak Maps'. { SMAApplication . #open } })