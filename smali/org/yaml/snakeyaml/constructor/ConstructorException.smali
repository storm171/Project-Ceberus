.class public Lorg/yaml/snakeyaml/constructor/ConstructorException;
.super Lorg/yaml/snakeyaml/error/MarkedYAMLException;
.source "ConstructorException.java"


# static fields
.field private static final serialVersionUID:J = -0x7a59ee74e41dec66L


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V
    .locals 6
    .param p1, "context"    # Ljava/lang/String;
    .param p2, "contextMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p3, "problem"    # Ljava/lang/String;
    .param p4, "problemMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 31
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/yaml/snakeyaml/constructor/ConstructorException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "context"    # Ljava/lang/String;
    .param p2, "contextMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p3, "problem"    # Ljava/lang/String;
    .param p4, "problemMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p5, "cause"    # Ljava/lang/Throwable;

    .line 26
    invoke-direct/range {p0 .. p5}, Lorg/yaml/snakeyaml/error/MarkedYAMLException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Throwable;)V

    .line 27
    return-void
.end method
