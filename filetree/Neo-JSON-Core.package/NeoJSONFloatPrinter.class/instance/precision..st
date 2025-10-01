initialize-release
precision: numberOfDigits
	self assert: (numberOfDigits between: 1 and: 20).
	precision := numberOfDigits