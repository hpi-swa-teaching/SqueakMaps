select api
setOpenrouteserviceAsApi

	| api |
	
	api := self buildOpenrouteserviceApi.
	api isApiKeyValid
		ifTrue: [^ self tiledMapMorph routingApi: api]
		ifFalse: [^ self requestOpenrouteserviceApiKeyInput].
		
	
	
	
