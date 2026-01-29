public
testPrintOnBaseLengthPadded

	| int length printer |
	printer := [String streamContents: [:stream | int printOn: stream base: 10 length: length padded: true]].

	int := 9.
	length := 1.
	self
		assert: printer value
		equals: '9'.
	length := 4.
	self
		assert: printer value
		equals: '0009'.

	int := -9.
	length := 1.
	self
		assert: printer value
		equals: '-9'.
	length := 3.
	self
		assert: printer value
		equals: '-09'.

	int := 9999999.
	length := 8.
	self
		assert: printer value
		equals: '09999999'
