.class Lcom/chrisplus/rootmanager/container/Shell$2;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chrisplus/rootmanager/container/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chrisplus/rootmanager/container/Shell;


# direct methods
.method constructor <init>(Lcom/chrisplus/rootmanager/container/Shell;)V
    .locals 0
    .param p1, "this$0"    # Lcom/chrisplus/rootmanager/container/Shell;

    .line 54
    iput-object p1, p0, Lcom/chrisplus/rootmanager/container/Shell$2;->this$0:Lcom/chrisplus/rootmanager/container/Shell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 57
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/chrisplus/rootmanager/container/Shell$2;->this$0:Lcom/chrisplus/rootmanager/container/Shell;

    invoke-static {v1}, Lcom/chrisplus/rootmanager/container/Shell;->access$400(Lcom/chrisplus/rootmanager/container/Shell;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :goto_0
    iget-object v1, p0, Lcom/chrisplus/rootmanager/container/Shell$2;->this$0:Lcom/chrisplus/rootmanager/container/Shell;

    invoke-static {v1, v0}, Lcom/chrisplus/rootmanager/container/Shell;->access$502(Lcom/chrisplus/rootmanager/container/Shell;I)I

    .line 64
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Shell$2;->this$0:Lcom/chrisplus/rootmanager/container/Shell;

    invoke-static {v0}, Lcom/chrisplus/rootmanager/container/Shell;->access$600(Lcom/chrisplus/rootmanager/container/Shell;)Ljava/io/BufferedReader;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chrisplus/rootmanager/container/Shell;->access$700(Lcom/chrisplus/rootmanager/container/Shell;Ljava/io/Reader;)V

    .line 65
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Shell$2;->this$0:Lcom/chrisplus/rootmanager/container/Shell;

    invoke-static {v0}, Lcom/chrisplus/rootmanager/container/Shell;->access$800(Lcom/chrisplus/rootmanager/container/Shell;)Ljava/io/BufferedReader;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chrisplus/rootmanager/container/Shell;->access$700(Lcom/chrisplus/rootmanager/container/Shell;Ljava/io/Reader;)V

    .line 66
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Shell$2;->this$0:Lcom/chrisplus/rootmanager/container/Shell;

    invoke-static {v0}, Lcom/chrisplus/rootmanager/container/Shell;->access$200(Lcom/chrisplus/rootmanager/container/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chrisplus/rootmanager/container/Shell;->access$300(Lcom/chrisplus/rootmanager/container/Shell;Ljava/io/Writer;)V

    .line 67
    goto :goto_1

    .line 63
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 58
    :catch_1
    move-exception v1

    .line 59
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 68
    :goto_1
    return-void

    .line 63
    :goto_2
    iget-object v2, p0, Lcom/chrisplus/rootmanager/container/Shell$2;->this$0:Lcom/chrisplus/rootmanager/container/Shell;

    invoke-static {v2, v0}, Lcom/chrisplus/rootmanager/container/Shell;->access$502(Lcom/chrisplus/rootmanager/container/Shell;I)I

    .line 64
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Shell$2;->this$0:Lcom/chrisplus/rootmanager/container/Shell;

    invoke-static {v0}, Lcom/chrisplus/rootmanager/container/Shell;->access$600(Lcom/chrisplus/rootmanager/container/Shell;)Ljava/io/BufferedReader;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chrisplus/rootmanager/container/Shell;->access$700(Lcom/chrisplus/rootmanager/container/Shell;Ljava/io/Reader;)V

    .line 65
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Shell$2;->this$0:Lcom/chrisplus/rootmanager/container/Shell;

    invoke-static {v0}, Lcom/chrisplus/rootmanager/container/Shell;->access$800(Lcom/chrisplus/rootmanager/container/Shell;)Ljava/io/BufferedReader;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chrisplus/rootmanager/container/Shell;->access$700(Lcom/chrisplus/rootmanager/container/Shell;Ljava/io/Reader;)V

    .line 66
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Shell$2;->this$0:Lcom/chrisplus/rootmanager/container/Shell;

    invoke-static {v0}, Lcom/chrisplus/rootmanager/container/Shell;->access$200(Lcom/chrisplus/rootmanager/container/Shell;)Ljava/io/OutputStreamWriter;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chrisplus/rootmanager/container/Shell;->access$300(Lcom/chrisplus/rootmanager/container/Shell;Ljava/io/Writer;)V

    throw v1

    return-void
.end method
