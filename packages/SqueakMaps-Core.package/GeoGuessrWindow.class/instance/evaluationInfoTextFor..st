game flow
evaluationInfoTextFor: aResult

	| distanceText |

	distanceText := aResult distanceInMeters
		ifNil: ['kein Tipp']
		ifNotNil: [:meters | meters rounded asString, ' m'].
	^ 'Distanz: ', distanceText, ' · Punkte: ', aResult score asString, ' · Gesamt: ', gameOrchestrator totalScore asString
