.class public Lorg/yaml/snakeyaml/constructor/Constructor$ConstructYamlObject;
.super Ljava/lang/Object;
.source "Constructor.java"

# interfaces
.implements Lorg/yaml/snakeyaml/constructor/Construct;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/constructor/Constructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConstructYamlObject"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/constructor/Constructor;


# direct methods
.method protected constructor <init>(Lorg/yaml/snakeyaml/constructor/Constructor;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructYamlObject;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getConstructor(Lorg/yaml/snakeyaml/nodes/Node;)Lorg/yaml/snakeyaml/constructor/Construct;
    .locals 3
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 335
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructYamlObject;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v0, p1}, Lorg/yaml/snakeyaml/constructor/Constructor;->getClassForNode(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Class;

    move-result-object v0

    .line 336
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v0}, Lorg/yaml/snakeyaml/nodes/Node;->setType(Ljava/lang/Class;)V

    .line 338
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructYamlObject;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v1, v1, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlClassConstructors:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/constructor/Construct;

    .line 339
    .local v1, "constructor":Lorg/yaml/snakeyaml/constructor/Construct;
    return-object v1
.end method


# virtual methods
.method public construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .locals 8
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 343
    const/4 v0, 0x0

    .line 345
    .local v0, "result":Ljava/lang/Object;
    :try_start_0
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructYamlObject;->getConstructor(Lorg/yaml/snakeyaml/nodes/Node;)Lorg/yaml/snakeyaml/constructor/Construct;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/yaml/snakeyaml/constructor/Construct;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lorg/yaml/snakeyaml/constructor/ConstructorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 351
    nop

    .line 352
    return-object v0

    .line 348
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 349
    .local v7, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/yaml/snakeyaml/constructor/ConstructorException;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t construct a java object for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; exception="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lorg/yaml/snakeyaml/constructor/ConstructorException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Throwable;)V

    throw v1

    .line 346
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 347
    .local v1, "e":Lorg/yaml/snakeyaml/constructor/ConstructorException;
    throw v1
.end method

.method public construct2ndStep(Lorg/yaml/snakeyaml/nodes/Node;Ljava/lang/Object;)V
    .locals 7
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;
    .param p2, "object"    # Ljava/lang/Object;

    .line 357
    :try_start_0
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructYamlObject;->getConstructor(Lorg/yaml/snakeyaml/nodes/Node;)Lorg/yaml/snakeyaml/constructor/Construct;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/yaml/snakeyaml/constructor/Construct;->construct2ndStep(Lorg/yaml/snakeyaml/nodes/Node;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    nop

    .line 363
    return-void

    .line 358
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 359
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Lorg/yaml/snakeyaml/constructor/ConstructorException;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t construct a second step for a java object for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; exception="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/yaml/snakeyaml/constructor/ConstructorException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Throwable;)V

    throw v0
.end method
