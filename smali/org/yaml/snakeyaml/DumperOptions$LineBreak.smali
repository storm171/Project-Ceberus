.class public final enum Lorg/yaml/snakeyaml/DumperOptions$LineBreak;
.super Ljava/lang/Enum;
.source "DumperOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/DumperOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LineBreak"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/yaml/snakeyaml/DumperOptions$LineBreak;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

.field public static final enum MAC:Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

.field public static final enum UNIX:Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

.field public static final enum WIN:Lorg/yaml/snakeyaml/DumperOptions$LineBreak;


# instance fields
.field private lineBreak:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 107
    new-instance v0, Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    const/4 v1, 0x0

    const-string v2, "WIN"

    const-string v3, "\r\n"

    invoke-direct {v0, v2, v1, v3}, Lorg/yaml/snakeyaml/DumperOptions$LineBreak;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/DumperOptions$LineBreak;->WIN:Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    new-instance v0, Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    const/4 v2, 0x1

    const-string v3, "MAC"

    const-string v4, "\r"

    invoke-direct {v0, v3, v2, v4}, Lorg/yaml/snakeyaml/DumperOptions$LineBreak;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/DumperOptions$LineBreak;->MAC:Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    new-instance v0, Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    const/4 v3, 0x2

    const-string v4, "UNIX"

    const-string v5, "\n"

    invoke-direct {v0, v4, v3, v5}, Lorg/yaml/snakeyaml/DumperOptions$LineBreak;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/DumperOptions$LineBreak;->UNIX:Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    .line 106
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    sget-object v4, Lorg/yaml/snakeyaml/DumperOptions$LineBreak;->WIN:Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    aput-object v4, v0, v1

    sget-object v1, Lorg/yaml/snakeyaml/DumperOptions$LineBreak;->MAC:Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    aput-object v1, v0, v2

    sget-object v1, Lorg/yaml/snakeyaml/DumperOptions$LineBreak;->UNIX:Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    aput-object v1, v0, v3

    sput-object v0, Lorg/yaml/snakeyaml/DumperOptions$LineBreak;->$VALUES:[Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "lineBreak"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 112
    iput-object p3, p0, Lorg/yaml/snakeyaml/DumperOptions$LineBreak;->lineBreak:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public static getPlatformLineBreak()Lorg/yaml/snakeyaml/DumperOptions$LineBreak;
    .locals 6

    .line 125
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "platformLineBreak":Ljava/lang/String;
    invoke-static {}, Lorg/yaml/snakeyaml/DumperOptions$LineBreak;->values()[Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    move-result-object v1

    .local v1, "arr$":[Lorg/yaml/snakeyaml/DumperOptions$LineBreak;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 127
    .local v4, "lb":Lorg/yaml/snakeyaml/DumperOptions$LineBreak;
    iget-object v5, v4, Lorg/yaml/snakeyaml/DumperOptions$LineBreak;->lineBreak:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 128
    return-object v4

    .line 126
    .end local v4    # "lb":Lorg/yaml/snakeyaml/DumperOptions$LineBreak;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    .end local v1    # "arr$":[Lorg/yaml/snakeyaml/DumperOptions$LineBreak;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    sget-object v1, Lorg/yaml/snakeyaml/DumperOptions$LineBreak;->UNIX:Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/yaml/snakeyaml/DumperOptions$LineBreak;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 106
    const-class v0, Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    return-object v0
.end method

.method public static values()[Lorg/yaml/snakeyaml/DumperOptions$LineBreak;
    .locals 1

    .line 106
    sget-object v0, Lorg/yaml/snakeyaml/DumperOptions$LineBreak;->$VALUES:[Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    invoke-virtual {v0}, [Lorg/yaml/snakeyaml/DumperOptions$LineBreak;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    return-object v0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions$LineBreak;->lineBreak:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Line break: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/DumperOptions$LineBreak;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
