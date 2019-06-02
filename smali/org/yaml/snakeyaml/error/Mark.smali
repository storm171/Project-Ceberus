.class public final Lorg/yaml/snakeyaml/error/Mark;
.super Ljava/lang/Object;
.source "Mark.java"


# instance fields
.field private buffer:Ljava/lang/String;

.field private column:I

.field private index:I

.field private line:I

.field private name:Ljava/lang/String;

.field private pointer:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "line"    # I
    .param p4, "column"    # I
    .param p5, "buffer"    # Ljava/lang/String;
    .param p6, "pointer"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/yaml/snakeyaml/error/Mark;->name:Ljava/lang/String;

    .line 35
    iput p2, p0, Lorg/yaml/snakeyaml/error/Mark;->index:I

    .line 36
    iput p3, p0, Lorg/yaml/snakeyaml/error/Mark;->line:I

    .line 37
    iput p4, p0, Lorg/yaml/snakeyaml/error/Mark;->column:I

    .line 38
    iput-object p5, p0, Lorg/yaml/snakeyaml/error/Mark;->buffer:Ljava/lang/String;

    .line 39
    iput p6, p0, Lorg/yaml/snakeyaml/error/Mark;->pointer:I

    .line 40
    return-void
.end method

.method private isLineBreak(C)Z
    .locals 1
    .param p1, "ch"    # C

    .line 43
    sget-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_OR_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v0, p1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    .line 119
    iget v0, p0, Lorg/yaml/snakeyaml/error/Mark;->column:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 124
    iget v0, p0, Lorg/yaml/snakeyaml/error/Mark;->index:I

    return v0
.end method

.method public getLine()I
    .locals 1

    .line 114
    iget v0, p0, Lorg/yaml/snakeyaml/error/Mark;->line:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/yaml/snakeyaml/error/Mark;->name:Ljava/lang/String;

    return-object v0
.end method

.method public get_snippet()Ljava/lang/String;
    .locals 2

    .line 88
    const/4 v0, 0x4

    const/16 v1, 0x4b

    invoke-virtual {p0, v0, v1}, Lorg/yaml/snakeyaml/error/Mark;->get_snippet(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get_snippet(II)Ljava/lang/String;
    .locals 11
    .param p1, "indent"    # I
    .param p2, "max_length"    # I

    .line 47
    iget-object v0, p0, Lorg/yaml/snakeyaml/error/Mark;->buffer:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_0
    div-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    .line 51
    .local v0, "half":F
    iget v1, p0, Lorg/yaml/snakeyaml/error/Mark;->pointer:I

    .line 52
    .local v1, "start":I
    const-string v2, ""

    .line 53
    .local v2, "head":Ljava/lang/String;
    :cond_1
    if-lez v1, :cond_2

    iget-object v3, p0, Lorg/yaml/snakeyaml/error/Mark;->buffer:Ljava/lang/String;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lorg/yaml/snakeyaml/error/Mark;->isLineBreak(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 54
    add-int/lit8 v1, v1, -0x1

    .line 55
    iget v3, p0, Lorg/yaml/snakeyaml/error/Mark;->pointer:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    cmpl-float v3, v3, v0

    if-lez v3, :cond_1

    .line 56
    const-string v2, " ... "

    .line 57
    add-int/lit8 v1, v1, 0x5

    .line 61
    :cond_2
    const-string v3, ""

    .line 62
    .local v3, "tail":Ljava/lang/String;
    iget v4, p0, Lorg/yaml/snakeyaml/error/Mark;->pointer:I

    .line 63
    .local v4, "end":I
    :cond_3
    iget-object v5, p0, Lorg/yaml/snakeyaml/error/Mark;->buffer:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v5, p0, Lorg/yaml/snakeyaml/error/Mark;->buffer:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lorg/yaml/snakeyaml/error/Mark;->isLineBreak(C)Z

    move-result v5

    if-nez v5, :cond_4

    .line 64
    add-int/lit8 v4, v4, 0x1

    .line 65
    iget v5, p0, Lorg/yaml/snakeyaml/error/Mark;->pointer:I

    sub-int v5, v4, v5

    int-to-float v5, v5

    cmpl-float v5, v5, v0

    if-lez v5, :cond_3

    .line 66
    const-string v3, " ... "

    .line 67
    add-int/lit8 v4, v4, -0x5

    .line 71
    :cond_4
    iget-object v5, p0, Lorg/yaml/snakeyaml/error/Mark;->buffer:Ljava/lang/String;

    invoke-virtual {v5, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, "snippet":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v6, "result":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const-string v8, " "

    if-ge v7, p1, :cond_5

    .line 74
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 76
    .end local v7    # "i":I
    :cond_5
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_1
    iget v9, p0, Lorg/yaml/snakeyaml/error/Mark;->pointer:I

    add-int/2addr v9, p1

    sub-int/2addr v9, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    if-ge v7, v9, :cond_6

    .line 81
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 83
    .end local v7    # "i":I
    :cond_6
    const-string v7, "^"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 93
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/error/Mark;->get_snippet()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "snippet":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, "where":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/yaml/snakeyaml/error/Mark;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v2, ", line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget v2, p0, Lorg/yaml/snakeyaml/error/Mark;->line:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    const-string v2, ", column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget v2, p0, Lorg/yaml/snakeyaml/error/Mark;->column:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    if-eqz v0, :cond_0

    .line 101
    const-string v2, ":\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
