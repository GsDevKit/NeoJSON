private
print: float signOn: stream
	float sign = -1
		ifTrue: [ stream nextPut: $- ]