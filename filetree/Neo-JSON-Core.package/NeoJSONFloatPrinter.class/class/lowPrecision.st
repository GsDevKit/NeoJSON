instance creation
lowPrecision
	^ self new
		precision: 2;
		lower: 1e-2;
		upper: 1e5;
		yourself