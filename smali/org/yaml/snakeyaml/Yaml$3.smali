.class Lorg/yaml/snakeyaml/Yaml$3;
.super Ljava/lang/Object;
.source "Yaml.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/yaml/snakeyaml/Yaml;->parse(Ljava/io/Reader;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/yaml/snakeyaml/events/Event;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/Yaml;

.field final synthetic val$parser:Lorg/yaml/snakeyaml/parser/Parser;


# direct methods
.method constructor <init>(Lorg/yaml/snakeyaml/Yaml;Lorg/yaml/snakeyaml/parser/Parser;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lorg/yaml/snakeyaml/Yaml$3;->this$0:Lorg/yaml/snakeyaml/Yaml;

    iput-object p2, p0, Lorg/yaml/snakeyaml/Yaml$3;->val$parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 630
    iget-object v0, p0, Lorg/yaml/snakeyaml/Yaml$3;->val$parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->peekEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 628
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/Yaml$3;->next()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/yaml/snakeyaml/events/Event;
    .locals 1

    .line 634
    iget-object v0, p0, Lorg/yaml/snakeyaml/Yaml$3;->val$parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 638
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
