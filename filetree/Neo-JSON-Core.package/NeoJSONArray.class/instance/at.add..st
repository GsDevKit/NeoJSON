adding
at: index add: object
	^ index = #'-'
		ifTrue: [ self addLast: object ]
		ifFalse: [ self add: object before: index ]