deferredUIMessages

	^DeferredUIMessages ifNil: [DeferredUIMessages := WaitfreeQueue  new].
