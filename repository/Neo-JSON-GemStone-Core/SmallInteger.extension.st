Extension { #name : #'SmallInteger' }

{ #category : #'*neo-json-gemstone-core' }
SmallInteger >> decimalDigitLength [
	"Answer the number of digits printed out in base 10.
	Note that this only works for positive SmallIntegers up to 64-bits."
	"1 decimalDigitLength >>> 1"
	"100000000 decimalDigitLength >>> 9"
	"SmallInteger maxVal decimalDigitLength >>> 19"

	^self < 10000
		ifTrue:
			[self < 100
				ifTrue:
					[self < 10 ifTrue: [1] ifFalse: [2]]
				ifFalse:
					[self < 1000 ifTrue: [3] ifFalse: [4]]]
		ifFalse:
			[self < 100000000
				ifTrue:
					[self < 1000000
						ifTrue: [self < 100000 ifTrue: [5] ifFalse: [6]]
						ifFalse: [self < 10000000 ifTrue: [7] ifFalse: [8]]]
				ifFalse:
					[self < 1000000000000
						ifTrue:
							[self < 10000000000
								ifTrue: [self < 1000000000 ifTrue: [9] ifFalse: [10]]
								ifFalse: [self < 100000000000 ifTrue: [11] ifFalse: [12]]]
						ifFalse:
							[self < 10000000000000000
								ifTrue:
									[self < 100000000000000
										ifTrue: [self < 10000000000000 ifTrue: [13] ifFalse: [14]]
										ifFalse: [self < 1000000000000000 ifTrue: [15] ifFalse: [16]]]
								ifFalse:
									[self < 1000000000000000000
										ifTrue: [self < 100000000000000000 ifTrue: [17] ifFalse: [18]]
										ifFalse: [self < 10000000000000000000 ifTrue: [19] ifFalse: [20]]]]]]

]

{ #category : #'*neo-json-gemstone-core' }
SmallInteger >> numberOfDigitsInBase: b [
	"Return how many digits are necessary to print this number in base b.
	Mostly same as super but an optimized version for base 10 case"

	b = 10 ifFalse: [^super numberOfDigitsInBase: b].
	self < 0 ifTrue: [^self negated numberOfDigitsInBase: b].
	^ self decimalDigitLength

]

{ #category : #'*neo-json-gemstone-core' }
SmallInteger >> printOn: stream base: base length: minimumLength padded: padWithZeroes [
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
]

{ #category : #'*neo-json-gemstone-core' }
SmallInteger >> printOn: aStream base: b nDigits: n [
	"Append a representation of this number in base b on aStream using nDigits.
	self must be positive."

	self printOn: aStream base: b length: n padded: true
]