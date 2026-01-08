tests
testLowPrecision
	printer := NeoJSONFloatPrinter lowPrecision.
	self assert: (printer print: (4/3) asFloat) equals: '1.33'.
	self assert: (printer print: 12345.66) equals: '12345.66'.
	self assert: (printer print: -123456.77) equals: '-1.23e5'.
	self assert: (printer print: Float pi) equals: '3.14'.
	self assert: (printer print: Float e negated) equals: '-2.72'.
	"the earth's mass in kg"
	self assert: (printer print: 5.9724e24) equals: '5.97e24'.
	"mass of electron in kg"
	self assert: (printer print: 9.10938356e-31) equals: '9.11e-31'.