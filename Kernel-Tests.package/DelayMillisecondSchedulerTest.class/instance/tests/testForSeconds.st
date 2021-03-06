testForSeconds
	| scheduler delay preTick postTick actualDuration |
	scheduler := DelayMillisecondScheduler new.
	scheduler testCaseSupportSetActiveDelayStartTime: Time millisecondClockValue.
	delay := Delay forSeconds: 1.
	scheduler schedule: delay.
	
	preTick := Time millisecondClockValue.
	[ 	scheduler handleTimerEvent: Time millisecondClockValue.
		Processor yield.
		delay delaySemaphore isSignaled
	] whileFalse.
	postTick := Time millisecondClockValue.
	
	actualDuration := postTick - preTick.
	self assert: actualDuration >= 995.
	self assert: actualDuration <= 1005.