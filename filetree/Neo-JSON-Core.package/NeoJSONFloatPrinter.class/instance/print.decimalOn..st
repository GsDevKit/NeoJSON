private
print: float decimalOn: stream
	stream print: float asInteger.
	stream nextPut: self decimalPoint.
	self 
		print: (float fractionPart * (base raisedTo: precision)) rounded 
		fractionOn: stream