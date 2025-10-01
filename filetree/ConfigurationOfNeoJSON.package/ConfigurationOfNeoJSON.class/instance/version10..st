versions
version10: spec
	<version: '10' imports: #('2-baseline')>
	spec
		for: #common
		do: [ 
			spec
				blessing: #release;
				package: 'Neo-JSON-Core' with: 'Neo-JSON-Core-SvenVanCaekenberghe.27';
				package: 'Neo-JSON-Tests' with: 'Neo-JSON-Tests-SvenVanCaekenberghe.24' ].
	spec
		for: #'gs3.x'
		do: [ 
			spec import: 'NeoJSON'.
			spec baseline: 'NeoJSON' with: [ spec repository: 'github://GsDevKit/NeoJSON:master/repository' ] ]
