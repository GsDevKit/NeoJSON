Extension { #name : 'Integer' }

{ #category : '*neo-json-gemstone-core' }
Integer >> asCharacterDigit [

	^ Character digitValue: self
]

{ #category : '*neo-json-gemstone-core' }
Integer >> digitAt: anExponent base: base [

	^ self // (base raisedToInteger: anExponent - 1) \\ base

]

{ #category : '*neo-json-gemstone-core' }
Integer >> isPowerOfTwo [
    "Return true if the receiver is an integral power of two."
    ^ self ~= 0 and: [ (self bitAnd: self-1) = 0 ]
]

{ #category : '*neo-json-gemstone-core' }
Integer >> numberOfDigitsInBase: b [
	"Return how many digits are necessary to print this number in base b.
	This does not count any place for minus sign, radix prefix or whatever.
	Note that this algorithm may cost a few operations on LargeInteger."

	| nDigits q total |
	self negative ifTrue: [^self negated numberOfDigitsInBase: b].
	self < b ifTrue: [^1].
	b isPowerOfTwo ifTrue: [^self highBit + b highBit - 2 quo: b highBit - 1].

	"A conversion from base 2 to base b has to be performed.
	This algorithm avoids Float computations like (self log: b) floor + 1,
	1) because they are inexact
	2) because LargeInteger might overflow
	3) because this algorithm might be cheaper than conversion"

	q := self.
	total := 0.
	["Make an initial nDigits guess that is lower than or equal to required number of digits"
	nDigits := b = 10
		ifTrue: [((q highBit - 1) * 1233 >> 12) + 1. "This is because (2 log)/(10 log)*4096 is slightly greater than 1233"]
		ifFalse: [q highBit quo: b highBit].
	total := total + nDigits.

	"See how many digits remains above these first nDigits guess"
	(q := q quo: (b raisedToInteger: nDigits)) < b] whileFalse.
	^q = 0
		ifTrue: [total]
		ifFalse: [total + 1]
]

{ #category : '*neo-json-gemstone-core' }
Integer >> print: positiveNumberString on: aStream prefix: prefix length: minimum padded: zeroFlag [
	"Return a String based on concatenation of positiveNumberString with prefix then padded by 0 is zeroFlag is set for a minimum length."

	"(String streamContents: [ :s | 10 print: '10' on: s prefix: 'zz' length: 4 padded: true ] ) >>> 'zz10'"

	| padLength |
	padLength := minimum - positiveNumberString size - prefix size.
	padLength > 0
		ifTrue: [ zeroFlag
					ifTrue: [ aStream nextPutAll: prefix; nextPutAll: (String new: padLength withAll: $0) ]
					ifFalse: [ aStream nextPutAll: (String new: padLength withAll: Character space); nextPutAll: prefix ] ]
		ifFalse: [ aStream nextPutAll: prefix ].
	aStream nextPutAll: positiveNumberString
]

{ #category : '*neo-json-gemstone-core' }
Integer >> printOn: aStream base: base length: minimum padded: zeroFlag [
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
]
