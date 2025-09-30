tests
testWellKnownConstants
	self assert: (printer print: Float pi) equals: '3.14159'.
	self assert: (printer print: Float e) equals: '2.71828'.
	"the earth's mass in kg"
	self assert: (printer print: 5.9724e24) equals: '5.9724e24'.
	"mass of electron in kg"
	self assert: (printer print: 9.10938356e-31) equals: '9.10938e-31'.
	"planck's constant in Js"
	self assert: (printer print: 1.05457e-34) equals: '1.05457e-34'.
	"speed of light in m/s"
	self assert: (printer print: 2.99792e8) equals: '2.99792e8'.
	"charge of electron in C"
	self assert: (printer print: -1.60218e-19) equals: '-1.60218e-19'.
	"boltzmann's constant in J/K"
	self assert: (printer print: 1.38065e-23) equals: '1.38065e-23'.
