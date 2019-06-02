.class public Luc/ciceron/cerberus/fBuildProp;
.super Ljava/lang/Object;
.source "fBuildProp.java"


# instance fields
.field editor:Landroid/content/SharedPreferences$Editor;

.field helper:Luc/ciceron/cerberus/Helper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Luc/ciceron/cerberus/Helper;

    invoke-direct {v0}, Luc/ciceron/cerberus/Helper;-><init>()V

    iput-object v0, p0, Luc/ciceron/cerberus/fBuildProp;->helper:Luc/ciceron/cerberus/Helper;

    return-void
.end method


# virtual methods
.method public changeBuildProp(Landroid/content/SharedPreferences;)V
    .locals 18
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .line 58
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/chrisplus/rootmanager/RootManager;->getInstance()Lcom/chrisplus/rootmanager/RootManager;

    move-result-object v2

    .line 59
    .local v2, "rm":Lcom/chrisplus/rootmanager/RootManager;
    const-string v3, "ro.hardware.gps"

    const-string v4, "ro.hardware.sensors"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "params_to_remove":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .local v4, "param_value_out":Ljava/lang/StringBuilder;
    const-string v5, "cat /system/build.prop"

    invoke-virtual {v2, v5}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    move-result-object v5

    invoke-virtual {v5}, Lcom/chrisplus/rootmanager/container/Result;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, "build_prop":Ljava/lang/String;
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, "lines":[Ljava/lang/String;
    array-length v7, v6

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x1

    if-ge v9, v7, :cond_5

    aget-object v11, v6, v9

    .line 66
    .local v11, "line":Ljava/lang/String;
    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "#"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 67
    move-object/from16 v17, v2

    goto :goto_1

    .line 70
    :cond_0
    const-string v13, "="

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 71
    .local v13, "param_value":[Ljava/lang/String;
    const-string v14, ""

    .line 73
    .local v14, "value":Ljava/lang/String;
    array-length v15, v13

    const/4 v8, 0x2

    if-ne v15, v8, :cond_1

    .line 74
    aget-object v14, v13, v10

    .line 77
    :cond_1
    const/4 v15, 0x0

    aget-object v10, v13, v15

    invoke-interface {v1, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    const-string v15, "%s=%s\n"

    if-eqz v10, :cond_2

    .line 78
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aget-object v16, v13, v10

    aput-object v16, v8, v10

    move-object/from16 v17, v2

    .end local v2    # "rm":Lcom/chrisplus/rootmanager/RootManager;
    .local v17, "rm":Lcom/chrisplus/rootmanager/RootManager;
    aget-object v2, v13, v10

    invoke-interface {v1, v2, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x1

    aput-object v2, v8, v12

    invoke-static {v15, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 81
    .end local v17    # "rm":Lcom/chrisplus/rootmanager/RootManager;
    .restart local v2    # "rm":Lcom/chrisplus/rootmanager/RootManager;
    :cond_2
    move-object/from16 v17, v2

    const/4 v10, 0x0

    .end local v2    # "rm":Lcom/chrisplus/rootmanager/RootManager;
    .restart local v17    # "rm":Lcom/chrisplus/rootmanager/RootManager;
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aget-object v12, v13, v10

    invoke-interface {v2, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 82
    new-array v2, v8, [Ljava/lang/Object;

    aget-object v8, v13, v10

    aput-object v8, v2, v10

    const/4 v8, 0x1

    aput-object v14, v2, v8

    invoke-static {v15, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 66
    .end local v13    # "param_value":[Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    .end local v17    # "rm":Lcom/chrisplus/rootmanager/RootManager;
    .restart local v2    # "rm":Lcom/chrisplus/rootmanager/RootManager;
    :cond_3
    move-object/from16 v17, v2

    .line 65
    .end local v2    # "rm":Lcom/chrisplus/rootmanager/RootManager;
    .end local v11    # "line":Ljava/lang/String;
    .restart local v17    # "rm":Lcom/chrisplus/rootmanager/RootManager;
    :cond_4
    :goto_1
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v17

    goto :goto_0

    .line 87
    .end local v17    # "rm":Lcom/chrisplus/rootmanager/RootManager;
    .restart local v2    # "rm":Lcom/chrisplus/rootmanager/RootManager;
    :cond_5
    move-object/from16 v17, v2

    .end local v2    # "rm":Lcom/chrisplus/rootmanager/RootManager;
    .restart local v17    # "rm":Lcom/chrisplus/rootmanager/RootManager;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v2, v8

    const-string v7, "\n%s"

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "out":Ljava/lang/String;
    iget-object v7, v0, Luc/ciceron/cerberus/fBuildProp;->helper:Luc/ciceron/cerberus/Helper;

    invoke-virtual {v7}, Luc/ciceron/cerberus/Helper;->remount()V

    .line 90
    iget-object v7, v0, Luc/ciceron/cerberus/fBuildProp;->helper:Luc/ciceron/cerberus/Helper;

    invoke-virtual {v7, v2}, Luc/ciceron/cerberus/Helper;->writeToBuildProp(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public generateBuildProp(Landroid/content/SharedPreferences;)V
    .locals 17
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .line 16
    move-object/from16 v0, p0

    new-instance v1, Luc/ciceron/cerberus/RandomDataGenerator;

    invoke-direct {v1}, Luc/ciceron/cerberus/RandomDataGenerator;-><init>()V

    .line 17
    .local v1, "random_data":Luc/ciceron/cerberus/RandomDataGenerator;
    invoke-virtual {v1}, Luc/ciceron/cerberus/RandomDataGenerator;->randomBuildId()Ljava/lang/String;

    move-result-object v2

    .line 18
    .local v2, "build_id":Ljava/lang/String;
    invoke-virtual {v1}, Luc/ciceron/cerberus/RandomDataGenerator;->randomVersionIncremental()Ljava/lang/String;

    move-result-object v3

    .line 19
    .local v3, "build_version_inc":Ljava/lang/String;
    invoke-virtual {v1}, Luc/ciceron/cerberus/RandomDataGenerator;->randomDate()Ljava/lang/String;

    move-result-object v4

    .line 20
    .local v4, "build_date":Ljava/lang/String;
    invoke-virtual {v1}, Luc/ciceron/cerberus/RandomDataGenerator;->randomTime()Ljava/lang/String;

    move-result-object v5

    .line 21
    .local v5, "build_time":Ljava/lang/String;
    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Luc/ciceron/cerberus/RandomDataGenerator;->randomString(I)Ljava/lang/String;

    move-result-object v6

    .line 22
    .local v6, "build_device":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSM"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x3e8

    const/16 v9, 0x2328

    invoke-virtual {v1, v8, v9}, Luc/ciceron/cerberus/RandomDataGenerator;->randomInt(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 23
    .local v7, "build_platform":Ljava/lang/String;
    const/4 v9, 0x7

    invoke-virtual {v1, v9}, Luc/ciceron/cerberus/RandomDataGenerator;->randomString(I)Ljava/lang/String;

    move-result-object v9

    .line 24
    .local v9, "product_name":Ljava/lang/String;
    invoke-virtual {v1}, Luc/ciceron/cerberus/RandomDataGenerator;->randomWord()Ljava/lang/String;

    move-result-object v10

    .line 25
    .local v10, "build_flavor":Ljava/lang/String;
    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    const/16 v13, 0x270f

    invoke-virtual {v1, v8, v13}, Luc/ciceron/cerberus/RandomDataGenerator;->randomInt(II)Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    aput-object v8, v12, v13

    const-string v8, "GT-I%s"

    invoke-static {v8, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 27
    .local v8, "build_model":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    iput-object v12, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    .line 28
    iget-object v12, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 30
    iget-object v12, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v14, "ro.build.id"

    invoke-interface {v12, v14, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 31
    iget-object v12, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v14, "ro.build.display.id"

    invoke-interface {v12, v14, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 32
    iget-object v12, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v14, "ro.build.version.incremental"

    invoke-interface {v12, v14, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    iget-object v12, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v14, "ro.build.version.security_patch"

    invoke-interface {v12, v14, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 34
    iget-object v12, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v4, v15, v13

    aput-object v5, v15, v11

    const-string v14, "%s %s"

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "ro.build.date"

    invoke-interface {v12, v15, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    iget-object v12, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    const-string v15, "ro.build.date.utc"

    invoke-interface {v12, v15, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 36
    iget-object v12, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    const-string v15, "ro.build.time"

    invoke-interface {v12, v15, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 37
    iget-object v12, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v14, "ro.build.type"

    const-string v15, "user"

    invoke-interface {v12, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    iget-object v12, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v1}, Luc/ciceron/cerberus/RandomDataGenerator;->randomWord()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ro.build.user"

    invoke-interface {v12, v15, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 39
    iget-object v12, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v1}, Luc/ciceron/cerberus/RandomDataGenerator;->randomWord()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ro.build.host"

    invoke-interface {v12, v15, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 40
    iget-object v12, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    new-array v14, v11, [Ljava/lang/Object;

    aput-object v10, v14, v13

    const-string v15, "%s-user"

    invoke-static {v15, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "ro.build.flavor"

    invoke-interface {v12, v15, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 41
    iget-object v12, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v14, "ro.product.model"

    const-string v15, "SM-G965F"

    invoke-interface {v12, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 42
    iget-object v12, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v14, "samsung"

    const-string v15, "ro.product.brand"

    invoke-interface {v12, v15, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 43
    iget-object v12, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v15, "ro.product.name"

    invoke-interface {v12, v15, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 44
    iget-object v12, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v15, "ro.product.device"

    invoke-interface {v12, v15, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 45
    iget-object v12, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v15, "ro.build.product"

    invoke-interface {v12, v15, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    iget-object v12, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v15, "ro.product.board"

    invoke-interface {v12, v15, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    iget-object v12, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v15, "ro.product.manufacturer"

    invoke-interface {v12, v15, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    iget-object v12, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v14, "ro.product.locale.language"

    const-string v15, "en"

    invoke-interface {v12, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 49
    iget-object v12, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v14, "ro.product.locale.region"

    const-string v15, "US"

    invoke-interface {v12, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50
    iget-object v12, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ro.board.platform"

    invoke-interface {v12, v15, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    iget-object v12, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v14, 0x3

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v10, v15, v13

    aput-object v2, v15, v11

    const/16 v16, 0x2

    aput-object v3, v15, v16

    const-string v14, "%s-user 8.1.0 %s %s release-keys"

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "ro.build.description"

    invoke-interface {v12, v15, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 52
    iget-object v12, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v9, v14, v13

    aput-object v6, v14, v11

    aput-object v2, v14, v16

    const/4 v11, 0x3

    aput-object v3, v14, v11

    const-string v11, "samsung/%s/%s:8.1.0/%s/%s:user/release-keys"

    invoke-static {v11, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "ro.build.fingerprint"

    invoke-interface {v12, v13, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    iget-object v11, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v12, "ro.build.characteristics"

    const-string v13, "phone"

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 54
    iget-object v11, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 55
    return-void
.end method
