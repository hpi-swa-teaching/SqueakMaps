as yet unclassified
requestParamsExceedLimit

	^ Json readFrom: '{"error":{"code":2004,"message":"Request parameters exceed the server configuration limits. The approximated route distance must not be greater than 6000000.0 meters."},"info":{"engine":{"version":"6.7.0","build_date":"2022-02-18T19:37:41Z"},"timestamp":1653415666997}}' readStream