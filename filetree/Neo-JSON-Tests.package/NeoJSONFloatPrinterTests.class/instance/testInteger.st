tests
testInteger
	self assert: (printer print: 1.0) equals: '1'.
	self assert: (printer print: 0.0) equals: '0'.
	self assert: (printer print: -1.0) equals: '-1'.
	self assert: (printer print: 123.0) equals: '123'.
	self assert: (printer print: 123456.0) equals: '123456'.
	