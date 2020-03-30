# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile
# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile


# okhttp
-keepattributes SourceFile,LineNumberTable
-keep class com.parse.*{ *; }
-dontwarn com.parse.**
-dontwarn com.squareup.picasso.**
-keepclasseswithmembernames class * {
    native <methods>;
}

-dontwarn com.squareup.okhttp3.**
-keep class com.squareup.okhttp3.* { *;}
-dontwarn okio.**
-dontwarn okhttp3.logging.**
-keep class okhttp3.internal.**{*;}

# Okio
-dontwarn com.squareup.**
-dontwarn okio.**
-keep public class org.codehaus.* { *; }
-keep public class java.nio.* { *; }


# RxJava&&RxAndroid
-dontwarn sun.misc.**
-keepclassmembers class rx.internal.util.unsafe.*ArrayQueue*Field* {
    long producerIndex;
    long consumerIndex;
}
-keepclassmembers class rx.internal.util.unsafe.BaseLinkedQueueProducerNodeRef {
    rx.internal.util.atomic.LinkedQueueNode producerNode;
}
-keepclassmembers class rx.internal.util.unsafe.BaseLinkedQueueConsumerNodeRef {
    rx.internal.util.atomic.LinkedQueueNode consumerNode;
}

#okgo
-dontwarn com.lzy.okgo.**
-keep class com.lzy.okgo.**{*;}

#okrx
-dontwarn com.lzy.okrx.**
-keep class com.lzy.okrx.**{*;}

#okrx2
-dontwarn com.lzy.okrx2.**
-keep class com.lzy.okrx2.**{*;}

#okserver
-dontwarn com.lzy.okserver.**
-keep class com.lzy.okserver.**{*;}



#内部内
-keepclasseswithmembers class com.nebula.AnConstants$URL {
      <methods>;
}
-keepclasseswithmembers class com.nebula.AnConstants$KEY {
      <methods>;
}


# okhttp
-keepattributes SourceFile,LineNumberTable
-keep class com.parse.*{ *; }
-dontwarn com.parse.**
-dontwarn com.squareup.picasso.**
-keepclasseswithmembernames class * {
    native <methods>;
}

-dontwarn com.squareup.okhttp3.**
-keep class com.squareup.okhttp3.* { *;}
-dontwarn okio.**
-dontwarn okhttp3.logging.**
-keep class okhttp3.internal.**{*;}

# Okio
-dontwarn com.squareup.**
-dontwarn okio.**
-keep public class org.codehaus.* { *; }
-keep public class java.nio.* { *; }

# 使用 proguard-android-optimize 后要添加以下配置，否则使用Retrofit 2(Base on OKHTTP)进行Http请求的
-keepclasseswithmembers class * {
  @retrofit2.http.* <methods>;
}


-optimizationpasses 5

-dontwarn java.lang.**

-dontwarn java.io.**

-dontwarn javax.crypto.**

-dontwarn java.util.**

-dontwarn java.net.**

-dontwarn okhttp3.**

-dontwarn org.json.**

-dontwarn android.os.**

-dontwarn android.util.**

-obfuscationdictionary dictionary.txt

-keep public class * {
    public protected <fields>;
    public protected <methods>;
}

#-keep class com.github.library{ public *;}

#-dontwarn com.github.library.**
#-keep class com.github.library.** { *; }
