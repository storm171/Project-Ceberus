.class public Luc/ciceron/cerberus/GyroEmu;
.super Ljava/lang/Object;
.source "GyroEmu.java"


# instance fields
.field public mSensor:Landroid/hardware/Sensor;

.field public vSensor:Landroid/hardware/Sensor;


# direct methods
.method public constructor <init>()V
    .locals 14

    .line 14
    const-string v0, "mHandle"

    const-string v1, "mRequiredPermission"

    const-string v2, "Yahama Corporation"

    const-string v3, "mVendor"

    const-string v4, "mName"

    const-string v5, "mType"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v6, 0x1

    :try_start_0
    const-string v7, "android.hardware.Sensor"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 17
    .local v7, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Class;

    invoke-virtual {v7, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    .line 18
    .local v9, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v9, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 19
    new-array v10, v8, [Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Sensor;

    iput-object v10, p0, Luc/ciceron/cerberus/GyroEmu;->vSensor:Landroid/hardware/Sensor;

    .line 20
    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v9, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Sensor;

    iput-object v8, p0, Luc/ciceron/cerberus/GyroEmu;->mSensor:Landroid/hardware/Sensor;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_0

    .line 29
    :catch_0
    move-exception v7

    .line 30
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v8, "Error creating virtual Sensor: 04"

    invoke-static {v8}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 27
    .end local v7    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v7

    .line 28
    .local v7, "e":Ljava/lang/InstantiationException;
    const-string v8, "Error creating virtual Sensor: 03"

    invoke-static {v8}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .end local v7    # "e":Ljava/lang/InstantiationException;
    goto :goto_0

    .line 25
    :catch_2
    move-exception v7

    .line 26
    .local v7, "e":Ljava/lang/IllegalAccessException;
    const-string v8, "Error creating virtual Sensor: 02"

    invoke-static {v8}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 23
    :catch_3
    move-exception v7

    .line 24
    .local v7, "e":Ljava/lang/NoSuchMethodException;
    const-string v8, "Error creating virtual Sensor: 01"

    invoke-static {v8}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .end local v7    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 21
    :catch_4
    move-exception v7

    .line 22
    .local v7, "e":Ljava/lang/ClassNotFoundException;
    const-string v8, "Error creating virtual Sensor: 00"

    invoke-static {v8}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 31
    .end local v7    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    nop

    .line 33
    :goto_1
    :try_start_1
    iget-object v7, p0, Luc/ciceron/cerberus/GyroEmu;->vSensor:Landroid/hardware/Sensor;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 34
    .local v7, "type":Ljava/lang/reflect/Field;
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 35
    iget-object v8, p0, Luc/ciceron/cerberus/GyroEmu;->vSensor:Landroid/hardware/Sensor;

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    iget-object v8, p0, Luc/ciceron/cerberus/GyroEmu;->vSensor:Landroid/hardware/Sensor;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 42
    .local v8, "name":Ljava/lang/reflect/Field;
    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 43
    iget-object v9, p0, Luc/ciceron/cerberus/GyroEmu;->vSensor:Landroid/hardware/Sensor;

    const-string v10, "K330 Gyroscope sensor"

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    iget-object v9, p0, Luc/ciceron/cerberus/GyroEmu;->vSensor:Landroid/hardware/Sensor;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 46
    .local v9, "vendor":Ljava/lang/reflect/Field;
    invoke-virtual {v9, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 47
    iget-object v10, p0, Luc/ciceron/cerberus/GyroEmu;->vSensor:Landroid/hardware/Sensor;

    invoke-virtual {v9, v10, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    iget-object v10, p0, Luc/ciceron/cerberus/GyroEmu;->vSensor:Landroid/hardware/Sensor;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 50
    .local v10, "permission":Ljava/lang/reflect/Field;
    invoke-virtual {v10, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 51
    iget-object v11, p0, Luc/ciceron/cerberus/GyroEmu;->vSensor:Landroid/hardware/Sensor;

    const-string v12, "android.hardware.sensor.gyroscope"

    invoke-virtual {v10, v11, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    iget-object v11, p0, Luc/ciceron/cerberus/GyroEmu;->vSensor:Landroid/hardware/Sensor;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 54
    .local v11, "handle":Ljava/lang/reflect/Field;
    invoke-virtual {v11, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 55
    iget-object v12, p0, Luc/ciceron/cerberus/GyroEmu;->vSensor:Landroid/hardware/Sensor;

    const/16 v13, 0x51

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    iget-object v12, p0, Luc/ciceron/cerberus/GyroEmu;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 59
    .local v5, "m_type":Ljava/lang/reflect/Field;
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 60
    iget-object v12, p0, Luc/ciceron/cerberus/GyroEmu;->mSensor:Landroid/hardware/Sensor;

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    iget-object v12, p0, Luc/ciceron/cerberus/GyroEmu;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 63
    .local v4, "m_name":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 64
    iget-object v12, p0, Luc/ciceron/cerberus/GyroEmu;->mSensor:Landroid/hardware/Sensor;

    const-string v13, "YAS532 Magnetic Sensor"

    invoke-virtual {v4, v12, v13}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    iget-object v12, p0, Luc/ciceron/cerberus/GyroEmu;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 67
    .local v3, "m_vendor":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 68
    iget-object v12, p0, Luc/ciceron/cerberus/GyroEmu;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v3, v12, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    iget-object v2, p0, Luc/ciceron/cerberus/GyroEmu;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 71
    .local v1, "m_permission":Ljava/lang/reflect/Field;
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 72
    iget-object v2, p0, Luc/ciceron/cerberus/GyroEmu;->mSensor:Landroid/hardware/Sensor;

    const-string v12, "android.hardware.sensor.magnetometer"

    invoke-virtual {v1, v2, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    iget-object v2, p0, Luc/ciceron/cerberus/GyroEmu;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 75
    .local v0, "m_handle":Ljava/lang/reflect/Field;
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 76
    iget-object v2, p0, Luc/ciceron/cerberus/GyroEmu;->mSensor:Landroid/hardware/Sensor;

    const/16 v6, 0x52

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5

    .end local v0    # "m_handle":Ljava/lang/reflect/Field;
    .end local v1    # "m_permission":Ljava/lang/reflect/Field;
    .end local v3    # "m_vendor":Ljava/lang/reflect/Field;
    .end local v4    # "m_name":Ljava/lang/reflect/Field;
    .end local v5    # "m_type":Ljava/lang/reflect/Field;
    .end local v7    # "type":Ljava/lang/reflect/Field;
    .end local v8    # "name":Ljava/lang/reflect/Field;
    .end local v9    # "vendor":Ljava/lang/reflect/Field;
    .end local v10    # "permission":Ljava/lang/reflect/Field;
    .end local v11    # "handle":Ljava/lang/reflect/Field;
    goto :goto_2

    .line 80
    :catch_5
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "Error creating virtual Sensor: 06"

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 78
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v1, "Error creating virtual Sensor: 05"

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 82
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_2
    nop

    .line 83
    :goto_3
    return-void
.end method
