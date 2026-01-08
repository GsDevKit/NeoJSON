tests
testDecimalNotation
	self assert: (printer print: 1.5) equals: '1.5'.
	self assert: (printer print: -1.5) equals: '-1.5'.
	self assert: (printer print: 0.5) equals: '0.5'.
	self assert: (printer print: -0.5) equals: '-0.5'.
	self assert: (printer print: (1/3) asFloat) equals: '0.33333'.
	self assert: (printer print: (-1/3) asFloat) equals: '-0.33333'.
	self assert: (printer print: 0.00123) equals: '0.00123'.
	self assert: (printer print: -0.00123) equals: '-0.00123'.
	self assert: (printer print: 0.00012) equals: '0.00012'.
	self assert: (printer print: -0.00012) equals: '-0.00012'.
	self assert: (printer print: 123456.12345) equals: '123456.12345'.
	self assert: (printer print: -123456.12345) equals: '-123456.12345'.
