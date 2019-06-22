# vanilla-orm

Clone repo then run ./compile.sh
This will drive native-image and then run the result.


```

Jun 21, 2019 10:07:44 PM com.fasterxml.jackson.databind.ext.Java7Support <clinit>
WARNING: Unable to load JDK7 types (annotations, java.nio.file.Path): no Java7 support added

  .   ____          _            __ _ _
 /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
 \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
  '  |____| .__|_| |_|_| |_\__, | / / / /
 =========|_|==============|___/=/_/_/_/
 :: Spring Boot ::                        

Jun 21, 2019 10:07:44 PM org.springframework.boot.StartupInfoLogger logStarting
INFO: Starting SampleApplication on Andys-MacBook-Pro-2018.local with PID 14551 (started by aclement in /Users/aclement/gits4/vanilla-orm)
Jun 21, 2019 10:07:44 PM org.springframework.boot.SpringApplication logStartupProfileInfo
INFO: No active profile set, falling back to default profiles: default
2019-06-21 22:07:44.986  INFO 14551 --- [           main] com.zaxxer.hikari.HikariDataSource       : HikariPool-1 - Starting...
2019-06-21 22:07:44.989  INFO 14551 --- [           main] com.zaxxer.hikari.HikariDataSource       : HikariPool-1 - Start completed.
2019-06-21 22:07:44.990  INFO 14551 --- [           main] o.hibernate.jpa.internal.util.LogHelper  : HHH000204: Processing PersistenceUnitInfo [name: default]
2019-06-21 22:07:44.991  INFO 14551 --- [           main] org.hibernate.Version                    : HHH000412: Hibernate Core {[WORKING]}
[ [ SubstrateSegfaultHandler caught signal 11 ] ]

  
  General Purpose Register Set Values: 
  
    RAX 0000000000000000
    RBX 0000000000000000
    RCX 0000000000000001
    RDX 000000011cc4fd18
    RBP 0000000000000000
    RSI 0000000000000000
    RDI 0000000116076b78
    RSP 00007ffee4cfc438
    R8 0000000000000026
    R9 0000000000000005
    R10 00000000026e8f58
    R11 000000000000001f
    R12 0000000009bd8fc8
    R13 00000000c0001002
    R14 0000000113076000
    R15 00007fd33fc05280
    EFL 0000000000010206
    RIP 0000000000000000
    
  
  JavaFrameAnchor dump:
  
    No anchors
    
  TopFrame info:
  
    
  VMThreads info:
  
    VMThread 00007fd33fe03050  STATUS_IN_NATIVE  java.lang.Thread@0x11c8ba870
    VMThread 00007fd33fc05280  STATUS_IN_JAVA (safepoints disabled)  java.lang.Thread@0x115e36a78
    
  VM Thread State for current thread 00007fd33fc05280:
  
    0 (8 bytes): com.oracle.svm.jni.JNIThreadLocalEnvironment.jniFunctions = (bytes) 
      00007fd33fc05280: 0000000000000000
    
    8 (32 bytes): com.oracle.svm.core.genscavenge.ThreadLocalAllocation.pinnedTLAB = (bytes) 
      00007fd33fc05288: 0000000000000000 0000000000000000
      00007fd33fc05298: 0000000000000000 0000000000000000
      
    
    40 (32 bytes): com.oracle.svm.core.genscavenge.ThreadLocalAllocation.regularTLAB = (bytes) 
      00007fd33fc052a8: 000000011cc00000 000000011cd00000
      00007fd33fc052b8: 000000011cc4fd40 000000011c981000
      
    
    72 (8 bytes): com.oracle.svm.core.genscavenge.PinnedAllocatorImpl.openPinnedAllocator = (Object) null
    80 (8 bytes): com.oracle.svm.core.heap.NoAllocationVerifier.openVerifiers = (Object) null
    88 (8 bytes): com.oracle.svm.core.jdk.IdentityHashCodeSupport.hashCodeGeneratorTL = (Object) java.util.SplittableRandom  0000000116e7fe10
    96 (8 bytes): com.oracle.svm.core.snippets.SnippetRuntime.currentException = (Object) null
    104 (8 bytes): com.oracle.svm.core.thread.JavaThreads.currentThread = (Object) java.lang.Thread  0000000115e36a78
    112 (8 bytes): com.oracle.svm.core.thread.ThreadingSupportImpl.activeTimer = (Object) null
    120 (8 bytes): com.oracle.svm.jni.JNIThreadLocalHandles.handles = (Object) null
    128 (8 bytes): com.oracle.svm.jni.JNIThreadLocalPendingException.pendingException = (Object) null
    136 (8 bytes): com.oracle.svm.jni.JNIThreadLocalPinnedObjects.pinnedObjectsListHead = (Object) null
    144 (8 bytes): com.oracle.svm.jni.JNIThreadOwnedMonitors.ownedMonitors = (Object) null
    152 (8 bytes): com.oracle.svm.core.genscavenge.ThreadLocalAllocation.freeList = (Word) 0  0000000000000000
    160 (8 bytes): com.oracle.svm.core.graal.snippets.StackOverflowCheckImpl.stackBoundaryTL = (Word) 140732728905728  00007ffee4509000
    168 (8 bytes): com.oracle.svm.core.stack.JavaFrameAnchors.lastAnchor = (Word) 0  0000000000000000
    176 (8 bytes): com.oracle.svm.core.thread.VMThreads.IsolateTL = (Word) 4614217728  0000000113076000
    184 (8 bytes): com.oracle.svm.core.thread.VMThreads.OSThreadIdTL = (Word) 4734137792  000000011a2d35c0
    192 (8 bytes): com.oracle.svm.core.thread.VMThreads.nextTL = (Word) 0  0000000000000000
    200 (4 bytes): com.oracle.svm.core.graal.snippets.StackOverflowCheckImpl.yellowZoneStateTL = (int) 1  00000001
    204 (4 bytes): com.oracle.svm.core.snippets.ImplicitExceptions.implicitExceptionsAreFatal = (int) 0  00000000
    208 (4 bytes): com.oracle.svm.core.thread.Safepoint.safepointRequested = (int) -9289673  ff724037
    212 (4 bytes): com.oracle.svm.core.thread.Safepoint.safepointRequestedValueBeforeSafepoint = (int) 0  00000000
    216 (4 bytes): com.oracle.svm.core.thread.ThreadingSupportImpl.currentPauseDepth = (int) 0  00000000
    220 (4 bytes): com.oracle.svm.core.thread.VMOperationControl.isLockOwner = (int) 0  00000000
    224 (4 bytes): com.oracle.svm.core.thread.VMThreads$StatusSupport.safepointsDisabledTL = (int) 1  00000001
    228 (4 bytes): com.oracle.svm.core.thread.VMThreads$StatusSupport.statusTL = (int) 1  00000001
    
  VMOperation dump:
  
    No VMOperation in progress
    
  Dump Counters:
  
    
  Raw Stacktrace:
  
    00007ffee4cfc438: 000000010b337cf7 000000011cc46d28
    00007ffee4cfc448: 000000011cc46c70 000000011cc46d28
    00007ffee4cfc458: 0000000114a74dd8 0000000116076bb0
    00007ffee4cfc468: 0000000003000bb0 0000000114a74df0
    00007ffee4cfc478: 0000000114b27900 0000000116076b78
    00007ffee4cfc488: 000000010c3b2bd2 f4c9ba2e1cc4f9e8
    00007ffee4cfc498: 0000000009bd99e8 0000000114b27900
    00007ffee4cfc4a8: 000000010cfed16b 000000011cc46c70
    00007ffee4cfc4b8: 000000010d260be2 0000000114a87a80
    00007ffee4cfc4c8: 0000000015e37348 0000000114b278d0
    00007ffee4cfc4d8: 000000010cfed818 0000000113076000
    00007ffee4cfc4e8: 0000000016e01138 0000000114b278d0
    00007ffee4cfc4f8: 000000010cfec676 000000011cc39a50
    00007ffee4cfc508: 000000010b330468 000000031608e338
    00007ffee4cfc518: 0000000115e37348 0000000114b27618
    00007ffee4cfc528: 0000000114b27630 000000011cc46c70
    00007ffee4cfc538: 0000000115e1a518 00000001155c6430
    00007ffee4cfc548: 000000010b337cf7 000000011cc39a50
    00007ffee4cfc558: 000000010c5f4004 000000011608e338
    00007ffee4cfc568: 0000000114a74dd8 000000011608e980
    00007ffee4cfc578: 0000000003018980 0000000114a74df0
    00007ffee4cfc588: 0000000114b196c8 000000011608e948
    00007ffee4cfc598: 000000010c3b2bd2 00000001160acc78
    00007ffee4cfc5a8: 000000011cc39948 0000000114b196c8
    00007ffee4cfc5b8: 000000010cf8f51e 00000001160acc40
    00007ffee4cfc5c8: 000000010c3b2bd2 000000011cc12308
    00007ffee4cfc5d8: 000000011cc0e348 000000011cc0e9d8
    00007ffee4cfc5e8: 000000010cf8f386 000000011c8f3e40
    00007ffee4cfc5f8: 000000011cc12298 00000001157de2e8
    00007ffee4cfc608: 000000011cc0e348 000000011cc0e9d8
    00007ffee4cfc618: 000000010d2668ab 000000000000001a
    00007ffee4cfc628: 800010031c8e6ab8 0000000115351638
    00007ffee4cfc638: 0000000114a74dd8 000000011602fb30
    00007ffee4cfc648: 000000011cc0e9d8 000000011cc0e348
    00007ffee4cfc658: 000000011c8d0b98 0000000113076000
    00007ffee4cfc668: 0000000113076000 000000011c8d0b98
    00007ffee4cfc678: 000000011c8ec3f0 000000011c8ec398
    00007ffee4cfc688: 000000010db0fcf7 0000000114b47f70
    00007ffee4cfc698: 0000000114b14988 000000011c8ec398
    00007ffee4cfc6a8: 000000011c8e6db0 000000011c8d0b98
    00007ffee4cfc6b8: 000000011c8e62a0 000000011c80d7d8
    00007ffee4cfc6c8: 000000010dafd5c7 0000000114b47f70
    00007ffee4cfc6d8: 0000000114b14988 000000011c8cee50
    00007ffee4cfc6e8: 000000010dae8784 0000000115352390
    00007ffee4cfc6f8: 0000000114a5b6f0 000000011c80d7d8
    00007ffee4cfc708: 0000000114b14988 000000011c8cee50
    00007ffee4cfc718: 000000010dae9994 000000011c8e62a0
    00007ffee4cfc728: 000000011c8e6d48 000000011c80d2b8
    00007ffee4cfc738: 000000011c8e6cb8 000000011c80d2b8
    00007ffee4cfc748: 000000010d61d297 0000000009870cb8
    00007ffee4cfc758: 0000000115e34810 000000011c8cee50
    00007ffee4cfc768: 000000010dae9407 000000011c8e62a0
    00007ffee4cfc778: 000000010c6937e0 0000000115e34810
    00007ffee4cfc788: 0000000114a9d710 0000000115e34810
    00007ffee4cfc798: 000000011c8e03d0 00000000028114d8
    00007ffee4cfc7a8: 0000000009858e50 000000011c8cee50
    00007ffee4cfc7b8: 000000010dafd17a 000000011c490778
    00007ffee4cfc7c8: 000000011a450618 000000011c8cee50
    00007ffee4cfc7d8: 000000010d4fdb35 000000011bf92eb0
    00007ffee4cfc7e8: 000000011c8cee50 000000011c8cee50
    00007ffee4cfc7f8: 000000010d4ef9a6 000000011c8cee50
    00007ffee4cfc808: 000000010d4fc70d 000000011c8dd550
    00007ffee4cfc818: 000000011c490428 000000011c8cee50
    00007ffee4cfc828: 000000011bf92eb0 000000011a450268
    
  Stacktrace Stage0:
  
    
  Stacktrace Stage1:
  
    
  Full Stacktrace:
  
    
  [Native image heap boundaries: 
    ReadOnly Primitives: 0x113076008 .. 0x114a4c3d0
    ReadOnly References: 0x114a4c4f8 .. 0x115a8e940
    Writable Primitives: 0x115a8f000 .. 0x115e1a4f8
    Writable References: 0x115e1a518 .. 0x116d73800]
  
  
  [Heap:
    [Young generation: 
      [youngSpace:
        aligned: 2088864/2 unaligned: 0/0
        aligned chunks:
          0x116f00000 (0x116f01030-0x116f61da8)
          0x11a600000 (0x11a601030-0x11a60d8f0)]]
    [Old generation: 
      [fromSpace:
        aligned: 0/0 unaligned: 0/0]
      [toSpace:
        aligned: 0/0 unaligned: 0/0]
      [pinnedFromSpace:
        aligned: 0/0 unaligned: 0/0]
      [pinnedToSpace:
        aligned: 0/0 unaligned: 0/0]]
    [Unused:
      aligned: 0/0]]
  
  Use runtime option -R:-InstallSegfaultHandler if you don't want to use SubstrateSegfaultHandler.
  
  Bye bye ...
```
