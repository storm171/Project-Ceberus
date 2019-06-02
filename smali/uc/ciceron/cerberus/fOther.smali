.class public Luc/ciceron/cerberus/fOther;
.super Ljava/lang/Object;
.source "fOther.java"


# instance fields
.field private faker:Lio/bloco/faker/Faker;

.field rn:Luc/ciceron/cerberus/RandomDataGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Luc/ciceron/cerberus/RandomDataGenerator;

    invoke-direct {v0}, Luc/ciceron/cerberus/RandomDataGenerator;-><init>()V

    iput-object v0, p0, Luc/ciceron/cerberus/fOther;->rn:Luc/ciceron/cerberus/RandomDataGenerator;

    .line 17
    new-instance v0, Lio/bloco/faker/Faker;

    invoke-direct {v0}, Lio/bloco/faker/Faker;-><init>()V

    iput-object v0, p0, Luc/ciceron/cerberus/fOther;->faker:Lio/bloco/faker/Faker;

    return-void
.end method


# virtual methods
.method public fOther(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 13
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 20
    new-instance v0, Lde/robv/android/xposed/XSharedPreferences;

    const-string v1, "uc.ciceron.cerberus"

    const-string v2, "config"

    invoke-direct {v0, v1, v2}, Lde/robv/android/xposed/XSharedPreferences;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .local v0, "config":Lde/robv/android/xposed/XSharedPreferences;
    new-instance v2, Lde/robv/android/xposed/XSharedPreferences;

    const-string v3, "phone"

    invoke-direct {v2, v1, v3}, Lde/robv/android/xposed/XSharedPreferences;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 23
    .local v1, "pref":Lde/robv/android/xposed/XSharedPreferences;
    iget-object v2, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v3, "android.os.Build"

    invoke-static {v3, v2}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 24
    .local v2, "build_class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v4, "android.os.Build.VERSION"

    invoke-static {v4, v3}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 26
    .local v3, "build_version_class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, ""

    const-string v5, "ro.build.id"

    invoke-virtual {v1, v5, v4}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ID"

    invoke-static {v2, v6, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    const-string v5, "ro.build.display.id"

    invoke-virtual {v1, v5, v4}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "DISPLAY"

    invoke-static {v2, v6, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    const-string v5, "ro.build.version.incremental"

    invoke-virtual {v1, v5, v4}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "INCREMENTAL"

    invoke-static {v3, v6, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    const-string v5, "ro.build.type"

    invoke-virtual {v1, v5, v4}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TYPE"

    invoke-static {v2, v6, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    const-string v5, "ro.build.user"

    invoke-virtual {v1, v5, v4}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "USER"

    invoke-static {v2, v6, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    const-string v5, "ro.build.host"

    invoke-virtual {v1, v5, v4}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "HOST"

    invoke-static {v2, v6, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    const-string v5, "ro.product.model"

    invoke-virtual {v1, v5, v4}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "MODEL"

    invoke-static {v2, v6, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    const-string v5, "ro.product.brand"

    invoke-virtual {v1, v5, v4}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "BRAND"

    invoke-static {v2, v6, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    const-string v5, "ro.product.name"

    invoke-virtual {v1, v5, v4}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "PRODUCT"

    invoke-static {v2, v6, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    const-string v5, "ro.product.device"

    invoke-virtual {v1, v5, v4}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "DEVICE"

    invoke-static {v2, v7, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    const-string v5, "ro.build.product"

    invoke-virtual {v1, v5, v4}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v6, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    const-string v5, "ro.product.board"

    invoke-virtual {v1, v5, v4}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "BOARD"

    invoke-static {v2, v6, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    const-string v5, "ro.product.manufacturer"

    invoke-virtual {v1, v5, v4}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "MANUFACTURER"

    invoke-static {v2, v6, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    const-string v5, "ro.build.fingerprint"

    invoke-virtual {v1, v5, v4}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "FINGERPRINT"

    invoke-static {v2, v5, v4}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    const-string v4, "HARDWARE"

    const-string v5, "exynos"

    invoke-static {v2, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    const-string v4, "RELEASE"

    const-string v5, "8.1.0"

    invoke-static {v3, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v5, "armeabi-v7a"

    const-string v6, "arm64-v8"

    const/16 v7, 0x13

    if-ne v4, v7, :cond_0

    .line 44
    const-string v4, "CPU_ABI"

    invoke-static {v2, v4, v6}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    const-string v4, "CPU_ABI2"

    invoke-static {v2, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v4, v7, :cond_1

    .line 49
    const-string v4, "armeabi"

    filled-new-array {v6, v5, v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "SUPPORTED_ABIS"

    invoke-static {v2, v5, v4}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    :cond_1
    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    new-instance v7, Luc/ciceron/cerberus/fOther$1;

    invoke-direct {v7, p0, v0}, Luc/ciceron/cerberus/fOther$1;-><init>(Luc/ciceron/cerberus/fOther;Lde/robv/android/xposed/XSharedPreferences;)V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "com.tencent.tp.r"

    const-string v9, "n"

    invoke-static {v7, v4, v9, v6}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 59
    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const/4 v6, 0x2

    new-array v9, v6, [Ljava/lang/Object;

    const-class v10, Landroid/content/Context;

    aput-object v10, v9, v8

    new-instance v10, Luc/ciceron/cerberus/fOther$2;

    invoke-direct {v10, p0}, Luc/ciceron/cerberus/fOther$2;-><init>(Luc/ciceron/cerberus/fOther;)V

    aput-object v10, v9, v5

    const-string v10, "b"

    invoke-static {v7, v4, v10, v9}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 67
    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v7, v6, [Ljava/lang/Object;

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    new-instance v9, Luc/ciceron/cerberus/fOther$3;

    invoke-direct {v9, p0}, Luc/ciceron/cerberus/fOther$3;-><init>(Luc/ciceron/cerberus/fOther;)V

    aput-object v9, v7, v5

    const-string v9, "a"

    const-string v10, "com.tencent.tp.m"

    invoke-static {v10, v4, v9, v7}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 86
    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v7, v6, [Ljava/lang/Object;

    const-class v10, Landroid/os/Bundle;

    aput-object v10, v7, v8

    new-instance v10, Luc/ciceron/cerberus/fOther$4;

    invoke-direct {v10, p0}, Luc/ciceron/cerberus/fOther$4;-><init>(Luc/ciceron/cerberus/fOther;)V

    aput-object v10, v7, v5

    const-string v10, "com.epicgames.ue4.GameActivity"

    const-string v11, "onCreate"

    invoke-static {v10, v4, v11, v7}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 93
    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v7, v5, [Ljava/lang/Object;

    new-instance v10, Luc/ciceron/cerberus/fOther$5;

    invoke-direct {v10, p0}, Luc/ciceron/cerberus/fOther$5;-><init>(Luc/ciceron/cerberus/fOther;)V

    aput-object v10, v7, v8

    const-string v10, "com.tencent.abase.TXSystem"

    const-string v11, "IsSysRooted"

    invoke-static {v10, v4, v11, v7}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 100
    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v7, v6, [Ljava/lang/Object;

    const-class v10, Ljava/lang/String;

    aput-object v10, v7, v8

    new-instance v10, Luc/ciceron/cerberus/fOther$6;

    invoke-direct {v10, p0}, Luc/ciceron/cerberus/fOther$6;-><init>(Luc/ciceron/cerberus/fOther;)V

    aput-object v10, v7, v5

    const-string v10, "java.io.File"

    invoke-static {v10, v4, v7}, Lde/robv/android/xposed/XposedHelpers;->findAndHookConstructor(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 109
    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v7, v6, [Ljava/lang/Object;

    const-class v11, Ljava/lang/String;

    aput-object v11, v7, v8

    new-instance v11, Luc/ciceron/cerberus/fOther$7;

    invoke-direct {v11, p0}, Luc/ciceron/cerberus/fOther$7;-><init>(Luc/ciceron/cerberus/fOther;)V

    aput-object v11, v7, v5

    invoke-static {v10, v4, v7}, Lde/robv/android/xposed/XposedHelpers;->findAndHookConstructor(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 118
    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v7, v5, [Ljava/lang/Object;

    new-instance v11, Luc/ciceron/cerberus/fOther$8;

    invoke-direct {v11, p0}, Luc/ciceron/cerberus/fOther$8;-><init>(Luc/ciceron/cerberus/fOther;)V

    aput-object v11, v7, v8

    const-string v11, "android.app.ActivityManager"

    const-string v12, "getRunningAppProcesses"

    invoke-static {v11, v4, v12, v7}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 125
    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v7, v6, [Ljava/lang/Object;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v7, v8

    new-instance v12, Luc/ciceron/cerberus/fOther$9;

    invoke-direct {v12, p0}, Luc/ciceron/cerberus/fOther$9;-><init>(Luc/ciceron/cerberus/fOther;)V

    aput-object v12, v7, v5

    const-string v12, "getRunningServices"

    invoke-static {v11, v4, v12, v7}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 132
    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v7, "com.tencent.kgvmp.f.g"

    invoke-static {v7, v4}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 133
    .local v4, "kgvmp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x7

    invoke-static {v4, v9, v7}, Lde/robv/android/xposed/XposedHelpers;->setStaticIntField(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 135
    const-class v7, Ljava/lang/System;

    new-array v9, v6, [Ljava/lang/Object;

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v8

    new-instance v11, Luc/ciceron/cerberus/fOther$10;

    invoke-direct {v11, p0, v1, v0}, Luc/ciceron/cerberus/fOther$10;-><init>(Luc/ciceron/cerberus/fOther;Lde/robv/android/xposed/XSharedPreferences;Lde/robv/android/xposed/XSharedPreferences;)V

    aput-object v11, v9, v5

    const-string v11, "getProperty"

    invoke-static {v7, v11, v9}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 148
    iget-object v7, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v9, v5, [Ljava/lang/Object;

    new-instance v11, Luc/ciceron/cerberus/fOther$11;

    invoke-direct {v11, p0}, Luc/ciceron/cerberus/fOther$11;-><init>(Luc/ciceron/cerberus/fOther;)V

    aput-object v11, v9, v8

    const-string v11, "com.adjust.sdk.Reflection"

    const-string v12, "getSupportedAbis"

    invoke-static {v11, v7, v12, v9}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 154
    iget-object v7, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v9, v5, [Ljava/lang/Object;

    new-instance v12, Luc/ciceron/cerberus/fOther$12;

    invoke-direct {v12, p0}, Luc/ciceron/cerberus/fOther$12;-><init>(Luc/ciceron/cerberus/fOther;)V

    aput-object v12, v9, v8

    const-string v12, "getVmInstructionSet"

    invoke-static {v11, v7, v12, v9}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 160
    const-class v7, Ljava/util/HashMap;

    const/4 v9, 0x3

    new-array v11, v9, [Ljava/lang/Object;

    const-class v12, Ljava/lang/Object;

    aput-object v12, v11, v8

    const-class v12, Ljava/lang/Object;

    aput-object v12, v11, v5

    new-instance v12, Luc/ciceron/cerberus/fOther$13;

    invoke-direct {v12, p0}, Luc/ciceron/cerberus/fOther$13;-><init>(Luc/ciceron/cerberus/fOther;)V

    aput-object v12, v11, v6

    const-string v12, "put"

    invoke-static {v7, v12, v11}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 176
    iget-object v7, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v9, v9, [Ljava/lang/Object;

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v8

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v5

    new-instance v11, Luc/ciceron/cerberus/fOther$14;

    invoke-direct {v11, p0}, Luc/ciceron/cerberus/fOther$14;-><init>(Luc/ciceron/cerberus/fOther;)V

    aput-object v11, v9, v6

    const-string v11, "java.io.RandomAccessFile"

    invoke-static {v11, v7, v9}, Lde/robv/android/xposed/XposedHelpers;->findAndHookConstructor(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 185
    iget-object v7, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v9, v6, [Ljava/lang/Object;

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v8

    new-instance v11, Luc/ciceron/cerberus/fOther$15;

    invoke-direct {v11, p0}, Luc/ciceron/cerberus/fOther$15;-><init>(Luc/ciceron/cerberus/fOther;)V

    aput-object v11, v9, v5

    invoke-static {v10, v7, v9}, Lde/robv/android/xposed/XposedHelpers;->findAndHookConstructor(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 194
    iget-object v7, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v6, v6, [Ljava/lang/Object;

    const-class v9, Ljava/lang/String;

    aput-object v9, v6, v8

    new-instance v8, Luc/ciceron/cerberus/fOther$16;

    invoke-direct {v8, p0}, Luc/ciceron/cerberus/fOther$16;-><init>(Luc/ciceron/cerberus/fOther;)V

    aput-object v8, v6, v5

    const-string v5, "java.io.FileReader"

    invoke-static {v5, v7, v6}, Lde/robv/android/xposed/XposedHelpers;->findAndHookConstructor(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 202
    return-void
.end method
