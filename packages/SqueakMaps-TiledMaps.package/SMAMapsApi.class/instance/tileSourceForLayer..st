tile source
tileSourceForLayer: aLayer

	self layers ifNil: [self layers: Dictionary new].
	^ self layers at: aLayer ifAbsentPut: [ self tileSourceClass new layer: aLayer api: self ]