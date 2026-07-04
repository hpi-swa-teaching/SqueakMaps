as yet unclassified
simpleRoutingOSM

	^ '<osm version="0.6">
	<node id="1" lat="0" lon="0" />
	<node id="2" lat="0" lon="1" />
	<node id="3" lat="0" lon="2" />
	<node id="4" lat="1" lon="1" />
	<way id="10">
		<nd ref="1"/><nd ref="2"/><nd ref="3"/>
		<tag k="highway" v="footway"/><tag k="level" v="0"/>
	</way>
	<way id="11">
		<nd ref="1"/><nd ref="4"/><nd ref="3"/>
		<tag k="highway" v="footway"/><tag k="level" v="0"/>
	</way>
</osm>' readStream