reporting
writeSummaryFor: result on: stream
	| probes covered percent testResult runError targetClasses |
	probes := result at: #probes.
	covered := probes count: [:probe | probe hasRun].
	percent := self percentageOf: covered total: probes size.
	testResult := result at: #testResult.
	runError := result at: #runError.
	targetClasses := result at: #targetClasses.

	stream
		nextPutAll: (result at: #name); cr;
		nextPutAll: 'Coverage: ';
		print: covered;
		nextPutAll: ' / ';
		print: probes size;
		nextPutAll: ' Methoden (';
		nextPutAll: (percent printShowingDecimalPlaces: 2);
		nextPutAll: '%)'; cr;
		nextPutAll: 'Zielklassen: ';
		print: targetClasses size; cr;
		nextPutAll: 'Testdauer: ';
		print: (result at: #durationMilliseconds);
		nextPutAll: ' ms'; cr.

	(result at: #missingTests) isEmpty ifFalse: [
		stream nextPutAll: 'Fehlende Testklassen: '; print: (result at: #missingTests); cr].

	runError
		ifNotNil: [stream nextPutAll: 'Abbruchfehler: '; nextPutAll: runError printString; cr]
		ifNil: [
			testResult
				ifNil: [stream nextPutAll: 'Testergebnis: nicht verfuegbar'; cr]
				ifNotNil: [
					stream nextPutAll: 'Testergebnis: '; nextPutAll: testResult printString; cr.
					testResult failures isEmpty ifFalse: [
						stream nextPutAll: 'Fehlschlaege: '; print: testResult failures; cr].
					testResult errors isEmpty ifFalse: [
						stream nextPutAll: 'Fehler: '; print: testResult errors; cr]]].

	self writeClassTableFor: result on: stream
