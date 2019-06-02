.class public Luc/ciceron/cerberus/Loader;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;
.implements Lde/robv/android/xposed/IXposedHookInitPackageResources;


# instance fields
.field app_ctx:Landroid/content/Context;

.field helper:Luc/ciceron/cerberus/Helper;

.field libToLoad:Ljava/lang/String;

.field mode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Luc/ciceron/cerberus/Helper;

    invoke-direct {v0}, Luc/ciceron/cerberus/Helper;-><init>()V

    iput-object v0, p0, Luc/ciceron/cerberus/Loader;->helper:Luc/ciceron/cerberus/Helper;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Luc/ciceron/cerberus/Loader;->libToLoad:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Luc/ciceron/cerberus/Loader;->mode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handleInitPackageResources(Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;)V
    .locals 8
    .param p1, "resparam"    # Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 139
    const-string v0, "com.tencent.ig"

    const-string v1, "com.pubg.krmobile"

    const-string v2, "com.vng.pubgmobile"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "game_packages":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p1, Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    return-void

    .line 149
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 150
    .local v3, "s":Ljava/lang/String;
    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;->res:Landroid/content/res/XResources;

    new-instance v5, Luc/ciceron/cerberus/Loader$4;

    invoke-direct {v5, p0}, Luc/ciceron/cerberus/Loader$4;-><init>(Luc/ciceron/cerberus/Loader;)V

    const-string v6, "drawable"

    const-string v7, "splashscreen_landscape"

    invoke-virtual {v4, v3, v6, v7, v5}, Landroid/content/res/XResources;->setReplacement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    .end local v3    # "s":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_1
    return-void
.end method

.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 10
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 32
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    const-string v1, "uc.ciceron.cerberus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Luc/ciceron/cerberus/Loader$1;

    invoke-direct {v5, p0}, Luc/ciceron/cerberus/Loader$1;-><init>(Luc/ciceron/cerberus/Loader;)V

    aput-object v5, v4, v3

    const-string v5, "uc.ciceron.cerberus.Helper"

    const-string v6, "testHook"

    invoke-static {v5, v0, v6, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 41
    :cond_0
    const-string v0, "com.tencent.ig"

    const-string v4, "com.pubg.krmobile"

    const-string v5, "com.vng.pubgmobile"

    filled-new-array {v0, v4, v5}, [Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "game_packages":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 48
    return-void

    .line 94
    :cond_1
    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v5, "com.tencent.smtt.export.external.LibraryLoader"

    invoke-static {v5, v4}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 95
    .local v4, "tencentLoadLib":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v3

    new-instance v8, Luc/ciceron/cerberus/Loader$2;

    invoke-direct {v8, p0}, Luc/ciceron/cerberus/Loader$2;-><init>(Luc/ciceron/cerberus/Loader;)V

    aput-object v8, v7, v2

    const-string v8, "android.support.multidex.MultiDexApplication"

    const-string v9, "attachBaseContext"

    invoke-static {v8, v5, v9, v7}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 102
    new-instance v5, Lde/robv/android/xposed/XSharedPreferences;

    const-string v7, "uc.ciceron.cerberus_preferences"

    invoke-direct {v5, v1, v7}, Lde/robv/android/xposed/XSharedPreferences;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    .line 104
    .local v1, "bypass_mode":Lde/robv/android/xposed/XSharedPreferences;
    const-string v5, "classic"

    invoke-virtual {v1, v5, v3}, Lde/robv/android/xposed/XSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 105
    const-string v7, "cerberus"

    iput-object v7, p0, Luc/ciceron/cerberus/Loader;->libToLoad:Ljava/lang/String;

    .line 106
    iput-object v5, p0, Luc/ciceron/cerberus/Loader;->mode:Ljava/lang/String;

    .line 109
    :cond_2
    const-string v5, "experimental"

    invoke-virtual {v1, v5, v3}, Lde/robv/android/xposed/XSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 110
    const-string v7, "cerberus_exp"

    iput-object v7, p0, Luc/ciceron/cerberus/Loader;->libToLoad:Ljava/lang/String;

    .line 111
    iput-object v5, p0, Luc/ciceron/cerberus/Loader;->mode:Ljava/lang/String;

    .line 115
    :cond_3
    iget-object v5, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v6, v6, [Ljava/lang/Object;

    const-class v7, Landroid/os/Bundle;

    aput-object v7, v6, v3

    new-instance v3, Luc/ciceron/cerberus/Loader$3;

    invoke-direct {v3, p0, v4}, Luc/ciceron/cerberus/Loader$3;-><init>(Luc/ciceron/cerberus/Loader;Ljava/lang/Class;)V

    aput-object v3, v6, v2

    const-string v2, "com.epicgames.ue4.GameActivity"

    const-string v3, "onCreate"

    invoke-static {v2, v5, v3, v6}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 126
    new-instance v2, Luc/ciceron/cerberus/fIdentity;

    invoke-direct {v2}, Luc/ciceron/cerberus/fIdentity;-><init>()V

    invoke-virtual {v2, p1}, Luc/ciceron/cerberus/fIdentity;->fIdentity(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 127
    new-instance v2, Luc/ciceron/cerberus/fCPU;

    invoke-direct {v2}, Luc/ciceron/cerberus/fCPU;-><init>()V

    invoke-virtual {v2, p1}, Luc/ciceron/cerberus/fCPU;->fCPU(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 128
    new-instance v2, Luc/ciceron/cerberus/fGPU;

    invoke-direct {v2}, Luc/ciceron/cerberus/fGPU;-><init>()V

    invoke-virtual {v2, p1}, Luc/ciceron/cerberus/fGPU;->fGPU(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 129
    new-instance v2, Luc/ciceron/cerberus/fStorage;

    invoke-direct {v2}, Luc/ciceron/cerberus/fStorage;-><init>()V

    invoke-virtual {v2, p1}, Luc/ciceron/cerberus/fStorage;->fStorage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 130
    new-instance v2, Luc/ciceron/cerberus/fSensors;

    invoke-direct {v2}, Luc/ciceron/cerberus/fSensors;-><init>()V

    invoke-virtual {v2, p1}, Luc/ciceron/cerberus/fSensors;->fSensors(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 131
    new-instance v2, Luc/ciceron/cerberus/fPower;

    invoke-direct {v2}, Luc/ciceron/cerberus/fPower;-><init>()V

    invoke-virtual {v2, p1}, Luc/ciceron/cerberus/fPower;->fPower(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 132
    new-instance v2, Luc/ciceron/cerberus/fNetwork;

    invoke-direct {v2}, Luc/ciceron/cerberus/fNetwork;-><init>()V

    invoke-virtual {v2, p1}, Luc/ciceron/cerberus/fNetwork;->fNetwork(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 133
    new-instance v2, Luc/ciceron/cerberus/fMem;

    invoke-direct {v2}, Luc/ciceron/cerberus/fMem;-><init>()V

    invoke-virtual {v2, p1}, Luc/ciceron/cerberus/fMem;->fMem(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 134
    new-instance v2, Luc/ciceron/cerberus/fOther;

    invoke-direct {v2}, Luc/ciceron/cerberus/fOther;-><init>()V

    invoke-virtual {v2, p1}, Luc/ciceron/cerberus/fOther;->fOther(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 135
    return-void
.end method
