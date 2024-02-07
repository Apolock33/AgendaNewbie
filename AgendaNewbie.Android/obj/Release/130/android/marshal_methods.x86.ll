; ModuleID = 'obj\Release\130\android\marshal_methods.x86.ll'
source_filename = "obj\Release\130\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [92 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 41
	i32 39109920, ; 1: Newtonsoft.Json.dll => 0x254c520 => 10
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 36
	i32 182336117, ; 3: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 33
	i32 318968648, ; 4: Xamarin.AndroidX.Activity.dll => 0x13031348 => 17
	i32 321597661, ; 5: System.Numerics => 0x132b30dd => 13
	i32 342366114, ; 6: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 27
	i32 393699800, ; 7: Firebase => 0x177761d8 => 4
	i32 442521989, ; 8: Xamarin.Essentials => 0x1a605985 => 35
	i32 450948140, ; 9: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 25
	i32 461453002, ; 10: AgendaNewbie.Android.dll => 0x1b8136ca => 0
	i32 465846621, ; 11: mscorlib => 0x1bc4415d => 9
	i32 469710990, ; 12: System.dll => 0x1bff388e => 12
	i32 610194910, ; 13: System.Reactive.dll => 0x245ed5de => 14
	i32 627609679, ; 14: Xamarin.AndroidX.CustomView => 0x2568904f => 23
	i32 690569205, ; 15: System.Xml.Linq.dll => 0x29293ff5 => 16
	i32 809851609, ; 16: System.Drawing.Common.dll => 0x30455ad9 => 44
	i32 928116545, ; 17: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 41
	i32 955402788, ; 18: Newtonsoft.Json => 0x38f24a24 => 10
	i32 967690846, ; 19: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 27
	i32 974778368, ; 20: FormsViewGroup.dll => 0x3a19f000 => 5
	i32 1012816738, ; 21: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 32
	i32 1035644815, ; 22: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 19
	i32 1042160112, ; 23: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 38
	i32 1052210849, ; 24: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 29
	i32 1098259244, ; 25: System => 0x41761b2c => 12
	i32 1293217323, ; 26: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 24
	i32 1365406463, ; 27: System.ServiceModel.Internals.dll => 0x516272ff => 42
	i32 1376866003, ; 28: Xamarin.AndroidX.SavedState => 0x52114ed3 => 32
	i32 1406073936, ; 29: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 21
	i32 1460219004, ; 30: Xamarin.Forms.Xaml => 0x57092c7c => 39
	i32 1469204771, ; 31: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 18
	i32 1485707479, ; 32: AgendaNewbie.Android => 0x588e18d7 => 0
	i32 1592978981, ; 33: System.Runtime.Serialization.dll => 0x5ef2ee25 => 2
	i32 1622152042, ; 34: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 30
	i32 1639515021, ; 35: System.Net.Http.dll => 0x61b9038d => 1
	i32 1658251792, ; 36: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 40
	i32 1729485958, ; 37: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 20
	i32 1766324549, ; 38: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 33
	i32 1776026572, ; 39: System.Core.dll => 0x69dc03cc => 11
	i32 1788241197, ; 40: Xamarin.AndroidX.Fragment => 0x6a96652d => 25
	i32 1808609942, ; 41: Xamarin.AndroidX.Loader => 0x6bcd3296 => 30
	i32 1813201214, ; 42: Xamarin.Google.Android.Material => 0x6c13413e => 40
	i32 1867746548, ; 43: Xamarin.Essentials.dll => 0x6f538cf4 => 35
	i32 1878053835, ; 44: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 39
	i32 2019465201, ; 45: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 29
	i32 2055257422, ; 46: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 28
	i32 2097448633, ; 47: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 26
	i32 2126786730, ; 48: Xamarin.Forms.Platform.Android => 0x7ec430aa => 37
	i32 2201231467, ; 49: System.Net.Http => 0x8334206b => 1
	i32 2279755925, ; 50: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 31
	i32 2372826167, ; 51: AgendaNewbie.dll => 0x8d6e7437 => 3
	i32 2475788418, ; 52: Java.Interop.dll => 0x93918882 => 6
	i32 2732626843, ; 53: Xamarin.AndroidX.Activity => 0xa2e0939b => 17
	i32 2737747696, ; 54: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 18
	i32 2766581644, ; 55: Xamarin.Forms.Core => 0xa4e6af8c => 36
	i32 2778768386, ; 56: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 34
	i32 2810250172, ; 57: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 21
	i32 2819470561, ; 58: System.Xml.dll => 0xa80db4e1 => 15
	i32 2853208004, ; 59: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 34
	i32 2905242038, ; 60: mscorlib.dll => 0xad2a79b6 => 9
	i32 2978675010, ; 61: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 24
	i32 3044182254, ; 62: FormsViewGroup => 0xb57288ee => 5
	i32 3111772706, ; 63: System.Runtime.Serialization => 0xb979e222 => 2
	i32 3204380047, ; 64: System.Data.dll => 0xbefef58f => 43
	i32 3247949154, ; 65: Mono.Security => 0xc197c562 => 45
	i32 3258312781, ; 66: Xamarin.AndroidX.CardView => 0xc235e84d => 20
	i32 3317135071, ; 67: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 23
	i32 3317144872, ; 68: System.Data => 0xc5b79d28 => 43
	i32 3322403133, ; 69: Firebase.dll => 0xc607d93d => 4
	i32 3353484488, ; 70: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 26
	i32 3362522851, ; 71: Xamarin.AndroidX.Core => 0xc86c06e3 => 22
	i32 3366347497, ; 72: Java.Interop => 0xc8a662e9 => 6
	i32 3374999561, ; 73: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 31
	i32 3404865022, ; 74: System.ServiceModel.Internals => 0xcaf21dfe => 42
	i32 3429136800, ; 75: System.Xml => 0xcc6479a0 => 15
	i32 3476120550, ; 76: Mono.Android => 0xcf3163e6 => 8
	i32 3509114376, ; 77: System.Xml.Linq => 0xd128d608 => 16
	i32 3536029504, ; 78: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 37
	i32 3596207933, ; 79: LiteDB.dll => 0xd659c73d => 7
	i32 3609541690, ; 80: AgendaNewbie => 0xd7253c3a => 3
	i32 3629588173, ; 81: LiteDB => 0xd8571ecd => 7
	i32 3632359727, ; 82: Xamarin.Forms.Platform => 0xd881692f => 38
	i32 3641597786, ; 83: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 28
	i32 3672681054, ; 84: Mono.Android.dll => 0xdae8aa5e => 8
	i32 3689375977, ; 85: System.Drawing.Common => 0xdbe768e9 => 44
	i32 3731644420, ; 86: System.Reactive => 0xde6c6004 => 14
	i32 3829621856, ; 87: System.Numerics.dll => 0xe4436460 => 13
	i32 3896760992, ; 88: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 22
	i32 3955647286, ; 89: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 19
	i32 4105002889, ; 90: Mono.Security.dll => 0xf4ad5f89 => 45
	i32 4151237749 ; 91: System.Core => 0xf76edc75 => 11
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [92 x i32] [
	i32 41, i32 10, i32 36, i32 33, i32 17, i32 13, i32 27, i32 4, ; 0..7
	i32 35, i32 25, i32 0, i32 9, i32 12, i32 14, i32 23, i32 16, ; 8..15
	i32 44, i32 41, i32 10, i32 27, i32 5, i32 32, i32 19, i32 38, ; 16..23
	i32 29, i32 12, i32 24, i32 42, i32 32, i32 21, i32 39, i32 18, ; 24..31
	i32 0, i32 2, i32 30, i32 1, i32 40, i32 20, i32 33, i32 11, ; 32..39
	i32 25, i32 30, i32 40, i32 35, i32 39, i32 29, i32 28, i32 26, ; 40..47
	i32 37, i32 1, i32 31, i32 3, i32 6, i32 17, i32 18, i32 36, ; 48..55
	i32 34, i32 21, i32 15, i32 34, i32 9, i32 24, i32 5, i32 2, ; 56..63
	i32 43, i32 45, i32 20, i32 23, i32 43, i32 4, i32 26, i32 22, ; 64..71
	i32 6, i32 31, i32 42, i32 15, i32 8, i32 16, i32 37, i32 7, ; 72..79
	i32 3, i32 7, i32 38, i32 28, i32 8, i32 44, i32 14, i32 13, ; 80..87
	i32 22, i32 19, i32 45, i32 11 ; 88..91
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}