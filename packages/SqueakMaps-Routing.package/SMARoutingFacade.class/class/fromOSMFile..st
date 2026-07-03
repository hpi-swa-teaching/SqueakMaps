as yet unclassified
fromOSMFile: aReadStream

	^ self forGraph: (SMAOSMRoutingGraphBuilder fromOSMFile: aReadStream)