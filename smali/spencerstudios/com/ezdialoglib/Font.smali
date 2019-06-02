.class public final enum Lspencerstudios/com/ezdialoglib/Font;
.super Ljava/lang/Enum;
.source "Font.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lspencerstudios/com/ezdialoglib/Font;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lspencerstudios/com/ezdialoglib/Font;

.field public static final enum COMFORTAA:Lspencerstudios/com/ezdialoglib/Font;

.field public static final enum FINGER_PAINT:Lspencerstudios/com/ezdialoglib/Font;

.field public static final enum QUICK_SAND:Lspencerstudios/com/ezdialoglib/Font;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lspencerstudios/com/ezdialoglib/Font;

    const/4 v1, 0x0

    const-string v2, "COMFORTAA"

    invoke-direct {v0, v2, v1}, Lspencerstudios/com/ezdialoglib/Font;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lspencerstudios/com/ezdialoglib/Font;->COMFORTAA:Lspencerstudios/com/ezdialoglib/Font;

    .line 5
    new-instance v0, Lspencerstudios/com/ezdialoglib/Font;

    const/4 v2, 0x1

    const-string v3, "FINGER_PAINT"

    invoke-direct {v0, v3, v2}, Lspencerstudios/com/ezdialoglib/Font;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lspencerstudios/com/ezdialoglib/Font;->FINGER_PAINT:Lspencerstudios/com/ezdialoglib/Font;

    .line 6
    new-instance v0, Lspencerstudios/com/ezdialoglib/Font;

    const/4 v3, 0x2

    const-string v4, "QUICK_SAND"

    invoke-direct {v0, v4, v3}, Lspencerstudios/com/ezdialoglib/Font;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lspencerstudios/com/ezdialoglib/Font;->QUICK_SAND:Lspencerstudios/com/ezdialoglib/Font;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lspencerstudios/com/ezdialoglib/Font;

    sget-object v4, Lspencerstudios/com/ezdialoglib/Font;->COMFORTAA:Lspencerstudios/com/ezdialoglib/Font;

    aput-object v4, v0, v1

    sget-object v1, Lspencerstudios/com/ezdialoglib/Font;->FINGER_PAINT:Lspencerstudios/com/ezdialoglib/Font;

    aput-object v1, v0, v2

    sget-object v1, Lspencerstudios/com/ezdialoglib/Font;->QUICK_SAND:Lspencerstudios/com/ezdialoglib/Font;

    aput-object v1, v0, v3

    sput-object v0, Lspencerstudios/com/ezdialoglib/Font;->$VALUES:[Lspencerstudios/com/ezdialoglib/Font;

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

.method public static valueOf(Ljava/lang/String;)Lspencerstudios/com/ezdialoglib/Font;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lspencerstudios/com/ezdialoglib/Font;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lspencerstudios/com/ezdialoglib/Font;

    return-object v0
.end method

.method public static values()[Lspencerstudios/com/ezdialoglib/Font;
    .locals 1

    .line 3
    sget-object v0, Lspencerstudios/com/ezdialoglib/Font;->$VALUES:[Lspencerstudios/com/ezdialoglib/Font;

    invoke-virtual {v0}, [Lspencerstudios/com/ezdialoglib/Font;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lspencerstudios/com/ezdialoglib/Font;

    return-object v0
.end method
