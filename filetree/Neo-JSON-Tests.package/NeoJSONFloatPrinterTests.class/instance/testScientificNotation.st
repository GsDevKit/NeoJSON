tests
testScientificNotation
	self assert: (printer print: 1234567.5) equals: '1.23457e6'. "note the rounding"
	self assert: (printer print: -1234567.5) equals: '-1.23457e6'. "note the rounding"
	self assert: (printer print: 0.0000123) equals: '1.23e-5'.
	self assert: (printer print: -0.0000123) equals: '-1.23e-5'.
