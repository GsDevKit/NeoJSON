*neo-json-gemstone-core
numberOfDigitsInBase: b
	"Return how many digits are necessary to print this number in base b.
	Mostly same as super but an optimized version for base 10 case"

	self < 0 ifTrue: [^self negated numberOfDigitsInBase: b].
	^ super numberOfDigitsInBase: b
