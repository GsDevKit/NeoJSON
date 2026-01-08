tests
testSpecialValues
	self assert: (printer print: Float zero) equals: '0'.
	self assert: (printer print: Float nan) equals: 'NaN'.
	self assert: (printer print: Float infinity) equals: 'Inf'.
	self assert: (printer print: Float infinity negated) equals: '-Inf'.