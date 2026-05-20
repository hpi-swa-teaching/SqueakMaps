baseline
baseline: spec
	<baseline>
	spec for: #'common'
		do: [
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
				package: 'SqueakMaps-Core' with: [spec requires: #('JSON' 'SqueakMaps-TiledMaps' 'MorphicTestingFramework')];
				package: 'SqueakMaps-GeoServices' with: [spec requires: #('SqueakMaps-Core' 'JSON')];
				yourself.
			spec for: #(#'squeak5.x' #'squeak6.0.x.release') do: [
				spec
					package: 'JSON' with: [
						spec
							repository: 'https://www.squeaksource.com/JSON'];
					package: 'GitS-Compatibility-Squeak60AndEarlier' with: [
						spec requires: 'JSON'];
					package: 'GitS-Core' with: [
						spec requires: 'GitS-Compatibility-Squeak60AndEarlier']].
			spec
				group: 'default' with: #('SqueakMaps-Core' 'SqueakMaps-GeoServices');
				group: 'tests' with: #('SqueakMaps-Tests')]
