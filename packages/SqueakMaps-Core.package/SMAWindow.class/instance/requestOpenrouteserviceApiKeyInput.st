select api
requestOpenrouteserviceApiKeyInput
  self class openrouteserviceApiKey: (UIManager default request: 'Please enter your Openrouteservice Api Key').
  self class openrouteserviceApiKey
    ifNotEmpty: [self setOpenrouteserviceAsApi.]