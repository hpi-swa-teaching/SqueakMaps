testing
testExpiringValueCachesAndResets

	| expiring evaluations |
	expiring := SMAExpiringValue new.
	expiring timeToLive: 1 hour.
	evaluations := 0.

	self assert: (expiring valueIfExpired: [evaluations := evaluations + 1]) equals: 1.
	self assert: (expiring valueIfExpired: [evaluations := evaluations + 1]) equals: 1.
	self assert: evaluations equals: 1.
	self assert: expiring value equals: 1.
	self assert: expiring refreshTime notNil.
	self assert: expiring timeToLive equals: 1 hour.

	expiring reset.
	self assert: expiring value isNil.
	self assert: expiring refreshTime isNil.
	self assert: (expiring valueIfExpired: [evaluations := evaluations + 1]) equals: 2.
	expiring value: 99.
	self assert: expiring value equals: 99
