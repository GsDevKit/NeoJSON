public
testDecimalDigitLength

	self
		assert: 9 decimalDigitLength
		equals: 1.
	self
		assert: 9999999 decimalDigitLength
		equals: 7
