reporting
writeClassTableFor: result on: stream
	| probes behaviors |
	probes := result at: #probes.
	behaviors := (probes collect: [:probe | probe reference actualClass]) asSet
		asSortedCollection: [:left :right | left name <= right name].
	stream nextPutAll: 'Klassenuebersicht:'; cr.
	behaviors do: [:behavior |
		| classProbes covered percent |
		classProbes := probes select: [:probe | probe reference actualClass == behavior].
		covered := classProbes count: [:probe | probe hasRun].
		percent := self percentageOf: covered total: classProbes size.
		stream
			nextPutAll: '  ';
			nextPutAll: behavior name;
			nextPutAll: ': ';
			print: covered;
			nextPutAll: '/';
			print: classProbes size;
			nextPutAll: ' (';
			nextPutAll: (percent printShowingDecimalPlaces: 2);
			nextPutAll: '%)'; cr]
