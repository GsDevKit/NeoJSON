*neo-json-gemstone-core
printOn: aStream base: base length: minimum padded: zeroFlag
	"Return a String representation of this number in base b with a minimum length and padded by 0 if zeroFlag is set"

	"(String streamContents: [ :s | 10 printOn: s base: 10 length: 4 padded: true] ) >>> '0010'"
	"(String streamContents: [ :s | -10 printOn: s base: 10 length: 4 padded: true] ) >>> '-010'"

	| prefix |
	prefix := self negative ifTrue: ['-'] ifFalse: [ '' ].
	self
		print: (self abs printStringBase: base)
		on: aStream
		prefix: prefix
		length: minimum
		padded: zeroFlag