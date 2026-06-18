game flow
evaluationInfoTextFor: aResult

	| distanceText |
	distanceText := aResult distanceInMeters
		ifNil: ['No guess!']
		ifNotNil: [:meters | meters rounded asString, ' m'].
	^ 'Distance: ', distanceText, ' · Points: ', aResult score asString