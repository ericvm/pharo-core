v2_0_0: spec
	<version: 'v2.0.0'>
	
	spec
		for: #'common'
		do: [ 
			spec
				baseline: 'QualityAssistant'
					with: [ spec repository: 'github://Uko/QualityAssistant:v2.0.0' ];
				import: 'QualityAssistant' ].