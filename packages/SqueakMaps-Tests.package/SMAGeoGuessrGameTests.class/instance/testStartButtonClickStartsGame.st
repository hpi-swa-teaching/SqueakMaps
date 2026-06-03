testing
testStartButtonClickStartsGame

	| startButton |

	self wantsToTest: self model build.
	startButton := self subject findByLabel: 'Spiel starten'.
	startButton click.
	self assert: #playing equals: self model currentScreen.
	self assert: self model roundActive
