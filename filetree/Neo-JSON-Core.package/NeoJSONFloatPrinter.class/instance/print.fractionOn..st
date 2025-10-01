private
print: fractionPart fractionOn: stream
	| zeros |
	zeros := 0. "leading zeros are significant, trailing zeros are not printed"
	precision to: 1 by: -1 do: [ :position | | digit |
		digit := fractionPart digitAt: position base: base.
		digit = 0
			ifTrue: [ zeros := zeros +1 ]
			ifFalse: [
				zeros > 0 ifTrue: [ 
					zeros timesRepeat: [ stream nextPut: $0 ]. 
					zeros := 0 ].
				stream nextPut: digit asCharacterDigit ] ]