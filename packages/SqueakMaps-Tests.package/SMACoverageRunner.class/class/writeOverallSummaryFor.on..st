reporting
writeOverallSummaryFor: results on: stream
	| total covered percent |
	total := results inject: 0 into: [:sum :result | sum + (result at: #probes) size].
	covered := results inject: 0 into: [:sum :result |
		sum + ((result at: #probes) count: [:probe | probe hasRun])].
	percent := self percentageOf: covered total: total.
	stream
		nextPutAll: 'Gesamt'; cr;
		nextPutAll: 'Coverage: ';
		print: covered;
		nextPutAll: ' / ';
		print: total;
		nextPutAll: ' Methoden (';
		nextPutAll: (percent printShowingDecimalPlaces: 2);
		nextPutAll: '%)'; cr
