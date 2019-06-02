.class public abstract Landroidx/concurrent/futures/AbstractResolvableFuture;
.super Ljava/lang/Object;
.source "AbstractResolvableFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/concurrent/futures/AbstractResolvableFuture$SynchronizedHelper;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;,
        Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "TV;>;"
    }
.end annotation


# static fields
.field static final ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

.field static final GENERATE_CANCELLATION_CAUSES:Z

.field private static final NULL:Ljava/lang/Object;

.field private static final SPIN_THRESHOLD_NANOS:J = 0x3e8L

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field volatile listeners:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field volatile value:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field volatile waiters:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 64
    nop

    .line 66
    const-string v0, "guava.concurrent.generate_cancellation_cause"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->GENERATE_CANCELLATION_CAUSES:Z

    .line 69
    const-class v0, Landroidx/concurrent/futures/AbstractResolvableFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->log:Ljava/util/logging/Logger;

    .line 80
    const/4 v0, 0x0

    .line 85
    .local v0, "thrownAtomicReferenceFieldUpdaterFailure":Ljava/lang/Throwable;
    :try_start_0
    new-instance v7, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper;

    const-class v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    const-class v2, Ljava/lang/Thread;

    const-string v3, "thread"

    .line 87
    invoke-static {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    const-class v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    const-class v3, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    const-string v4, "next"

    .line 88
    invoke-static {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    const-class v1, Landroidx/concurrent/futures/AbstractResolvableFuture;

    const-class v4, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    const-string v5, "waiters"

    .line 89
    invoke-static {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-class v1, Landroidx/concurrent/futures/AbstractResolvableFuture;

    const-class v5, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    const-string v6, "listeners"

    .line 90
    invoke-static {v1, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    const-class v1, Landroidx/concurrent/futures/AbstractResolvableFuture;

    const-class v6, Ljava/lang/Object;

    const-string v8, "value"

    .line 94
    invoke-static {v1, v6, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v7

    .line 102
    .local v1, "helper":Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;
    goto :goto_0

    .line 95
    .end local v1    # "helper":Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;
    :catch_0
    move-exception v1

    .line 100
    .local v1, "atomicReferenceFieldUpdaterFailure":Ljava/lang/Throwable;
    move-object v0, v1

    .line 101
    new-instance v2, Landroidx/concurrent/futures/AbstractResolvableFuture$SynchronizedHelper;

    invoke-direct {v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$SynchronizedHelper;-><init>()V

    move-object v1, v2

    .line 104
    .local v1, "helper":Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;
    :goto_0
    sput-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    .line 109
    const-class v2, Ljava/util/concurrent/locks/LockSupport;

    .line 113
    .local v2, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 114
    sget-object v3, Landroidx/concurrent/futures/AbstractResolvableFuture;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "SafeAtomicHelper is broken!"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    .end local v0    # "thrownAtomicReferenceFieldUpdaterFailure":Ljava/lang/Throwable;
    .end local v1    # "helper":Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;
    .end local v2    # "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->NULL:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 317
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    return-void
.end method

.method private addDoneString(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .line 1023
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    const-string v0, "]"

    :try_start_0
    invoke-static {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    .line 1024
    .local v1, "value":Ljava/lang/Object;, "TV;"
    const-string v2, "SUCCESS, result=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->userObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1031
    nop

    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_1

    .line 1029
    :catch_0
    move-exception v0

    .line 1030
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "UNKNOWN, cause=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " thrown from get()]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1027
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 1028
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    const-string v1, "CANCELLED"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    goto :goto_0

    .line 1025
    :catch_2
    move-exception v1

    .line 1026
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    const-string v2, "FAILURE, cause=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :goto_0
    nop

    .line 1032
    :goto_1
    return-void
.end method

.method private static cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "cause"    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1192
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 1193
    .local v0, "exception":Ljava/util/concurrent/CancellationException;
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1194
    return-object v0
.end method

.method static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1200
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 1203
    return-object p0

    .line 1201
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private clearListeners(Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;)Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;
    .locals 3
    .param p1, "onto"    # Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    .line 960
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    :goto_0
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->listeners:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    .line 961
    .local v0, "head":Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    sget-object v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    invoke-virtual {v1, p0, v0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casListeners(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 962
    move-object v1, p1

    .line 963
    .local v1, "reversedList":Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;
    :goto_1
    if-eqz v0, :cond_0

    .line 964
    move-object v2, v0

    .line 965
    .local v2, "tmp":Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;
    iget-object v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->next:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    .line 966
    iput-object v1, v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->next:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    .line 967
    move-object v1, v2

    .line 968
    .end local v2    # "tmp":Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;
    goto :goto_1

    .line 969
    :cond_0
    return-object v1

    .line 961
    .end local v1    # "reversedList":Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;
    :cond_1
    goto :goto_0
.end method

.method static complete(Landroidx/concurrent/futures/AbstractResolvableFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/AbstractResolvableFuture<",
            "*>;)V"
        }
    .end annotation

    .line 868
    .local p0, "future":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<*>;"
    const/4 v0, 0x0

    .line 871
    .local v0, "next":Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;
    :goto_0
    invoke-direct {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->releaseWaiters()V

    .line 877
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->afterDone()V

    .line 879
    invoke-direct {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->clearListeners(Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;)Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    move-result-object v0

    .line 880
    const/4 p0, 0x0

    .line 881
    :goto_1
    if-eqz v0, :cond_2

    .line 882
    move-object v1, v0

    .line 883
    .local v1, "curr":Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;
    iget-object v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->next:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    .line 884
    iget-object v2, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->task:Ljava/lang/Runnable;

    .line 885
    .local v2, "task":Ljava/lang/Runnable;
    instance-of v3, v2, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    if-eqz v3, :cond_1

    .line 886
    move-object v3, v2

    check-cast v3, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    .line 893
    .local v3, "setFuture":Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture<*>;"
    iget-object p0, v3, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;->owner:Landroidx/concurrent/futures/AbstractResolvableFuture;

    .line 894
    iget-object v4, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    if-ne v4, v3, :cond_0

    .line 895
    iget-object v4, v3, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v4}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v4

    .line 896
    .local v4, "valueToSet":Ljava/lang/Object;
    sget-object v5, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v5, p0, v3, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 897
    goto :goto_0

    .line 901
    .end local v3    # "setFuture":Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture<*>;"
    .end local v4    # "valueToSet":Ljava/lang/Object;
    :cond_0
    goto :goto_2

    .line 902
    :cond_1
    iget-object v3, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v2, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 904
    .end local v1    # "curr":Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;
    .end local v2    # "task":Ljava/lang/Runnable;
    :goto_2
    goto :goto_1

    .line 907
    :cond_2
    return-void
.end method

.method private static executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 5
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 1053
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1063
    goto :goto_0

    .line 1054
    :catch_0
    move-exception v0

    .line 1058
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RuntimeException while executing runnable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with executor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1064
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 513
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    instance-of v0, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    if-nez v0, :cond_2

    .line 517
    instance-of v0, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    if-nez v0, :cond_1

    .line 519
    sget-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->NULL:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 520
    const/4 v0, 0x0

    return-object v0

    .line 523
    :cond_0
    move-object v0, p1

    .line 524
    .local v0, "asV":Ljava/lang/Object;, "TV;"
    return-object v0

    .line 518
    .end local v0    # "asV":Ljava/lang/Object;, "TV;"
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    move-object v1, p1

    check-cast v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    iget-object v1, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 514
    :cond_2
    move-object v0, p1

    check-cast v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    iget-object v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->cause:Ljava/lang/Throwable;

    const-string v1, "Task was cancelled."

    invoke-static {v1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    throw v0
.end method

.method static getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 800
    .local p0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    instance-of v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 806
    move-object v0, p0

    check-cast v0, Landroidx/concurrent/futures/AbstractResolvableFuture;

    iget-object v0, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 807
    .local v0, "v":Ljava/lang/Object;
    instance-of v2, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    if-eqz v2, :cond_1

    .line 811
    move-object v2, v0

    check-cast v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    .line 812
    .local v2, "c":Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;
    iget-boolean v3, v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->wasInterrupted:Z

    if-eqz v3, :cond_1

    .line 813
    iget-object v3, v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->cause:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    new-instance v3, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    iget-object v4, v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->cause:Ljava/lang/Throwable;

    invoke-direct {v3, v1, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    sget-object v3, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    :goto_0
    move-object v0, v3

    .line 817
    .end local v2    # "c":Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;
    :cond_1
    return-object v0

    .line 819
    .end local v0    # "v":Ljava/lang/Object;
    :cond_2
    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v0

    .line 821
    .local v0, "wasCancelled":Z
    sget-boolean v2, Landroidx/concurrent/futures/AbstractResolvableFuture;->GENERATE_CANCELLATION_CAUSES:Z

    xor-int/lit8 v2, v2, 0x1

    and-int/2addr v2, v0

    if-eqz v2, :cond_3

    .line 822
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    return-object v1

    .line 826
    :cond_3
    :try_start_0
    invoke-static {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    .line 827
    .local v2, "v":Ljava/lang/Object;
    if-nez v2, :cond_4

    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->NULL:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    return-object v1

    .line 840
    .end local v2    # "v":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 841
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    invoke-direct {v2, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object v2

    .line 830
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 831
    .local v2, "cancellation":Ljava/util/concurrent/CancellationException;
    if-nez v0, :cond_5

    .line 832
    new-instance v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    .line 839
    :cond_5
    new-instance v3, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    invoke-direct {v3, v1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    return-object v3

    .line 828
    .end local v2    # "cancellation":Ljava/util/concurrent/CancellationException;
    :catch_2
    move-exception v1

    .line 829
    .local v1, "exception":Ljava/util/concurrent/ExecutionException;
    new-instance v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private static getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 849
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    const/4 v0, 0x0

    .line 853
    .local v0, "interrupted":Z
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 859
    if-eqz v0, :cond_0

    .line 860
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 853
    :cond_0
    return-object v1

    .line 859
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 860
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    throw v1

    .line 854
    :catch_0
    move-exception v1

    .line 855
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 856
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private releaseWaiters()V
    .locals 3

    .line 939
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    :goto_0
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->waiters:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    .line 940
    .local v0, "head":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    sget-object v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    invoke-virtual {v1, p0, v0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casWaiters(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 941
    move-object v1, v0

    .local v1, "currentWaiter":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    :goto_1
    if-eqz v1, :cond_0

    .line 943
    invoke-virtual {v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->unpark()V

    .line 942
    iget-object v1, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->next:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    goto :goto_1

    .line 945
    .end local v1    # "currentWaiter":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    :cond_0
    return-void

    .line 940
    :cond_1
    goto :goto_0
.end method

.method private removeWaiter(Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)V
    .locals 4
    .param p1, "node"    # Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    .line 171
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->thread:Ljava/lang/Thread;

    .line 174
    :goto_0
    const/4 v0, 0x0

    .line 175
    .local v0, "pred":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    iget-object v1, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->waiters:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    .line 176
    .local v1, "curr":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    sget-object v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    if-ne v1, v2, :cond_0

    .line 177
    return-void

    .line 180
    :cond_0
    :goto_1
    if-eqz v1, :cond_4

    .line 181
    iget-object v2, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->next:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    .line 182
    .local v2, "succ":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    iget-object v3, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_1

    .line 183
    move-object v0, v1

    goto :goto_2

    .line 184
    :cond_1
    if-eqz v0, :cond_2

    .line 185
    iput-object v2, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->next:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    .line 186
    iget-object v3, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->thread:Ljava/lang/Thread;

    if-nez v3, :cond_3

    .line 188
    goto :goto_0

    .line 190
    :cond_2
    sget-object v3, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v3, p0, v1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casWaiters(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 192
    goto :goto_0

    .line 194
    :cond_3
    :goto_2
    move-object v1, v2

    goto :goto_1

    .line 198
    .end local v0    # "pred":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    .end local v1    # "curr":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    .end local v2    # "succ":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    :cond_4
    return-void
.end method

.method private userObjectToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 1041
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    if-ne p1, p0, :cond_0

    .line 1042
    const-string v0, "this future"

    return-object v0

    .line 1044
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "listener"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 653
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    invoke-static {p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    invoke-static {p2}, Landroidx/concurrent/futures/AbstractResolvableFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->listeners:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    .line 656
    .local v0, "oldHead":Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    if-eq v0, v1, :cond_2

    .line 657
    new-instance v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    invoke-direct {v1, p1, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 659
    .local v1, "newNode":Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;
    :cond_0
    iput-object v0, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->next:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    .line 660
    sget-object v2, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v2, p0, v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casListeners(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 661
    return-void

    .line 663
    :cond_1
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->listeners:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    .line 664
    sget-object v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;

    if-ne v0, v2, :cond_0

    .line 668
    .end local v1    # "newNode":Landroidx/concurrent/futures/AbstractResolvableFuture$Listener;
    :cond_2
    invoke-static {p1, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 669
    return-void
.end method

.method protected afterDone()V
    .locals 0

    .line 922
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    return-void
.end method

.method public final cancel(Z)Z
    .locals 10
    .param p1, "mayInterruptIfRunning"    # Z

    .line 555
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 556
    .local v0, "localValue":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 557
    .local v1, "rValue":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    instance-of v5, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    or-int/2addr v4, v5

    if-eqz v4, :cond_9

    .line 560
    sget-boolean v4, Landroidx/concurrent/futures/AbstractResolvableFuture;->GENERATE_CANCELLATION_CAUSES:Z

    if-eqz v4, :cond_1

    new-instance v4, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    new-instance v5, Ljava/util/concurrent/CancellationException;

    const-string v6, "Future.cancel() was called."

    invoke-direct {v5, v6}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, p1, v5}, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    sget-object v4, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->CAUSELESS_INTERRUPTED:Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    goto :goto_1

    :cond_2
    sget-object v4, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->CAUSELESS_CANCELLED:Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    .line 568
    .local v4, "valueToSet":Ljava/lang/Object;
    :goto_1
    move-object v5, p0

    .line 570
    .local v5, "abstractFuture":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<*>;"
    :cond_3
    :goto_2
    sget-object v6, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v6, v5, v0, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 571
    const/4 v1, 0x1

    .line 574
    if-eqz p1, :cond_4

    .line 575
    invoke-virtual {v5}, Landroidx/concurrent/futures/AbstractResolvableFuture;->interruptTask()V

    .line 577
    :cond_4
    invoke-static {v5}, Landroidx/concurrent/futures/AbstractResolvableFuture;->complete(Landroidx/concurrent/futures/AbstractResolvableFuture;)V

    .line 578
    instance-of v6, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    if-eqz v6, :cond_9

    .line 582
    move-object v6, v0

    check-cast v6, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    iget-object v6, v6, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 583
    .local v6, "futureToPropagateTo":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    instance-of v7, v6, Landroidx/concurrent/futures/AbstractResolvableFuture;

    if-eqz v7, :cond_7

    .line 592
    move-object v7, v6

    check-cast v7, Landroidx/concurrent/futures/AbstractResolvableFuture;

    .line 594
    .local v7, "trusted":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<*>;"
    iget-object v0, v7, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 595
    if-nez v0, :cond_5

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :goto_3
    instance-of v9, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    or-int/2addr v8, v9

    if-eqz v8, :cond_6

    .line 596
    move-object v5, v7

    .line 597
    goto :goto_2

    .line 599
    .end local v7    # "trusted":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<*>;"
    :cond_6
    goto :goto_4

    .line 601
    :cond_7
    invoke-interface {v6, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 603
    .end local v6    # "futureToPropagateTo":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    :goto_4
    goto :goto_5

    .line 607
    :cond_8
    iget-object v0, v5, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 608
    instance-of v6, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    if-nez v6, :cond_3

    .line 617
    .end local v4    # "valueToSet":Ljava/lang/Object;
    .end local v5    # "abstractFuture":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<*>;"
    :cond_9
    :goto_5
    return v1
.end method

.method public final get()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 470
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_a

    .line 473
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 474
    .local v0, "localValue":Ljava/lang/Object;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    instance-of v4, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 475
    invoke-direct {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 477
    :cond_2
    iget-object v3, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->waiters:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    .line 478
    .local v3, "oldHead":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    sget-object v4, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    if-eq v3, v4, :cond_9

    .line 479
    new-instance v4, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    invoke-direct {v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;-><init>()V

    .line 481
    .local v4, "node":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    :cond_3
    invoke-virtual {v4, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->setNext(Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)V

    .line 482
    sget-object v5, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v5, p0, v3, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casWaiters(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 485
    :cond_4
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 488
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_7

    .line 495
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 496
    if-eqz v0, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    instance-of v6, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    if-nez v6, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    .line 497
    invoke-direct {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 489
    :cond_7
    invoke-direct {p0, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture;->removeWaiter(Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)V

    .line 490
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 501
    :cond_8
    iget-object v3, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->waiters:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    .line 502
    sget-object v5, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    if-ne v3, v5, :cond_3

    .line 506
    .end local v4    # "node":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    :cond_9
    iget-object v1, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    invoke-direct {p0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 471
    .end local v0    # "localValue":Ljava/lang/Object;
    .end local v3    # "oldHead":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    :cond_a
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    return-void
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 27
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 359
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 360
    .local v4, "timeoutNanos":J
    move-wide v6, v4

    .line 361
    .local v6, "remainingNanos":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v8

    if-nez v8, :cond_19

    .line 364
    iget-object v8, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 365
    .local v8, "localValue":Ljava/lang/Object;
    if-eqz v8, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    instance-of v12, v8, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    if-nez v12, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    and-int/2addr v11, v12

    if-eqz v11, :cond_2

    .line 366
    invoke-direct {v0, v8}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    return-object v9

    .line 369
    :cond_2
    const-wide/16 v11, 0x0

    cmp-long v13, v6, v11

    if-lez v13, :cond_3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    add-long/2addr v13, v6

    goto :goto_2

    :cond_3
    move-wide v13, v11

    .line 371
    .local v13, "endNanos":J
    :goto_2
    const-wide/16 v15, 0x3e8

    cmp-long v17, v6, v15

    if-ltz v17, :cond_c

    .line 372
    iget-object v9, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->waiters:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    .line 373
    .local v9, "oldHead":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    sget-object v10, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    if-eq v9, v10, :cond_b

    .line 374
    new-instance v10, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    invoke-direct {v10}, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;-><init>()V

    .line 376
    .local v10, "node":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    :goto_3
    invoke-virtual {v10, v9}, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->setNext(Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)V

    .line 377
    sget-object v11, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v11, v0, v9, v10}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casWaiters(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 379
    :cond_4
    invoke-static {v0, v6, v7}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 382
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v11

    if-nez v11, :cond_8

    .line 389
    iget-object v8, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 390
    if-eqz v8, :cond_5

    const/4 v11, 0x1

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    :goto_4
    instance-of v12, v8, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    if-nez v12, :cond_6

    const/4 v12, 0x1

    goto :goto_5

    :cond_6
    const/4 v12, 0x0

    :goto_5
    and-int/2addr v11, v12

    if-eqz v11, :cond_7

    .line 391
    invoke-direct {v0, v8}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    return-object v11

    .line 395
    :cond_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long v6, v13, v11

    .line 396
    cmp-long v11, v6, v15

    if-gez v11, :cond_4

    .line 399
    invoke-direct {v0, v10}, Landroidx/concurrent/futures/AbstractResolvableFuture;->removeWaiter(Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)V

    .line 400
    goto :goto_7

    .line 383
    :cond_8
    invoke-direct {v0, v10}, Landroidx/concurrent/futures/AbstractResolvableFuture;->removeWaiter(Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;)V

    .line 384
    new-instance v11, Ljava/lang/InterruptedException;

    invoke-direct {v11}, Ljava/lang/InterruptedException;-><init>()V

    throw v11

    .line 404
    :cond_9
    iget-object v9, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->waiters:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    .line 405
    sget-object v11, Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;->TOMBSTONE:Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;

    if-ne v9, v11, :cond_a

    goto :goto_6

    :cond_a
    const-wide/16 v11, 0x0

    goto :goto_3

    .line 409
    .end local v10    # "node":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    :cond_b
    :goto_6
    iget-object v10, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    invoke-direct {v0, v10}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    return-object v10

    .line 413
    .end local v9    # "oldHead":Landroidx/concurrent/futures/AbstractResolvableFuture$Waiter;
    :cond_c
    :goto_7
    const-wide/16 v9, 0x0

    cmp-long v11, v6, v9

    if-lez v11, :cond_11

    .line 414
    iget-object v8, v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 415
    if-eqz v8, :cond_d

    const/4 v9, 0x1

    goto :goto_8

    :cond_d
    const/4 v9, 0x0

    :goto_8
    instance-of v10, v8, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    if-nez v10, :cond_e

    const/4 v10, 0x1

    goto :goto_9

    :cond_e
    const/4 v10, 0x0

    :goto_9
    and-int/2addr v9, v10

    if-eqz v9, :cond_f

    .line 416
    invoke-direct {v0, v8}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    return-object v9

    .line 418
    :cond_f
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v9

    if-nez v9, :cond_10

    .line 421
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long v6, v13, v9

    goto :goto_7

    .line 419
    :cond_10
    new-instance v9, Ljava/lang/InterruptedException;

    invoke-direct {v9}, Ljava/lang/InterruptedException;-><init>()V

    throw v9

    .line 424
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->toString()Ljava/lang/String;

    move-result-object v9

    .line 425
    .local v9, "futureToString":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 426
    .local v10, "unitString":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Waited "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v15

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v15, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "message":Ljava/lang/String;
    const-wide/16 v15, 0x3e8

    add-long v23, v6, v15

    const-wide/16 v15, 0x0

    cmp-long v11, v23, v15

    if-gez v11, :cond_17

    .line 431
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " (plus "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    neg-long v1, v6

    .line 433
    .local v1, "overWaitNanos":J
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v15, v4

    .end local v4    # "timeoutNanos":J
    .local v15, "timeoutNanos":J
    invoke-virtual {v3, v1, v2, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 434
    .local v4, "overWaitUnits":J
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v23

    move-wide/from16 v25, v6

    .end local v6    # "remainingNanos":J
    .local v25, "remainingNanos":J
    sub-long v6, v1, v23

    .line 435
    .local v6, "overWaitLeftoverNanos":J
    const-wide/16 v19, 0x0

    cmp-long v11, v4, v19

    if-eqz v11, :cond_13

    const-wide/16 v21, 0x3e8

    cmp-long v11, v6, v21

    if-lez v11, :cond_12

    goto :goto_a

    :cond_12
    const/16 v17, 0x0

    goto :goto_b

    :cond_13
    :goto_a
    const/16 v17, 0x1

    :goto_b
    move/from16 v11, v17

    .line 437
    .local v11, "shouldShowExtraNanos":Z
    const-wide/16 v17, 0x0

    cmp-long v19, v4, v17

    if-lez v19, :cond_15

    .line 438
    move-wide/from16 v17, v1

    .end local v1    # "overWaitNanos":J
    .local v17, "overWaitNanos":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    if-eqz v11, :cond_14

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 437
    .end local v17    # "overWaitNanos":J
    .restart local v1    # "overWaitNanos":J
    :cond_15
    move-wide/from16 v17, v1

    .line 444
    .end local v1    # "overWaitNanos":J
    .restart local v17    # "overWaitNanos":J
    :goto_c
    if-eqz v11, :cond_16

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " nanoseconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "delay)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 429
    .end local v11    # "shouldShowExtraNanos":Z
    .end local v15    # "timeoutNanos":J
    .end local v17    # "overWaitNanos":J
    .end local v25    # "remainingNanos":J
    .local v4, "timeoutNanos":J
    .local v6, "remainingNanos":J
    :cond_17
    move-wide v15, v4

    move-wide/from16 v25, v6

    .line 453
    .end local v4    # "timeoutNanos":J
    .end local v6    # "remainingNanos":J
    .restart local v15    # "timeoutNanos":J
    .restart local v25    # "remainingNanos":J
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 454
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " but future completed as timeout expired"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 456
    :cond_18
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    .end local v0    # "message":Ljava/lang/String;
    .end local v8    # "localValue":Ljava/lang/Object;
    .end local v9    # "futureToString":Ljava/lang/String;
    .end local v10    # "unitString":Ljava/lang/String;
    .end local v13    # "endNanos":J
    .end local v15    # "timeoutNanos":J
    .end local v25    # "remainingNanos":J
    .restart local v4    # "timeoutNanos":J
    .restart local v6    # "remainingNanos":J
    :cond_19
    move-wide v15, v4

    .end local v4    # "timeoutNanos":J
    .restart local v15    # "timeoutNanos":J
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    return-void
.end method

.method protected interruptTask()V
    .locals 0

    .line 633
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    return-void
.end method

.method public final isCancelled()Z
    .locals 2

    .line 536
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 537
    .local v0, "localValue":Ljava/lang/Object;
    instance-of v1, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    return v1
.end method

.method public final isDone()Z
    .locals 5

    .line 530
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 531
    .local v0, "localValue":Ljava/lang/Object;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    instance-of v4, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int/2addr v1, v3

    return v1
.end method

.method final maybePropagateCancellationTo(Ljava/util/concurrent/Future;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/Future;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 930
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    .local p1, "related":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->isCancelled()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 931
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->wasInterrupted()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 933
    :cond_1
    return-void
.end method

.method protected pendingToString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1010
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 1011
    .local v0, "localValue":Ljava/lang/Object;
    instance-of v1, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    if-eqz v1, :cond_0

    .line 1012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFuture=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v0

    check-cast v2, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    iget-object v2, v2, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture;->userObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1013
    :cond_0
    instance-of v1, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    .line 1014
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remaining delay=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p0

    check-cast v2, Ljava/util/concurrent/ScheduledFuture;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1015
    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1014
    return-object v1

    .line 1018
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected set(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 685
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    sget-object v0, Landroidx/concurrent/futures/AbstractResolvableFuture;->NULL:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 686
    .local v0, "valueToSet":Ljava/lang/Object;
    :goto_0
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 687
    invoke-static {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->complete(Landroidx/concurrent/futures/AbstractResolvableFuture;)V

    .line 688
    const/4 v1, 0x1

    return v1

    .line 690
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method protected setException(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 710
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    new-instance v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    invoke-static {p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 711
    .local v0, "valueToSet":Ljava/lang/Object;
    sget-object v1, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 712
    invoke-static {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->complete(Landroidx/concurrent/futures/AbstractResolvableFuture;)V

    .line 713
    const/4 v1, 0x1

    return v1

    .line 715
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 746
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    .local p1, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    invoke-static {p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 748
    .local v0, "localValue":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 749
    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 750
    invoke-static {p1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v2

    .line 751
    .local v2, "value":Ljava/lang/Object;
    sget-object v5, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v5, p0, v4, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 752
    invoke-static {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->complete(Landroidx/concurrent/futures/AbstractResolvableFuture;)V

    .line 753
    return v3

    .line 755
    :cond_0
    return v1

    .line 757
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v2, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;

    invoke-direct {v2, p0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;-><init>(Landroidx/concurrent/futures/AbstractResolvableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 758
    .local v2, "valueToSet":Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;
    sget-object v5, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v5, p0, v4, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 763
    :try_start_0
    sget-object v1, Landroidx/concurrent/futures/DirectExecutor;->INSTANCE:Landroidx/concurrent/futures/DirectExecutor;

    invoke-interface {p1, v2, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    goto :goto_1

    .line 764
    :catch_0
    move-exception v1

    .line 771
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    new-instance v4, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    invoke-direct {v4, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 774
    .local v4, "failure":Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;
    goto :goto_0

    .line 772
    .end local v4    # "failure":Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;
    :catch_1
    move-exception v4

    .line 773
    .local v4, "oomMostLikely":Ljava/lang/Throwable;
    sget-object v4, Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;->FALLBACK_INSTANCE:Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;

    .line 777
    .local v4, "failure":Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;
    :goto_0
    sget-object v5, Landroidx/concurrent/futures/AbstractResolvableFuture;->ATOMIC_HELPER:Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;

    invoke-virtual {v5, p0, v2, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$AtomicHelper;->casValue(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 779
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v4    # "failure":Landroidx/concurrent/futures/AbstractResolvableFuture$Failure;
    :goto_1
    return v3

    .line 781
    :cond_2
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 785
    .end local v2    # "valueToSet":Landroidx/concurrent/futures/AbstractResolvableFuture$SetFuture;
    :cond_3
    instance-of v2, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    if-eqz v2, :cond_4

    .line 787
    move-object v2, v0

    check-cast v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    iget-boolean v2, v2, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->wasInterrupted:Z

    invoke-interface {p1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 789
    :cond_4
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 975
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 976
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->isCancelled()Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_0

    .line 977
    const-string v1, "CANCELLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 978
    :cond_0
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 979
    invoke-direct {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addDoneString(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 983
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->pendingToString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 988
    .local v1, "pendingDescription":Ljava/lang/String;
    goto :goto_0

    .line 984
    .end local v1    # "pendingDescription":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 987
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception thrown from implementation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 991
    .local v1, "pendingDescription":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 992
    const-string v3, "PENDING, info=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 993
    :cond_2
    invoke-virtual {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->isDone()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 994
    invoke-direct {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addDoneString(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 996
    :cond_3
    const-string v3, "PENDING"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    .end local v1    # "pendingDescription":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected final wasInterrupted()Z
    .locals 2

    .line 642
    .local p0, "this":Landroidx/concurrent/futures/AbstractResolvableFuture;, "Landroidx/concurrent/futures/AbstractResolvableFuture<TV;>;"
    iget-object v0, p0, Landroidx/concurrent/futures/AbstractResolvableFuture;->value:Ljava/lang/Object;

    .line 643
    .local v0, "localValue":Ljava/lang/Object;
    instance-of v1, v0, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;

    iget-boolean v1, v1, Landroidx/concurrent/futures/AbstractResolvableFuture$Cancellation;->wasInterrupted:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
