.class public Luc/ciceron/cerberus/fSensors;
.super Ljava/lang/Object;
.source "fSensors.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fSensors(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 11
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .local v0, "sensors":Ljava/lang/StringBuilder;
    const-string v1, "K330 3-axis Accelerometer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, "YAS532 Magnetic Sensor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, "YAS532 Magnetic Sensor UnCalibrated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, "K330 Gyroscope sensor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, "UnCalibrated Gyroscope sensor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, "Barometer sensor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, "MAX88920 Proximity Sensor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, "CM3323 RGB Sensor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, "SHTC1 relative humidity sensor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, "SHTC1 ambient temperature sensor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, "Significant Motion Sensor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, "Step Detector Sensor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string v1, "Step Counter Sensor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string v1, "Rotation Vector Sensor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, "Gravity Sensor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, "Linear Acceleration Sensor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, "Orientation Sensor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, "STMicroelectronics"

    const-string v2, "Yamaha Corporation"

    const-string v3, "AOSP"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "vendors":[Ljava/lang/String;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 38
    .local v2, "r":I
    iget-object v3, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Luc/ciceron/cerberus/fSensors$1;

    invoke-direct {v6, p0, v0}, Luc/ciceron/cerberus/fSensors$1;-><init>(Luc/ciceron/cerberus/fSensors;Ljava/lang/StringBuilder;)V

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-string v6, "com.tencent.bigdata.dataacquisition.a.a"

    const-string v9, "n"

    invoke-static {v6, v3, v9, v5}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 45
    iget-object v3, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v5, v4, [Ljava/lang/Object;

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v7

    new-instance v9, Luc/ciceron/cerberus/fSensors$2;

    invoke-direct {v9, p0, v0}, Luc/ciceron/cerberus/fSensors$2;-><init>(Luc/ciceron/cerberus/fSensors;Ljava/lang/StringBuilder;)V

    aput-object v9, v5, v8

    const-string v9, "com.tencent.msdk.stat.common.j"

    const-string v10, "u"

    invoke-static {v9, v3, v10, v5}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 52
    iget-object v3, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v5, v4, [Ljava/lang/Object;

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v7

    new-instance v9, Luc/ciceron/cerberus/fSensors$3;

    invoke-direct {v9, p0, v0, v1, v2}, Luc/ciceron/cerberus/fSensors$3;-><init>(Luc/ciceron/cerberus/fSensors;Ljava/lang/StringBuilder;[Ljava/lang/String;I)V

    aput-object v9, v5, v8

    const-string v9, "o"

    invoke-static {v6, v3, v9, v5}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 74
    iget-object v3, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v4, v4, [Ljava/lang/Object;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v7

    new-instance v5, Luc/ciceron/cerberus/fSensors$4;

    invoke-direct {v5, p0}, Luc/ciceron/cerberus/fSensors$4;-><init>(Luc/ciceron/cerberus/fSensors;)V

    aput-object v5, v4, v8

    const-string v5, "com.tencent.tp.h"

    const-string v6, "k"

    invoke-static {v5, v3, v6, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 80
    return-void
.end method
