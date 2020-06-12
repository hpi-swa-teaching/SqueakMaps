baseline
baseline: spec
	<baseline>
	spec for: #'common'
		do: [
			spec baseline: 'MTF' with: [
				spec
					repository: 'https://github.com/hpi-swa-teaching/Morphic-Testing-Framework.git'].
			spec
				package: 'SqueakMaps-Core';
				package: 'SqueakMaps-Tests' with: [spec requires: #('SqueakMaps-Core' 'MTF')];
				yourself.
			spec
				group: 'default' with: #('SqueakMaps-Core');
				group: 'tests' with: #('SqueakMaps-Tests')];
				yourself
