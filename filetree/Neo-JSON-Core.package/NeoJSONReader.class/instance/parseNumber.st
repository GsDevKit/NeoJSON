parsing
parseNumber
	| negated number isFloat |
	negated := readStream peekFor: $-.
	number := self parseNumberInteger.
	isFloat := (readStream peekFor: $.)
		ifTrue: [ number := number + self parseNumberFraction. true ]
		ifFalse: [ false ].
	((readStream peekFor: $e) or: [ readStream peekFor: $E ])
		ifTrue: [ number := number * self parseNumberExponent ].
	isFloat ifTrue: [ number := number asFloat ].
	negated
		ifTrue: [ number := number negated ].
	self consumeWhitespace.
	^ number