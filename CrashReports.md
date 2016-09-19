#### invocation.buffer.lines.removeAll()

Process:               Xcode [82513]
Path:                  /Applications/Xcode.app/Contents/MacOS/Xcode
Identifier:            com.apple.dt.Xcode
Version:               8.0 (11246)
Build Info:            IDEFrameworks-11246000000000000~3
Code Type:             X86-64 (Native)
Parent Process:        Xcode [56289]
Responsible:           Xcode [82513]
User ID:               501

Date/Time:             2016-09-19 21:44:23.398 +0200
OS Version:            Mac OS X 10.12 (16A320)
Report Version:        12
Anonymous UUID:        CF52E0C6-30E6-FC25-1C44-3B4AA2AF44BE

Sleep/Wake UUID:       7DF56BDF-3320-4E19-BB7F-39B876627511

Time Awake Since Boot: 280000 seconds
Time Since Wake:       42000 seconds

System Integrity Protection: enabled

Crashed Thread:        0  Dispatch queue: com.apple.main-thread

Exception Type:        EXC_CRASH (SIGABRT)
Exception Codes:       0x0000000000000000, 0x0000000000000000
Exception Note:        EXC_CORPSE_NOTIFY

Application Specific Information:
ProductBuildVersion: 8A218a
UNCAUGHT EXCEPTION (NSInvalidArgumentException): *** +[NSSelectionArray newWithArray:]: no ranges
UserInfo: (null)
Hints: None
Backtrace:
  0   __exceptionPreprocess (in CoreFoundation)
  1   DVTFailureHintExceptionPreprocessor (in DVTFoundation)
  2   objc_exception_throw (in libobjc.A.dylib)
  3   +[NSException raise:format:] (in CoreFoundation)
  4   +[NSSelectionArray newWithArray:] (in AppKit)
  5   +[NSSelectionArray arrayWithArray:] (in AppKit)
  6   -[NSTextView(NSSharing) _fixedSelectionRangesForRanges:affinity:] (in AppKit)
  7   -[NSTextView(NSSharing) setSelectedRanges:affinity:stillSelecting:] (in AppKit)
  8   -[DVTCompletingTextView setSelectedRanges:affinity:stillSelecting:] (in DVTKit)
  9   -[DVTSourceTextView setSelectedRanges:affinity:stillSelecting:] (in DVTKit)
 10   __63-[IDESourceCodeEditor _invokeTrueSourceEditorExtensionCommand:]_block_invoke_3 (in IDESourceEditor)
 11   -[_DVTTimeSlicedMainThreadOrderedNonUniquingWorkQueue _processWorkItemsWithDeadline:] (in DVTFoundation)
 12   -[DVTTimeSlicedMainThreadWorkQueue _processWithDeadline:] (in DVTFoundation)
 13   -[_DVTTimeSlicedMainThreadActiveWorkQueues _processWorkQueuesOnDeadline] (in DVTFoundation)
 14   __NSFireDelayedPerform (in Foundation)
 15   __CFRUNLOOP_IS_CALLING_OUT_TO_A_TIMER_CALLBACK_FUNCTION__ (in CoreFoundation)
 16   __CFRunLoopDoTimer (in CoreFoundation)
 17   __CFRunLoopDoTimers (in CoreFoundation)
 18   __CFRunLoopRun (in CoreFoundation)
 19   CFRunLoopRunSpecific (in CoreFoundation)
 20   RunCurrentEventLoopInMode (in HIToolbox)
 21   ReceiveNextEventCommon (in HIToolbox)
 22   _BlockUntilNextEventMatchingListInModeWithFilter (in HIToolbox)
 23   _DPSNextEvent (in AppKit)
 24   -[NSApplication(NSEvent) _nextEventMatchingEventMask:untilDate:inMode:dequeue:] (in AppKit)
 25   -[DVTApplication nextEventMatchingMask:untilDate:inMode:dequeue:] (in DVTKit)
 26   -[NSApplication run] (in AppKit)
 27   NSApplicationMain (in AppKit)
 28   start (in libdyld.dylib)
 
abort() called

Application Specific Signatures:
NSInvalidArgumentException

Application Specific Backtrace 1:
0   CoreFoundation                      0x00007fff90d3052b __exceptionPreprocess + 171
1   DVTFoundation                       0x000000010816be12 DVTFailureHintExceptionPreprocessor + 194
2   libobjc.A.dylib                     0x00007fffa5408cad objc_exception_throw + 48
3   CoreFoundation                      0x00007fff90daea0d +[NSException raise:format:] + 205
4   AppKit                              0x00007fff8ea29ead +[NSSelectionArray newWithArray:] + 199
5   AppKit                              0x00007fff8ea29dd1 +[NSSelectionArray arrayWithArray:] + 22
6   AppKit                              0x00007fff8ea29c41 -[NSTextView(NSSharing) _fixedSelectionRangesForRanges:affinity:] + 47
7   AppKit                              0x00007fff8ea27eac -[NSTextView(NSSharing) setSelectedRanges:affinity:stillSelecting:] + 291
8   DVTKit                              0x0000000108923d83 -[DVTCompletingTextView setSelectedRanges:affinity:stillSelecting:] + 201
9   DVTKit                              0x0000000108853419 -[DVTSourceTextView setSelectedRanges:affinity:stillSelecting:] + 362
10  IDESourceEditor                     0x0000000120054a44 __63-[IDESourceCodeEditor _invokeTrueSourceEditorExtensionCommand:]_block_invoke_3 + 658
11  DVTFoundation                       0x00000001080da834 -[_DVTTimeSlicedMainThreadOrderedNonUniquingWorkQueue _processWorkItemsWithDeadline:] + 146
12  DVTFoundation                       0x00000001080d8e2d -[DVTTimeSlicedMainThreadWorkQueue _processWithDeadline:] + 187
13  DVTFoundation                       0x00000001080d6399 -[_DVTTimeSlicedMainThreadActiveWorkQueues _processWorkQueuesOnDeadline] + 116
14  Foundation                          0x00007fff9270ec88 __NSFireDelayedPerform + 417
15  CoreFoundation                      0x00007fff90cafe14 __CFRUNLOOP_IS_CALLING_OUT_TO_A_TIMER_CALLBACK_FUNCTION__ + 20
16  CoreFoundation                      0x00007fff90cafa9f __CFRunLoopDoTimer + 1071
17  CoreFoundation                      0x00007fff90caf5fa __CFRunLoopDoTimers + 298
18  CoreFoundation                      0x00007fff90ca7021 __CFRunLoopRun + 2065
19  CoreFoundation                      0x00007fff90ca65b4 CFRunLoopRunSpecific + 420
20  HIToolbox                           0x00007fff90247f6c RunCurrentEventLoopInMode + 240
21  HIToolbox                           0x00007fff90247da1 ReceiveNextEventCommon + 432
22  HIToolbox                           0x00007fff90247bd6 _BlockUntilNextEventMatchingListInModeWithFilter + 71
23  AppKit                              0x00007fff8e93e5f5 _DPSNextEvent + 1093
24  AppKit                              0x00007fff8f04e8eb -[NSApplication(NSEvent) _nextEventMatchingEventMask:untilDate:inMode:dequeue:] + 1637
25  DVTKit                              0x00000001087110a8 -[DVTApplication nextEventMatchingMask:untilDate:inMode:dequeue:] + 396
26  AppKit                              0x00007fff8e932fbd -[NSApplication run] + 926
27  AppKit                              0x00007fff8e8fda8a NSApplicationMain + 1237
28  libdyld.dylib                       0x00007fffa5ce6255 start + 1

Thread 0 Crashed:: Dispatch queue: com.apple.main-thread
0   libsystem_kernel.dylib        	0x00007fffa5e14dda __pthread_kill + 10
1   libsystem_pthread.dylib       	0x00007fffa5eff797 pthread_kill + 90
2   libsystem_c.dylib             	0x00007fffa5d7a440 abort + 129
3   com.apple.dt.IDEKit           	0x00000001097fbc9d +[IDEAssertionHandler _handleAssertionWithLogString:assertionSignature:assertionReason:extraBacktrace:] + 1466
4   com.apple.dt.IDEKit           	0x00000001097fd269 -[IDEAssertionHandler handleUncaughtException:] + 1073
5   com.apple.dt.IDEKit           	0x00000001097fd335 IDEHandleUncaughtException + 94
6   com.apple.dt.DVTFoundation    	0x00000001080d906c -[DVTTimeSlicedMainThreadWorkQueue _processWithDeadline:] + 762
7   com.apple.dt.DVTFoundation    	0x00000001080d6399 -[_DVTTimeSlicedMainThreadActiveWorkQueues _processWorkQueuesOnDeadline] + 116
8   com.apple.Foundation          	0x00007fff9270ec88 __NSFireDelayedPerform + 417
9   com.apple.CoreFoundation      	0x00007fff90cafe14 __CFRUNLOOP_IS_CALLING_OUT_TO_A_TIMER_CALLBACK_FUNCTION__ + 20
10  com.apple.CoreFoundation      	0x00007fff90cafa9f __CFRunLoopDoTimer + 1071
11  com.apple.CoreFoundation      	0x00007fff90caf5fa __CFRunLoopDoTimers + 298
12  com.apple.CoreFoundation      	0x00007fff90ca7021 __CFRunLoopRun + 2065
13  com.apple.CoreFoundation      	0x00007fff90ca65b4 CFRunLoopRunSpecific + 420
14  com.apple.HIToolbox           	0x00007fff90247f6c RunCurrentEventLoopInMode + 240
15  com.apple.HIToolbox           	0x00007fff90247da1 ReceiveNextEventCommon + 432
16  com.apple.HIToolbox           	0x00007fff90247bd6 _BlockUntilNextEventMatchingListInModeWithFilter + 71
17  com.apple.AppKit              	0x00007fff8e93e5f5 _DPSNextEvent + 1093
18  com.apple.AppKit              	0x00007fff8f04e8eb -[NSApplication(NSEvent) _nextEventMatchingEventMask:untilDate:inMode:dequeue:] + 1637
19  com.apple.dt.DVTKit           	0x00000001087110a8 -[DVTApplication nextEventMatchingMask:untilDate:inMode:dequeue:] + 396
20  com.apple.AppKit              	0x00007fff8e932fbd -[NSApplication run] + 926
21  com.apple.AppKit              	0x00007fff8e8fda8a NSApplicationMain + 1237
22  libdyld.dylib                 	0x00007fffa5ce6255 start + 1

Thread 1:
0   libsystem_kernel.dylib        	0x00007fffa5e154e6 __workq_kernreturn + 10
1   libsystem_pthread.dylib       	0x00007fffa5efc7c5 _pthread_wqthread + 1426
2   libsystem_pthread.dylib       	0x00007fffa5efc221 start_wqthread + 13

Thread 2:
0   libsystem_kernel.dylib        	0x00007fffa5e154e6 __workq_kernreturn + 10
1   libsystem_pthread.dylib       	0x00007fffa5efc632 _pthread_wqthread + 1023
2   libsystem_pthread.dylib       	0x00007fffa5efc221 start_wqthread + 13

Thread 3:
0   libsystem_kernel.dylib        	0x00007fffa5e154e6 __workq_kernreturn + 10
1   libsystem_pthread.dylib       	0x00007fffa5efc7c5 _pthread_wqthread + 1426
2   libsystem_pthread.dylib       	0x00007fffa5efc221 start_wqthread + 13

Thread 4:
0   libsystem_kernel.dylib        	0x00007fffa5e154e6 __workq_kernreturn + 10
1   libsystem_pthread.dylib       	0x00007fffa5efc7c5 _pthread_wqthread + 1426
2   libsystem_pthread.dylib       	0x00007fffa5efc221 start_wqthread + 13

Thread 5:
0   libsystem_kernel.dylib        	0x00007fffa5e154e6 __workq_kernreturn + 10
1   libsystem_pthread.dylib       	0x00007fffa5efc7c5 _pthread_wqthread + 1426
2   libsystem_pthread.dylib       	0x00007fffa5efc221 start_wqthread + 13

Thread 6:
0   libsystem_kernel.dylib        	0x00007fffa5e154e6 __workq_kernreturn + 10
1   libsystem_pthread.dylib       	0x00007fffa5efc7c5 _pthread_wqthread + 1426
2   libsystem_pthread.dylib       	0x00007fffa5efc221 start_wqthread + 13

Thread 7:
0   libsystem_kernel.dylib        	0x00007fffa5e154e6 __workq_kernreturn + 10
1   libsystem_pthread.dylib       	0x00007fffa5efc7c5 _pthread_wqthread + 1426
2   libsystem_pthread.dylib       	0x00007fffa5efc221 start_wqthread + 13

Thread 8:
0   libsystem_kernel.dylib        	0x00007fffa5e154e6 __workq_kernreturn + 10
1   libsystem_pthread.dylib       	0x00007fffa5efc7c5 _pthread_wqthread + 1426
2   libsystem_pthread.dylib       	0x00007fffa5efc221 start_wqthread + 13

Thread 9:
0   libsystem_kernel.dylib        	0x00007fffa5e154e6 __workq_kernreturn + 10
1   libsystem_pthread.dylib       	0x00007fffa5efc7c5 _pthread_wqthread + 1426
2   libsystem_pthread.dylib       	0x00007fffa5efc221 start_wqthread + 13

Thread 10:
0   libsystem_kernel.dylib        	0x00007fffa5e0d41a mach_msg_trap + 10
1   libsystem_kernel.dylib        	0x00007fffa5e0c867 mach_msg + 55
2   com.apple.CoreFoundation      	0x00007fff90ca78d4 __CFRunLoopServiceMachPort + 212
3   com.apple.CoreFoundation      	0x00007fff90ca6d61 __CFRunLoopRun + 1361
4   com.apple.CoreFoundation      	0x00007fff90ca65b4 CFRunLoopRunSpecific + 420
5   com.apple.Foundation          	0x00007fff926a3cb2 -[NSRunLoop(NSRunLoop) runMode:beforeDate:] + 277
6   com.apple.DTDeviceKitBase     	0x0000000117a9b317 -[DTDKRemoteDeviceDataListener listenerThreadImplementation] + 1063
7   com.apple.Foundation          	0x00007fff926b430d __NSThread__start__ + 1243
8   libsystem_pthread.dylib       	0x00007fffa5efcabb _pthread_body + 180
9   libsystem_pthread.dylib       	0x00007fffa5efca07 _pthread_start + 286
10  libsystem_pthread.dylib       	0x00007fffa5efc231 thread_start + 13

Thread 11:: com.apple.CFSocket.private
0   libsystem_kernel.dylib        	0x00007fffa5e14f4e __select + 10
1   com.apple.CoreFoundation      	0x00007fff90ce272a __CFSocketManager + 682
2   libsystem_pthread.dylib       	0x00007fffa5efcabb _pthread_body + 180
3   libsystem_pthread.dylib       	0x00007fffa5efca07 _pthread_start + 286
4   libsystem_pthread.dylib       	0x00007fffa5efc231 thread_start + 13

Thread 12:
0   libsystem_kernel.dylib        	0x00007fffa5e14c8a __psynch_cvwait + 10
1   libsystem_pthread.dylib       	0x00007fffa5efd97a _pthread_cond_wait + 712
2   libc++.1.dylib                	0x00007fffa488b58d std::__1::condition_variable::wait(std::__1::unique_lock<std::__1::mutex>&) + 47
3   com.apple.JavaScriptCore      	0x00007fff93afe6dc void std::__1::condition_variable_any::wait<std::__1::unique_lock<bmalloc::Mutex> >(std::__1::unique_lock<bmalloc::Mutex>&) + 108
4   com.apple.JavaScriptCore      	0x00007fff93afe65b bmalloc::AsyncTask<bmalloc::Heap, void (bmalloc::Heap::*)()>::threadRunLoop() + 155
5   com.apple.JavaScriptCore      	0x00007fff93afe529 bmalloc::AsyncTask<bmalloc::Heap, void (bmalloc::Heap::*)()>::threadEntryPoint(bmalloc::AsyncTask<bmalloc::Heap, void (bmalloc::Heap::*)()>*) + 9
6   com.apple.JavaScriptCore      	0x00007fff93afe7dd void* std::__1::__thread_proxy<std::__1::tuple<void (*)(bmalloc::AsyncTask<bmalloc::Heap, void (bmalloc::Heap::*)()>*), bmalloc::AsyncTask<bmalloc::Heap, void (bmalloc::Heap::*)()>*> >(void*) + 93
7   libsystem_pthread.dylib       	0x00007fffa5efcabb _pthread_body + 180
8   libsystem_pthread.dylib       	0x00007fffa5efca07 _pthread_start + 286
9   libsystem_pthread.dylib       	0x00007fffa5efc231 thread_start + 13

Thread 13:: com.apple.NSURLConnectionLoader
0   libsystem_kernel.dylib        	0x00007fffa5e0d41a mach_msg_trap + 10
1   libsystem_kernel.dylib        	0x00007fffa5e0c867 mach_msg + 55
2   com.apple.CoreFoundation      	0x00007fff90ca78d4 __CFRunLoopServiceMachPort + 212
3   com.apple.CoreFoundation      	0x00007fff90ca6d61 __CFRunLoopRun + 1361
4   com.apple.CoreFoundation      	0x00007fff90ca65b4 CFRunLoopRunSpecific + 420
5   com.apple.CFNetwork           	0x00007fff8fe7c144 +[NSURLConnection(Loader) _resourceLoadLoop:] + 313
6   com.apple.Foundation          	0x00007fff926b430d __NSThread__start__ + 1243
7   libsystem_pthread.dylib       	0x00007fffa5efcabb _pthread_body + 180
8   libsystem_pthread.dylib       	0x00007fffa5efca07 _pthread_start + 286
9   libsystem_pthread.dylib       	0x00007fffa5efc231 thread_start + 13

Thread 14:: com.apple.NSEventThread
0   libsystem_kernel.dylib        	0x00007fffa5e0d41a mach_msg_trap + 10
1   libsystem_kernel.dylib        	0x00007fffa5e0c867 mach_msg + 55
2   com.apple.CoreFoundation      	0x00007fff90ca78d4 __CFRunLoopServiceMachPort + 212
3   com.apple.CoreFoundation      	0x00007fff90ca6d61 __CFRunLoopRun + 1361
4   com.apple.CoreFoundation      	0x00007fff90ca65b4 CFRunLoopRunSpecific + 420
5   com.apple.AppKit              	0x00007fff8ea8ae9e _NSEventThread + 205
6   libsystem_pthread.dylib       	0x00007fffa5efcabb _pthread_body + 180
7   libsystem_pthread.dylib       	0x00007fffa5efca07 _pthread_start + 286
8   libsystem_pthread.dylib       	0x00007fffa5efc231 thread_start + 13

Thread 15:: DYMobileDeviceManager
0   libsystem_kernel.dylib        	0x00007fffa5e0d41a mach_msg_trap + 10
1   libsystem_kernel.dylib        	0x00007fffa5e0c867 mach_msg + 55
2   com.apple.CoreFoundation      	0x00007fff90ca78d4 __CFRunLoopServiceMachPort + 212
3   com.apple.CoreFoundation      	0x00007fff90ca6d61 __CFRunLoopRun + 1361
4   com.apple.CoreFoundation      	0x00007fff90ca65b4 CFRunLoopRunSpecific + 420
5   com.apple.Foundation          	0x00007fff926a3cb2 -[NSRunLoop(NSRunLoop) runMode:beforeDate:] + 277
6   com.apple.Foundation          	0x00007fff926a3b8a -[NSRunLoop(NSRunLoop) run] + 76
7   com.apple.GPUToolsMobileFoundation	0x000000011d9571b7 -[DYMobileDeviceManager _deviceNotificationThread:] + 134
8   com.apple.Foundation          	0x00007fff926b430d __NSThread__start__ + 1243
9   libsystem_pthread.dylib       	0x00007fffa5efcabb _pthread_body + 180
10  libsystem_pthread.dylib       	0x00007fffa5efca07 _pthread_start + 286
11  libsystem_pthread.dylib       	0x00007fffa5efc231 thread_start + 13

Thread 16:
0   libsystem_kernel.dylib        	0x00007fffa5e14c8a __psynch_cvwait + 10
1   libsystem_pthread.dylib       	0x00007fffa5efd97a _pthread_cond_wait + 712
2   com.apple.Xcode.DevToolsCore  	0x00000001174d14cd -[XCBlockQueue _processBlocksInThreadSlotNumber:] + 575
3   com.apple.Foundation          	0x00007fff926b430d __NSThread__start__ + 1243
4   libsystem_pthread.dylib       	0x00007fffa5efcabb _pthread_body + 180
5   libsystem_pthread.dylib       	0x00007fffa5efca07 _pthread_start + 286
6   libsystem_pthread.dylib       	0x00007fffa5efc231 thread_start + 13

Thread 17:
0   libsystem_kernel.dylib        	0x00007fffa5e14c8a __psynch_cvwait + 10
1   libsystem_pthread.dylib       	0x00007fffa5efd97a _pthread_cond_wait + 712
2   com.apple.Xcode.DevToolsCore  	0x00000001174d14cd -[XCBlockQueue _processBlocksInThreadSlotNumber:] + 575
3   com.apple.Foundation          	0x00007fff926b430d __NSThread__start__ + 1243
4   libsystem_pthread.dylib       	0x00007fffa5efcabb _pthread_body + 180
5   libsystem_pthread.dylib       	0x00007fffa5efca07 _pthread_start + 286
6   libsystem_pthread.dylib       	0x00007fffa5efc231 thread_start + 13

Thread 18:
0   libsystem_kernel.dylib        	0x00007fffa5e14c8a __psynch_cvwait + 10
1   libsystem_pthread.dylib       	0x00007fffa5efd97a _pthread_cond_wait + 712
2   com.apple.Xcode.DevToolsCore  	0x00000001174d14cd -[XCBlockQueue _processBlocksInThreadSlotNumber:] + 575
3   com.apple.Foundation          	0x00007fff926b430d __NSThread__start__ + 1243
4   libsystem_pthread.dylib       	0x00007fffa5efcabb _pthread_body + 180
5   libsystem_pthread.dylib       	0x00007fffa5efca07 _pthread_start + 286
6   libsystem_pthread.dylib       	0x00007fffa5efc231 thread_start + 13

Thread 19:
0   libsystem_kernel.dylib        	0x00007fffa5e14c8a __psynch_cvwait + 10
1   libsystem_pthread.dylib       	0x00007fffa5efd97a _pthread_cond_wait + 712
2   com.apple.Xcode.DevToolsCore  	0x00000001174d14cd -[XCBlockQueue _processBlocksInThreadSlotNumber:] + 575
3   com.apple.Foundation          	0x00007fff926b430d __NSThread__start__ + 1243
4   libsystem_pthread.dylib       	0x00007fffa5efcabb _pthread_body + 180
5   libsystem_pthread.dylib       	0x00007fffa5efca07 _pthread_start + 286
6   libsystem_pthread.dylib       	0x00007fffa5efc231 thread_start + 13

Thread 20:
0   libsystem_kernel.dylib        	0x00007fffa5e14c8a __psynch_cvwait + 10
1   libsystem_pthread.dylib       	0x00007fffa5efd97a _pthread_cond_wait + 712
2   com.apple.Xcode.DevToolsCore  	0x00000001174d14cd -[XCBlockQueue _processBlocksInThreadSlotNumber:] + 575
3   com.apple.Foundation          	0x00007fff926b430d __NSThread__start__ + 1243
4   libsystem_pthread.dylib       	0x00007fffa5efcabb _pthread_body + 180
5   libsystem_pthread.dylib       	0x00007fffa5efca07 _pthread_start + 286
6   libsystem_pthread.dylib       	0x00007fffa5efc231 thread_start + 13

Thread 21:
0   libsystem_kernel.dylib        	0x00007fffa5e0d41a mach_msg_trap + 10
1   libsystem_kernel.dylib        	0x00007fffa5e0c867 mach_msg + 55
2   com.apple.CoreFoundation      	0x00007fff90ca78d4 __CFRunLoopServiceMachPort + 212
3   com.apple.CoreFoundation      	0x00007fff90ca6d61 __CFRunLoopRun + 1361
4   com.apple.CoreFoundation      	0x00007fff90ca65b4 CFRunLoopRunSpecific + 420
5   com.apple.CoreFoundation      	0x00007fff90ce5c51 CFRunLoopRun + 97
6   com.apple.DebugSymbols        	0x00007fff9c9e720e SpotlightQueryThread(void*) + 478
7   libsystem_pthread.dylib       	0x00007fffa5efcabb _pthread_body + 180
8   libsystem_pthread.dylib       	0x00007fffa5efca07 _pthread_start + 286
9   libsystem_pthread.dylib       	0x00007fffa5efc231 thread_start + 13

Thread 22:
0   libsystem_kernel.dylib        	0x00007fffa5e14fde __semwait_signal + 10
1   libsystem_c.dylib             	0x00007fffa5d9bb92 nanosleep + 199
2   com.apple.CoreSymbolication   	0x00007fff9c57aa3e cleaner_thread_main(void*) + 42
3   libsystem_pthread.dylib       	0x00007fffa5efcabb _pthread_body + 180
4   libsystem_pthread.dylib       	0x00007fffa5efca07 _pthread_start + 286
5   libsystem_pthread.dylib       	0x00007fffa5efc231 thread_start + 13

Thread 0 crashed with X86 Thread State (64-bit):
  rax: 0x0000000000000000  rbx: 0x0000000000000006  rcx: 0x00007fff57d0ed78  rdx: 0x0000000000000000
  rdi: 0x0000000000000307  rsi: 0x0000000000000006  rbp: 0x00007fff57d0eda0  rsp: 0x00007fff57d0ed78
   r8: 0x00007f83a5705660   r9: 0x00007fffab4f4568  r10: 0x0000000008000000  r11: 0x0000000000000206
  r12: 0x00007f83a5706a20  r13: 0x00007fffa53fcf50  r14: 0x00007fffae9db3c0  r15: 0x00007f83ad71fe10
  rip: 0x00007fffa5e14dda  rfl: 0x0000000000000206  cr2: 0x00007fffae9bd128
  
Logical CPU:     0
Error Code:      0x02000148
Trap Number:     133


Binary Images:
       0x107eee000 -        0x107eeefff  com.apple.dt.Xcode (8.0 - 11246) <AAB37A32-8816-31BC-BD62-C7BED66CD615> /Applications/Xcode.app/Contents/MacOS/Xcode
       0x107ef7000 -        0x107efcffb +libViewDebuggerSupport.dylib (11232) <9EFD3A71-1F25-33FB-A427-5A41F0F423A9> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/Library/Debugger/libViewDebuggerSupport.dylib
       0x107f04000 -        0x10845cfff  com.apple.dt.DVTFoundation (8.0 - 11224.1) <715A4010-207B-33B2-974F-6D03FFA7E9F2> /Applications/Xcode.app/Contents/SharedFrameworks/DVTFoundation.framework/Versions/A/DVTFoundation
       0x1086ab000 -        0x1089feff7  com.apple.dt.DVTKit (8.0 - 11224.1) <A16370B2-6356-30CF-924F-68981F330114> /Applications/Xcode.app/Contents/SharedFrameworks/DVTKit.framework/Versions/A/DVTKit
       0x108c2c000 -        0x109272fff  com.apple.dt.IDEFoundation (8.0 - 11246) <7F66AD0D-F516-3FFC-95AF-C59204C43DAE> /Applications/Xcode.app/Contents/Frameworks/IDEFoundation.framework/Versions/A/IDEFoundation
       0x1096b9000 -        0x109fafff7  com.apple.dt.IDEKit (8.0 - 11246) <11DCDF49-54E6-371F-B945-E3C816085025> /Applications/Xcode.app/Contents/Frameworks/IDEKit.framework/Versions/A/IDEKit
       0x10a606000 -        0x10a631fff  com.apple.dt.instruments.DTXConnectionServices (8.0 - 61122) <AB3A86A5-440A-336B-9682-608DF5DA3EFC> /Applications/Xcode.app/Contents/SharedFrameworks/DTXConnectionServices.framework/Versions/A/DTXConnectionServices
       0x10a65c000 -        0x10a6f3ff7  com.apple.dt.instruments.DVTInstrumentsFoundation (8.0 - 61122) <2F37FE8D-B59A-35E1-BC32-BF1333F232F8> /Applications/Xcode.app/Contents/SharedFrameworks/DVTInstrumentsFoundation.framework/Versions/A/DVTInstrumentsFoundation
       0x10a771000 -        0x10a7fbfff  com.apple.CoreSymbolicationDT (8.0 - 61051) <F2EA8C32-AED9-3A0C-BF8B-6B016C03E136> /Applications/Xcode.app/Contents/SharedFrameworks/CoreSymbolicationDT.framework/Versions/A/CoreSymbolicationDT
       0x10a850000 -        0x10a8bbfff  com.apple.SymbolicationDT (8.0 - 61086) <AF366D42-8A53-30D4-BB53-258CC87B245B> /Applications/Xcode.app/Contents/SharedFrameworks/SymbolicationDT.framework/Versions/A/SymbolicationDT
       0x10a90a000 -        0x10a90eff7  com.apple.kperf (1.0 - 1) <4644C22A-B3B0-3E5D-9AAC-766B7CB909D4> /System/Library/PrivateFrameworks/kperf.framework/Versions/A/kperf
       0x10a917000 -        0x10a918fff  libpanel.5.4.dylib (51) <CD909E22-57CB-30DA-AAAC-7036AE5932A7> /usr/lib/libpanel.5.4.dylib
       0x10a91e000 -        0x10a925ff7  com.apple.kperfdataDT (1.0 - 1) <862164FB-848F-3F7B-B440-AD4F5802FA14> /Applications/Xcode.app/Contents/SharedFrameworks/kperfdataDT.framework/Versions/A/kperfdataDT
       0x10a92f000 -        0x10a952fff  com.apple.StreamingZip (1.0 - 1) <CD0C9A3F-C75C-3C84-BCF8-00BFE83ABD39> /System/Library/PrivateFrameworks/StreamingZip.framework/Versions/A/StreamingZip
       0x10a96a000 -        0x10a9e3ff7  libdtrace.dylib (209) <229B7E51-829E-3CA5-ADAD-49733597448A> /usr/lib/libdtrace.dylib
       0x10aa0c000 -        0x10aa0cffb  com.apple.IDEWatchKit1SupportUI (8.0 - 11011) <51595700-A4CA-30D3-AFAA-BCE4A1A0451C> /Applications/Xcode.app/Contents/PlugIns/IDEWatchKit1SupportUI.ideplugin/Contents/MacOS/IDEWatchKit1SupportUI
       0x10aa11000 -        0x10aa25ff7  com.apple.dt.instruments.DVTInstrumentsUtilities (8.0 - 61122) <9FB240D1-BB44-3696-8D39-0AE504B19BC0> /Applications/Xcode.app/Contents/SharedFrameworks/DVTInstrumentsUtilities.framework/Versions/A/DVTInstrumentsUtilities
       0x10aa3e000 -        0x10aa7dff7  com.apple.DebugSymbols (137 - 137) <DFB8751D-4E43-3F39-B4D4-8E7F71E5C544> /Applications/Xcode.app/Contents/SharedFrameworks/DebugSymbolsDT.framework/Versions/A/DebugSymbolsDT
       0x10aa9d000 -        0x10aa9dfff  com.apple.Metal (1.0 - 1) <9858BAF7-9168-3370-9215-C759CECA2953> /Applications/Xcode.app/Contents/PlugIns/Xcode3Core.ideplugin/Contents/SharedSupport/Developer/Library/Xcode/Plug-ins/Metal.xcplugin/Contents/MacOS/Metal
       0x10aaa1000 -        0x10ab35ff3  com.apple.dt.XCTest (1.0 - 11134) <7F595311-BDF2-3BBB-8293-835F31CC1CC7> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/Library/Frameworks/XCTest.framework/Versions/A/XCTest
       0x10abaa000 -        0x10abd3ff3  com.apple.dt.DVTAnalytics (1.0 - 1) <3E28F2FF-8C24-32FD-85EA-1548C3DA6139> /Applications/Xcode.app/Contents/SharedFrameworks/DVTAnalytics.framework/Versions/A/DVTAnalytics
       0x10abf8000 -        0x10ac02ff7  com.apple.dt.DVTServices (8.0 - 11224.1) <0320B2AA-9887-3D91-ADA1-5E6F13598010> /Applications/Xcode.app/Contents/SharedFrameworks/DVTServices.framework/Versions/A/DVTServices
       0x10ac0f000 -        0x10ac48ff7  com.apple.dt.DVTPortal (8.0 - 1) <7D2E0F40-5928-38FF-B9D8-D2E90547DBAD> /Applications/Xcode.app/Contents/SharedFrameworks/DVTPortal.framework/Versions/A/DVTPortal
       0x10ac75000 -        0x10ace8ff7  com.apple.dt.Xcode.DVTSourceControl (8.0 - 11125) <58B581F1-3E07-3EA3-AC16-E679692213DF> /Applications/Xcode.app/Contents/SharedFrameworks/DVTSourceControl.framework/Versions/A/DVTSourceControl
       0x10ad34000 -        0x10adc5ff7  com.apple.dt.SourceKit (1.0 - 11067) <58C6F7A4-F0B2-300B-9199-49D4EEAD4406> /Applications/Xcode.app/Contents/SharedFrameworks/SourceKit.framework/Versions/A/SourceKit
       0x10ae08000 -        0x10ae1fff3  com.apple.dt.DVTAnalyticsClient (8.0 - 1) <B0D9AE66-304F-3C80-AD36-230D3C2CFB91> /Applications/Xcode.app/Contents/SharedFrameworks/DVTAnalyticsClient.framework/Versions/A/DVTAnalyticsClient
       0x10ae3b000 -        0x10b0aafff +libswiftCore.dylib (3.0 - 800.0.46.2) <9B104D3B-B8B8-35EF-9AD4-9B81A718FFAD> /Applications/Xcode.app/Contents/SharedFrameworks/SourceKit.framework/Versions/A/Frameworks/libswiftCore.dylib
       0x10b31f000 -        0x10b325ff7 +libswiftDarwin.dylib (3.0 - 800.0.46.2) <919C618F-A903-339A-BE2A-EA4594F2CB17> /Applications/Xcode.app/Contents/SharedFrameworks/SourceKit.framework/Versions/A/Frameworks/libswiftDarwin.dylib
       0x10b330000 -        0x10b34bff7 +libswiftDispatch.dylib (3.0 - 800.0.46.2) <B7DF7971-1E2F-3C56-BA39-FD4BA1671FFC> /Applications/Xcode.app/Contents/SharedFrameworks/SourceKit.framework/Versions/A/Frameworks/libswiftDispatch.dylib
       0x10b384000 -        0x10b389fff +libswiftObjectiveC.dylib (3.0 - 800.0.46.2) <D4271CBF-B9EC-3000-B527-0F601A29B646> /Applications/Xcode.app/Contents/SharedFrameworks/SourceKit.framework/Versions/A/Frameworks/libswiftObjectiveC.dylib
       0x10b392000 -        0x10b3a1ff3  com.apple.dt.XcodeKit (1.0 - 11246) <3844CD6C-D7A0-3B85-AA2E-F7692E732EB9> /Applications/Xcode.app/Contents/Developer/Library/Frameworks/XcodeKit.framework/Versions/A/XcodeKit
       0x10b3b1000 -        0x10b3dffff  com.apple.dt.DVTProducts (1.0 - 1) <EE4E5FC8-1335-31BA-A896-387C359F80FB> /Applications/Xcode.app/Contents/SharedFrameworks/DVTProducts.framework/Versions/A/DVTProducts
       0x10b401000 -        0x10b417ff3  com.apple.DADocSetManagement (8.0 - 11019) <C6C9AE32-CFAD-3607-B769-7622DB9B1CC6> /Applications/Xcode.app/Contents/SharedFrameworks/DADocSetManagement.framework/Versions/A/DADocSetManagement
       0x10b429000 -        0x10b42bffb  com.apple.dt.DVTDeveloperModeHelper (1.0 - 1) <D9569D58-737F-3DBC-935D-92F7A1EEAC80> /Applications/Xcode.app/Contents/SharedFrameworks/DVTDeveloperModeHelper.framework/Versions/A/DVTDeveloperModeHelper
       0x10b432000 -        0x10b4eaff7  com.apple.dt.instruments.DTGraphKit (8.0 - 61118) <49A8F3F2-A540-3797-86D9-2A57F5FF527E> /Applications/Xcode.app/Contents/SharedFrameworks/DTGraphKit.framework/Versions/A/DTGraphKit
       0x10b552000 -        0x10b59fff7  com.apple.DADocSetAccess (8.0 - 11019) <E67DF651-6A0D-3A3C-B25A-CB198B1E87BE> /Applications/Xcode.app/Contents/SharedFrameworks/DADocSetAccess.framework/Versions/A/DADocSetAccess
       0x10b5ca000 -        0x10b69efff  com.apple.PubSub (1.0.5 - 65.41) <69420016-D0E9-3863-9E44-CC8C1C98ACB1> /System/Library/Frameworks/PubSub.framework/Versions/A/PubSub
       0x10ba0e000 -        0x10ba7cfff  com.apple.CoreSimulator (303.8 - 303.8) <815800AD-312B-311C-91E7-3FDB9AF37FB4> /Applications/Xcode.app/Contents/Developer/Library/PrivateFrameworks/CoreSimulator.framework/CoreSimulator
       0x10bab4000 -        0x10bab6ffb  com.apple.CoreSimulator.CoreSimDeviceIO (303.8 - 303.8) <AD004BBD-7C82-35A3-A329-90E300AECCC9> /Applications/Xcode.app/Contents/Developer/Library/PrivateFrameworks/CoreSimulator.framework/Versions/A/Frameworks/CoreSimDeviceIO.framework/Versions/A/CoreSimDeviceIO
       0x10babc000 -        0x10bac8fff  com.apple.CoreSimulator.FoundationXPC (303.8 - 303.8) <C28043F6-3753-3AF2-BBAE-087A35DCE52F> /Applications/Xcode.app/Contents/Developer/Library/PrivateFrameworks/CoreSimulator.framework/Versions/A/Frameworks/FoundationXPC.framework/Versions/A/FoundationXPC
       0x10bbd9000 -        0x10bc161c7  dyld (421.1) <A525EAEA-AF86-30C2-B360-3D093B4F0828> /usr/lib/dyld
       0x10bc64000 -        0x10db7aff3 +libclang.dylib (800.0.38) <ED51404D-5256-31A0-BB73-D2B719EDC398> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libclang.dylib
       0x10e075000 -        0x10f759ff7 +libLTO.dylib (800.0.38) <FD17FED3-7141-3D0F-A9E9-AC1B03321A4A> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libLTO.dylib
       0x10fbdd000 -        0x10fbedff7  com.apple.dt.IDELanguageSupportCore (8.0 - 11148) <A9B29CF5-5512-37CE-B852-0F6304264131> /Applications/Xcode.app/Contents/PlugIns/IDELanguageSupportCore.ideplugin/Contents/MacOS/IDELanguageSupportCore
       0x112881000 -        0x1128abff7  com.apple.dt.dbg.DebuggerFoundation (8.0 - 11232) <68F8B974-41BD-3315-BCD2-3845D45E9A24> /Applications/Xcode.app/Contents/PlugIns/DebuggerFoundation.ideplugin/Contents/MacOS/DebuggerFoundation
       0x1128d6000 -        0x112960ffb  com.apple.dt.IBAutolayoutFoundation (8.0 - 11201) <6BC503FC-2B66-377E-B275-B75A84450C88> /Applications/Xcode.app/Contents/Frameworks/IBAutolayoutFoundation.framework/Versions/A/IBAutolayoutFoundation
       0x1129be000 -        0x1129c6ff3  com.apple.DevToolsFoundation (10.0 - 11204) <80DBC2EB-3CF1-3E76-9C06-1B7498168656> /Applications/Xcode.app/Contents/PlugIns/Xcode3Core.ideplugin/Contents/Frameworks/DevToolsFoundation.framework/Versions/A/DevToolsFoundation
       0x1129d1000 -        0x1129d2ffb  com.apple.dt.dbg.DebuggerLLDBService (8.0 - 11232) <E57E2C8D-54A9-3433-9B5C-B7BCE92E712B> /Applications/Xcode.app/Contents/PlugIns/DebuggerLLDBService.ideplugin/Contents/MacOS/DebuggerLLDBService
       0x1129d8000 -        0x1129ecff3  com.apple.DVTiPhoneSimulatorRemoteClient (8.0 - 11169) <484BD906-77F1-34CD-AA47-E8A35488FD84> /Applications/Xcode.app/Contents/SharedFrameworks/DVTiPhoneSimulatorRemoteClient.framework/Versions/A/DVTiPhoneSimulatorRemoteClient
       0x112a01000 -        0x112a04ff7  com.apple.XCWatchKit1Support (1.0 - 1) <21241E3C-AEB2-32A1-AFAB-019FEA5B36BE> /Applications/Xcode.app/Contents/PlugIns/Xcode3Core.ideplugin/Contents/SharedSupport/Developer/Library/Xcode/Plug-ins/XCWatchKit1Support.xcplugin/Contents/MacOS/XCWatchKit1Support
       0x112a09000 -        0x112a09fff  com.apple.IBCompilerPlugin (10.0 - 11201) <A2E9743C-D801-3FFE-928A-EC93D1A41F3E> /Applications/Xcode.app/Contents/PlugIns/Xcode3Core.ideplugin/Contents/SharedSupport/Developer/Library/Xcode/Plug-ins/IBCompilerPlugin.xcplugin/Contents/MacOS/IBCompilerPlugin
       0x112dc5000 -        0x112dd1ff7 +libswiftAppKit.dylib (3.0 - 800.0.46.2) <614C47ED-3CE9-3619-A356-9E0D813DBDAB> /Applications/Xcode.app/Contents/Frameworks/libswiftAppKit.dylib
       0x112dde000 -        0x112de2ffe +libswiftCoreImage.dylib (3.0 - 800.0.46.2) <D88B54FB-3A7B-30E7-B918-6472D35B5153> /Applications/Xcode.app/Contents/Frameworks/libswiftCoreImage.dylib
       0x112de7000 -        0x112deaff7 +libswiftIOKit.dylib (3.0 - 800.0.46.2) <1528E5EB-02D6-3E07-9897-BD00B18E93D8> /Applications/Xcode.app/Contents/Frameworks/libswiftIOKit.dylib
       0x112dfe000 -        0x112dfefff  com.apple.CoreSimulator.SimDeviceType.Apple-Watch-38mm (1.0 - 1) <E7D70E73-EBDF-3461-B620-DF2039A8A378> /Applications/Xcode.app/Contents/Developer/Platforms/WatchSimulator.platform/Developer/Library/CoreSimulator/Profiles/DeviceTypes/Apple Watch - 38mm.simdevicetype/Contents/MacOS/Apple Watch - 38mm
       0x112e02000 -        0x112e27fff  com.apple.DiscRecordingUI (9.0.3 - 9030.4.5) <A6966468-E26F-3BB9-80AF-41ECC139CEF4> /System/Library/Frameworks/DiscRecordingUI.framework/Versions/A/DiscRecordingUI
       0x112e49000 -        0x112e49fff  com.apple.CoreSimulator.SimDeviceType.Apple-Watch-42mm (1.0 - 1) <85ED46E2-6069-38C6-809F-E55834ADA0BA> /Applications/Xcode.app/Contents/Developer/Platforms/WatchSimulator.platform/Developer/Library/CoreSimulator/Profiles/DeviceTypes/Apple Watch - 42mm.simdevicetype/Contents/MacOS/Apple Watch - 42mm
       0x112e4d000 -        0x112e58fff  com.apple.SimulatorKit (1.0 - 303.8) <1D7D87CA-06BF-397D-8962-1090D4E9483C> /Applications/Xcode.app/Contents/Developer/Library/PrivateFrameworks/SimulatorKit.framework/Versions/A/SimulatorKit
       0x112e65000 -        0x112e73ff3  com.apple.DTDeviceKit (4.2 - 11169) <E74F7DF6-E0FA-39A2-87E2-45A416A48690> /Applications/Xcode.app/Contents/SharedFrameworks/DTDeviceKit.framework/Versions/A/DTDeviceKit
       0x112e83000 -        0x112e83ff7  com.apple.CoreSimulator.SimDeviceType.Apple-Watch-Series-2-38mm (1.0 - 1) <8F4FED93-FFC8-31AE-AB63-190B4726DFBE> /Applications/Xcode.app/Contents/Developer/Platforms/WatchSimulator.platform/Developer/Library/CoreSimulator/Profiles/DeviceTypes/Apple Watch Series 2 - 38mm.simdevicetype/Contents/MacOS/Apple Watch Series 2 - 38mm
       0x112e87000 -        0x112f07ff3  com.apple.dt.IDE.IDEInterfaceBuilderWatchKitIntegration (8.0 - 11077) <57798D6B-0CC5-33B3-82F6-3E655307ACA9> /Applications/Xcode.app/Contents/Developer/Platforms/WatchSimulator.platform/Developer/Library/Xcode/PrivatePlugIns/IDEInterfaceBuilderWatchKitIntegration.ideplugin/Contents/MacOS/IDEInterfaceBuilderWatchKitIntegration
       0x112f50000 -        0x112f50ff7  com.apple.CoreSimulator.SimDeviceType.Apple-Watch-Series-2-42mm (1.0 - 1) <EBC0E8C8-1EC7-33EF-92EA-AE0A2A089645> /Applications/Xcode.app/Contents/Developer/Platforms/WatchSimulator.platform/Developer/Library/CoreSimulator/Profiles/DeviceTypes/Apple Watch Series 2 - 42mm.simdevicetype/Contents/MacOS/Apple Watch Series 2 - 42mm
       0x112f5b000 -        0x112f5ffff  com.apple.audio.AppleHDAHALPlugIn (276.26 - 276.26) <E792FB29-7228-39E4-AA4E-9739F3E54800> /System/Library/Extensions/AppleHDA.kext/Contents/PlugIns/AppleHDAHALPlugIn.bundle/Contents/MacOS/AppleHDAHALPlugIn
       0x112f68000 -        0x11306fff3  com.apple.dt.IBFoundation (8.0 - 11201) <B972E4ED-DD72-3289-83FF-DF7E5E57F7E4> /Applications/Xcode.app/Contents/Frameworks/IBFoundation.framework/Versions/A/IBFoundation
       0x113135000 -        0x1131acff3  com.apple.CoreThemeDefinition (2.0 - 284) <FE971D08-9C67-308C-9028-F55AFD46AD5C> /System/Library/PrivateFrameworks/CoreThemeDefinition.framework/Versions/A/CoreThemeDefinition
       0x1131fb000 -        0x11327bff7  com.apple.dt.dbg.DebuggerLLDB (8.0 - 11232) <80A3A39E-2A5B-3F3F-B462-9260EBF88BE4> /Applications/Xcode.app/Contents/PlugIns/DebuggerLLDB.ideplugin/Contents/MacOS/DebuggerLLDB
       0x113302000 -        0x116365ff7  com.apple.LLDB.framework (1.360.1.50 - 360.1.50) <284729C1-3F20-37F6-976D-257F6CF99635> /Applications/Xcode.app/Contents/SharedFrameworks/LLDB.framework/Versions/A/LLDB
       0x1170e9000 -        0x117128fff  com.apple.LLDBRPC (1.0 - 360.1.50) <5ADAB025-8205-3A81-843C-B7F22B482394> /Applications/Xcode.app/Contents/SharedFrameworks/LLDBRPC.framework/Versions/A/LLDBRPC
       0x11715f000 -        0x117250fff  org.python.python (2.7.10 - 2.7.10) <9A7B981D-B190-38FF-A861-770007B7FCD9> /System/Library/Frameworks/Python.framework/Versions/2.7/Python
       0x1172b8000 -        0x117336ff3  com.apple.dt.IDE.Xcode3Core (8.0 - 11204) <1F29FBED-9230-3977-A28A-94474AA1ED5D> /Applications/Xcode.app/Contents/PlugIns/Xcode3Core.ideplugin/Contents/MacOS/Xcode3Core
       0x117380000 -        0x117741fff  com.apple.Xcode.DevToolsCore (10.0 - 11204) <CC5710EB-2062-3B5E-AAD3-710EEEF66CF8> /Applications/Xcode.app/Contents/PlugIns/Xcode3Core.ideplugin/Contents/Frameworks/DevToolsCore.framework/Versions/A/DevToolsCore
       0x11790c000 -        0x117942ff3  com.apple.Xcode.DevToolsSupport (10.0 - 11204) <1C6EB43D-39D3-34EA-9D99-EFCC890B82D4> /Applications/Xcode.app/Contents/PlugIns/Xcode3Core.ideplugin/Contents/Frameworks/DevToolsSupport.framework/Versions/A/DevToolsSupport
       0x11796b000 -        0x117a07ff7  com.apple.dt.IDE.IDEiOSSupportCore (8.0 - 11169) <B6AF7C40-078F-38B8-B314-6ED92A687007> /Applications/Xcode.app/Contents/PlugIns/IDEiOSSupportCore.ideplugin/Contents/MacOS/IDEiOSSupportCore
       0x117a71000 -        0x117b0ffff  com.apple.DTDeviceKitBase (8.0 - 11169) <35EE259A-62CE-3078-B99C-B236BA298E78> /Applications/Xcode.app/Contents/SharedFrameworks/DTDeviceKitBase.framework/Versions/A/DTDeviceKitBase
       0x117b7b000 -        0x117cceff7  com.apple.mobiledevice (905.1.2 - 905.1.2) <CAAC5F03-1BD6-3676-A920-82BA7D29BDC3> /System/Library/PrivateFrameworks/MobileDevice.framework/Versions/A/MobileDevice
       0x117d4c000 -        0x117d65ff7  com.apple.DeviceLinkX (5.0 - 264) <B96D2FDE-B3F2-3AD4-A14F-9E04E4F5D82A> /System/Library/PrivateFrameworks/DeviceLink.framework/Versions/A/DeviceLink
       0x117d75000 -        0x117d90ff3  com.apple.dt.XCLanguageSupport (8.0 - 11148) <C03DE334-BE02-3084-A2C3-00E00E0D5E7B> /Applications/Xcode.app/Contents/PlugIns/Xcode3Core.ideplugin/Contents/SharedSupport/Developer/Library/Xcode/Plug-ins/XCLanguageSupport.xcplugin/Contents/MacOS/XCLanguageSupport
       0x117da2000 -        0x117daeff7  com.apple.xcode.plug-in.CoreBuildTasks (10.0 - 11204) <09324C5E-4FA6-3062-AE79-EB674B1CB6D2> /Applications/Xcode.app/Contents/PlugIns/Xcode3Core.ideplugin/Contents/SharedSupport/Developer/Library/Xcode/Plug-ins/CoreBuildTasks.xcplugin/Contents/MacOS/CoreBuildTasks
       0x117db6000 -        0x117db6ff7  com.apple.xcode.compilers.coredata (10.0 - 11204) <DC5904B6-9CAE-34AF-B62E-4819D3194A93> /Applications/Xcode.app/Contents/PlugIns/Xcode3Core.ideplugin/Contents/SharedSupport/Developer/Library/Xcode/Plug-ins/Core Data.xcplugin/Contents/MacOS/Core Data
       0x117de1000 -        0x117de1ff7  com.apple.compilers.clang (10.0 - 11204) <37D6A74F-1235-3A3A-BE41-58812C2717E2> /Applications/Xcode.app/Contents/PlugIns/Xcode3Core.ideplugin/Contents/SharedSupport/Developer/Library/Xcode/Plug-ins/Clang LLVM 1.0.xcplugin/Contents/MacOS/Clang LLVM 1.0
       0x117de5000 -        0x117de6ff3  com.apple.dt.IDEWatchSupportCore (1.0 - 1) <02DD7EA5-B334-38B8-AF53-8C3D0FDE3434> /Applications/Xcode.app/Contents/Developer/Platforms/WatchOS.platform/Developer/Library/Xcode/PrivatePlugIns/IDEWatchSupportCore.ideplugin/Contents/MacOS/IDEWatchSupportCore
       0x117dec000 -        0x117df1ffb  com.apple.dt.IDEiOSPlatformSupportCore (1.0 - 1.0) <34334567-B5BA-343C-8E93-ACB52E82E93C> /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/PrivatePlugIns/IDEiOSPlatformSupportCore.ideplugin/Contents/MacOS/IDEiOSPlatformSupportCore
       0x117df8000 -        0x117dfaffb  com.apple.dt.IDEAppleTVSupportCore (1.0 - 1) <BD24C8E3-27BC-305A-9FFC-C0261613A2B0> /Applications/Xcode.app/Contents/Developer/Platforms/AppleTVOS.platform/Developer/Library/Xcode/PrivatePlugIns/IDEAppleTVSupportCore.ideplugin/Contents/MacOS/IDEAppleTVSupportCore
       0x117e02000 -        0x117e04ffb  com.apple.dt.IDE.IDEOSXSupportCore (8.0 - 11027) <9AF114CA-9E0D-3E53-8740-D58A33DB26DF> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/Library/Xcode/PrivatePlugIns/IDEOSXSupportCore.ideplugin/Contents/MacOS/IDEOSXSupportCore
       0x119008000 -        0x1191eaff3  com.apple.dt.IDE.IDEInterfaceBuilderCocoaIntegration (8.0 - 11201) <064AF853-A17C-3190-93A1-09A125EA723D> /Applications/Xcode.app/Contents/PlugIns/IDEInterfaceBuilderCocoaIntegration.ideplugin/Contents/MacOS/IDEInterfaceBuilderCocoaIntegration
       0x1193af000 -        0x1195fbff3  com.apple.dt.IDE.IDEInterfaceBuilderCocoaTouchIntegration (8.0 - 11161) <2308E3EC-B71A-3EF8-9371-44C89B531F8F> /Applications/Xcode.app/Contents/PlugIns/IDEInterfaceBuilderCocoaTouchIntegration.ideplugin/Contents/MacOS/IDEInterfaceBuilderCocoaTouchIntegration
       0x11970d000 -        0x119722fff  com.apple.dt.IDE.IDEInterfaceBuilderiOSIntegration (8.0 - 11161) <F065354E-B064-31F6-B4C6-1A30DFC404DC> /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Library/Xcode/PrivatePlugIns/IDEInterfaceBuilderiOSIntegration.ideplugin/Contents/MacOS/IDEInterfaceBuilderiOSIntegration
       0x119731000 -        0x11976afff  com.apple.dt.IDE.IDEInterfaceBuilderAppleTVIntegration (8.0 - 3733) <E8FB9812-DFB0-3FF7-95E6-4575CBCA4638> /Applications/Xcode.app/Contents/Developer/Platforms/AppleTVSimulator.platform/Developer/Library/Xcode/PrivatePlugIns/IDEInterfaceBuilderAppleTVIntegration.ideplugin/Contents/MacOS/IDEInterfaceBuilderAppleTVIntegration
       0x1197c4000 -        0x11980bffb  com.apple.dt.IDE.IDEiPhoneSupport (8.0 - 11169) <561175E2-4F3B-33D6-8735-AE152A428FA0> /Applications/Xcode.app/Contents/PlugIns/IDEiPhoneSupport.ideplugin/Contents/MacOS/IDEiPhoneSupport
       0x119d17000 -        0x119d8efff  com.apple.dt.IDE.IDEDocViewer (8.0 - 11232) <B4054F9D-05CE-3445-BB74-5489C8DC0ECA> /Applications/Xcode.app/Contents/PlugIns/IDEDocViewer.ideplugin/Contents/MacOS/IDEDocViewer
       0x119dfa000 -        0x11a00dfff  com.apple.DNTDocumentationModel (1.0 - 1) <2247B704-589E-3857-B55D-E54464FB536C> /Applications/Xcode.app/Contents/SharedFrameworks/DNTDocumentationModel.framework/Versions/A/DNTDocumentationModel
       0x11a0ae000 -        0x11a0f7fff  com.apple.dt.DVTDocumentation (1.0 - 11224.1) <58962CF2-F2FF-3B25-8614-DCD93B1EBD95> /Applications/Xcode.app/Contents/SharedFrameworks/DVTDocumentation.framework/Versions/A/DVTDocumentation
       0x11a149000 -        0x11a18aff7  com.apple.DNTTransformer (1.0 - 1) <812930D3-9ED2-351E-A224-3D3475471DB9> /Applications/Xcode.app/Contents/SharedFrameworks/DNTTransformer.framework/Versions/A/DNTTransformer
       0x11a1a9000 -        0x11a78aff7  com.apple.dt.IDE.IDEInterfaceBuilderKit (8.0 - 11201) <71AEB5F7-E04A-330F-B8CC-4620B010632B> /Applications/Xcode.app/Contents/PlugIns/IDEInterfaceBuilderKit.ideplugin/Contents/MacOS/IDEInterfaceBuilderKit
       0x11abf4000 -        0x11abf7ff7 +libswiftXPC.dylib (3.0 - 800.0.46.2) <BFFBF948-5BD4-3DFC-B33D-30B9B698020C> /Applications/Xcode.app/Contents/Frameworks/libswiftXPC.dylib
       0x11ae00000 -        0x11af68fff  com.apple.audio.units.Components (1.14 - 1.14) <695D3410-4177-3CC3-A419-1127ECC911C4> /System/Library/Components/CoreAudio.component/Contents/MacOS/CoreAudio
       0x11afff000 -        0x11b184ff7  com.apple.dt.IDE.Xcode3UI (8.0 - 11204) <B48E6D33-21D5-34E5-AC5F-48891F8DE865> /Applications/Xcode.app/Contents/PlugIns/Xcode3UI.ideplugin/Contents/MacOS/Xcode3UI
       0x11b297000 -        0x11b2d8ff7  com.apple.dt.IDE.iCloudSupport (8.0 - 11232) <6261A69A-FFB2-33B0-B5E9-E3560DF0281C> /Applications/Xcode.app/Contents/PlugIns/iCloudSupport.ideplugin/Contents/MacOS/iCloudSupport
       0x11b313000 -        0x11b366ff7  com.apple.dt.IDEProductsUI (1.0 - 1) <290F2CA9-9217-32B2-A6C1-B369EC5E23B5> /Applications/Xcode.app/Contents/PlugIns/IDEProductsUI.ideplugin/Contents/MacOS/IDEProductsUI
       0x11d06d000 -        0x11d0b3fff  com.apple.dt.gpu.GPUDebuggerFoundation (8.0 - 21116) <E6426609-957C-3F28-B122-2FAF38897EC5> /Applications/Xcode.app/Contents/PlugIns/GPUDebuggerFoundation.ideplugin/Contents/MacOS/GPUDebuggerFoundation
       0x11d0ee000 -        0x11d0f5fff  com.apple.GPUToolsPlatform (1.0 - 21164) <98328C98-0F79-3E59-8370-D864B51CC813> /Applications/Xcode.app/Contents/SharedFrameworks/GPUToolsPlatform.framework/Versions/A/GPUToolsPlatform
       0x11d0ff000 -        0x11d10cfff  com.apple.GPUToolsShaderProfiler (1.0 - 21072) <69DF67A2-D3E1-39C1-9596-0755CBDF7F9F> /Applications/Xcode.app/Contents/SharedFrameworks/GPUToolsShaderProfiler.framework/Versions/A/GPUToolsShaderProfiler
       0x11d11b000 -        0x11d15fff7  com.apple.GPUToolsCore (1.0 - 21164) <48C3ED71-1B6F-3969-8765-9EF8C2F2DA63> /Applications/Xcode.app/Contents/SharedFrameworks/GPUToolsCore.framework/Versions/A/GPUToolsCore
       0x11d195000 -        0x11d1ccff7  com.apple.GPUTools (1.0 - 21164) <B8EF099F-086A-3C25-A335-F44418C30EC8> /Applications/Xcode.app/Contents/SharedFrameworks/GPUTools.framework/Versions/A/GPUTools
       0x11d1f9000 -        0x11d251fff  com.apple.GLToolsServices (1.0 - 21072) <BF5CD9FC-713D-3EF3-9C27-7F37C0E99426> /Applications/Xcode.app/Contents/SharedFrameworks/GLToolsServices.framework/Versions/A/GLToolsServices
       0x11d291000 -        0x11d2f9ff7  com.apple.GPUToolsServices (1.0 - 21072) <09E56DA7-3543-3705-A4E1-3E293979A8CF> /Applications/Xcode.app/Contents/SharedFrameworks/GPUToolsServices.framework/Versions/A/GPUToolsServices
       0x11d341000 -        0x11d396fff  com.apple.GPUToolsInterface (1.0 - 21072) <68C2336E-F5C6-3D92-858E-2B456BE6FC0D> /Applications/Xcode.app/Contents/SharedFrameworks/GPUToolsInterface.framework/Versions/A/GPUToolsInterface
       0x11d3d0000 -        0x11d3f9fff  com.apple.GLToolsInterface (1.0 - 21072) <839A08F2-451C-31E2-9CE8-B19DF33E43AD> /Applications/Xcode.app/Contents/SharedFrameworks/GLToolsInterface.framework/Versions/A/GLToolsInterface
       0x11d41a000 -        0x11d481ff7  com.apple.GLToolsCore (1.0 - 21164) <7A8E6FB4-44A5-377A-BA85-7BBC6A5139FA> /Applications/Xcode.app/Contents/SharedFrameworks/GLToolsCore.framework/Versions/A/GLToolsCore
       0x11d49e000 -        0x11d4b3fff  com.apple.GLTools (1.0 - 21164) <AC484DE0-6978-385B-9DF5-F5D2D30C3D50> /Applications/Xcode.app/Contents/SharedFrameworks/GLTools.framework/Versions/A/GLTools
       0x11d4bb000 -        0x11d53ffff  com.apple.gputools.GLToolsAnalysisEngine (1.0 - 21072) <438BDD2E-E03E-32F1-94A9-2FEC444882A4> /Applications/Xcode.app/Contents/SharedFrameworks/GLToolsAnalysisEngine.framework/Versions/A/GLToolsAnalysisEngine
       0x11d57f000 -        0x11d5b1ff7  com.apple.dt.gpu.GPUDebuggerKit (8.0 - 21116) <EFFBEDFC-ABF1-3FFB-BD73-539BDAD09386> /Applications/Xcode.app/Contents/PlugIns/GPUDebuggerKit.ideplugin/Contents/MacOS/GPUDebuggerKit
       0x11d5e1000 -        0x11d5e9ffb  com.apple.dt.gpu.GPUTraceDebugger (8.0 - 21116) <2E6B7CB3-3140-311B-9439-A0B6FA5E2DD9> /Applications/Xcode.app/Contents/PlugIns/GPUTraceDebugger.ideplugin/Contents/MacOS/GPUTraceDebugger
       0x11d5f4000 -        0x11d673fff  com.apple.dt.gpu.GPUTraceDebuggerUI (8.0 - 21116) <4877681B-C2A1-3931-93AC-EB8AE354269F> /Applications/Xcode.app/Contents/PlugIns/GPUTraceDebuggerUI.ideplugin/Contents/MacOS/GPUTraceDebuggerUI
       0x11d6c8000 -        0x11d6e8ff3  com.apple.dt.IDEIODebugGaugesUI (8.0 - 11232) <18553936-35C1-3D8B-8DD3-73CCA0AA85D2> /Applications/Xcode.app/Contents/PlugIns/IDEIODebugGaugesUI.ideplugin/Contents/MacOS/IDEIODebugGaugesUI
       0x11d710000 -        0x11d717ff3  com.apple.dt.IDEIODebugGaugesCore (8.0 - 11232) <A47B34C0-4424-3D4D-BA20-B1CD857776C3> /Applications/Xcode.app/Contents/PlugIns/IDEIODebugGaugesCore.ideplugin/Contents/MacOS/IDEIODebugGaugesCore
       0x11d725000 -        0x11d7b3ff7  com.apple.dt.gpu.GPURenderTargetEditor (8.0 - 21116) <D6528344-0D1D-3477-9996-CE566F3FC93C> /Applications/Xcode.app/Contents/PlugIns/GPURenderTargetEditor.ideplugin/Contents/MacOS/GPURenderTargetEditor
       0x11d807000 -        0x11d80afff  com.apple.MTLToolsServices (1.0 - 1) <CBF68537-F61D-35A6-9121-92AFBD9B70D0> /Applications/Xcode.app/Contents/SharedFrameworks/MTLToolsServices.framework/Versions/A/MTLToolsServices
       0x11d810000 -        0x11d813fff  com.apple.MTLTools (1.0 - 1) <3BE9C942-79D9-3717-8469-4236778038A3> /Applications/Xcode.app/Contents/SharedFrameworks/MTLTools.framework/Versions/A/MTLTools
       0x11d81a000 -        0x11d81cfff  com.apple.gdt.MTLToolsAnalysisEngine (1.0 - 21072) <92556EA6-7645-352B-9332-8A18D48DCFC0> /Applications/Xcode.app/Contents/SharedFrameworks/MTLToolsAnalysisEngine.framework/Versions/A/MTLToolsAnalysisEngine
       0x11d822000 -        0x11d825fff  com.apple.dt.gpu.GPUDebuggertvOSSupport (8.0 - 21013) <11A32D3E-5026-387E-B66F-E4398B882CDE> /Applications/Xcode.app/Contents/Developer/Platforms/AppleTVOS.platform/Developer/Library/Xcode/PrivatePlugIns/GPUDebuggertvOSSupport.ideplugin/Contents/MacOS/GPUDebuggertvOSSupport
       0x11d854000 -        0x11d857fff  com.apple.dt.gpu.GPUDebuggerOSXSupport (8.0 - 21116) <495889DC-F706-3874-B03C-5A5E28A5C497> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/Library/Xcode/PrivatePlugIns/GPUDebuggerOSXSupport.ideplugin/Contents/MacOS/GPUDebuggerOSXSupport
       0x11d85d000 -        0x11d86bfff  com.apple.GPUToolsDesktopFoundation (1.0 - 21018) <F3D87A1E-BF43-30B1-9A19-A26CA322240B> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/Library/PrivateFrameworks/GPUToolsDesktopFoundation.framework/Versions/A/GPUToolsDesktopFoundation
       0x11d878000 -        0x11d87bff3  com.apple.dt.gpu.GPUDebuggeriOSSupport (8.0 - 21013) <C4A034D0-FA61-36EF-967B-7F3467FAEB1A> /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/PrivatePlugIns/GPUDebuggeriOSSupport.ideplugin/Contents/MacOS/GPUDebuggeriOSSupport
       0x11d881000 -        0x11d881fff  com.apple.GLToolsMobileFoundation (1.0 - 21025) <AFF704BB-4ECC-3487-AABA-47722DE7662A> /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/PrivateFrameworks/GLToolsMobileFoundation.framework/Versions/A/GLToolsMobileFoundation
       0x11d886000 -        0x11d8edfff  com.apple.GLToolsExpert (1.0 - 21025) <7134BD03-1ADC-302C-82C1-8B771A9D7579> /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/PrivateFrameworks/GLToolsExpert.framework/Versions/A/GLToolsExpert
       0x11d928000 -        0x11d941ff7  com.apple.GLToolsShaderProfiler (1.0 - 21072) <45A322A2-2485-3E4B-A939-B4574ACC5E93> /Applications/Xcode.app/Contents/SharedFrameworks/GLToolsShaderProfiler.framework/Versions/A/GLToolsShaderProfiler
       0x11d94e000 -        0x11d962fff  com.apple.GPUToolsMobileFoundation (1.0 - 21025) <95628DCE-D4F3-3E0D-A2F8-B93ED377DD6C> /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/PrivateFrameworks/GPUToolsMobileFoundation.framework/Versions/A/GPUToolsMobileFoundation
       0x11d976000 -        0x11d9c9ffb  libssl.35.dylib (11) <37C9C0C7-6480-35E2-9D0C-41715FD031D4> /usr/lib/libssl.35.dylib
       0x11d9ee000 -        0x11da72ff3  com.apple.dt.IDE.IDEModelFoundation (8.0 - 11232) <2141C751-CE25-3434-832C-6C48BDCE486F> /Applications/Xcode.app/Contents/PlugIns/IDEModelFoundation.ideplugin/Contents/MacOS/IDEModelFoundation
       0x11dc04000 -        0x11dc09fff +libswiftos.dylib (3.0 - 800.0.46.2) <BB790887-0280-3DAF-992B-7B32153D9000> /Applications/Xcode.app/Contents/Frameworks/libswiftos.dylib
       0x11dc3a000 -        0x11dc44ff7 +libswiftCoreData.dylib (3.0 - 800.0.46.2) <38BE45DC-AD2F-3CB5-A658-6D6C1C6001B8> /Applications/Xcode.app/Contents/Frameworks/libswiftCoreData.dylib
       0x11dc54000 -        0x11dc62ff7 +libswiftCoreGraphics.dylib (3.0 - 800.0.46.2) <8B1780DA-B8D1-3FEF-B7C9-8EE0A8C59335> /Applications/Xcode.app/Contents/Frameworks/libswiftCoreGraphics.dylib
       0x11dc7a000 -        0x11dc84ff7 +libswiftAVFoundation.dylib (3.0 - 800.0.46.2) <C55A812D-B090-3008-A84A-4C53E92C3E9F> /Applications/Xcode.app/Contents/Frameworks/libswiftAVFoundation.dylib
       0x11dcb5000 -        0x11dcd9ff7  com.apple.dt.IDE.IDEQuickHelp (8.0 - 11232) <039257B9-74C5-3617-A4AA-ECF9FF611F92> /Applications/Xcode.app/Contents/PlugIns/IDEQuickHelp.ideplugin/Contents/MacOS/IDEQuickHelp
       0x11dd11000 -        0x11dd1aff7 +libswiftCoreAudio.dylib (3.0 - 800.0.46.2) <C81E1799-A718-3E96-8CED-8B89DA9761F3> /Applications/Xcode.app/Contents/Frameworks/libswiftCoreAudio.dylib
       0x11dd36000 -        0x11dd41fff  com.apple.dt.IDEDocumentation (1.0 - 11246) <098D31B6-1FA6-32F7-B966-BF217BB0E7C9> /Applications/Xcode.app/Contents/Frameworks/IDEDocumentation.framework/Versions/A/IDEDocumentation
       0x11dd57000 -        0x11dd8ffff  com.apple.dt.CommonMark (1.0 - 1) <578EFA58-4278-3736-8391-4B1D14B4A963> /Applications/Xcode.app/Contents/SharedFrameworks/DVTMarkup.framework/Versions/A/Frameworks/CommonMark.framework/Versions/A/CommonMark
       0x11ddb9000 -        0x11ddc1fff +libswiftCoreMedia.dylib (3.0 - 800.0.46.2) <01322EA0-9061-3265-8284-387147528E22> /Applications/Xcode.app/Contents/Frameworks/libswiftCoreMedia.dylib
       0x11ddc9000 -        0x11ddcffff  com.apple.dt.DVTPlaygroundCommunication (1.0 - 11035) <0E9B2E51-CC30-3989-99F0-08F3FD6036E6> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/Library/PrivateFrameworks/DVTPlaygroundCommunication.framework/Versions/A/DVTPlaygroundCommunication
       0x11dddb000 -        0x11dde0ff3  com.apple.dt.dbg.DebuggerKit (1.0 - 1) <AF40F442-741E-3B6F-B3A7-60C5A83AECBB> /Applications/Xcode.app/Contents/PlugIns/DebuggerKit.ideplugin/Contents/MacOS/DebuggerKit
       0x11ddeb000 -        0x11ddf2ff3  com.apple.dt.IDE.HexEditor (8.0 - 11232) <FD48DDE5-C6D2-3086-8C14-E1F721B9956B> /Applications/Xcode.app/Contents/PlugIns/HexEditor.ideplugin/Contents/MacOS/HexEditor
       0x11de08000 -        0x11de16ff7  com.apple.MTLToolsShaderProfiler (1.0 - 21072) <88E16664-4F21-36D5-AA50-0E4795549344> /Applications/Xcode.app/Contents/SharedFrameworks/MTLToolsShaderProfiler.framework/Versions/A/MTLToolsShaderProfiler
       0x11def9000 -        0x11defaffb +liblaunch_sim.dylib (972.1.5) <ABFE4943-B891-3155-88D1-738479B92DC7> /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/usr/lib/system/host/liblaunch_sim.dylib
       0x11df00000 -        0x11df01ffb +liblaunch_sim.dylib (972.1.5) <BF05E6A2-8A72-3734-BDA2-E05A52F2EACC> /Applications/Xcode.app/Contents/Developer/Platforms/AppleTVSimulator.platform/Developer/SDKs/AppleTVSimulator.sdk/usr/lib/system/host/liblaunch_sim.dylib
       0x11df07000 -        0x11df08ffb +liblaunch_sim.dylib (972.1.5) <3E65B691-35A9-335A-8115-E54908861C01> /Applications/Xcode.app/Contents/Developer/Platforms/WatchSimulator.platform/Developer/SDKs/WatchSimulator.sdk/usr/lib/system/host/liblaunch_sim.dylib
       0x11e0d7000 -        0x11e1b7ff3  com.apple.dt.IDE.IDEModelEditor (8.0 - 11232) <90557DB3-7FF0-3EFA-86E5-D28F82586D67> /Applications/Xcode.app/Contents/PlugIns/IDEModelEditor.ideplugin/Contents/MacOS/IDEModelEditor
       0x11e3fb000 -        0x11e3fbfff  com.apple.dt.IDEContinuousIntegration (1.0 - 1) <9F24A36A-641C-3AFB-A89C-B667EAAFC434> /Applications/Xcode.app/Contents/PlugIns/IDEContinuousIntegration.ideplugin/Contents/MacOS/IDEContinuousIntegration
       0x11e3ff000 -        0x11e401fff  com.apple.IDEServerTools (1.0 - 1) <D772797D-A735-3B19-B18A-60CD64315D6B> /Applications/Xcode.app/Contents/SharedFrameworks/IDEServerTools.framework/Versions/A/IDEServerTools
       0x11e424000 -        0x11e595ff7  com.apple.gputools.GLToolsAnalysisHeuristics (1.0 - 21072) <3A67A4F7-B549-3E93-AF6F-123E131E2B79> /Applications/Xcode.app/Contents/Developer/Platforms/AppleTVOS.platform/Developer/Library/GPUTools/PlugIns/GLToolsAnalysisHeuristics.gtplugin/Contents/MacOS/GLToolsAnalysisHeuristics
       0x11e5aa000 -        0x11e5deffb  com.apple.gputools.GLToolsMobileAnalysis (1.0 - 21025) <2046881B-BFE5-3CE2-9CE2-78E7A6692473> /Applications/Xcode.app/Contents/Developer/Platforms/AppleTVOS.platform/Developer/Library/GPUTools/PlugIns/GLToolsMobileAnalysis.gtplugin/Contents/MacOS/GLToolsMobileAnalysis
       0x11e5ee000 -        0x11e5f5ff7  com.apple.gputools.GLToolsShaderProfilerMobileSupport (1.0 - 21025) <C55B02F3-1F91-3D7C-9627-303166399A5E> /Applications/Xcode.app/Contents/Developer/Platforms/AppleTVOS.platform/Developer/Library/GPUTools/PlugIns/GLToolsShaderProfilerMobileSupport.gtplugin/Contents/MacOS/GLToolsShaderProfilerMobileSupport
       0x11e679000 -        0x11e682ff7  com.apple.dt.PlistEditor (8.0 - 11232) <69879E8C-862C-3A9F-BA19-20B7B43D842C> /Applications/Xcode.app/Contents/PlugIns/PlistEditor.ideplugin/Contents/MacOS/PlistEditor
       0x11e691000 -        0x11e695fff  com.apple.dt.IDE.IDEPDFViewer (8.0 - 11232) <63027BA0-DDAE-33B4-B632-F49B8F087366> /Applications/Xcode.app/Contents/PlugIns/IDEPDFViewer.ideplugin/Contents/MacOS/IDEPDFViewer
       0x11e6a5000 -        0x11ec11fff  com.apple.driver.AppleIntelHD5000GraphicsGLDriver (10.18.65 - 10.1.8) <4C5E84A9-01FE-33AC-BEF0-40E993B535E7> /System/Library/Extensions/AppleIntelHD5000GraphicsGLDriver.bundle/Contents/MacOS/AppleIntelHD5000GraphicsGLDriver
       0x11ee27000 -        0x11ee9dfff  com.apple.driver.AppleIntelHD5000GraphicsMTLDriver (10.18.65 - 10.1.8) <4D4D9BD5-04D7-3CE2-A07C-9DD97E6D7B9D> /System/Library/Extensions/AppleIntelHD5000GraphicsMTLDriver.bundle/Contents/MacOS/AppleIntelHD5000GraphicsMTLDriver
       0x11f25e000 -        0x11f2c6fff  com.apple.dt.DVTMarkdown (1.0 - 1) <72AD1358-9D85-3279-88E2-CDFAA346017B> /Applications/Xcode.app/Contents/SharedFrameworks/DVTMarkup.framework/Versions/A/DVTMarkup
       0x11f357000 -        0x11f362ffb  com.apple.dt.IDE.IDESubversion (8.0 - 11232) <3718ABC4-5890-3A7E-8677-A3ACD3653637> /Applications/Xcode.app/Contents/PlugIns/IDESubversion.ideplugin/Contents/MacOS/IDESubversion
       0x11f36c000 -        0x11f37dfff  com.apple.dt.IDE.IDEGit (8.0 - 11232) <EC04797E-EEB8-3BFD-A8A1-E0A8B86D99DA> /Applications/Xcode.app/Contents/PlugIns/IDEGit.ideplugin/Contents/MacOS/IDEGit
       0x11faf6000 -        0x11fc19ff7  com.apple.DNTDocumentationSupport (1.0 - 1) <834113B0-3754-3DBE-BFF0-EB109B802495> /Applications/Xcode.app/Contents/SharedFrameworks/DNTDocumentationSupport.framework/Versions/A/DNTDocumentationSupport
       0x11fcb5000 -        0x11fd89ff7 +libswiftFoundation.dylib (3.0 - 800.0.46.2) <BD143F76-8156-334F-9B1C-A88EBF80BE55> /Applications/Xcode.app/Contents/Frameworks/libswiftFoundation.dylib
       0x11fe7e000 -        0x11ff8efff  com.apple.DNTSourceKitSupport (1.0 - 1) <54E48DBE-904E-356D-8F6A-A399255E923A> /Applications/Xcode.app/Contents/SharedFrameworks/DNTSourceKitSupport.framework/Versions/A/DNTSourceKitSupport
       0x11ffcc000 -        0x1200bafff  com.apple.dt.IDE.IDESourceEditor (8.0 - 11232) <E9791921-6DB5-3C4E-970D-524D68A99EBB> /Applications/Xcode.app/Contents/PlugIns/IDESourceEditor.ideplugin/Contents/MacOS/IDESourceEditor
       0x12014e000 -        0x120267ff7  com.apple.dt.IDELanguageSupportUI (8.0 - 11148) <5A464716-AE46-3508-8632-BA1D1F6CADB2> /Applications/Xcode.app/Contents/PlugIns/IDELanguageSupportUI.ideplugin/Contents/MacOS/IDELanguageSupportUI
       0x12034a000 -        0x120372ffb  com.apple.dt.IDE.IDEMemoryGraphDebugger (8.0 - 11232) <68786E22-21BA-334E-9D90-691DAD233713> /Applications/Xcode.app/Contents/PlugIns/IDEMemoryGraphDebugger.ideplugin/Contents/MacOS/IDEMemoryGraphDebugger
       0x120399000 -        0x1203c8fff  com.apple.dt.HexFiendFramework (8.0 - 11232) <306B90A8-19F5-3029-8B07-DC7FDC25F05C> /Applications/Xcode.app/Contents/SharedFrameworks/HexFiend.framework/Versions/A/HexFiend
       0x1203f0000 -        0x120502ff7  com.apple.dt.dbg.DebuggerUI (8.0 - 11232) <7C646043-6796-3FC6-B2B8-EEAF651FF16D> /Applications/Xcode.app/Contents/PlugIns/DebuggerUI.ideplugin/Contents/MacOS/DebuggerUI
       0x1207cb000 -        0x1208a3ff3  com.apple.dt.IDE.IDESceneKitEditor (8.0 - 11083) <C8E94EFE-FF68-364A-B289-B2A0A5B59ADF> /Applications/Xcode.app/Contents/PlugIns/IDESceneKitEditor.ideplugin/Contents/MacOS/IDESceneKitEditor
       0x12090c000 -        0x12098efff  com.apple.xcode.GameToolsFoundation (1.0 - 11030) <B6E54397-918E-3B57-9C48-45FA0593FC6F> /Applications/Xcode.app/Contents/SharedFrameworks/GameToolsFoundation.framework/Versions/A/GameToolsFoundation
       0x1209db000 -        0x120a0dfff  com.apple.dt.gpu.GPUDebuggerMTLSupport (8.0 - 21116) <98D55F71-C17C-3969-857C-91CB4F0D565A> /Applications/Xcode.app/Contents/PlugIns/GPUDebuggerMTLSupport.ideplugin/Contents/MacOS/GPUDebuggerMTLSupport
       0x120a34000 -        0x120b6bfff  com.apple.IDESpriteKitParticleEditor (2.0 - 2) <0A81891A-2A36-34FE-8B1D-C1CE58EFF98D> /Applications/Xcode.app/Contents/PlugIns/IDESpriteKitParticleEditor.ideplugin/Contents/MacOS/IDESpriteKitParticleEditor
       0x123202000 -        0x1232ecff7  com.apple.XCSCore (1.0 - 1) <3FBBC1DD-C20B-3780-B607-468B23998E20> /Applications/Xcode.app/Contents/SharedFrameworks/XCSCore.framework/Versions/A/XCSCore
       0x123391000 -        0x12348affb  com.apple.dt.XCSUI (1.0 - 1) <8ACDB6F5-18F3-3F67-BA6D-B281984766D3> /Applications/Xcode.app/Contents/SharedFrameworks/XCSUI.framework/Versions/A/XCSUI
       0x12356f000 -        0x12357cff7  com.apple.dt.IDE.IDEQuickLookEditor (8.0 - 11232) <FC9FD907-AC46-3B5F-B1A6-C1F03BF7B505> /Applications/Xcode.app/Contents/PlugIns/IDEQuickLookEditor.ideplugin/Contents/MacOS/IDEQuickLookEditor
       0x12358d000 -        0x123594fff  com.apple.dt.ScriptingDefinitionEditor (8.0 - 11232) <171BDF48-2C5F-300F-A192-0955E7E0D00A> /Applications/Xcode.app/Contents/PlugIns/ScriptingDefinitionEditor.ideplugin/Contents/MacOS/ScriptingDefinitionEditor
       0x1235a5000 -        0x1235abff7  com.apple.dt.IDE.IDEInstrumentsService (8.0 - 11232) <E2793D5B-8EB9-349A-85C4-E0A3DDCDB05D> /Applications/Xcode.app/Contents/PlugIns/IDEInstrumentsService.ideplugin/Contents/MacOS/IDEInstrumentsService
       0x1235e3000 -        0x123663fff  com.apple.sourcekitd (1.0 - 800.10.12) <2EDB0B4D-45E6-3C32-ABDE-E91A9A76204B> /Applications/Xcode.app/Contents/Developer/Toolchains/Swift_2.3.xctoolchain/usr/lib/sourcekitd.framework/sourcekitd
       0x123692000 -        0x125003ffb +libclang.dylib (800.10.12) <9CF83D81-91DC-3DB4-8EF6-1A27F3EEE65B> /Applications/Xcode.app/Contents/Developer/Toolchains/Swift_2.3.xctoolchain/usr/lib/libclang.dylib
       0x1255f0000 -        0x12562cff7  com.apple.sourcekitd (1.0 - 800.0.46.2) <C20AA345-3797-3733-95BF-4B48034E219F> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/sourcekitd.framework/sourcekitd
       0x126f85000 -        0x126f85ff7  com.apple.dt.DVTAnalyticsClientPlugin (1.0 - 1) <6192F94C-6D27-3887-929A-AA0C51067A79> /Applications/Xcode.app/Contents/PlugIns/DVTAnalyticsClientPlugin.ideplugin/Contents/MacOS/DVTAnalyticsClientPlugin
       0x1279ca000 -        0x1279d0ff7  com.apple.dt.IDE.IBBuildSupport (8.0 - 11201) <A4152B87-45A3-3991-BBDB-D8DFC338CB81> /Applications/Xcode.app/Contents/PlugIns/IBBuildSupport.ideplugin/Contents/MacOS/IBBuildSupport
    0x7fff8bad2000 -     0x7fff8be0afff  com.apple.RawCamera.bundle (7.00 - 874) <99AF1865-BCDD-3313-85BF-E246745201F0> /System/Library/CoreServices/RawCamera.bundle/Contents/MacOS/RawCamera
    0x7fff8d627000 -     0x7fff8d7e5fff  com.apple.avfoundation (2.0 - 1183.3) <E6DCAB50-ECD4-3645-8A93-D14F14092DC4> /System/Library/Frameworks/AVFoundation.framework/Versions/A/AVFoundation
    0x7fff8d7e6000 -     0x7fff8d889ff7  com.apple.audio.AVFAudio (1.0 - ???) <18E472FC-5AD7-33B8-8D46-49D5AC2DB13A> /System/Library/Frameworks/AVFoundation.framework/Versions/A/Frameworks/AVFAudio.framework/Versions/A/AVFAudio
    0x7fff8d88a000 -     0x7fff8d91bff7  com.apple.AVKit (1.1 - 338.5) <FE78535E-A224-3D3D-AE2C-AC5DE1BAC007> /System/Library/Frameworks/AVKit.framework/Versions/A/AVKit
    0x7fff8d91c000 -     0x7fff8d91cfff  com.apple.Accelerate (1.11 - Accelerate 1.11) <D700DBDF-69AE-37A2-B9C7-0961CF0B6841> /System/Library/Frameworks/Accelerate.framework/Versions/A/Accelerate
    0x7fff8d91d000 -     0x7fff8d934ffb  libCGInterfaces.dylib (331.4) <03835456-F519-3B47-85F6-426BF7B05EE3> /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vImage.framework/Versions/A/Libraries/libCGInterfaces.dylib
    0x7fff8d935000 -     0x7fff8de4efeb  com.apple.vImage (8.1 - ???) <A1D77DB1-2893-3A18-8986-BD78E441D89D> /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vImage.framework/Versions/A/vImage
    0x7fff8de4f000 -     0x7fff8dfbfff3  libBLAS.dylib (1185) <C7E42BBE-2337-3AEF-9C45-A2F2CB1A5B3E> /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libBLAS.dylib
    0x7fff8dfc0000 -     0x7fff8dfd4ffb  libBNNS.dylib (14) <CFDEE88D-E002-347C-BC68-83099651585B> /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libBNNS.dylib
    0x7fff8dfd5000 -     0x7fff8e3cbfef  libLAPACK.dylib (1185) <2E8201CB-9A41-3D65-853E-841917FCE77B> /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libLAPACK.dylib
    0x7fff8e3cc000 -     0x7fff8e3e2fff  libLinearAlgebra.dylib (1185) <8CC29DE1-A231-3D5E-B5F1-DCC309036FE0> /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libLinearAlgebra.dylib
    0x7fff8e3e3000 -     0x7fff8e3e9fff  libQuadrature.dylib (3) <120F6228-A3D4-3184-89D7-785ADC2AC715> /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libQuadrature.dylib
    0x7fff8e3ea000 -     0x7fff8e3feff7  libSparseBLAS.dylib (1185) <C35235B7-CFA6-39A7-BD6E-79F4D9CAFD36> /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libSparseBLAS.dylib
    0x7fff8e3ff000 -     0x7fff8e586fe7  libvDSP.dylib (600) <F59348AA-E1D3-3A27-8AB5-F546D38BFB76> /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libvDSP.dylib
    0x7fff8e587000 -     0x7fff8e639ffb  libvMisc.dylib (600) <70D4B548-47EE-3C6B-A93B-3EA6B60701E0> /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libvMisc.dylib
    0x7fff8e63a000 -     0x7fff8e63afff  com.apple.Accelerate.vecLib (3.11 - vecLib 3.11) <A395B521-8E54-30F2-B4FE-355D68900DAF> /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/vecLib
    0x7fff8e63b000 -     0x7fff8e67bffb  com.apple.Accounts (113 - 113) <4A825926-C148-3EC1-9017-3B101849D8C8> /System/Library/Frameworks/Accounts.framework/Versions/A/Accounts
    0x7fff8e67c000 -     0x7fff8e8f6ff7  com.apple.AddressBook.framework (10.0 - 1756) <861F3080-999E-39FB-ABDF-EF068017978F> /System/Library/Frameworks/AddressBook.framework/Versions/A/AddressBook
    0x7fff8e8f7000 -     0x7fff8f5ceff3  com.apple.AppKit (6.9 - 1504) <5524F97F-FB11-3556-8AC4-FF634C6CCCB7> /System/Library/Frameworks/AppKit.framework/Versions/C/AppKit
    0x7fff8f5cf000 -     0x7fff8f5dffff  com.apple.AppleScriptObjC (1.4 - 32) <D697A702-E764-39D3-B5A7-F22E28C268D1> /System/Library/Frameworks/AppleScriptObjC.framework/Versions/A/AppleScriptObjC
    0x7fff8f5e0000 -     0x7fff8f5e0fff  com.apple.ApplicationServices (48 - 48) <3E1395EA-C661-3318-9B87-9857BB81021B> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/ApplicationServices
    0x7fff8f5e1000 -     0x7fff8f64fff7  com.apple.ApplicationServices.ATS (377 - 422) <521E41BF-D495-3233-B6BF-C0B83DD1A8C0> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/ATS.framework/Versions/A/ATS
    0x7fff8f6e9000 -     0x7fff8f817fff  libFontParser.dylib (194) <CDC6A0AA-E6AC-315B-AFBF-011F64548911> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/ATS.framework/Versions/A/Resources/libFontParser.dylib
    0x7fff8f818000 -     0x7fff8f862fff  libFontRegistry.dylib (196) <3B8B0E78-2B30-3F18-B7D3-BE4E96F6BAF3> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/ATS.framework/Versions/A/Resources/libFontRegistry.dylib
    0x7fff8f8bf000 -     0x7fff8f8f1fff  libTrueTypeScaler.dylib (194) <E8B9E8E7-1F7A-3700-895C-501C12EDD001> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/ATS.framework/Versions/A/Resources/libTrueTypeScaler.dylib
    0x7fff8f95d000 -     0x7fff8fa07ff7  com.apple.ColorSync (4.12.0 - 502) <C86F8032-83DD-34EB-A4CB-87E96F25CF1C> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/ColorSync.framework/Versions/A/ColorSync
    0x7fff8fa08000 -     0x7fff8fa58fff  com.apple.HIServices (1.22 - 589) <3167EF9C-F121-39EF-AAE2-7700E7128426> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/HIServices.framework/Versions/A/HIServices
    0x7fff8fa59000 -     0x7fff8fa68ff3  com.apple.LangAnalysis (1.7.0 - 1.7.0) <47D1A017-91A4-37F3-93E0-3923CD6ED2DE> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/LangAnalysis.framework/Versions/A/LangAnalysis
    0x7fff8fa69000 -     0x7fff8fab6fff  com.apple.print.framework.PrintCore (12 - 491) <B7CC15C1-AF50-37F3-8AF6-65F8CDC323F0> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/PrintCore.framework/Versions/A/PrintCore
    0x7fff8fab7000 -     0x7fff8faf2fff  com.apple.QD (3.12 - 310) <8F718290-DD82-36CE-9AF0-EFB6D31A49F4> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/QD.framework/Versions/A/QD
    0x7fff8faf3000 -     0x7fff8fafeff7  com.apple.speech.synthesis.framework (6.0.15 - 6.0.15) <23EA6076-ECDF-3A50-81E7-3CE6451DC8C4> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/SpeechSynthesis.framework/Versions/A/SpeechSynthesis
    0x7fff8faff000 -     0x7fff8fd0bfff  com.apple.audio.toolbox.AudioToolbox (1.14 - 1.14) <EDDC86C8-92F3-34C6-A5C1-A176ADA724C3> /System/Library/Frameworks/AudioToolbox.framework/Versions/A/AudioToolbox
    0x7fff8fd0c000 -     0x7fff8fd0cfff  com.apple.audio.units.AudioUnit (1.14 - 1.14) <AA9DB0D2-3B2F-3366-B451-DD9E89038F6F> /System/Library/Frameworks/AudioUnit.framework/Versions/A/AudioUnit
    0x7fff8fd0d000 -     0x7fff8fe74fff  com.apple.AutomatorFramework (2.7 - 428) <AA6953D5-D566-3BBF-8550-3CB6C844FD1F> /System/Library/Frameworks/Automator.framework/Versions/A/Automator
    0x7fff8fe75000 -     0x7fff901f8fff  com.apple.CFNetwork (807.0.4 - 807.0.4) <A338A213-4FFF-3317-B4DB-84735C63C507> /System/Library/Frameworks/CFNetwork.framework/Versions/A/CFNetwork
    0x7fff90212000 -     0x7fff90212fff  com.apple.Carbon (154 - 157) <AB71A31F-5B15-3BF5-8532-591EACD07B21> /System/Library/Frameworks/Carbon.framework/Versions/A/Carbon
    0x7fff90213000 -     0x7fff90216fff  com.apple.CommonPanels (1.2.6 - 98) <DDA2DF0B-86E7-34B6-B688-D7371DBC8A63> /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/CommonPanels.framework/Versions/A/CommonPanels
    0x7fff90217000 -     0x7fff9051afff  com.apple.HIToolbox (2.1.1 - 855) <AA4E2957-6B2D-3822-881C-0F64222F9578> /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/HIToolbox.framework/Versions/A/HIToolbox
    0x7fff9051b000 -     0x7fff9051eff7  com.apple.help (1.3.5 - 49) <27C5F9FE-838F-3807-A4AC-D99470185B10> /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/Help.framework/Versions/A/Help
    0x7fff9051f000 -     0x7fff90524fff  com.apple.ImageCapture (9.0 - 9.0) <E3E757FD-4060-33A4-A2AC-85EFBD987FCE> /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/ImageCapture.framework/Versions/A/ImageCapture
    0x7fff90525000 -     0x7fff905bcff3  com.apple.ink.framework (10.9 - 219) <B44BA36D-7549-3EB2-8CF6-E171885194FB> /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/Ink.framework/Versions/A/Ink
    0x7fff905bd000 -     0x7fff905d7fff  com.apple.openscripting (1.7 - 172) <B204BF70-C4AA-3699-8493-66E6645A92A8> /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/OpenScripting.framework/Versions/A/OpenScripting
    0x7fff905d8000 -     0x7fff905d9ff3  com.apple.print.framework.Print (12 - 267) <CA7E9448-0903-34C8-AAF6-9070B52BF70E> /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/Print.framework/Versions/A/Print
    0x7fff905da000 -     0x7fff905dcff7  com.apple.securityhi (9.0 - 55006) <856F4FB9-AAF2-3FC2-BE19-E7AB494232CC> /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/SecurityHI.framework/Versions/A/SecurityHI
    0x7fff905dd000 -     0x7fff905e3ff7  com.apple.speech.recognition.framework (6.0.1 - 6.0.1) <A20B0F7B-C32A-3FF1-BB75-BAC0EE4EF889> /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/SpeechRecognition.framework/Versions/A/SpeechRecognition
    0x7fff905e4000 -     0x7fff906c2ffb  com.apple.cloudkit.CloudKit (638.1 - 638.1) <C81C2824-1E30-3887-A499-43755EDF27C7> /System/Library/Frameworks/CloudKit.framework/Versions/A/CloudKit
    0x7fff906c3000 -     0x7fff906c3fff  com.apple.Cocoa (6.11 - 22) <5EEB0A26-F1C2-3D57-8441-52C0B80C2A6A> /System/Library/Frameworks/Cocoa.framework/Versions/A/Cocoa
    0x7fff906d1000 -     0x7fff90767fff  com.apple.contacts.Contacts (1.0 - 2250) <A7E2022A-2088-3B12-8159-D1FD3399201E> /System/Library/Frameworks/Contacts.framework/Versions/A/Contacts
    0x7fff907f6000 -     0x7fff90886ff7  com.apple.audio.CoreAudio (4.3.0 - 4.3.0) <0352D931-596B-3AFE-B5C6-5925CF9F870E> /System/Library/Frameworks/CoreAudio.framework/Versions/A/CoreAudio
    0x7fff90887000 -     0x7fff9089aff3  com.apple.CoreBluetooth (1.0 - 1) <73A2B185-70E4-3535-A653-E1BC74584E55> /System/Library/Frameworks/CoreBluetooth.framework/Versions/A/CoreBluetooth
    0x7fff9089b000 -     0x7fff90b91ffb  com.apple.CoreData (120 - 752.2) <CCDCE896-CD36-3483-8E04-C513433BDDC5> /System/Library/Frameworks/CoreData.framework/Versions/A/CoreData
    0x7fff90b92000 -     0x7fff90c1efff  com.apple.CoreDisplay (1.0 - 1) <F10E2F1A-FA51-3256-BCCE-34FF30AB1E3A> /System/Library/Frameworks/CoreDisplay.framework/Versions/A/CoreDisplay
    0x7fff90c1f000 -     0x7fff910b8fef  com.apple.CoreFoundation (6.9 - 1348.1) <4F7826EC-CC36-38B4-A8F3-DC57BF00EE9B> /System/Library/Frameworks/CoreFoundation.framework/Versions/A/CoreFoundation
    0x7fff910b9000 -     0x7fff91737fff  com.apple.CoreGraphics (2.0 - 1070) <ED82EAB8-A6E9-30C5-A36E-0F1597A259EF> /System/Library/Frameworks/CoreGraphics.framework/Versions/A/CoreGraphics
    0x7fff91738000 -     0x7fff91977ff7  com.apple.CoreImage (12.0.0 - 451) <84C71E9C-5231-342F-94B1-2BB6860E8AD3> /System/Library/Frameworks/CoreImage.framework/Versions/A/CoreImage
    0x7fff91978000 -     0x7fff919d4ff7  com.apple.corelocation (2100.3.13) <1064F400-1027-34D7-8F24-CDCB6DAF0F16> /System/Library/Frameworks/CoreLocation.framework/Versions/A/CoreLocation
    0x7fff919d5000 -     0x7fff91a85ff7  com.apple.CoreMedia (1.0 - 1903.7) <5FE3B4CC-EC1A-38FE-96FA-FFD419229F3E> /System/Library/Frameworks/CoreMedia.framework/Versions/A/CoreMedia
    0x7fff91a86000 -     0x7fff91ad1ff7  com.apple.CoreMediaIO (801.0 - 4922) <2813BA18-E24C-3CFB-8B34-73575DFDF0BC> /System/Library/Frameworks/CoreMediaIO.framework/Versions/A/CoreMediaIO
    0x7fff91ad2000 -     0x7fff91ad2fff  com.apple.CoreServices (775.8 - 775.8) <C36F7F47-D585-32F2-8A6F-7711935CDFD6> /System/Library/Frameworks/CoreServices.framework/Versions/A/CoreServices
    0x7fff91ad3000 -     0x7fff91b24ff7  com.apple.AE (712 - 712) <0EF17D7E-6BA4-3555-BC38-9BD0CC5B82A3> /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/AE.framework/Versions/A/AE
    0x7fff91b25000 -     0x7fff91e00fff  com.apple.CoreServices.CarbonCore (1159 - 1159) <837B7ECF-7E62-3210-988C-63D7AB4EAA88> /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/CarbonCore.framework/Versions/A/CarbonCore
    0x7fff91e01000 -     0x7fff91e34fff  com.apple.DictionaryServices (1.2 - 274) <302B8678-D057-3CF8-ACA7-7424A4A6A00A> /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/DictionaryServices.framework/Versions/A/DictionaryServices
    0x7fff91e35000 -     0x7fff91e3dffb  com.apple.CoreServices.FSEvents (1230 - 1230) <8836E7D0-844F-36F9-9601-B630BB82336B> /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/FSEvents.framework/Versions/A/FSEvents
    0x7fff91e3e000 -     0x7fff91fa9fff  com.apple.LaunchServices (775.8 - 775.8) <6E7CE1DA-27A4-3B48-A8E3-F2AA868ADD7C> /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/LaunchServices
    0x7fff91faa000 -     0x7fff9205affb  com.apple.Metadata (10.7.0 - 1075) <9EDF10CF-1755-346A-A3C9-97642C443A58> /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/Metadata.framework/Versions/A/Metadata
    0x7fff9205b000 -     0x7fff920bafff  com.apple.CoreServices.OSServices (775.8 - 775.8) <FCF1334F-D2D7-3C5A-A8FE-C173C5EDE586> /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/OSServices.framework/Versions/A/OSServices
    0x7fff920bb000 -     0x7fff9212bfff  com.apple.SearchKit (1.4.0 - 1.4.0) <F1B3EF8D-E820-317C-AC7F-8F056C246874> /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/SearchKit.framework/Versions/A/SearchKit
    0x7fff9212c000 -     0x7fff92172ff7  com.apple.coreservices.SharedFileList (38 - 38) <6C5A3FBB-9502-3725-AC3A-AE7B1528BBD4> /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/SharedFileList.framework/Versions/A/SharedFileList
    0x7fff921ff000 -     0x7fff9234aff7  com.apple.CoreText (352.0 - 544) <064B53E8-CD5A-3D1B-81DF-498A659FC20A> /System/Library/Frameworks/CoreText.framework/Versions/A/CoreText
    0x7fff9234b000 -     0x7fff92380fff  com.apple.CoreVideo (1.8 - 234.0) <48C31E93-87C2-31F4-97E7-9E54C1EA8E7D> /System/Library/Frameworks/CoreVideo.framework/Versions/A/CoreVideo
    0x7fff92381000 -     0x7fff923f2ffb  com.apple.framework.CoreWLAN (11.0 - 1200.25.1) <F46EF4A2-C348-3F76-A1C2-B8A84C17FE2B> /System/Library/Frameworks/CoreWLAN.framework/Versions/A/CoreWLAN
    0x7fff92422000 -     0x7fff9242dff3  com.apple.DirectoryService.Framework (10.12 - 194) <829AFAAD-5742-332D-B84D-AF161FB57660> /System/Library/Frameworks/DirectoryService.framework/Versions/A/DirectoryService
    0x7fff9242e000 -     0x7fff924ecff7  com.apple.DiscRecording (9.0.3 - 9030.4.5) <EA175710-9775-3147-8AF9-7B20D2872723> /System/Library/Frameworks/DiscRecording.framework/Versions/A/DiscRecording
    0x7fff924ed000 -     0x7fff924f2fff  com.apple.DiskArbitration (2.7 - 2.7) <566D5C06-13E8-3638-B2EC-2B834D5F04F1> /System/Library/Frameworks/DiskArbitration.framework/Versions/A/DiskArbitration
    0x7fff92681000 -     0x7fff92a28ffb  com.apple.Foundation (6.9 - 1349) <08A463B1-296E-3AC1-B8D3-01A75B0785A8> /System/Library/Frameworks/Foundation.framework/Versions/C/Foundation
    0x7fff92a29000 -     0x7fff92a53ffb  com.apple.GLKit (1.0 - 70) <349503D7-8BCC-31C2-9AB8-ECB767791AF2> /System/Library/Frameworks/GLKit.framework/Versions/A/GLKit
    0x7fff92a54000 -     0x7fff92a85ff3  com.apple.GSS (4.0 - 2.0) <B30A0B99-AFDE-3BF8-A04F-761A75A6A3B1> /System/Library/Frameworks/GSS.framework/Versions/A/GSS
    0x7fff92aa0000 -     0x7fff92b31fff  com.apple.GameplayKit (1.0 - 1) <41336F1D-38B0-3A6F-96A8-B77E48CE2DD1> /System/Library/Frameworks/GameplayKit.framework/Versions/A/GameplayKit
    0x7fff92b39000 -     0x7fff92bdcffb  com.apple.Bluetooth (5.0.0 - 5.0.0f17) <E8BCB872-7806-3D07-B44A-8060D2581C9C> /System/Library/Frameworks/IOBluetooth.framework/Versions/A/IOBluetooth
    0x7fff92bdd000 -     0x7fff92c72fff  com.apple.framework.IOKit (2.0.2 - 1324.1.7) <10BDCD1E-0463-3C53-BF11-C9A0919C1588> /System/Library/Frameworks/IOKit.framework/Versions/A/IOKit
    0x7fff92c73000 -     0x7fff92c79ffb  com.apple.IOSurface (152 - 152) <558D4451-2D9D-3D47-B3A5-E7C18DF53F1B> /System/Library/Frameworks/IOSurface.framework/Versions/A/IOSurface
    0x7fff92c7a000 -     0x7fff92cccff3  com.apple.ImageCaptureCore (7.0 - 7.0) <EF8DF81D-3D82-3202-BE75-E49D38EC105D> /System/Library/Frameworks/ImageCaptureCore.framework/Versions/A/ImageCaptureCore
    0x7fff92ccd000 -     0x7fff92e23fef  com.apple.ImageIO.framework (3.3.0 - 1570.1) <AB0EB12E-A175-3901-A50F-3D9DF7494DFD> /System/Library/Frameworks/ImageIO.framework/Versions/A/ImageIO
    0x7fff92e24000 -     0x7fff92e28fff  libGIF.dylib (1570.1) <118942D5-4B78-32AF-BC57-AF1EFAFADE44> /System/Library/Frameworks/ImageIO.framework/Versions/A/Resources/libGIF.dylib
    0x7fff92e29000 -     0x7fff92f19fff  libJP2.dylib (1570.1) <12D6A8AE-58CA-342B-884B-C39DF672EFD1> /System/Library/Frameworks/ImageIO.framework/Versions/A/Resources/libJP2.dylib
    0x7fff92f1a000 -     0x7fff92f3dffb  libJPEG.dylib (1570.1) <FD9BB4E5-EB4B-3ECF-866A-2B3C6BB1842C> /System/Library/Frameworks/ImageIO.framework/Versions/A/Resources/libJPEG.dylib
    0x7fff92f3e000 -     0x7fff92f65ff7  libPng.dylib (1570.1) <1F8E3EB7-BD80-3E8B-9BD4-213EBDB9BD07> /System/Library/Frameworks/ImageIO.framework/Versions/A/Resources/libPng.dylib
    0x7fff92f66000 -     0x7fff92f68ff3  libRadiance.dylib (1570.1) <0136CEAF-70C5-3B3F-A3A9-C79D6C95CD4A> /System/Library/Frameworks/ImageIO.framework/Versions/A/Resources/libRadiance.dylib
    0x7fff92f69000 -     0x7fff92fc2ff3  libTIFF.dylib (1570.1) <BE6B299B-6481-36F8-9A18-FD6628DC4D54> /System/Library/Frameworks/ImageIO.framework/Versions/A/Resources/libTIFF.dylib
    0x7fff930e2000 -     0x7fff93b88ff7  com.apple.JavaScriptCore (12602 - 12602.1.50.0.5) <D701E578-C347-392D-BB90-1B144DAAAEEB> /System/Library/Frameworks/JavaScriptCore.framework/Versions/A/JavaScriptCore
    0x7fff93b89000 -     0x7fff93ba2ff7  com.apple.Kerberos (3.0 - 1) <49DCBE1A-130C-3FBF-AAEA-AF9A518913AC> /System/Library/Frameworks/Kerberos.framework/Versions/A/Kerberos
    0x7fff93ba3000 -     0x7fff93bd9fff  com.apple.LDAPFramework (2.4.28 - 194.5) <850BB4C5-2548-33A5-B00C-0600CA59EE59> /System/Library/Frameworks/LDAP.framework/Versions/A/LDAP
    0x7fff93c2d000 -     0x7fff93e1bfff  com.apple.MapKit (1.0 - 1693.20.7.17.22) <542C2C5C-4057-3743-BEF3-3A0B10F1F1F8> /System/Library/Frameworks/MapKit.framework/Versions/A/MapKit
    0x7fff93e1c000 -     0x7fff93e22fff  com.apple.MediaAccessibility (1.0 - 97.1.1) <EE1825C7-3B58-32F8-9F5F-B7172452BB01> /System/Library/Frameworks/MediaAccessibility.framework/Versions/A/MediaAccessibility
    0x7fff93e38000 -     0x7fff94385fff  com.apple.MediaToolbox (1.0 - 1903.7) <37363406-481C-3DDD-A61F-9E2153A3660B> /System/Library/Frameworks/MediaToolbox.framework/Versions/A/MediaToolbox
    0x7fff94386000 -     0x7fff943ddff7  com.apple.Metal (85.82 - 85.82) <CDC847A6-F1F6-3661-8981-180F2A485092> /System/Library/Frameworks/Metal.framework/Versions/A/Metal
    0x7fff943de000 -     0x7fff943f6ff3  com.apple.MetalKit (1.0 - 65.2) <6695B8EE-5DF2-3709-88AC-90A42844485A> /System/Library/Frameworks/MetalKit.framework/Versions/A/MetalKit
    0x7fff943f7000 -     0x7fff94aa1fff  com.apple.ModelIO (1.0 - 1) <A2E14298-F91D-3CBC-AE67-8F27AE989E96> /System/Library/Frameworks/ModelIO.framework/Versions/A/ModelIO
    0x7fff94af3000 -     0x7fff94afbfff  com.apple.NetFS (6.0 - 4.0) <6614F9B8-0861-338B-8FF0-8E402F96141C> /System/Library/Frameworks/NetFS.framework/Versions/A/NetFS
    0x7fff94c6c000 -     0x7fff94ca8ff7  com.apple.OSAKit (1.5 - 105) <DF3CB416-6C99-3220-8DD0-5B72DACBD8BF> /System/Library/Frameworks/OSAKit.framework/Versions/A/OSAKit
    0x7fff94ca9000 -     0x7fff94ccefff  com.apple.audio.OpenAL (1.8 - 1.8) <3867A1C7-1D67-37EE-8DA1-520B75D3B234> /System/Library/Frameworks/OpenAL.framework/Versions/A/OpenAL
    0x7fff94ccf000 -     0x7fff94cd7ff7  libcldcpuengine.dylib (2.8.4) <F15C17F0-3342-36BD-A28E-7AC44B87BF8C> /System/Library/Frameworks/OpenCL.framework/Versions/A/Libraries/libcldcpuengine.dylib
    0x7fff94ea0000 -     0x7fff94eeeff3  com.apple.opencl (2.8.6 - 2.8.6) <DA3164B7-EB48-3F68-A40F-CD9B433E385F> /System/Library/Frameworks/OpenCL.framework/Versions/A/OpenCL
    0x7fff94eef000 -     0x7fff94f08ffb  com.apple.CFOpenDirectory (10.12 - 194) <BDD22B3E-4149-366A-A974-942280861DD4> /System/Library/Frameworks/OpenDirectory.framework/Versions/A/Frameworks/CFOpenDirectory.framework/Versions/A/CFOpenDirectory
    0x7fff94f09000 -     0x7fff94f14ff7  com.apple.OpenDirectory (10.12 - 194) <E1125140-E42C-369C-8DC8-D0935767B275> /System/Library/Frameworks/OpenDirectory.framework/Versions/A/OpenDirectory
    0x7fff94f15000 -     0x7fff94f17fff  libCVMSPluginSupport.dylib (12.4.2.1) <5A7CBDC5-297E-30E0-8951-2F3DAFD0027E> /System/Library/Frameworks/OpenGL.framework/Versions/A/Libraries/libCVMSPluginSupport.dylib
    0x7fff94f18000 -     0x7fff94f1bff7  libCoreFSCache.dylib (148) <3297ACE0-B9D8-3821-8685-2619B4234621> /System/Library/Frameworks/OpenGL.framework/Versions/A/Libraries/libCoreFSCache.dylib
    0x7fff94f1c000 -     0x7fff94f1ffff  libCoreVMClient.dylib (148) <B4299590-02BA-3130-98EA-A2D3A53852E1> /System/Library/Frameworks/OpenGL.framework/Versions/A/Libraries/libCoreVMClient.dylib
    0x7fff94f20000 -     0x7fff94f28ffb  libGFXShared.dylib (12.4.2.1) <3CBE90E5-6472-3C4C-825D-7567A5652115> /System/Library/Frameworks/OpenGL.framework/Versions/A/Libraries/libGFXShared.dylib
    0x7fff94f29000 -     0x7fff94f34fff  libGL.dylib (12.4.2.1) <E68C6C85-3B98-3525-9279-3296977FBF9F> /System/Library/Frameworks/OpenGL.framework/Versions/A/Libraries/libGL.dylib
    0x7fff94f35000 -     0x7fff94f71ff7  libGLImage.dylib (12.4.2.1) <50C7DE05-73CB-3D21-BB93-31C384EB6199> /System/Library/Frameworks/OpenGL.framework/Versions/A/Libraries/libGLImage.dylib
    0x7fff94f72000 -     0x7fff950e8ffb  libGLProgrammability.dylib (12.4.2.1) <2B17044B-CDB6-38F7-BA1F-9ED1A078481A> /System/Library/Frameworks/OpenGL.framework/Versions/A/Libraries/libGLProgrammability.dylib
    0x7fff950e9000 -     0x7fff95129ff3  libGLU.dylib (12.4.2.1) <D5DB68EC-751F-34D1-BCEB-2B86D560E243> /System/Library/Frameworks/OpenGL.framework/Versions/A/Libraries/libGLU.dylib
    0x7fff95a91000 -     0x7fff95a9ffff  com.apple.opengl (12.4.2 - 12.4.2) <06F5BF0B-BD03-361D-9D7B-626517E4F761> /System/Library/Frameworks/OpenGL.framework/Versions/A/OpenGL
    0x7fff95aa0000 -     0x7fff95c46fff  GLEngine (12.4.2.1) <8FFA4B17-F02A-3D7A-ACA9-D156E4E43B4D> /System/Library/Frameworks/OpenGL.framework/Versions/A/Resources/GLEngine.bundle/GLEngine
    0x7fff95c47000 -     0x7fff95c71ffb  GLRendererFloat (12.4.2.1) <82826589-22A1-312C-9C4E-FA45F4D8D976> /System/Library/Frameworks/OpenGL.framework/Versions/A/Resources/GLRendererFloat.bundle/GLRendererFloat
    0x7fff95d08000 -     0x7fff95e4fff7  com.apple.QTKit (7.7.3 - 2974) <DD63A171-2DE6-3210-89B0-BD5991539755> /System/Library/Frameworks/QTKit.framework/Versions/A/QTKit
    0x7fff95e50000 -     0x7fff960bbfff  com.apple.imageKit (3.0 - 1016) <A3D24043-95CD-3A40-9850-83E02BDF56D0> /System/Library/Frameworks/Quartz.framework/Versions/A/Frameworks/ImageKit.framework/Versions/A/ImageKit
    0x7fff960bc000 -     0x7fff96175ff7  com.apple.PDFKit (1.0 - 1) <32ED1D9C-B9AB-337B-93E5-9DDA8E68F6FB> /System/Library/Frameworks/Quartz.framework/Versions/A/Frameworks/PDFKit.framework/Versions/A/PDFKit
    0x7fff96176000 -     0x7fff9669cfff  com.apple.QuartzComposer (5.1 - 351) <10A260C7-A44C-3C64-BF68-FC0FCCD08489> /System/Library/Frameworks/Quartz.framework/Versions/A/Frameworks/QuartzComposer.framework/Versions/A/QuartzComposer
    0x7fff9669d000 -     0x7fff966c0ffb  com.apple.quartzfilters (1.10.0 - 1.10.0) <9ECD9812-151A-300D-8F37-F7FEBE67B8BC> /System/Library/Frameworks/Quartz.framework/Versions/A/Frameworks/QuartzFilters.framework/Versions/A/QuartzFilters
    0x7fff966c1000 -     0x7fff967aeff7  com.apple.QuickLookUIFramework (5.0 - 720) <7DBE40A6-3F2F-3AF0-ACF4-8C95B78346C5> /System/Library/Frameworks/Quartz.framework/Versions/A/Frameworks/QuickLookUI.framework/Versions/A/QuickLookUI
    0x7fff967af000 -     0x7fff967affff  com.apple.quartzframework (1.5 - 21) <09455972-8A33-3D61-B193-BA7E7CF984CA> /System/Library/Frameworks/Quartz.framework/Versions/A/Quartz
    0x7fff967b0000 -     0x7fff969aaff7  com.apple.QuartzCore (1.11 - 449.39) <B6BEEBAC-2923-3BA6-8DBD-621A2B0E51C1> /System/Library/Frameworks/QuartzCore.framework/Versions/A/QuartzCore
    0x7fff969ab000 -     0x7fff96a00ff7  com.apple.QuickLookFramework (5.0 - 720) <F54FCBB5-53DD-351D-AAEB-2470CEB30017> /System/Library/Frameworks/QuickLook.framework/Versions/A/QuickLook
    0x7fff96a01000 -     0x7fff96a14ff7  com.apple.SafariServices.framework (12602 - 12602.1.50.0.8) <6FCD4088-A455-3212-BE94-96881C167763> /System/Library/Frameworks/SafariServices.framework/Versions/A/SafariServices
    0x7fff96a15000 -     0x7fff96ef7ff7  com.apple.SceneKit (5.0 - 293) <C3FC7960-75A4-3101-8399-6ED969B7DF07> /System/Library/Frameworks/SceneKit.framework/Versions/A/SceneKit
    0x7fff96ef8000 -     0x7fff96f0fff7  com.apple.ScriptingBridge (1.3.3 - 69) <10EDB5EE-C7DD-39FF-840A-CCF41C00F3B6> /System/Library/Frameworks/ScriptingBridge.framework/Versions/A/ScriptingBridge
    0x7fff96f10000 -     0x7fff9722bfff  com.apple.security (7.0 - 57740.1.18) <AF5E42F1-B513-3410-A5BE-1EC9CBAF8452> /System/Library/Frameworks/Security.framework/Versions/A/Security
    0x7fff9722c000 -     0x7fff972a2ff7  com.apple.securityfoundation (6.0 - 55132.1.1) <259D4B70-0F8C-3818-99E7-3EBEAA18DE1B> /System/Library/Frameworks/SecurityFoundation.framework/Versions/A/SecurityFoundation
    0x7fff972a3000 -     0x7fff972cbfff  com.apple.securityinterface (10.0 - 55079.1.1) <F6B71377-6CF3-3E55-B20F-77F3C76FC9A4> /System/Library/Frameworks/SecurityInterface.framework/Versions/A/SecurityInterface
    0x7fff972cc000 -     0x7fff972cfff3  com.apple.xpc.ServiceManagement (1.0 - 1) <6A9EA339-BB6A-3DD9-BF08-00B8C0262839> /System/Library/Frameworks/ServiceManagement.framework/Versions/A/ServiceManagement
    0x7fff9731b000 -     0x7fff9750cfff  com.apple.SpriteKit (1.0 - 1) <848068A9-5CDC-3DCC-B419-B8044F2C87CD> /System/Library/Frameworks/SpriteKit.framework/Versions/A/SpriteKit
    0x7fff97654000 -     0x7fff976c5ff7  com.apple.SystemConfiguration (1.14 - 1.14) <C7F21776-2CCE-327B-B155-7A5948277BD6> /System/Library/Frameworks/SystemConfiguration.framework/Versions/A/SystemConfiguration
    0x7fff976c6000 -     0x7fff97a71ff7  com.apple.VideoToolbox (1.0 - 1903.7) <C0044876-9800-3CCA-B7D3-50B92077EF4D> /System/Library/Frameworks/VideoToolbox.framework/Versions/A/VideoToolbox
    0x7fff97a72000 -     0x7fff98ca7ff7  com.apple.WebCore (12602 - 12602.1.50.0.6) <583B797D-A847-3B29-9DB3-70062E6D94B8> /System/Library/Frameworks/WebKit.framework/Versions/A/Frameworks/WebCore.framework/Versions/A/WebCore
    0x7fff98ca8000 -     0x7fff98e0cfff  com.apple.WebKitLegacy (12602 - 12602.1.50.0.8) <8A685C99-6208-33FA-802C-C484A2501FD4> /System/Library/Frameworks/WebKit.framework/Versions/A/Frameworks/WebKitLegacy.framework/Versions/A/WebKitLegacy
    0x7fff98e0d000 -     0x7fff99174ffb  com.apple.WebKit (12602 - 12602.1.50.0.8) <476FE858-6F8A-31ED-9152-8CCF70C55372> /System/Library/Frameworks/WebKit.framework/Versions/A/WebKit
    0x7fff99570000 -     0x7fff99575ff7  com.apple.APFS (1.0 - 1) <F1BD89DF-D84F-3256-905D-6D72706474CF> /System/Library/PrivateFrameworks/APFS.framework/Versions/A/APFS
    0x7fff99cd3000 -     0x7fff99ceeff3  com.apple.AppContainer (4.0 - 307.1.1) <05373DD5-5892-3542-B178-C140F1AB6886> /System/Library/PrivateFrameworks/AppContainer.framework/Versions/A/AppContainer
    0x7fff99cef000 -     0x7fff99cfcff3  com.apple.AppSandbox (4.0 - 307.1.1) <20324EFC-70DC-389D-9C27-37DCAA7E07CC> /System/Library/PrivateFrameworks/AppSandbox.framework/Versions/A/AppSandbox
    0x7fff99cfd000 -     0x7fff99d1fffb  com.apple.framework.Apple80211 (12.0 - 1200.33) <06F8EA45-5E43-3744-BF41-BA86B8BBB5CF> /System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Apple80211
    0x7fff99d20000 -     0x7fff99d2ffdb  com.apple.AppleFSCompression (88 - 1.0) <B6E2148F-BFBF-3F1B-A7DF-0F39190B4C20> /System/Library/PrivateFrameworks/AppleFSCompression.framework/Versions/A/AppleFSCompression
    0x7fff99df8000 -     0x7fff99e03ff7  com.apple.AppleIDAuthSupport (1.0 - 1) <F0B1C476-49CD-3E6A-B845-3C2ADE9425BE> /System/Library/PrivateFrameworks/AppleIDAuthSupport.framework/Versions/A/AppleIDAuthSupport
    0x7fff99e1a000 -     0x7fff99ea597f  com.apple.AppleJPEG (1.0 - 1) <B4C3209B-58A5-359F-A898-F61B6C40E5E9> /System/Library/PrivateFrameworks/AppleJPEG.framework/Versions/A/AppleJPEG
    0x7fff99ea6000 -     0x7fff99eb8ffb  com.apple.AppleLDAP (10.12 - 41) <15879981-AD8B-32BA-B7C9-15E843C245EB> /System/Library/PrivateFrameworks/AppleLDAP.framework/Versions/A/AppleLDAP
    0x7fff99eb9000 -     0x7fff99ed4fff  com.apple.aps.framework (4.0 - 4.0) <37A4B7F9-4F43-3A23-B4FC-E7656B5BC73F> /System/Library/PrivateFrameworks/ApplePushService.framework/Versions/A/ApplePushService
    0x7fff99ed5000 -     0x7fff99eddffb  com.apple.AppleSRP (5.0 - 1) <F105D2D2-8A12-3361-9C9D-E405668CAF75> /System/Library/PrivateFrameworks/AppleSRP.framework/Versions/A/AppleSRP
    0x7fff99ede000 -     0x7fff99ee1ff3  com.apple.AppleSystemInfo (3.1.5 - 3.1.5) <6FF50E26-5BDA-3421-BDAE-B57AE6E4F6AC> /System/Library/PrivateFrameworks/AppleSystemInfo.framework/Versions/A/AppleSystemInfo
    0x7fff99ee2000 -     0x7fff99f34fff  com.apple.AppleVAFramework (5.0.34 - 5.0.34) <193400A6-B326-3911-BB4F-6C49C1E5FA8F> /System/Library/PrivateFrameworks/AppleVA.framework/Versions/A/AppleVA
    0x7fff99f3d000 -     0x7fff99f44ffb  com.apple.AssetCacheServices (31 - 31) <13E874CA-86AB-33E7-A4D8-544D3B8157CD> /System/Library/PrivateFrameworks/AssetCacheServices.framework/Versions/A/AssetCacheServices
    0x7fff99fd6000 -     0x7fff9a25eff3  com.apple.AuthKit (1.0 - 1) <40B26C61-82FB-340F-AD14-A69E029172A3> /System/Library/PrivateFrameworks/AuthKit.framework/Versions/A/AuthKit
    0x7fff9a25f000 -     0x7fff9a2c0ffb  com.apple.AuthKitUI (1.0 - 1) <E7D7F75C-1EC7-3A37-94C1-F2ED4CBDD0BD> /System/Library/PrivateFrameworks/AuthKitUI.framework/Versions/A/AuthKitUI
    0x7fff9a2c1000 -     0x7fff9a33fff7  com.apple.backup.framework (1.8 - 1.8) <65907BC4-B50A-3F2F-9A97-2DA0BD12F87E> /System/Library/PrivateFrameworks/Backup.framework/Versions/A/Backup
    0x7fff9a348000 -     0x7fff9a34efff  com.apple.BezelServicesFW (268.1 - 268.1) <9FF495EC-C58D-3A5B-AF94-F2B58279D2DA> /System/Library/PrivateFrameworks/BezelServices.framework/Versions/A/BezelServices
    0x7fff9a34f000 -     0x7fff9a38cff7  com.apple.bom (14.0 - 193.8) <FAA5CE82-0A87-34C5-A606-81A179009930> /System/Library/PrivateFrameworks/Bom.framework/Versions/A/Bom
    0x7fff9a9af000 -     0x7fff9a9d6fff  com.apple.CalendarAgentLink (8.0 - 250) <26CB59F5-7D23-312B-9B1E-EB47D6490A16> /System/Library/PrivateFrameworks/CalendarAgentLink.framework/Versions/A/CalendarAgentLink
    0x7fff9af59000 -     0x7fff9af80ffb  com.apple.ChunkingLibrary (172 - 172) <83E91936-305D-32A4-A256-5582B96B1852> /System/Library/PrivateFrameworks/ChunkingLibrary.framework/Versions/A/ChunkingLibrary
    0x7fff9af81000 -     0x7fff9b013ffb  com.apple.CloudDocs (1.0 - 483.2) <9DBD244F-83A0-3593-AA84-313CD5861F2C> /System/Library/PrivateFrameworks/CloudDocs.framework/Versions/A/CloudDocs
    0x7fff9b894000 -     0x7fff9b89fff7  com.apple.CommerceCore (1.0 - 552) <815381FF-0B5A-3386-9D54-E5994A4E8FC6> /System/Library/PrivateFrameworks/CommerceKit.framework/Versions/A/Frameworks/CommerceCore.framework/Versions/A/CommerceCore
    0x7fff9b8a0000 -     0x7fff9b8a9ffb  com.apple.CommonAuth (4.0 - 2.0) <D9958C57-9E97-33F5-A21C-B454FDB11548> /System/Library/PrivateFrameworks/CommonAuth.framework/Versions/A/CommonAuth
    0x7fff9b8bc000 -     0x7fff9b927ffb  com.apple.framework.ConfigurationProfiles (9.0 - 931) <8D9DDA13-E75B-33DE-B71F-67971CC0CEDF> /System/Library/PrivateFrameworks/ConfigurationProfiles.framework/Versions/A/ConfigurationProfiles
    0x7fff9b96f000 -     0x7fff9b9bdfff  com.apple.AddressBook.ContactsFoundation (8.0 - 2250) <5588F340-F4A8-3806-8642-08A106421B60> /System/Library/PrivateFrameworks/ContactsFoundation.framework/Versions/A/ContactsFoundation
    0x7fff9b9be000 -     0x7fff9b9e0fff  com.apple.contacts.ContactsPersistence (1.0 - 2250) <524C9EEC-D186-30B2-8A55-CC11A48CC44C> /System/Library/PrivateFrameworks/ContactsPersistence.framework/Versions/A/ContactsPersistence
    0x7fff9ba2a000 -     0x7fff9be07fe7  com.apple.CoreAUC (224.0.0 - 224.0.0) <8DF6075A-0711-33A9-9031-6FDA22E85C4F> /System/Library/PrivateFrameworks/CoreAUC.framework/Versions/A/CoreAUC
    0x7fff9be08000 -     0x7fff9be38fff  com.apple.CoreAVCHD (5.9.0 - 5900.4.1) <5E1B0512-E50B-3534-99EF-AD15E601877A> /System/Library/PrivateFrameworks/CoreAVCHD.framework/Versions/A/CoreAVCHD
    0x7fff9bead000 -     0x7fff9beb5ffb  com.apple.frameworks.CoreDaemon (1.3 - 1.3) <212D3DB2-DC44-329F-B810-238DF156D1EE> /System/Library/PrivateFrameworks/CoreDaemon.framework/Versions/B/CoreDaemon
    0x7fff9bfc5000 -     0x7fff9bfd6fff  com.apple.CoreEmoji (1.0 - 40) <F3D73BF8-6D48-3B1F-BBE6-EE927E725E92> /System/Library/PrivateFrameworks/CoreEmoji.framework/Versions/A/CoreEmoji
    0x7fff9c08b000 -     0x7fff9c0a1fff  com.apple.CoreMediaAuthoring (2.2 - 955) <3B877988-3823-3A84-A083-CE0B5B54F791> /System/Library/PrivateFrameworks/CoreMediaAuthoring.framework/Versions/A/CoreMediaAuthoring
    0x7fff9c0a8000 -     0x7fff9c138ffb  com.apple.CorePDF (4.0 - 4) <42FD0781-A19C-3E36-BFDA-DAEAFB3A3115> /System/Library/PrivateFrameworks/CorePDF.framework/Versions/A/CorePDF
    0x7fff9c2af000 -     0x7fff9c2dfff3  com.apple.CoreServicesInternal (276 - 276) <CCB21255-89DC-3F53-A6D6-8FA8F693C837> /System/Library/PrivateFrameworks/CoreServicesInternal.framework/Versions/A/CoreServicesInternal
    0x7fff9c568000 -     0x7fff9c5f2fff  com.apple.CoreSymbolication (61050) <BAC8D20F-4DC6-32EE-91FE-BF08E930420A> /System/Library/PrivateFrameworks/CoreSymbolication.framework/Versions/A/CoreSymbolication
    0x7fff9c5f3000 -     0x7fff9c72dfef  com.apple.coreui (2.1 - 424.1) <B9B92DB5-1C6C-306F-BD29-B1F82EC95283> /System/Library/PrivateFrameworks/CoreUI.framework/Versions/A/CoreUI
    0x7fff9c72e000 -     0x7fff9c7cdffb  com.apple.CoreUtils (4.3 - 430.70) <87BEB880-3D71-3251-B51E-FF0A42DFC065> /System/Library/PrivateFrameworks/CoreUtils.framework/Versions/A/CoreUtils
    0x7fff9c81d000 -     0x7fff9c882ff3  com.apple.framework.CoreWiFi (12.0 - 1200.25.1) <D7C870BE-55DE-34AF-8941-D42696D505B1> /System/Library/PrivateFrameworks/CoreWiFi.framework/Versions/A/CoreWiFi
    0x7fff9c883000 -     0x7fff9c88efff  com.apple.CrashReporterSupport (10.12 - 815) <10C3797E-DD63-303B-B901-1C52A502D2F8> /System/Library/PrivateFrameworks/CrashReporterSupport.framework/Versions/A/CrashReporterSupport
    0x7fff9c900000 -     0x7fff9c933ff7  com.apple.datadetectors (5.0 - 348) <018E6565-860F-39E2-9C2E-D730668CE326> /System/Library/PrivateFrameworks/DataDetectors.framework/Versions/A/DataDetectors
    0x7fff9c934000 -     0x7fff9c9abff3  com.apple.datadetectorscore (7.0 - 539) <C3F6F52B-A1AD-36FA-9BF9-C8D0E147F0A3> /System/Library/PrivateFrameworks/DataDetectorsCore.framework/Versions/A/DataDetectorsCore
    0x7fff9c9e5000 -     0x7fff9ca24fff  com.apple.DebugSymbols (137 - 137) <B229F3F7-250B-3151-8048-CEA7BF80FA52> /System/Library/PrivateFrameworks/DebugSymbols.framework/Versions/A/DebugSymbols
    0x7fff9ca25000 -     0x7fff9cb36ff7  com.apple.desktopservices (1.11 - 1.11) <494E239D-706F-350B-9481-2A8ECEEDBD8B> /System/Library/PrivateFrameworks/DesktopServicesPriv.framework/Versions/A/DesktopServicesPriv
    0x7fff9cb3b000 -     0x7fff9cc11ff7  com.apple.DiskImagesFramework (444 - 444) <F3F87D4C-CD77-3872-87BC-E3E44B1F76ED> /System/Library/PrivateFrameworks/DiskImages.framework/Versions/A/DiskImages
    0x7fff9cc12000 -     0x7fff9cc74ff7  com.apple.DiskManagement (9.0 - 1054) <191B21AA-7BAE-3175-B94E-A921D86E9327> /System/Library/PrivateFrameworks/DiskManagement.framework/Versions/A/DiskManagement
    0x7fff9cc75000 -     0x7fff9cc7ffff  com.apple.DisplayServicesFW (3.1 - 380) <79733A44-F60D-3EC0-BBC7-C4AEC5649D8F> /System/Library/PrivateFrameworks/DisplayServices.framework/Versions/A/DisplayServices
    0x7fff9cc8e000 -     0x7fff9ccc3fff  com.apple.SystemConfiguration.EAP8021X (14.0.0 - 14.0) <13E197A3-5B2E-3BEC-B4D2-03A77DF1C8EE> /System/Library/PrivateFrameworks/EAP8021X.framework/Versions/A/EAP8021X
    0x7fff9ccc4000 -     0x7fff9ccc6ffb  com.apple.EFILogin (2.0 - 2) <C53AC3A4-C684-3144-89A4-166549518C24> /System/Library/PrivateFrameworks/EFILogin.framework/Versions/A/EFILogin
    0x7fff9ce01000 -     0x7fff9d232ff7  com.apple.vision.FaceCore (3.3.2 - 3.3.2) <DEB42099-6927-332C-8D3E-D45096318D25> /System/Library/PrivateFrameworks/FaceCore.framework/Versions/A/FaceCore
    0x7fff9d23a000 -     0x7fff9d257fff  com.apple.framework.familycontrols (4.1 - 410) <639F6BC5-4252-3CD1-911B-CE2FDF586882> /System/Library/PrivateFrameworks/FamilyControls.framework/Versions/A/FamilyControls
    0x7fff9e56b000 -     0x7fff9e56bfff  libmetal_timestamp.dylib (600.0.48.25) <348D32E6-AD49-36DC-A0DE-5A44B2699FFA> /System/Library/PrivateFrameworks/GPUCompiler.framework/libmetal_timestamp.dylib
    0x7fff9e578000 -     0x7fff9e583ff3  libGPUSupportMercury.dylib (12.4.2.1) <A720545E-40F3-3FE0-A8B3-067D49083417> /System/Library/PrivateFrameworks/GPUSupport.framework/Versions/A/Libraries/libGPUSupportMercury.dylib
    0x7fff9e835000 -     0x7fff9e851ff7  com.apple.GenerationalStorage (2.0 - 259) <43D40063-BD46-3008-8992-FF092B7C9A58> /System/Library/PrivateFrameworks/GenerationalStorage.framework/Versions/A/GenerationalStorage
    0x7fff9e869000 -     0x7fff9eefdfff  com.apple.GeoServices (1.0 - 1226.20.7.17.11) <A6007FBD-25F7-3F52-972A-EEFCE0F6BF70> /System/Library/PrivateFrameworks/GeoServices.framework/Versions/A/GeoServices
    0x7fff9ef43000 -     0x7fff9efb9fff  com.apple.Heimdal (4.0 - 2.0) <18C127D7-9C61-3C5B-8C6F-7953760D2674> /System/Library/PrivateFrameworks/Heimdal.framework/Versions/A/Heimdal
    0x7fff9efba000 -     0x7fff9efcbfff  com.apple.HelpData (2.1.10 - 100) <BD5AC3F0-9619-3D1C-B96D-6BFCAD1C0245> /System/Library/PrivateFrameworks/HelpData.framework/Versions/A/HelpData
    0x7fff9efcc000 -     0x7fff9efefff7  com.apple.IASUtilities (1.0 - 310) <F8BC9A0B-D389-339E-9D92-38DEB103DF27> /System/Library/PrivateFrameworks/IASUtilities.framework/Versions/A/IASUtilities
    0x7fff9f5cb000 -     0x7fff9f5d2ffb  com.apple.IOAccelerator (288.13 - 288.13) <F77E27C3-20DD-3CE5-9D0A-6C89A997080E> /System/Library/PrivateFrameworks/IOAccelerator.framework/Versions/A/IOAccelerator
    0x7fff9f5d3000 -     0x7fff9f5d3fff  com.apple.IOPlatformPluginFamily (1.0 - 1) <FE9A03BF-4FB7-3F66-9E2A-4E66A5E58515> /System/Library/PrivateFrameworks/IOPlatformPluginFamily.framework/Versions/A/IOPlatformPluginFamily
    0x7fff9f5d4000 -     0x7fff9f5e8ff3  com.apple.IOPresentment (1.0 - 25) <40934217-996A-3DDB-A8C4-484CA0F0222B> /System/Library/PrivateFrameworks/IOPresentment.framework/Versions/A/IOPresentment
    0x7fff9f5e9000 -     0x7fff9f60bff7  com.apple.IconServices (74.1 - 74.1) <F7B83970-4A72-3186-BBB3-90FA86C3E263> /System/Library/PrivateFrameworks/IconServices.framework/Versions/A/IconServices
    0x7fff9f6a6000 -     0x7fff9f6b6ff3  com.apple.IntlPreferences (2.0 - 216) <43FFAB0C-4124-3231-B0CB-137CCB0A53AF> /System/Library/PrivateFrameworks/IntlPreferences.framework/Versions/A/IntlPreferences
    0x7fff9f6b7000 -     0x7fff9f6d4fff  com.apple.Jet (1.0 - 1) <58AFFA60-9BE8-3194-849E-13035074A2D2> /System/Library/PrivateFrameworks/Jet.framework/Versions/A/Jet
    0x7fff9f6e3000 -     0x7fff9f6ecffb  com.apple.security.KeychainCircle.KeychainCircle (1.0 - 1) <6C8095F5-2B08-311F-BAE0-00BA112D99D2> /System/Library/PrivateFrameworks/KeychainCircle.framework/Versions/A/KeychainCircle
    0x7fff9f6ed000 -     0x7fff9f8a1fff  com.apple.LanguageModeling (1.0 - 123) <10152D7F-C7C0-34AA-A295-D712D16C76E6> /System/Library/PrivateFrameworks/LanguageModeling.framework/Versions/A/LanguageModeling
    0x7fff9f8a2000 -     0x7fff9f8c2ffb  com.apple.LoggingSupport (1.0 - 518.1.16) <57D54492-CCF1-3F78-A1FA-E1724DD1B761> /System/Library/PrivateFrameworks/LoggingSupport.framework/Versions/A/LoggingSupport
    0x7fff9f8c3000 -     0x7fff9f8c7ffb  com.apple.LoginUICore (4.0 - 4.0) <7CE3F5E8-E365-31D0-97C9-A54A7F336D67> /System/Library/PrivateFrameworks/LoginUIKit.framework/Versions/A/Frameworks/LoginUICore.framework/Versions/A/LoginUICore
    0x7fff9f971000 -     0x7fff9fa42ff3  com.apple.MMCS (1.3 - 379) <14867D2F-6E87-351E-AB4B-9BD759364DFD> /System/Library/PrivateFrameworks/MMCS.framework/Versions/A/MMCS
    0x7fff9fed8000 -     0x7fff9fedbfff  com.apple.Mangrove (1.0 - 1) <05039E9F-9C07-375B-A940-D90D455A2EC2> /System/Library/PrivateFrameworks/Mangrove.framework/Versions/A/Mangrove
    0x7fff9ffb3000 -     0x7fff9ffe7ff3  com.apple.MediaKit (16 - 840) <2035FF47-C7E6-3F73-A335-AC0BFBB1DB36> /System/Library/PrivateFrameworks/MediaKit.framework/Versions/A/MediaKit
    0x7fff9ffe8000 -     0x7fffa00f3ff7  com.apple.MediaRemote (1.0 - 1) <0F9ECD8D-236E-3098-AE17-B34806FB31AE> /System/Library/PrivateFrameworks/MediaRemote.framework/Versions/A/MediaRemote
    0x7fffa00f4000 -     0x7fffa0113ffb  com.apple.MediaServices (1.0 - 1) <C33996B9-1267-39EB-B08D-6107CDB4F327> /System/Library/PrivateFrameworks/MediaServices.framework/Versions/A/MediaServices
    0x7fffa0137000 -     0x7fffa01affef  com.apple.MetalPerformanceShaders.MetalPerformanceShaders (1.0 - 1) <FAFA0DF5-4226-3867-A2E2-CAB889DC4490> /System/Library/PrivateFrameworks/MetalPerformanceShaders.framework/Versions/A/MetalPerformanceShaders
    0x7fffa0315000 -     0x7fffa0320ff7  com.apple.MobileKeyBag (2.0 - 1.0) <7ECC9D0A-246F-3D7E-9E78-16DBA0B55F49> /System/Library/PrivateFrameworks/MobileKeyBag.framework/Versions/A/MobileKeyBag
    0x7fffa0331000 -     0x7fffa0357fff  com.apple.MultitouchSupport.framework (367.6 - 367.6) <32D8588A-29BD-3A23-92B2-05C013DA5BC5> /System/Library/PrivateFrameworks/MultitouchSupport.framework/Versions/A/MultitouchSupport
    0x7fffa0358000 -     0x7fffa0403ff3  com.apple.Navigation (1.0 - 1) <C337DAE0-F836-3AB5-972F-B41E230FB929> /System/Library/PrivateFrameworks/Navigation.framework/Versions/A/Navigation
    0x7fffa0404000 -     0x7fffa040efff  com.apple.NetAuth (6.0 - 6.0) <D57D5888-0290-3295-A1C4-D673D4DCB497> /System/Library/PrivateFrameworks/NetAuth.framework/Versions/A/NetAuth
    0x7fffa0497000 -     0x7fffa04b8ff3  com.apple.network.statistics.framework (1.2 - 1) <896043EB-3243-3C7E-9C49-7A65E7C751E3> /System/Library/PrivateFrameworks/NetworkStatistics.framework/Versions/A/NetworkStatistics
    0x7fffa0803000 -     0x7fffa0805fff  com.apple.OAuth (25 - 25) <1A29AF10-4AFE-32A2-9CA9-A98BACA2CE8D> /System/Library/PrivateFrameworks/OAuth.framework/Versions/A/OAuth
    0x7fffa0827000 -     0x7fffa0919fcf  com.apple.PackageKit (3.0 - 627) <9BA765ED-D30D-318D-BB66-EA6F25CF4687> /System/Library/PrivateFrameworks/PackageKit.framework/Versions/A/PackageKit
    0x7fffa0baf000 -     0x7fffa0bf0ff7  com.apple.PerformanceAnalysis (1.145 - 145) <9DF1FCCC-7EBF-3213-B77A-0C3D3B7CF7AF> /System/Library/PrivateFrameworks/PerformanceAnalysis.framework/Versions/A/PerformanceAnalysis
    0x7fffa0c34000 -     0x7fffa0c3bff3  com.apple.phonenumbers (1.1.1 - 105) <14003B00-D2DA-3732-A1AC-A71763EC3556> /System/Library/PrivateFrameworks/PhoneNumbers.framework/Versions/A/PhoneNumbers
    0x7fffa1190000 -     0x7fffa11eafff  com.apple.PhysicsKit (1.0 - 1) <A0FD3BB8-CB18-3CE9-8EFE-8278EA431248> /System/Library/PrivateFrameworks/PhysicsKit.framework/Versions/A/PhysicsKit
    0x7fffa11eb000 -     0x7fffa120dff3  com.apple.pluginkit.framework (1.0 - 1) <966D5575-E092-33A4-8CD8-595EB6AA637A> /System/Library/PrivateFrameworks/PlugInKit.framework/Versions/A/PlugInKit
    0x7fffa1254000 -     0x7fffa127fffb  com.apple.ProtectedCloudStorage (1.0 - 1) <A1219818-97B0-3A4D-825B-24ADF9B7C8B6> /System/Library/PrivateFrameworks/ProtectedCloudStorage.framework/Versions/A/ProtectedCloudStorage
    0x7fffa1280000 -     0x7fffa129afff  com.apple.ProtocolBuffer (1 - 249) <D8B7694B-B598-3728-8583-9C4CC0F05B64> /System/Library/PrivateFrameworks/ProtocolBuffer.framework/Versions/A/ProtocolBuffer
    0x7fffa129b000 -     0x7fffa12abffb  com.apple.QuickLookThumbnailing (1.0 - 1) <DD5F14E6-A8A8-3EA8-96A3-4C84092BC18F> /System/Library/PrivateFrameworks/QuickLookThumbnailing.framework/Versions/A/QuickLookThumbnailing
    0x7fffa12b4000 -     0x7fffa12d7ff3  com.apple.RemoteViewServices (2.0 - 124) <280DB828-4613-3DF8-ACBA-C91989B64347> /System/Library/PrivateFrameworks/RemoteViewServices.framework/Versions/A/RemoteViewServices
    0x7fffa1f06000 -     0x7fffa1f09ff7  com.apple.SecCodeWrapper (4.0 - 307.1.1) <64F951CB-A975-32F0-BC60-1E839E607FCB> /System/Library/PrivateFrameworks/SecCodeWrapper.framework/Versions/A/SecCodeWrapper
    0x7fffa1f97000 -     0x7fffa2012fff  com.apple.Sharing (659.1.6 - 659.1.6) <C217107C-CD4B-311D-9FBA-7435B1F6186F> /System/Library/PrivateFrameworks/Sharing.framework/Versions/A/Sharing
    0x7fffa2013000 -     0x7fffa2032ff7  com.apple.shortcut (2.16 - 98) <AC3AFB42-F3F7-3E71-8DAF-AA4ACF3021F7> /System/Library/PrivateFrameworks/Shortcut.framework/Versions/A/Shortcut
    0x7fffa2033000 -     0x7fffa2285fff  com.apple.SkyLight (1.600.0 - 100) <6B9F1B65-AA33-3AA6-8EA2-DB98CC74E37F> /System/Library/PrivateFrameworks/SkyLight.framework/Versions/A/SkyLight
    0x7fffa245f000 -     0x7fffa246bfff  com.apple.SpeechRecognitionCore (3.0.15 - 3.0.15) <BE386037-4B61-341F-80E2-5D8B5B50C8BC> /System/Library/PrivateFrameworks/SpeechRecognitionCore.framework/Versions/A/SpeechRecognitionCore
    0x7fffa2b4e000 -     0x7fffa2bbaff3  com.apple.Symbolication (61080.2) <0F183B36-0BCF-3330-8C68-4A521A142919> /System/Library/PrivateFrameworks/Symbolication.framework/Versions/A/Symbolication
    0x7fffa2da3000 -     0x7fffa2dcfff3  com.apple.framework.SystemAdministration (1.0 - 1.0) <DAD14404-CA3E-3D5E-9470-D28E42CC1948> /System/Library/PrivateFrameworks/SystemAdministration.framework/Versions/A/SystemAdministration
    0x7fffa2fb1000 -     0x7fffa2fb7ff7  com.apple.TCC (1.0 - 1) <CEE9F9F9-2A24-3F60-BE73-4703D85E307C> /System/Library/PrivateFrameworks/TCC.framework/Versions/A/TCC
    0x7fffa3043000 -     0x7fffa31f6ff3  com.apple.TextureIO (1.31 - 1.31) <9E6E91C7-76DC-3C12-9629-494084792476> /System/Library/PrivateFrameworks/TextureIO.framework/Versions/A/TextureIO
    0x7fffa323f000 -     0x7fffa3254ff3  com.apple.ToneKit (1.0 - 1) <ACFC15FF-6BB9-3D0F-B94E-617E9D1362DA> /System/Library/PrivateFrameworks/ToneKit.framework/Versions/A/ToneKit
    0x7fffa3255000 -     0x7fffa3263ffb  com.apple.ToneLibrary (1.0 - 1) <32AD3F5C-124F-351D-BC9B-63A7AEA20F31> /System/Library/PrivateFrameworks/ToneLibrary.framework/Versions/A/ToneLibrary
    0x7fffa326a000 -     0x7fffa326bfff  com.apple.TrustEvaluationAgent (2.0 - 28) <6793B664-C4FC-3CD4-B0E7-25B9933391AC> /System/Library/PrivateFrameworks/TrustEvaluationAgent.framework/Versions/A/TrustEvaluationAgent
    0x7fffa326c000 -     0x7fffa33fbffb  com.apple.UIFoundation (1.0 - 489) <0CD14719-FC52-3AC5-87EF-775437927990> /System/Library/PrivateFrameworks/UIFoundation.framework/Versions/A/UIFoundation
    0x7fffa340a000 -     0x7fffa340bfff  libUAPreferences.dylib (304) <AB805178-9A6A-37D4-B131-0BBAE893ACC8> /System/Library/PrivateFrameworks/UniversalAccess.framework/Versions/A/Libraries/libUAPreferences.dylib
    0x7fffa3467000 -     0x7fffa3af8ff3  com.apple.VectorKit (1.0 - 1228.20.7.17.8) <01C84FF8-DA42-3CBC-B85E-C2EF895C0027> /System/Library/PrivateFrameworks/VectorKit.framework/Versions/A/VectorKit
    0x7fffa3e56000 -     0x7fffa3f05ff7  com.apple.ViewBridge (265.1 - 265.1) <21855FE3-F19D-3E3F-9500-BFC811DA75C6> /System/Library/PrivateFrameworks/ViewBridge.framework/Versions/A/ViewBridge
    0x7fffa432d000 -     0x7fffa4333fff  com.apple.XPCService (2.0 - 1) <BC3FCE26-6219-3316-949F-37F7005C9A0F> /System/Library/PrivateFrameworks/XPCService.framework/Versions/A/XPCService
    0x7fffa4334000 -     0x7fffa4336fff  com.apple.private.XprotectFrameWork.XprotectFramework (1.0 - 1) <AEAA4A7F-2296-3E7E-93A0-28CB59A47AA3> /System/Library/PrivateFrameworks/XprotectFramework.framework/Versions/A/XprotectFramework
    0x7fffa4404000 -     0x7fffa4406ffb  com.apple.loginsupport (1.0 - 1) <03B57D6F-C210-32BC-B384-5B0E95660283> /System/Library/PrivateFrameworks/login.framework/Versions/A/Frameworks/loginsupport.framework/Versions/A/loginsupport
    0x7fffa4407000 -     0x7fffa441fffb  com.apple.login (3.0 - 3.0) <B904E4D4-090D-3DC1-824D-12908001ABEC> /System/Library/PrivateFrameworks/login.framework/Versions/A/login
    0x7fffa4432000 -     0x7fffa4459ff3  com.apple.contacts.vCard (1.0 - 2250) <443AB8FC-1C0F-3505-8C90-CDE600C9C73E> /System/Library/PrivateFrameworks/vCard.framework/Versions/A/vCard
    0x7fffa445b000 -     0x7fffa4476ff7  libCRFSuite.dylib (34) <BACC371B-6153-36B5-BC54-3BCF26FBB221> /usr/lib/libCRFSuite.dylib
    0x7fffa4477000 -     0x7fffa4482fff  libChineseTokenizer.dylib (21) <09E74E18-ADB2-30D2-A858-13691CB1186C> /usr/lib/libChineseTokenizer.dylib
    0x7fffa4483000 -     0x7fffa4513ff7  libCoreStorage.dylib (540) <767EE749-FAD4-3557-ACC8-35EF8457B98D> /usr/lib/libCoreStorage.dylib
    0x7fffa4514000 -     0x7fffa4515ff3  libDiagnosticMessagesClient.dylib (102) <422911A4-E273-3E88-BFC4-DF6470E48242> /usr/lib/libDiagnosticMessagesClient.dylib
    0x7fffa4516000 -     0x7fffa4729fff  libFosl_dynamic.dylib (16.37) <3EA1C7EE-4A6C-3B09-BCA7-81A074B24013> /usr/lib/libFosl_dynamic.dylib
    0x7fffa4745000 -     0x7fffa474cfff  libMatch.1.dylib (27) <5D52A207-E2AF-3E05-8C51-91C1D82FCEE8> /usr/lib/libMatch.1.dylib
    0x7fffa474d000 -     0x7fffa474dfff  libOpenScriptingUtil.dylib (172) <D025E180-BB3B-3FFA-98FC-B6835354D723> /usr/lib/libOpenScriptingUtil.dylib
    0x7fffa474e000 -     0x7fffa4751ff7  libScreenReader.dylib (477.1.5) <88D484EC-7589-324B-890D-799F27DF0FB3> /usr/lib/libScreenReader.dylib
    0x7fffa4752000 -     0x7fffa4753ff3  libSystem.B.dylib (1238) <168B3C56-081B-3998-9A44-681EB4C6828F> /usr/lib/libSystem.B.dylib
    0x7fffa47bc000 -     0x7fffa47befff  libUniversalAccess.dylib (304) <4A26CC69-4259-3CD4-AFA0-8B05CD62E5AC> /usr/lib/libUniversalAccess.dylib
    0x7fffa47bf000 -     0x7fffa47eaffb  libarchive.2.dylib (41.1.1) <C4F76D18-8484-3779-AE80-14F27E57ABB5> /usr/lib/libarchive.2.dylib
    0x7fffa47eb000 -     0x7fffa485ffff  libate.dylib (1.12.12) <DD989482-B873-3094-97BB-2B5AE8D3B544> /usr/lib/libate.dylib
    0x7fffa4863000 -     0x7fffa4863ff3  libauto.dylib (187) <5BBF6A00-CC76-389D-84E7-CA88EDADE683> /usr/lib/libauto.dylib
    0x7fffa4864000 -     0x7fffa4874ff3  libbsm.0.dylib (34) <20084796-B04D-3B35-A003-EA11459557A9> /usr/lib/libbsm.0.dylib
    0x7fffa4875000 -     0x7fffa4883ff7  libbz2.1.0.dylib (38) <6FD3B63F-0F86-3A25-BD5B-E243F58792C9> /usr/lib/libbz2.1.0.dylib
    0x7fffa4884000 -     0x7fffa48daff7  libc++.1.dylib (307.4) <BEE86868-F831-384C-919E-2B286ACFE87C> /usr/lib/libc++.1.dylib
    0x7fffa48db000 -     0x7fffa4905fff  libc++abi.dylib (307.2) <1CEF8ABB-7E6D-3C2F-8E0A-E7884478DD23> /usr/lib/libc++abi.dylib
    0x7fffa4906000 -     0x7fffa4916ffb  libcmph.dylib (6) <2B5D405E-2D0B-3320-ABD6-622934C86ABE> /usr/lib/libcmph.dylib
    0x7fffa4917000 -     0x7fffa492cfc3  libcompression.dylib (34) <1691D6F2-46CD-3DA6-B44F-24CDD9BD0E4E> /usr/lib/libcompression.dylib
    0x7fffa492d000 -     0x7fffa492dff7  libcoretls.dylib (121.1.1) <F3BAB54C-DA82-37C3-A218-46FEB179D555> /usr/lib/libcoretls.dylib
    0x7fffa492e000 -     0x7fffa492fffb  libcoretls_cfhelpers.dylib (121.1.1) <D12709F3-BBE3-3CF7-9070-C2A0803F5526> /usr/lib/libcoretls_cfhelpers.dylib
    0x7fffa49e9000 -     0x7fffa4acdff3  libcrypto.0.9.8.dylib (64) <4CB423CE-0B86-334A-9335-FEE75198024F> /usr/lib/libcrypto.0.9.8.dylib
    0x7fffa4ace000 -     0x7fffa4c5effb  libcrypto.35.dylib (11) <B74CD89D-1C11-3C4B-BF25-487C370FDD85> /usr/lib/libcrypto.35.dylib
    0x7fffa4c5f000 -     0x7fffa4c6afff  libcsfde.dylib (540) <0F49D756-17BF-3E69-AD3B-A9B993CD41EA> /usr/lib/libcsfde.dylib
    0x7fffa4c6b000 -     0x7fffa4cbeff7  libcups.2.dylib (450) <04CA1F55-4B70-3D65-B4B1-62F6C271A9EF> /usr/lib/libcups.2.dylib
    0x7fffa4cbf000 -     0x7fffa4d0eff7  libcurl.4.dylib (95) <7FFE0024-36CD-3040-923F-1DE911FE5459> /usr/lib/libcurl.4.dylib
    0x7fffa4d0f000 -     0x7fffa4d16ff3  libdscsym.dylib (145) <0972B577-B427-3A1C-A9E7-325B6B265135> /usr/lib/libdscsym.dylib
    0x7fffa4d19000 -     0x7fffa4d37ff3  libedit.3.dylib (48) <2D3593DF-8DF9-3813-B0C2-6938BC77FC79> /usr/lib/libedit.3.dylib
    0x7fffa4d38000 -     0x7fffa4d38fff  libenergytrace.dylib (15) <A1B040A2-7977-3097-9ADF-34FF181EB970> /usr/lib/libenergytrace.dylib
    0x7fffa4d39000 -     0x7fffa4d45ffb  libexslt.0.dylib (15.8) <9910CD52-0A64-3992-B540-D7D38C626209> /usr/lib/libexslt.0.dylib
    0x7fffa4d46000 -     0x7fffa4d47fff  libffi.dylib (18.1) <49D03682-E111-351C-8266-4519B3B82BE9> /usr/lib/libffi.dylib
    0x7fffa4d48000 -     0x7fffa4d4dff3  libheimdal-asn1.dylib (498) <8F3F1AE8-CE4A-355C-82E3-74DA46B5BB02> /usr/lib/libheimdal-asn1.dylib
    0x7fffa4d4e000 -     0x7fffa4e40ff7  libiconv.2.dylib (50) <42125B35-81D7-3FC4-9475-A26DBE10884D> /usr/lib/libiconv.2.dylib
    0x7fffa4e41000 -     0x7fffa5066fff  libicucore.A.dylib (57131.0.1) <72594943-D25E-3F70-A4AC-8E9F9F442B7E> /usr/lib/libicucore.A.dylib
    0x7fffa506c000 -     0x7fffa506dfff  liblangid.dylib (126) <3F4530C9-8BE1-3AA7-9A82-98694D240866> /usr/lib/liblangid.dylib
    0x7fffa506e000 -     0x7fffa5087ffb  liblzma.5.dylib (10) <44BD0279-99DD-36B5-8A6E-C11432E2098D> /usr/lib/liblzma.5.dylib
    0x7fffa5088000 -     0x7fffa509eff7  libmarisa.dylib (5) <2183D484-032D-3DE5-8984-3A14006E034E> /usr/lib/libmarisa.dylib
    0x7fffa509f000 -     0x7fffa5348fff  libmecabra.dylib (744) <545EDC2D-22BB-3E8F-BFD3-921447581D9F> /usr/lib/libmecabra.dylib
    0x7fffa5349000 -     0x7fffa537aff3  libncurses.5.4.dylib (51) <6B88562D-86DB-3EFA-8C55-0148C30DC642> /usr/lib/libncurses.5.4.dylib
    0x7fffa537b000 -     0x7fffa53f3ffb  libnetwork.dylib (856.1.8) <30FC3C60-CCA9-3E2B-80AA-DE53F5762374> /usr/lib/libnetwork.dylib
    0x7fffa53f4000 -     0x7fffa57c4d97  libobjc.A.dylib (706) <F9AFE665-A3A2-3285-9495-19803A565861> /usr/lib/libobjc.A.dylib
    0x7fffa57c5000 -     0x7fffa57c6ff7  libodfde.dylib (23) <4DFCC459-2C07-38C6-871F-94DA3677F1EA> /usr/lib/libodfde.dylib
    0x7fffa57c7000 -     0x7fffa57cbfff  libpam.2.dylib (21) <352F8FF6-2248-3594-B357-8D031DEFB06C> /usr/lib/libpam.2.dylib
    0x7fffa57cc000 -     0x7fffa57fcff7  libpcap.A.dylib (67) <450DB888-2C0C-3085-A5F1-69324DFE902C> /usr/lib/libpcap.A.dylib
    0x7fffa5818000 -     0x7fffa5819ff3  libquit.dylib (228) <6951DF47-C0E6-3E60-B95F-32DB45825316> /usr/lib/libquit.dylib
    0x7fffa581a000 -     0x7fffa5836ffb  libresolv.9.dylib (64) <A244AE4C-00B0-396C-98FF-97FE4DB3DA30> /usr/lib/libresolv.9.dylib
    0x7fffa5837000 -     0x7fffa5870fff  libsandbox.1.dylib (592.1.3) <0024D751-23D8-35DF-87CF-72E489DA2F9F> /usr/lib/libsandbox.1.dylib
    0x7fffa5871000 -     0x7fffa5883ffb  libsasl2.2.dylib (209) <5A177BA8-362D-32DA-8D14-69AB191648B3> /usr/lib/libsasl2.2.dylib
    0x7fffa5884000 -     0x7fffa5885ff3  libspindump.dylib (228) <F80FAB75-D656-3FDA-8753-D3D6771B17E6> /usr/lib/libspindump.dylib
    0x7fffa5886000 -     0x7fffa59cefff  libsqlite3.dylib (252) <FCA29CD2-E8E4-3324-8E2C-19BDC11F0338> /usr/lib/libsqlite3.dylib
    0x7fffa59f1000 -     0x7fffa5a29ff3  libssl.0.9.8.dylib (64) <CCE69718-2965-3E28-A886-41C79EB94C67> /usr/lib/libssl.0.9.8.dylib
    0x7fffa5a2a000 -     0x7fffa5a7afff  libstdc++.6.dylib (104.1) <91F66BFD-F927-301F-B8F3-578A5CEA78F4> /usr/lib/libstdc++.6.dylib
    0x7fffa5a7b000 -     0x7fffa5a7cfff  libsysmon.dylib (92) <1643074B-23BA-3CAE-824A-B60D1E3538E1> /usr/lib/libsysmon.dylib
    0x7fffa5a89000 -     0x7fffa5abbfff  libtidy.A.dylib (15.18.1) <1E4E05C0-53F3-3FEF-9A9B-3DBE9BCA9467> /usr/lib/libtidy.A.dylib
    0x7fffa5abc000 -     0x7fffa5abeffb  libutil.dylib (47) <2E56EB36-BF20-3261-9083-3D7AD06A96A2> /usr/lib/libutil.dylib
    0x7fffa5abf000 -     0x7fffa5accfff  libxar.1.dylib (354) <AAFCF321-8100-3622-880B-9661DCA35D69> /usr/lib/libxar.1.dylib
    0x7fffa5acd000 -     0x7fffa5acfffb  libxcselect.dylib (2345.1) <A8A76980-029C-33CD-B08B-8EE437886AEA> /usr/lib/libxcselect.dylib
    0x7fffa5ad0000 -     0x7fffa5bbfffb  libxml2.2.dylib (30.11) <26676155-64CE-323F-B73C-AD77AF5982E8> /usr/lib/libxml2.2.dylib
    0x7fffa5bc0000 -     0x7fffa5be9fff  libxslt.1.dylib (15.8) <FFF5DD45-F544-34B2-BE3C-DB877DC60081> /usr/lib/libxslt.1.dylib
    0x7fffa5bea000 -     0x7fffa5bfbff3  libz.1.dylib (67) <46E3FFA2-4328-327A-8D34-A03E20BFFB8E> /usr/lib/libz.1.dylib
    0x7fffa5c0a000 -     0x7fffa5c0eff7  libcache.dylib (79) <84E55656-FDA9-3B29-9E4F-BE31B2C0AA3C> /usr/lib/system/libcache.dylib
    0x7fffa5c0f000 -     0x7fffa5c19fff  libcommonCrypto.dylib (60092.1.2) <79F738D8-0AD7-3DEA-AF80-E0F8B90B74E3> /usr/lib/system/libcommonCrypto.dylib
    0x7fffa5c1a000 -     0x7fffa5c21fff  libcompiler_rt.dylib (62) <486BDE52-81B4-3446-BD72-23977CAE556F> /usr/lib/system/libcompiler_rt.dylib
    0x7fffa5c22000 -     0x7fffa5c2afff  libcopyfile.dylib (138) <0DA49B77-56EC-362D-98FF-FA78CFD986D6> /usr/lib/system/libcopyfile.dylib
    0x7fffa5c2b000 -     0x7fffa5cadff3  libcorecrypto.dylib (442.1.3) <1CA8B679-810E-3C04-945A-4AC19372CDC7> /usr/lib/system/libcorecrypto.dylib
    0x7fffa5cae000 -     0x7fffa5ce0fff  libdispatch.dylib (703.1.4) <12B1D95B-283D-325D-85AB-29A2FFD36987> /usr/lib/system/libdispatch.dylib
    0x7fffa5ce1000 -     0x7fffa5ce6ff3  libdyld.dylib (421.1) <CDFBDC9C-418C-369D-B433-F64B0630E640> /usr/lib/system/libdyld.dylib
    0x7fffa5ce7000 -     0x7fffa5ce7ffb  libkeymgr.dylib (28) <09CD7CA6-46D2-3A9F-B9F1-7C4CA5CA0D68> /usr/lib/system/libkeymgr.dylib
    0x7fffa5ce8000 -     0x7fffa5cf4ffb  libkxld.dylib (3789.1.32) <48BDBE7F-AAE6-3050-9017-6959051CF16A> /usr/lib/system/libkxld.dylib
    0x7fffa5cf5000 -     0x7fffa5cf5fff  liblaunch.dylib (972.1.5) <DC31FDEA-FD81-335E-BAA8-5A7395D20772> /usr/lib/system/liblaunch.dylib
    0x7fffa5cf6000 -     0x7fffa5cfbfff  libmacho.dylib (894) <1EAE5ADD-490C-3B1F-9F97-447BA8E0E90F> /usr/lib/system/libmacho.dylib
    0x7fffa5cfc000 -     0x7fffa5cfeff3  libquarantine.dylib (85) <78EF62D8-C890-3FC0-937A-C2FD8CEF8992> /usr/lib/system/libquarantine.dylib
    0x7fffa5cff000 -     0x7fffa5d00ffb  libremovefile.dylib (45) <C4FC07FF-ED86-382E-B06F-33C34718080C> /usr/lib/system/libremovefile.dylib
    0x7fffa5d01000 -     0x7fffa5d19ff7  libsystem_asl.dylib (349.1.1) <F0987490-8427-367F-B302-A05A7D61FEBF> /usr/lib/system/libsystem_asl.dylib
    0x7fffa5d1a000 -     0x7fffa5d1aff7  libsystem_blocks.dylib (67) <B8C3701D-5A91-3D35-999D-2DC8D5393525> /usr/lib/system/libsystem_blocks.dylib
    0x7fffa5d1b000 -     0x7fffa5da8fe7  libsystem_c.dylib (1158.1.2) <5F260836-48E4-3F57-8553-62D2DA228A1F> /usr/lib/system/libsystem_c.dylib
    0x7fffa5da9000 -     0x7fffa5dacffb  libsystem_configuration.dylib (888.1.2) <67BB9D8B-2430-38AD-81A7-F0EC924B2590> /usr/lib/system/libsystem_configuration.dylib
    0x7fffa5dad000 -     0x7fffa5db0fff  libsystem_coreservices.dylib (41.1) <11F22E6C-0DCB-3699-A4F0-C99E301E56E9> /usr/lib/system/libsystem_coreservices.dylib
    0x7fffa5db1000 -     0x7fffa5dc9ffb  libsystem_coretls.dylib (121.1.1) <8F7E9B12-400D-3276-A9C5-4546B0258554> /usr/lib/system/libsystem_coretls.dylib
    0x7fffa5dca000 -     0x7fffa5dd0fff  libsystem_dnssd.dylib (765.1.2) <C5FF2025-C60B-39C6-B205-6BF1BC51D1B3> /usr/lib/system/libsystem_dnssd.dylib
    0x7fffa5dd1000 -     0x7fffa5dfafff  libsystem_info.dylib (503) <C686B834-5E7D-382C-AF6E-44AB78EE83E2> /usr/lib/system/libsystem_info.dylib
    0x7fffa5dfb000 -     0x7fffa5e1dff7  libsystem_kernel.dylib (3789.1.32) <5C68A0D7-C3C9-3E52-B983-EDE9A28AB6FC> /usr/lib/system/libsystem_kernel.dylib
    0x7fffa5e1e000 -     0x7fffa5e65fe7  libsystem_m.dylib (3121.4) <E3370D16-EBAA-3C7F-AC56-2D6EAD7DB0A4> /usr/lib/system/libsystem_m.dylib
    0x7fffa5e66000 -     0x7fffa5e84ff7  libsystem_malloc.dylib (116) <3DD17B88-B7A4-38B9-9E95-AB88E1C3B647> /usr/lib/system/libsystem_malloc.dylib
    0x7fffa5e85000 -     0x7fffa5edbfff  libsystem_network.dylib (856.1.8) <A8973360-956A-33BF-9971-14D59C84E0D1> /usr/lib/system/libsystem_network.dylib
    0x7fffa5edc000 -     0x7fffa5ee5ff3  libsystem_networkextension.dylib (563.1.11) <1C551832-9360-36DD-A7BA-52B55A171720> /usr/lib/system/libsystem_networkextension.dylib
    0x7fffa5ee6000 -     0x7fffa5eefffb  libsystem_notify.dylib (165) <AF77D471-6B13-36BA-B144-7E7DDB9DBA9F> /usr/lib/system/libsystem_notify.dylib
    0x7fffa5ef0000 -     0x7fffa5ef8fe7  libsystem_platform.dylib (126.1.2) <884DDF42-3CAE-334A-82CE-965617130FB1> /usr/lib/system/libsystem_platform.dylib
    0x7fffa5ef9000 -     0x7fffa5f03fff  libsystem_pthread.dylib (218.1.3) <050AE77B-4F4B-334A-A5BA-CF0D10AF5304> /usr/lib/system/libsystem_pthread.dylib
    0x7fffa5f04000 -     0x7fffa5f07fff  libsystem_sandbox.dylib (592.1.3) <90FEF628-316D-3F84-9EF4-F7F510A4FBBB> /usr/lib/system/libsystem_sandbox.dylib
    0x7fffa5f08000 -     0x7fffa5f09fff  libsystem_secinit.dylib (24) <A54B8FEF-E792-3C54-8E0B-E80A376662F2> /usr/lib/system/libsystem_secinit.dylib
    0x7fffa5f0a000 -     0x7fffa5f11fff  libsystem_symptoms.dylib (532.1.1) <B26F656E-94F9-3834-9B03-51C4FF11D1BF> /usr/lib/system/libsystem_symptoms.dylib
    0x7fffa5f12000 -     0x7fffa5f32ff7  libsystem_trace.dylib (518.1.16) <C3CDF7BC-CA3D-34F5-ADF8-46AAAB0B47F8> /usr/lib/system/libsystem_trace.dylib
    0x7fffa5f33000 -     0x7fffa5f38ffb  libunwind.dylib (35.3) <9F7C2AD8-A9A7-3DE4-828D-B0F0F166AAA0> /usr/lib/system/libunwind.dylib
    0x7fffa5f39000 -     0x7fffa5f62ff7  libxpc.dylib (972.1.5) <2A901937-48E1-3BF2-83F1-2431156D82B7> /usr/lib/system/libxpc.dylib

External Modification Summary:
  Calls made by other processes targeting this process:
    task_for_pid: 16
    thread_create: 0
    thread_set_state: 0
  Calls made by this process:
    task_for_pid: 0
    thread_create: 0
    thread_set_state: 0
  Calls made by all processes on this machine:
    task_for_pid: 16404794
    thread_create: 0
    thread_set_state: 60447

VM Region Summary:
ReadOnly portion of Libraries: Total=635.1M resident=0K(0%) swapped_out_or_unallocated=635.1M(100%)
Writable regions: Total=1.3G written=0K(0%) resident=0K(0%) swapped_out=0K(0%) unallocated=1.3G(100%)
 
                                  VIRTUAL   REGION 
REGION TYPE                          SIZE    COUNT (non-coalesced) 
===========                       =======  ======= 
Accelerate framework                 512K        5 
Activity Tracing                     256K        2 
CG backing stores                   21.7M        7 
CG image                            14.2M       52 
CoreAnimation                       12.9M       64 
CoreUI image data                   4712K       28 
CoreUI image file                    232K        9 
Dispatch continuations              16.0M        2 
Foundation                            40K        6 
Image IO                            1996K       47 
JS JIT generated code                  8K        3 
JS JIT generated code (reserved)     1.0G        2         reserved VM address space (unallocated)
Kernel Alloc Once                      8K        2 
MALLOC                             197.2M       66 
MALLOC guard page                     48K       11 
Memory Tag 242                        12K        2 
Memory Tag 251                        72K        4 
SQLite page cache                    128K        3 
STACK GUARD                         56.1M       24 
Stack                               19.2M       24 
VM_ALLOCATE                          392K       26 
WebKit Malloc                       2068K        6 
__DATA                              65.7M      548 
__GLSLBUILTINS                      2588K        2 
__IMAGE                              528K        2 
__LINKEDIT                         168.3M      260 
__TEXT                             467.8M      523 
__UNICODE                            556K        2 
mapped file                        130.8M       57 
shared memory                       16.4M       21 
===========                       =======  ======= 
TOTAL                                2.2G     1780 
TOTAL, minus reserved VM space       1.2G     1780 

Model: MacBookPro11,2, BootROM MBP112.0138.B17, 4 processors, Intel Core i7, 2 GHz, 8 GB, SMC 2.18f15
Graphics: Intel Iris Pro, Intel Iris Pro, Built-In
Memory Module: BANK 0/DIMM0, 4 GB, DDR3, 1600 MHz, 0x02FE, -
Memory Module: BANK 1/DIMM0, 4 GB, DDR3, 1600 MHz, 0x02FE, -
AirPort: spairport_wireless_card_type_airport_extreme (0x14E4, 0x134), Broadcom BCM43xx 1.0 (7.21.171.10.1a16)
Bluetooth: Version 5.0.0f17, 3 services, 27 devices, 1 incoming serial ports
Network Service: Wi-Fi, AirPort, en0
Serial ATA Device: APPLE SSD SM0256F, 251 GB
USB Device: USB 3.0 Bus
USB Device: Apple Internal Keyboard / Trackpad
USB Device: BRCM20702 Hub
USB Device: Bluetooth USB Host Controller
Thunderbolt Bus: MacBook Pro, Apple Inc., 17.1
