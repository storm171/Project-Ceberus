.class public Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentMap;
.super Ljava/lang/Object;
.source "SafeRepresenter.java"

# interfaces
.implements Lorg/yaml/snakeyaml/representer/Represent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/representer/SafeRepresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RepresentMap"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;


# direct methods
.method protected constructor <init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentMap;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .line 306
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentMap;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lorg/yaml/snakeyaml/nodes/Tag;->MAP:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v0, v1, v2}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->getTag(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Tag;)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/util/Map;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representMapping(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/Map;Ljava/lang/Boolean;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    return-object v0
.end method
