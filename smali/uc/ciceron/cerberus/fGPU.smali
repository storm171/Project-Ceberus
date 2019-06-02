.class public Luc/ciceron/cerberus/fGPU;
.super Ljava/lang/Object;
.source "fGPU.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fGPU(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 7
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 11
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Luc/ciceron/cerberus/fGPU$1;

    invoke-direct {v3, p0}, Luc/ciceron/cerberus/fGPU$1;-><init>(Luc/ciceron/cerberus/fGPU;)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "android.opengl.GLES20"

    const-string v6, "glGetString"

    invoke-static {v3, v0, v6, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 28
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v2, v1, [Ljava/lang/Object;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    new-instance v3, Luc/ciceron/cerberus/fGPU$2;

    invoke-direct {v3, p0}, Luc/ciceron/cerberus/fGPU$2;-><init>(Luc/ciceron/cerberus/fGPU;)V

    aput-object v3, v2, v5

    const-string v3, "java.io.File"

    invoke-static {v3, v0, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookConstructor(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 37
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    new-instance v3, Luc/ciceron/cerberus/fGPU$3;

    invoke-direct {v3, p0}, Luc/ciceron/cerberus/fGPU$3;-><init>(Luc/ciceron/cerberus/fGPU;)V

    aput-object v3, v2, v1

    const-string v1, "java.io.RandomAccessFile"

    invoke-static {v1, v0, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookConstructor(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 45
    return-void
.end method
