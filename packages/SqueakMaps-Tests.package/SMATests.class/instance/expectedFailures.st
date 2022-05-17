initilization
expectedFailures

	[WebClient httpGet: 'http://www.google.com'] on: NetworkError do: [ ^ self class apiTests ].
    ^ #()
