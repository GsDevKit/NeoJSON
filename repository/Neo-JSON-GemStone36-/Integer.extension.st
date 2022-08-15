Extension { #name : 'Integer' }

{ #category : '*Neo-JSON-GemStone36-' }
Integer >> asCharacterDigit [
	"Answer the Character whose string representation is the receiver."
	^Character digitValue: self
]

{ #category : '*Neo-JSON-GemStone36-' }
Integer >> digitAt: anExponent base: base [

	"Return number that represents digit at given position.
		42 digitAt: 2 base: 10 -> 4
		42 digitAt: 1 base: 10 -> 1
	It is always a number or zero:
		16rFF digitAt: 1 base: 16 -> 15
		1 digitAt: 2 base: 10 -> 0
	Results are not defined for base smaller than 2 and non-integer arguments."

	^ self // (base raisedToInteger: anExponent - 1) \\ base
]

{ #category : '*Neo-JSON-GemStone36-' }
Integer >> printOn: aWriteStream base: baseInteger nDigits: digitsInteger [
	"There is no restriction on the size of the receiver. If it encodes
	 into a string larger than the specified number of digits, the entire
	 encoded result will be emitted."

	| printed padding |
	printed := self printStringRadix: baseInteger showRadix: false.
	padding :=  digitsInteger - printed size max: 0.
	padding timesRepeat: [aWriteStream nextPut: $0].
	aWriteStream nextPutAll: printed.
]
