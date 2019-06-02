.class public Landroidx/core/content/pm/ShortcutInfoCompatSaver;
.super Ljava/lang/Object;
.source "ShortcutInfoCompatSaver.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addShortcuts(Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 41
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroidx/core/content/pm/ShortcutInfoCompat;>;"
    invoke-static {}, Landroidx/concurrent/futures/ResolvableFuture;->create()Landroidx/concurrent/futures/ResolvableFuture;

    move-result-object v0

    .line 42
    .local v0, "result":Landroidx/concurrent/futures/ResolvableFuture;, "Landroidx/concurrent/futures/ResolvableFuture<Ljava/lang/Void;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    .line 43
    return-object v0
.end method

.method public getShortcuts()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public removeAllShortcuts()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 55
    invoke-static {}, Landroidx/concurrent/futures/ResolvableFuture;->create()Landroidx/concurrent/futures/ResolvableFuture;

    move-result-object v0

    .line 56
    .local v0, "result":Landroidx/concurrent/futures/ResolvableFuture;, "Landroidx/concurrent/futures/ResolvableFuture<Ljava/lang/Void;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    .line 57
    return-object v0
.end method

.method public removeShortcuts(Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 48
    .local p1, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroidx/concurrent/futures/ResolvableFuture;->create()Landroidx/concurrent/futures/ResolvableFuture;

    move-result-object v0

    .line 49
    .local v0, "result":Landroidx/concurrent/futures/ResolvableFuture;, "Landroidx/concurrent/futures/ResolvableFuture<Ljava/lang/Void;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    .line 50
    return-object v0
.end method
