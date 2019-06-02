.class public final enum Lcom/chrisplus/rootmanager/container/Result$ResultEnum;
.super Ljava/lang/Enum;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chrisplus/rootmanager/container/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/chrisplus/rootmanager/container/Result$ResultEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

.field public static final enum COMMAND_FAILED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

.field public static final enum COMMAND_FAILED_DENIED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

.field public static final enum COMMAND_FAILED_INTERRUPTED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

.field public static final enum COMMAND_FAILED_TIMEOUT:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

.field public static final enum COMMAND_SUCCESS:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

.field public static final enum CUSTOM:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

.field public static final enum FAILED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

.field public static final enum INSTALL_FAILED_NOSPACE:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

.field public static final enum INSTALL_FAILED_WRONGCER:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

.field public static final enum INSTALL_FAILED_WRONGCONTAINER:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

.field public static final enum INSTALL_FIALED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

.field public static final enum INSTALL_SUCCESS:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

.field public static final enum UNINSTALL_FAILED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

.field public static final enum UNINSTALL_SUCCESS:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;


# instance fields
.field private message:Ljava/lang/String;

.field private statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 41
    new-instance v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    const/4 v1, 0x0

    const-string v2, "COMMAND_SUCCESS"

    const/16 v3, 0x5a

    const-string v4, "Command Executed Successfully"

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->COMMAND_SUCCESS:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 42
    new-instance v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    const/4 v2, 0x1

    const-string v3, "COMMAND_FAILED_TIMEOUT"

    const/16 v4, 0x191

    const-string v5, "Run Command Timeout"

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->COMMAND_FAILED_TIMEOUT:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 43
    new-instance v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    const/4 v3, 0x2

    const-string v4, "COMMAND_FAILED_DENIED"

    const/16 v5, 0x192

    const-string v6, "Run Command Permission Denied"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->COMMAND_FAILED_DENIED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 44
    new-instance v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    const/4 v4, 0x3

    const-string v5, "COMMAND_FAILED_INTERRUPTED"

    const/16 v6, 0x193

    const-string v7, "Run Command Interrupted"

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->COMMAND_FAILED_INTERRUPTED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 45
    new-instance v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    const/16 v5, 0x199

    const/4 v6, 0x4

    const-string v7, "COMMAND_FAILED"

    const-string v8, "Run Command Failed"

    invoke-direct {v0, v7, v6, v5, v8}, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->COMMAND_FAILED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 47
    new-instance v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    const/4 v7, 0x5

    const-string v8, "INSTALL_SUCCESS"

    const/16 v9, 0x50

    const-string v10, "Application installed Successfully"

    invoke-direct {v0, v8, v7, v9, v10}, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->INSTALL_SUCCESS:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 48
    new-instance v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    const/4 v8, 0x6

    const-string v9, "INSTALL_FAILED_NOSPACE"

    const/16 v10, 0x194

    const-string v11, "Install Failed because of no enough space"

    invoke-direct {v0, v9, v8, v10, v11}, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->INSTALL_FAILED_NOSPACE:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 49
    new-instance v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    const/4 v9, 0x7

    const-string v10, "INSTALL_FAILED_WRONGCONTAINER"

    const/16 v11, 0x195

    const-string v12, "Install Failed Wrong container"

    invoke-direct {v0, v10, v9, v11, v12}, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->INSTALL_FAILED_WRONGCONTAINER:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 50
    new-instance v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    const/16 v10, 0x8

    const-string v11, "INSTALL_FAILED_WRONGCER"

    const/16 v12, 0x196

    const-string v13, "Install Failed Wrong Cer or version"

    invoke-direct {v0, v11, v10, v12, v13}, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->INSTALL_FAILED_WRONGCER:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 51
    new-instance v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    const/16 v11, 0x9

    const-string v12, "INSTALL_FIALED"

    const/16 v13, 0x197

    const-string v14, "Install Failed"

    invoke-direct {v0, v12, v11, v13, v14}, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->INSTALL_FIALED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 53
    new-instance v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    const/16 v12, 0xa

    const-string v13, "UNINSTALL_SUCCESS"

    const/16 v14, 0x46

    const-string v15, "Application uninstall Successfully"

    invoke-direct {v0, v13, v12, v14, v15}, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->UNINSTALL_SUCCESS:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 54
    new-instance v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    const/16 v13, 0xb

    const-string v14, "UNINSTALL_FAILED"

    const/16 v15, 0x198

    const-string v12, "Uninstall App Failed"

    invoke-direct {v0, v14, v13, v15, v12}, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->UNINSTALL_FAILED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 56
    new-instance v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    const/16 v12, 0xc

    const-string v14, "FAILED"

    const-string v15, "Illegal Parameters or State"

    invoke-direct {v0, v14, v12, v5, v15}, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->FAILED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 57
    new-instance v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    const/16 v5, 0xd

    const-string v14, "CUSTOM"

    const-string v15, ""

    invoke-direct {v0, v14, v5, v1, v15}, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->CUSTOM:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 39
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    sget-object v14, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->COMMAND_SUCCESS:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    aput-object v14, v0, v1

    sget-object v1, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->COMMAND_FAILED_TIMEOUT:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->COMMAND_FAILED_DENIED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->COMMAND_FAILED_INTERRUPTED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->COMMAND_FAILED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->INSTALL_SUCCESS:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->INSTALL_FAILED_NOSPACE:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    aput-object v1, v0, v8

    sget-object v1, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->INSTALL_FAILED_WRONGCONTAINER:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    aput-object v1, v0, v9

    sget-object v1, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->INSTALL_FAILED_WRONGCER:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    aput-object v1, v0, v10

    sget-object v1, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->INSTALL_FIALED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    aput-object v1, v0, v11

    sget-object v1, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->UNINSTALL_SUCCESS:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->UNINSTALL_FAILED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    aput-object v1, v0, v13

    sget-object v1, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->FAILED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    aput-object v1, v0, v12

    sget-object v1, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->CUSTOM:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->$VALUES:[Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "sc"    # I
    .param p4, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->statusCode:I

    .line 65
    iput-object p4, p0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->message:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result$ResultEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 39
    const-class v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    return-object v0
.end method

.method public static values()[Lcom/chrisplus/rootmanager/container/Result$ResultEnum;
    .locals 1

    .line 39
    sget-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->$VALUES:[Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    invoke-virtual {v0}, [Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->statusCode:I

    return v0
.end method

.method public setCustomMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "customMessage"    # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->message:Ljava/lang/String;

    .line 70
    return-void
.end method
