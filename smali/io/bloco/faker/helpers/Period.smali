.class public final enum Lio/bloco/faker/helpers/Period;
.super Ljava/lang/Enum;
.source "Period.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bloco/faker/helpers/Period;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bloco/faker/helpers/Period;

.field public static final enum afternoon:Lio/bloco/faker/helpers/Period;

.field public static final enum all:Lio/bloco/faker/helpers/Period;

.field public static final enum day:Lio/bloco/faker/helpers/Period;

.field public static final enum evening:Lio/bloco/faker/helpers/Period;

.field public static final enum midnight:Lio/bloco/faker/helpers/Period;

.field public static final enum morning:Lio/bloco/faker/helpers/Period;

.field public static final enum night:Lio/bloco/faker/helpers/Period;


# instance fields
.field private final values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 5
    new-instance v0, Lio/bloco/faker/helpers/Period;

    const/16 v1, 0x18

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    const-string v3, "all"

    invoke-direct {v0, v3, v2, v1}, Lio/bloco/faker/helpers/Period;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lio/bloco/faker/helpers/Period;->all:Lio/bloco/faker/helpers/Period;

    .line 8
    new-instance v0, Lio/bloco/faker/helpers/Period;

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    const/4 v3, 0x1

    const-string v4, "day"

    invoke-direct {v0, v4, v3, v1}, Lio/bloco/faker/helpers/Period;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lio/bloco/faker/helpers/Period;->day:Lio/bloco/faker/helpers/Period;

    .line 9
    new-instance v0, Lio/bloco/faker/helpers/Period;

    const/4 v1, 0x6

    new-array v4, v1, [I

    fill-array-data v4, :array_2

    const/4 v5, 0x2

    const-string v6, "night"

    invoke-direct {v0, v6, v5, v4}, Lio/bloco/faker/helpers/Period;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lio/bloco/faker/helpers/Period;->night:Lio/bloco/faker/helpers/Period;

    .line 10
    new-instance v0, Lio/bloco/faker/helpers/Period;

    new-array v4, v1, [I

    fill-array-data v4, :array_3

    const/4 v6, 0x3

    const-string v7, "morning"

    invoke-direct {v0, v7, v6, v4}, Lio/bloco/faker/helpers/Period;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lio/bloco/faker/helpers/Period;->morning:Lio/bloco/faker/helpers/Period;

    .line 11
    new-instance v0, Lio/bloco/faker/helpers/Period;

    new-array v4, v1, [I

    fill-array-data v4, :array_4

    const/4 v7, 0x4

    const-string v8, "afternoon"

    invoke-direct {v0, v8, v7, v4}, Lio/bloco/faker/helpers/Period;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lio/bloco/faker/helpers/Period;->afternoon:Lio/bloco/faker/helpers/Period;

    .line 12
    new-instance v0, Lio/bloco/faker/helpers/Period;

    const/4 v4, 0x5

    new-array v8, v4, [I

    fill-array-data v8, :array_5

    const-string v9, "evening"

    invoke-direct {v0, v9, v4, v8}, Lio/bloco/faker/helpers/Period;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lio/bloco/faker/helpers/Period;->evening:Lio/bloco/faker/helpers/Period;

    .line 13
    new-instance v0, Lio/bloco/faker/helpers/Period;

    new-array v8, v4, [I

    fill-array-data v8, :array_6

    const-string v9, "midnight"

    invoke-direct {v0, v9, v1, v8}, Lio/bloco/faker/helpers/Period;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lio/bloco/faker/helpers/Period;->midnight:Lio/bloco/faker/helpers/Period;

    .line 3
    const/4 v0, 0x7

    new-array v0, v0, [Lio/bloco/faker/helpers/Period;

    sget-object v8, Lio/bloco/faker/helpers/Period;->all:Lio/bloco/faker/helpers/Period;

    aput-object v8, v0, v2

    sget-object v2, Lio/bloco/faker/helpers/Period;->day:Lio/bloco/faker/helpers/Period;

    aput-object v2, v0, v3

    sget-object v2, Lio/bloco/faker/helpers/Period;->night:Lio/bloco/faker/helpers/Period;

    aput-object v2, v0, v5

    sget-object v2, Lio/bloco/faker/helpers/Period;->morning:Lio/bloco/faker/helpers/Period;

    aput-object v2, v0, v6

    sget-object v2, Lio/bloco/faker/helpers/Period;->afternoon:Lio/bloco/faker/helpers/Period;

    aput-object v2, v0, v7

    sget-object v2, Lio/bloco/faker/helpers/Period;->evening:Lio/bloco/faker/helpers/Period;

    aput-object v2, v0, v4

    sget-object v2, Lio/bloco/faker/helpers/Period;->midnight:Lio/bloco/faker/helpers/Period;

    aput-object v2, v0, v1

    sput-object v0, Lio/bloco/faker/helpers/Period;->$VALUES:[Lio/bloco/faker/helpers/Period;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data

    :array_1
    .array-data 4
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
    .end array-data

    :array_2
    .array-data 4
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data

    :array_3
    .array-data 4
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    :array_4
    .array-data 4
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
    .end array-data

    :array_5
    .array-data 4
        0x11
        0x12
        0x13
        0x14
        0x15
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I[I)V
    .locals 0
    .param p3, "values"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lio/bloco/faker/helpers/Period;->values:[I

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bloco/faker/helpers/Period;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lio/bloco/faker/helpers/Period;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/bloco/faker/helpers/Period;

    return-object v0
.end method

.method public static values()[Lio/bloco/faker/helpers/Period;
    .locals 1

    .line 3
    sget-object v0, Lio/bloco/faker/helpers/Period;->$VALUES:[Lio/bloco/faker/helpers/Period;

    invoke-virtual {v0}, [Lio/bloco/faker/helpers/Period;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bloco/faker/helpers/Period;

    return-object v0
.end method


# virtual methods
.method public getValues()[I
    .locals 1

    .line 22
    iget-object v0, p0, Lio/bloco/faker/helpers/Period;->values:[I

    return-object v0
.end method
