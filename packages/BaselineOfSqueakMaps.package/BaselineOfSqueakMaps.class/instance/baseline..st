baseline
baseline: spec
	<baseline>
	spec for: #'common'
		do: [
			spec baseline: 'MorphicTestingFramework' with: [
				spec
					repository: 'github://hpi-swa-teaching/Morphic-Testing-Framework:master/packages'];
					
			 		'Widgets' with: [ spec repository: 'github://hpi-swa/widgets:master/repository' ].
					
			spec   
				package: 'JSON'
						with: [
							spec
								file: 'JSON-ul.35';
								repository: 
										'http://www.squeaksource.com/JSON' ].
					
			spec
				package: 'SqueakMaps-Core';
				package: 'TiledMaps';
				package: 'SqueakMaps-Tests' with: [spec requires: #('SqueakMaps-Core' 'Widgets' 'JSON' 'TiledMaps' 'MorphicTestingFramework')];
				yourself.
			spec
				group: 'default' with: #('SqueakMaps-Core');
				group: 'tests' with: #('SqueakMaps-Tests')]
