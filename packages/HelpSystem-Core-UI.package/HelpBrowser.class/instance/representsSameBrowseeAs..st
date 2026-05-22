ui
representsSameBrowseeAs: anotherModel
	^ self hasUnacceptedEdits not and:
		[ (toplevelTopics collect:
			[ : e | e title ]) =
			(anotherModel toplevelTopics collect:
				[ : e | e title ]) ]