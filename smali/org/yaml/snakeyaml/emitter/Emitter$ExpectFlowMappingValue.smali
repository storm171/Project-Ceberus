.class Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingValue;
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
    name = "ExpectFlowMappingValue"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/emitter/Emitter;


# direct methods
.method private constructor <init>(Lorg/yaml/snakeyaml/emitter/Emitter;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingValue;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p2, "x1"    # Lorg/yaml/snakeyaml/emitter/Emitter$1;

    .line 557
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingValue;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;)V

    return-void
.end method


# virtual methods
.method public expect()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 559
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingValue;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1000(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingValue;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$2100(Lorg/yaml/snakeyaml/emitter/Emitter;)I

    move-result v0

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingValue;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$2200(Lorg/yaml/snakeyaml/emitter/Emitter;)I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingValue;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$2400(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingValue;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 562
    :cond_1
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingValue;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, ":"

    invoke-virtual {v0, v3, v1, v2, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 563
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingValue;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1500(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/util/ArrayStack;

    move-result-object v0

    new-instance v3, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingKey;

    iget-object v4, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingValue;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingKey;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V

    invoke-virtual {v0, v3}, Lorg/yaml/snakeyaml/util/ArrayStack;->push(Ljava/lang/Object;)V

    .line 564
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingValue;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0, v2, v1, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1600(Lorg/yaml/snakeyaml/emitter/Emitter;ZZZ)V

    .line 565
    return-void
.end method
