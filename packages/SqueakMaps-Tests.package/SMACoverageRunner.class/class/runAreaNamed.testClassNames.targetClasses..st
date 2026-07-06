running - private
runAreaNamed: areaName testClassNames: testClassNames targetClasses: targetClasses
	| missingTests suite references probes testResult runError startTime duration |
	missingTests := OrderedCollection new.
	suite := self suiteForClassNames: testClassNames missing: missingTests.
	references := self methodReferencesFor: targetClasses.
	probes := references collect: [:reference | TestCoverage on: reference].
	testResult := nil.
	runError := nil.
	startTime := Time millisecondClockValue.

	[
		probes do: [:probe | probe install].
		[testResult := suite run]
			on: Error
			do: [:error | runError := error]
	] ensure: [
		probes do: [:probe | probe uninstall]].

	duration := Time millisecondClockValue - startTime.
	^ Dictionary new
		at: #name put: areaName;
		at: #testClassNames put: testClassNames;
		at: #missingTests put: missingTests;
		at: #targetClasses put: targetClasses;
		at: #probes put: probes;
		at: #testResult put: testResult;
		at: #runError put: runError;
		at: #durationMilliseconds put: duration;
		yourself
