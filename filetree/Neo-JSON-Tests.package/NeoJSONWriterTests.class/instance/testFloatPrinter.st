testing
testFloatPrinter
	| writer |
	writer := [ :object | 
		String streamContents: [ :stream |
			(NeoJSONWriter on: stream) 
				floatPrinter: NeoJSONFloatPrinter new;
				nextPut: object ] ].
	self assert: (writer value: 123.0) equals: '123'.
	self assert: (writer value: -123.0) equals: '-123'.
	self assert: (writer value: 0.0) equals: '0'.
	self assert: (writer value: 1.50) equals: '1.5'.
	self assert: (writer value: -1.25) equals: '-1.25'.
	self assert: (writer value: Float pi) equals: '3.14159'.
	self assert: (writer value: 9.10938356e-31) equals: '9.10938e-31'.
	self assert: (writer value: 5.9724e24) equals: '5.9724e24'.
	self assert: (writer value: 1234567890.1234567890) equals: '1.23457e9'.
	self assert: (writer value: (1/3) asFloat) equals: '0.33333'.