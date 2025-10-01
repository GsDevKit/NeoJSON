tests
testScientificOnly
	printer := NeoJSONFloatPrinter scientificOnly.
	self assert: (printer print: (4/3) asFloat) equals: '1.33333e0'.
	self assert: (printer print: 12345.66) equals: '1.23457e4'.
	self assert: (printer print: Float pi) equals: '3.14159e0'.
	self assert: (printer print: Float e negated) equals: '-2.71828e0'.
	"the earth's mass in kg"
	self assert: (printer print: 5.9724e24) equals: '5.9724e24'.
	"mass of electron in kg"
	self assert: (printer print: 9.10938356e-31) equals: '9.10938e-31'.