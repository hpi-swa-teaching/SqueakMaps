testing
testOSMBuilderIgnoresNonHighwaysAndMissingNodes

	| osm graph |
	osm := '<osm version="0.6">
	<node id="1" lat="0" lon="0" />
	<node id="2" lat="0" lon="1" />
	<way id="10"><nd ref="1"/><nd ref="2"/><tag k="building" v="yes"/></way>
	<way id="11"><nd ref="1"/><nd ref="99"/><tag k="highway" v="footway"/></way>
</osm>' readStream.
	graph := SMAOSMRoutingGraphBuilder fromOSMFile: osm.

	self assert: graph size equals: 1.
	self assert: (graph vertexOfPointID: 1) notNil.
	self assert: (graph vertexOfPointID: 2) isNil.
	self assert: (graph vertexOfPointID: 99) isNil
