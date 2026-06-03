baseline
baseline: spec
	<baseline>
	spec for: #'common'
		do: [
			spec baseline: 'GitS' with: [
				spec 
					repository: 'github://hpi-swa/git-s:latest-release/src'].
			spec baseline: 'MorphicTestingFramework' with: [
				spec
					repository: 'github://hpi-swa-teaching/Morphic-Testing-Framework:master/packages'].
			
			spec   
				package: 'JSON'
						with: [
							spec
								file: 'JSON-ul.35';
								repository: 
										'http://www.squeaksource.com/JSON' ].
					
			spec
				package: 'SqueakMaps-TiledMaps';
				package: 'SqueakMaps-DecoratedMaps' with: [spec requires: #('SqueakMaps-TiledMaps')];
				package: 'SqueakMaps-Core' with: [spec requires: #('JSON' 'SqueakMaps-DecoratedMaps' 'MorphicTestingFramework' 'GitS')];
				package: 'SqueakMaps-GeoServices' with: [spec requires: #('SqueakMaps-Core' 'JSON')];
				package: 'SqueakMaps-Tests' with: [spec requires: #('default')];
				yourself.
			spec
				group: 'default' with: #('SqueakMaps-Core' 'SqueakMaps-GeoServices');
				group: 'tests' with: #('SqueakMaps-Tests');
				yourself]
