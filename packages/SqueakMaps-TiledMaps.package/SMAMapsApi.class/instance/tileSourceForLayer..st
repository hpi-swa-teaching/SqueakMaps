tile source
tileSourceForLayer: aLayer

	layers ifNil: [layers := Dictionary new].
	^ layers at: aLayer ifAbsentPut: [ self tileSourceClass new layer: aLayer api: self ]