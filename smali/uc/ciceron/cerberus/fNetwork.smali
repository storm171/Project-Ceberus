.class public Luc/ciceron/cerberus/fNetwork;
.super Ljava/lang/Object;
.source "fNetwork.java"


# instance fields
.field config:Lde/robv/android/xposed/XSharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lde/robv/android/xposed/XSharedPreferences;

    const-string v1, "uc.ciceron.cerberus"

    const-string v2, "config"

    invoke-direct {v0, v1, v2}, Lde/robv/android/xposed/XSharedPreferences;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Luc/ciceron/cerberus/fNetwork;->config:Lde/robv/android/xposed/XSharedPreferences;

    return-void
.end method


# virtual methods
.method public fNetwork(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 6
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 17
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Luc/ciceron/cerberus/fNetwork$1;

    invoke-direct {v3, p0}, Luc/ciceron/cerberus/fNetwork$1;-><init>(Luc/ciceron/cerberus/fNetwork;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "android.net.wifi.WifiInfo"

    const-string v5, "getSSID"

    invoke-static {v3, v0, v5, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 33
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Luc/ciceron/cerberus/fNetwork$2;

    invoke-direct {v3, p0}, Luc/ciceron/cerberus/fNetwork$2;-><init>(Luc/ciceron/cerberus/fNetwork;)V

    aput-object v3, v2, v4

    const-string v3, "android.net.NetworkInfo"

    const-string v5, "getType"

    invoke-static {v3, v0, v5, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 40
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v5, Luc/ciceron/cerberus/fNetwork$3;

    invoke-direct {v5, p0}, Luc/ciceron/cerberus/fNetwork$3;-><init>(Luc/ciceron/cerberus/fNetwork;)V

    aput-object v5, v2, v4

    const-string v5, "getState"

    invoke-static {v3, v0, v5, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 47
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Luc/ciceron/cerberus/fNetwork$4;

    invoke-direct {v3, p0}, Luc/ciceron/cerberus/fNetwork$4;-><init>(Luc/ciceron/cerberus/fNetwork;)V

    aput-object v3, v2, v4

    const-string v3, "android.telephony.TelephonyManager"

    const-string v5, "getSimState"

    invoke-static {v3, v0, v5, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 54
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v5, Luc/ciceron/cerberus/fNetwork$5;

    invoke-direct {v5, p0}, Luc/ciceron/cerberus/fNetwork$5;-><init>(Luc/ciceron/cerberus/fNetwork;)V

    aput-object v5, v2, v4

    const-string v5, "getNetworkType"

    invoke-static {v3, v0, v5, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 61
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v5, Luc/ciceron/cerberus/fNetwork$6;

    invoke-direct {v5, p0}, Luc/ciceron/cerberus/fNetwork$6;-><init>(Luc/ciceron/cerberus/fNetwork;)V

    aput-object v5, v2, v4

    const-string v5, "getNetworkOperator"

    invoke-static {v3, v0, v5, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 68
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Luc/ciceron/cerberus/fNetwork$7;

    invoke-direct {v2, p0}, Luc/ciceron/cerberus/fNetwork$7;-><init>(Luc/ciceron/cerberus/fNetwork;)V

    aput-object v2, v1, v4

    const-string v2, "getNetworkCountryIso"

    invoke-static {v3, v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 74
    return-void
.end method
