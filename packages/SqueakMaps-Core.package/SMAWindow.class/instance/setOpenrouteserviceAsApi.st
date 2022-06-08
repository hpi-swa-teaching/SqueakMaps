select api
setOpenrouteserviceAsApi

	|api|
	api := SMAORSRoutingAPI new apiKey: self class openrouteserviceApiKey.
	self tiledMapMorph routingApi: self buildOpenrouteserviceApi.
