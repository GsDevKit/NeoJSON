*neo-json-gemstone-core
printOn: stream base: base length: minimumLength padded: padWithZeroes
	"Return a String representation of this number in base b with a minimum length and padded by 0 if zeroFlag is set"

	"(String streamContents: [ :s | 10 printOn: s base: 10 length: 4 padded: true] ) >>> '0010'"
	"(String streamContents: [ :s | -10 printOn: s base: 10 length: 4 padded: true] ) >>> '-010'"

	| n numberOfDigits totalLength divisor |
	self < 0
		ifTrue: [
			n := self negated.
			totalLength := 1 ]
		ifFalse: [
			n := self.
			totalLength := 0 ].
	numberOfDigits := n numberOfDigitsInBase: base.
	totalLength := totalLength + numberOfDigits.
	padWithZeroes ifFalse: [
		[ totalLength < minimumLength ] whileTrue: [
			stream space.
			totalLength := totalLength + 1 ] ].
	n = self ifFalse: [ stream nextPut: $- ].
	padWithZeroes ifTrue: [
		[ totalLength < minimumLength ] whileTrue: [
			stream nextPut: $0.
			totalLength := totalLength + 1 ] ].
	divisor := (base raisedToInteger: numberOfDigits - 1).
	[ divisor > 0 ] whileTrue: [
		| digit |
		digit := n // divisor.
		stream nextPut: ('0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ' at: digit + 1).
		n := n - (digit * divisor).
		divisor := divisor // base ]