running
runAndReportResults: results
	| report details |
	report := String streamContents: [:stream |
		self writeHeaderOn: stream.
		results do: [:result |
			self writeSummaryFor: result on: stream.
			stream cr].
		self writeOverallSummaryFor: results on: stream].

	details := String streamContents: [:stream |
		self writeHeaderOn: stream.
		results do: [:result |
			self writeDetailsFor: result on: stream.
			stream cr].
		self writeOverallSummaryFor: results on: stream].

	self save: report as: 'SqueakMaps-Coverage-Report.txt'.
	self save: details as: 'SqueakMaps-Coverage-Uncovered.txt'.
	Transcript open.
	Transcript clear.
	Transcript show: report; cr.
	Transcript show: 'Ausfuehrliche Liste: SqueakMaps-Coverage-Uncovered.txt'; cr.
	^ results
