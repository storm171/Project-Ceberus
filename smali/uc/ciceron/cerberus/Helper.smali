.class public Luc/ciceron/cerberus/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# instance fields
.field private initDone:Z

.field private rm:Lcom/chrisplus/rootmanager/RootManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/chrisplus/rootmanager/RootManager;->getInstance()Lcom/chrisplus/rootmanager/RootManager;

    move-result-object v0

    iput-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Luc/ciceron/cerberus/Helper;->initDone:Z

    return-void
.end method


# virtual methods
.method public clearGameData()V
    .locals 2

    .line 40
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "rm -rf /sdcard/tencent"

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 41
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "rm -rf /sdcard/MidasOversea"

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 42
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "pm clear com.tencent.ig"

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 43
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "pm clear com.pubg.krmobile"

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 44
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "pm clear com.vng.pubgmobile"

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 45
    return-void
.end method

.method public clearGameDataLite()V
    .locals 2

    .line 49
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "rm -rf /data/data/com.tencent.ig/files"

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 50
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "rm -rf /data/data/com.pubg.krmobile/files"

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 51
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "rm -rf /data/data/com.vng.pubgmobile/files"

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 52
    return-void
.end method

.method public convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;

    .line 31
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v1, "\\A"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    .line 32
    .local v0, "s":Ljava/util/Scanner;
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "fromAssetPath"    # Ljava/lang/String;
    .param p3, "toPath"    # Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "in":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 70
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    .line 71
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 72
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 73
    invoke-virtual {p0, v0, v1}, Luc/ciceron/cerberus/Helper;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 74
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 75
    const/4 v0, 0x0

    .line 76
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 77
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    const/4 v1, 0x0

    .line 79
    const/4 v2, 0x1

    return v2

    .line 80
    :catch_0
    move-exception v2

    .line 81
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    const/4 v3, 0x0

    return v3
.end method

.method public copyCerberusLibs(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 12
    .param p1, "am"    # Landroid/content/res/AssetManager;
    .param p2, "dest"    # Ljava/lang/String;

    .line 118
    const-string v0, "/sdcard/libxhook.so"

    const-string v1, "libxhook.so"

    invoke-virtual {p0, p1, v1, v0}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 119
    const-string v1, "/sdcard/libcerberus.so"

    const-string v2, "libcerberus.so"

    invoke-virtual {p0, p1, v2, v1}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 120
    const-string v2, "/sdcard/libcerberus_exp.so"

    const-string v3, "libcerberus_exp.so"

    invoke-virtual {p0, p1, v3, v2}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 121
    iget-object v3, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v4, "mount -o rw,remount /data"

    invoke-virtual {v3, v4}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 122
    iget-object v3, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object p2, v5, v7

    const-string v8, "cp -R %s %s"

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 123
    iget-object v3, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    new-array v5, v7, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/libxhook.so"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    const-string v9, "chmod 755 %s"

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 124
    iget-object v3, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    const-string v0, "rm -rf %s"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 125
    iget-object v3, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v6

    aput-object p2, v5, v7

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 126
    iget-object v3, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    new-array v5, v7, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/libcerberus.so"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v6

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 127
    iget-object v3, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 128
    iget-object v1, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v2, v3, v6

    aput-object p2, v3, v7

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 129
    iget-object v1, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/libcerberus_exp.so"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 130
    iget-object v1, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 131
    return-void
.end method

.method public copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 89
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    move v2, v1

    .local v2, "read":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 90
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

.method public copySplashScreen(Landroid/content/res/AssetManager;)V
    .locals 6
    .param p1, "am"    # Landroid/content/res/AssetManager;

    .line 134
    const-string v0, "/sdcard/project_cerberus_splashscreen.jpg"

    const-string v1, "project_cerberus_splashscreen.jpg"

    invoke-virtual {p0, p1, v1, v0}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 135
    iget-object v1, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v4, 0x1

    const-string v5, "/data/local/tmp"

    aput-object v5, v2, v4

    const-string v5, "cp -R %s %s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 136
    iget-object v1, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v5, "/data/local/tmp/project_cerberus_splashscreen.jpg"

    aput-object v5, v2, v3

    const-string v5, "chmod 755 %s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 137
    iget-object v1, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v0, "rm -rf %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 138
    return-void
.end method

.method public deleteGenyd()V
    .locals 4

    .line 153
    invoke-virtual {p0}, Luc/ciceron/cerberus/Helper;->remount()V

    .line 154
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "/system/bin/genyd"

    aput-object v3, v1, v2

    const-string v2, "rm -rf %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 155
    return-void
.end method

.method public deleteHwFile()V
    .locals 2

    .line 63
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "rm -rf /data/share1/hardware_info.txt"

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 64
    return-void
.end method

.method public deleteLdLib()V
    .locals 2

    .line 59
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "rm -rf /system/lib/libldutils.so"

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 60
    return-void
.end method

.method public getLibDir(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 174
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 177
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/16 v1, 0x80

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 178
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 181
    .local v1, "libDir":Ljava/lang/String;
    nop

    .line 183
    return-object v1

    .line 179
    .end local v1    # "libDir":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, ""

    return-object v2
.end method

.method public isInitDone()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Luc/ciceron/cerberus/Helper;->initDone:Z

    return v0
.end method

.method public isInstalled(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 164
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 166
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/16 v1, 0x80

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    nop

    .line 170
    const/4 v1, 0x1

    return v1

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    return v2
.end method

.method public moveFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Luc/ciceron/cerberus/Helper;->remount()V

    .line 96
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const-string v4, "cp -R %s %s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 97
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string v2, "rm -rf %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 98
    return-void
.end method

.method public prepareAssets(Landroid/content/res/AssetManager;)V
    .locals 2
    .param p1, "am"    # Landroid/content/res/AssetManager;

    .line 101
    const-string v0, "/sdcard/libbluetooth_jni.so"

    const-string v1, "libbluetooth_jni.so"

    invoke-virtual {p0, p1, v1, v0}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 102
    const-string v1, "/system/lib"

    invoke-virtual {p0, v0, v1}, Luc/ciceron/cerberus/Helper;->moveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "cpuinfo"

    const-string v1, "/sdcard/cpuinfo"

    invoke-virtual {p0, p1, v0, v1}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 104
    const-string v0, "cpuinfo_max_freq"

    const-string v1, "/sdcard/cpuinfo_max_freq"

    invoke-virtual {p0, p1, v0, v1}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 105
    const-string v0, "meminfo"

    const-string v1, "/sdcard/meminfo"

    invoke-virtual {p0, p1, v0, v1}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 106
    const-string v0, "gpubusy"

    const-string v1, "/sdcard/gpubusy"

    invoke-virtual {p0, p1, v0, v1}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 107
    const-string v0, "capacity"

    const-string v1, "/sdcard/battery_capacity"

    invoke-virtual {p0, p1, v0, v1}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 108
    const-string v0, "usb_online"

    const-string v1, "/sdcard/usb_online"

    invoke-virtual {p0, p1, v0, v1}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 109
    const-string v0, "ac_online"

    const-string v1, "/sdcard/ac_online"

    invoke-virtual {p0, p1, v0, v1}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 110
    const-string v0, "cid"

    const-string v1, "/sdcard/device_cid"

    invoke-virtual {p0, p1, v0, v1}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 111
    const-string v0, "name"

    const-string v1, "/sdcard/device_name"

    invoke-virtual {p0, p1, v0, v1}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 112
    const-string v0, "type"

    const-string v1, "/sdcard/device_type"

    invoke-virtual {p0, p1, v0, v1}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 113
    const-string v0, "build.prop"

    const-string v1, "/sdcard/build.prop"

    invoke-virtual {p0, p1, v0, v1}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 114
    const-string v0, "libc.so"

    const-string v1, "/sdcard/libc.so"

    invoke-virtual {p0, p1, v0, v1}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 115
    return-void
.end method

.method public reboot()V
    .locals 2

    .line 36
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "reboot"

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 37
    return-void
.end method

.method public remount()V
    .locals 2

    .line 23
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "mount -o rw,remount /system"

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 24
    return-void
.end method

.method public replaceHosts(Landroid/content/res/AssetManager;)V
    .locals 4
    .param p1, "am"    # Landroid/content/res/AssetManager;

    .line 158
    const-string v0, "/sdcard/hosts"

    const-string v1, "hosts"

    invoke-virtual {p0, p1, v1, v0}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 159
    const-string v1, "/system/etc"

    invoke-virtual {p0, v0, v1}, Luc/ciceron/cerberus/Helper;->moveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "rm -rf %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 161
    return-void
.end method

.method public resetGoogleAd()V
    .locals 2

    .line 55
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "rm -rf /data/data/com.google.android.gms/shared_prefs/adid_settings.xml"

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 56
    return-void
.end method

.method public setInitDone(Z)V
    .locals 0
    .param p1, "initDone"    # Z

    .line 145
    iput-boolean p1, p0, Luc/ciceron/cerberus/Helper;->initDone:Z

    .line 146
    return-void
.end method

.method public testHook()Z
    .locals 1

    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public writeToBuildProp(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 27
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "echo \'%s\' > /system/build.prop"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 28
    return-void
.end method
