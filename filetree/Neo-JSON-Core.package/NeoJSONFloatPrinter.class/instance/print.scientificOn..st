private
print: float scientificOn: stream
	| exponent mantissa |
	exponent := (float ln / base ln) floor.
	mantissa := float / (base raisedTo: exponent).
	self print: mantissa decimalOn: stream.
	stream
		nextPut: self exponent;
		print: exponent