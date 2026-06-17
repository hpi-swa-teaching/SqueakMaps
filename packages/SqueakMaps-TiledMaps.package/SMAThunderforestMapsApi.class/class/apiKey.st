accessing
apiKey

	^ (ApiKey isNil or: [ApiKey isEmpty]) ifTrue: ['Empty key has annoying response'] ifFalse: [ApiKey]