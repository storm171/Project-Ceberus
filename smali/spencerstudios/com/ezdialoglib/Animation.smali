.class public final enum Lspencerstudios/com/ezdialoglib/Animation;
.super Ljava/lang/Enum;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lspencerstudios/com/ezdialoglib/Animation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lspencerstudios/com/ezdialoglib/Animation;

.field public static final enum DOWN:Lspencerstudios/com/ezdialoglib/Animation;

.field public static final enum UP:Lspencerstudios/com/ezdialoglib/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lspencerstudios/com/ezdialoglib/Animation;

    const/4 v1, 0x0

    const-string v2, "UP"

    invoke-direct {v0, v2, v1}, Lspencerstudios/com/ezdialoglib/Animation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lspencerstudios/com/ezdialoglib/Animation;->UP:Lspencerstudios/com/ezdialoglib/Animation;

    new-instance v0, Lspencerstudios/com/ezdialoglib/Animation;

    const/4 v2, 0x1

    const-string v3, "DOWN"

    invoke-direct {v0, v3, v2}, Lspencerstudios/com/ezdialoglib/Animation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lspencerstudios/com/ezdialoglib/Animation;->DOWN:Lspencerstudios/com/ezdialoglib/Animation;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lspencerstudios/com/ezdialoglib/Animation;

    sget-object v3, Lspencerstudios/com/ezdialoglib/Animation;->UP:Lspencerstudios/com/ezdialoglib/Animation;

    aput-object v3, v0, v1

    sget-object v1, Lspencerstudios/com/ezdialoglib/Animation;->DOWN:Lspencerstudios/com/ezdialoglib/Animation;

    aput-object v1, v0, v2

    sput-object v0, Lspencerstudios/com/ezdialoglib/Animation;->$VALUES:[Lspencerstudios/com/ezdialoglib/Animation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lspencerstudios/com/ezdialoglib/Animation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lspencerstudios/com/ezdialoglib/Animation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lspencerstudios/com/ezdialoglib/Animation;

    return-object v0
.end method

.method public static values()[Lspencerstudios/com/ezdialoglib/Animation;
    .locals 1

    .line 3
    sget-object v0, Lspencerstudios/com/ezdialoglib/Animation;->$VALUES:[Lspencerstudios/com/ezdialoglib/Animation;

    invoke-virtual {v0}, [Lspencerstudios/com/ezdialoglib/Animation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lspencerstudios/com/ezdialoglib/Animation;

    return-object v0
.end method
