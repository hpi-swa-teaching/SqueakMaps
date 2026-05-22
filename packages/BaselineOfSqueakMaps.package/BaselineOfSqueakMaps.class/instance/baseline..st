baseline
baseline: spec
	<baseline>

	spec for: #common do: [

		spec baseline: 'MorphicTestingFramework' with: [
			spec
				repository: 'github://hpi-swa-teaching/Morphic-Testing-Framework:master/packages'
		].

		spec
		
			package: 'SqueakMaps-GeoServices';
		
			package: 'SqueakMaps-TiledMaps' with:[
				spec requires: #(
				'SqueakMaps-GeoServices')
			
			];

			package: 'SqueakMaps-Core' with: [
				spec requires: #(
					'SqueakMaps-TiledMaps'
					'MorphicTestingFramework')
			];
			package: 'SqueakMaps-Help' with: [
				spec requires: #(
					'SqueakMaps-Core'
					'SqueakMaps-GeoServices')
			];
		package: 'HelpSystem-Core-UI' with: [
			spec requires: #(
			'SqueakMaps-Core'
			'SqueakMaps-GeoServices')
		];

			package: 'SqueakMaps-Tests' with: [
				spec requires: #(
					'SqueakMaps-Core'
					'SqueakMaps-GeoServices'
					'SqueakMaps-TiledMaps'
					'MorphicTestingFramework')
			];

			yourself.

		spec
			group: 'default' with: #(
				'SqueakMaps-Core'
				'SqueakMaps-GeoServices');

			group: 'tests' with: #(
				'SqueakMaps-Tests').

	].

	spec for: #(#'squeak5.x') do: [

		spec
			package: 'JSON' with: [
				spec
					file: 'JSON-ul.35';
					repository: 'http://www.squeaksource.com/JSON'
			];

			package: 'SqueakMaps-Core' with: [
				spec requires: #('JSON')
			].
	].