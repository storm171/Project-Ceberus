.class public Luc/ciceron/cerberus/fMem;
.super Ljava/lang/Object;
.source "fMem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fMem(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 6
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 12
    const-class v0, Ljava/io/File;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Luc/ciceron/cerberus/fMem$1;

    invoke-direct {v3, p0}, Luc/ciceron/cerberus/fMem$1;-><init>(Luc/ciceron/cerberus/fMem;)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 21
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v2, v1, [Ljava/lang/Object;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    new-instance v3, Luc/ciceron/cerberus/fMem$2;

    invoke-direct {v3, p0}, Luc/ciceron/cerberus/fMem$2;-><init>(Luc/ciceron/cerberus/fMem;)V

    aput-object v3, v2, v5

    const-string v3, "java.io.FileReader"

    invoke-static {v3, v0, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookConstructor(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 30
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    new-instance v3, Luc/ciceron/cerberus/fMem$3;

    invoke-direct {v3, p0}, Luc/ciceron/cerberus/fMem$3;-><init>(Luc/ciceron/cerberus/fMem;)V

    aput-object v3, v2, v1

    const-string v1, "java.io.RandomAccessFile"

    invoke-static {v1, v0, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookConstructor(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 38
    return-void
.end method
