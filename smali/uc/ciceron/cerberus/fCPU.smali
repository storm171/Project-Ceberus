.class public Luc/ciceron/cerberus/fCPU;
.super Ljava/lang/Object;
.source "fCPU.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fCPU(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 7
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 15
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Luc/ciceron/cerberus/fCPU$1;

    invoke-direct {v2, p0}, Luc/ciceron/cerberus/fCPU$1;-><init>(Luc/ciceron/cerberus/fCPU;)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "java.io.RandomAccessFile"

    invoke-static {v2, v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookConstructor(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 24
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v1, v5, [Ljava/lang/Object;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    new-instance v2, Luc/ciceron/cerberus/fCPU$2;

    invoke-direct {v2, p0}, Luc/ciceron/cerberus/fCPU$2;-><init>(Luc/ciceron/cerberus/fCPU;)V

    aput-object v2, v1, v4

    const-string v2, "java.io.File"

    invoke-static {v2, v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookConstructor(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 33
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v1, v5, [Ljava/lang/Object;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    new-instance v2, Luc/ciceron/cerberus/fCPU$3;

    invoke-direct {v2, p0}, Luc/ciceron/cerberus/fCPU$3;-><init>(Luc/ciceron/cerberus/fCPU;)V

    aput-object v2, v1, v4

    const-string v2, "java.io.FileReader"

    invoke-static {v2, v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookConstructor(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 50
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v1, v5, [Ljava/lang/Object;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-instance v2, Luc/ciceron/cerberus/fCPU$4;

    invoke-direct {v2, p0}, Luc/ciceron/cerberus/fCPU$4;-><init>(Luc/ciceron/cerberus/fCPU;)V

    aput-object v2, v1, v4

    const-string v2, "com.tencent.tp.r"

    const-string v6, "a"

    invoke-static {v2, v0, v6, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 57
    const-class v0, Ljava/io/File;

    new-array v1, v5, [Ljava/lang/Object;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    new-instance v2, Luc/ciceron/cerberus/fCPU$5;

    invoke-direct {v2, p0}, Luc/ciceron/cerberus/fCPU$5;-><init>(Luc/ciceron/cerberus/fCPU;)V

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 67
    return-void
.end method
