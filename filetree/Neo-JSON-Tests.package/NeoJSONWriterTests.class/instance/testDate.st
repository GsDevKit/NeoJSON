testing
testDate
	| dateClassType writer |
	dateClassType := (Smalltalk globals at: #'SmallTime' ifAbsent: [ nil ]) ifNil: [ Date ] ifNotNil: [ SmallDate ].
	writer := [ :object | 
		String streamContents: [ :stream |
			(NeoJSONWriter on: stream) 
				for: dateClassType customDo: [ :mapping |
					mapping encoder: [ :date | date yyyymmdd ] ];
				nextPut: object ] ].
	self assert: (writer value: (Date newDay: 8 month: 'June' year: 2012)) equals: '"2012-06-08"'