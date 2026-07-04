private
levelsMatch: targetLevels with: candidateLevels

	(targetLevels isNil or: [targetLevels isEmpty]) ifTrue: [^ true].
	(candidateLevels isNil or: [candidateLevels isEmpty]) ifTrue: [^ true].
	^ targetLevels anySatisfy: [:level | candidateLevels includes: level]
