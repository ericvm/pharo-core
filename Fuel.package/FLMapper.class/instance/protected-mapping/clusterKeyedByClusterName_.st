clusterKeyedByClusterName: aClusterClass

	^ self
		clusterKeyedByClusterName: aClusterClass 
		factory:  [ aClusterClass newAnalyzing ]