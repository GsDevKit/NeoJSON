*neo-json-gemstone-core
print: positiveNumberString on: aStream prefix: prefix length: minimum padded: zeroFlag
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