initialize-release
valueIfExpired: aBlock

	| now |

	now := DateAndTime now.

	refreshTime ifNotNil: [refreshTime + timeToLive >= now ifTrue: [^ value]].
	refreshTime := now.
	^ value := aBlock value