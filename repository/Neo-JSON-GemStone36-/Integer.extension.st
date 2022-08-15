Extension { #name : 'Integer' }

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
