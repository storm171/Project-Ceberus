.class Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingSimpleValue;
.super Ljava/lang/Object;
.source "Emitter.java"

# interfaces
.implements Lorg/yaml/snakeyaml/emitter/EmitterState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/emitter/Emitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpectFlowMappingSimpleValue"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/emitter/Emitter;


# direct methods
.method private constructor <init>(Lorg/yaml/snakeyaml/emitter/Emitter;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingSimpleValue;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p2, "x1"    # Lorg/yaml/snakeyaml/emitter/Emitter$1;

    .line 549
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingSimpleValue;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;)V

    return-void
.end method


# virtual methods
.method public expect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingSimpleValue;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    const/4 v1, 0x0

    const-string v2, ":"

    invoke-virtual {v0, v2, v1, v1, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 552
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingSimpleValue;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1500(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/util/ArrayStack;

    move-result-object v0

    new-instance v2, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingKey;

    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingSimpleValue;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingKey;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V

    invoke-virtual {v0, v2}, Lorg/yaml/snakeyaml/util/ArrayStack;->push(Ljava/lang/Object;)V

    .line 553
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingSimpleValue;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1600(Lorg/yaml/snakeyaml/emitter/Emitter;ZZZ)V

    .line 554
    return-void
.end method
