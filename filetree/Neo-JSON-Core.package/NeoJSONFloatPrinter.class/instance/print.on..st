printing
print: float on: stream
	| int abs |
	(float isZero or: [ float isFinite not ])
		ifTrue: [ ^ self print: float specialOn: stream ].
	self print: float signOn: stream.
	((abs := float abs) between: lower and: upper)
		ifTrue: [ 
			(int := abs asInteger) = abs 
				ifTrue: [ int printOn: stream ]
				ifFalse: [ self print: abs decimalOn: stream ] ]
		ifFalse: [ self print: abs scientificOn: stream ]