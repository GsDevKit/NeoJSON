example
exampleNumbers
	<gtExample>
	| numbers |
	numbers := self new: 128 withAll: nil.
	0 to: 127 do: [ :n | 
		numbers
			at: n + 1
			put: (NeoJSONObject new
					integer: n;
					decimal: (n printStringBase: 10);
					octal: (n printStringBase: 8);
					hexadecimal: (n printStringBase: 16);
					binary: (n printStringBase: 2);
					roman: n printStringRoman;
					words: n asWords;
					prime: n isPrime;
					character: n asCharacter asString) ].
	^ numbers