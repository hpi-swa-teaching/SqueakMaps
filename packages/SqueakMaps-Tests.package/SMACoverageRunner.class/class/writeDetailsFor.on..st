reporting
writeDetailsFor: result on: stream
	| probes behaviors |
	self writeSummaryFor: result on: stream.
	stream cr; nextPutAll: 'Nicht ausgefuehrte Methoden:'; cr.
	probes := result at: #probes.
	behaviors := (probes collect: [:probe | probe reference actualClass]) asSet
		asSortedCollection: [:left :right | left name <= right name].
	behaviors do: [:behavior |
		| uncovered |
		uncovered := (probes select: [:probe |
			probe reference actualClass == behavior and: [probe hasRun not]])
			asSortedCollection: [:left :right |
				left reference methodSymbol <= right reference methodSymbol].
		uncovered isEmpty ifFalse: [
			stream nextPutAll: behavior name; cr.
			uncovered do: [:probe |
				stream
					nextPutAll: '  ';
					nextPutAll: behavior name;
					nextPutAll: '>>';
					nextPutAll: probe reference methodSymbol asString; cr]]]
