baseline
baseline: spec
	<baseline>
	spec for: #'common'
		do: [
			spec
				group: 'default' with: #(SqueakMaps-Core);
				group: 'tests' with: #(SqueakMaps-Tests)];
				yourself
