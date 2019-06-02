.class public abstract Landroidx/fragment/app/FragmentHostCallback;
.super Landroidx/fragment/app/FragmentContainer;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/FragmentContainer;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

.field private final mHandler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mWindowAnimations:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "handler"    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "windowAnimations"    # I

    .line 62
    .local p0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    invoke-direct {p0}, Landroidx/fragment/app/FragmentContainer;-><init>()V

    .line 49
    new-instance v0, Landroidx/fragment/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 63
    iput-object p1, p0, Landroidx/fragment/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    .line 64
    const-string v0, "context == null"

    invoke-static {p2, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroidx/fragment/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    .line 65
    const-string v0, "handler == null"

    invoke-static {p3, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Landroidx/fragment/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    .line 66
    iput p4, p0, Landroidx/fragment/app/FragmentHostCallback;->mWindowAnimations:I

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "handler"    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "windowAnimations"    # I

    .line 53
    .local p0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/fragment/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 55
    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2
    .param p1, "activity"    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 58
    .local p0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroidx/fragment/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 59
    return-void
.end method


# virtual methods
.method getActivity()Landroid/app/Activity;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 195
    .local p0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroidx/fragment/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 200
    .local p0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroidx/fragment/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 205
    .local p0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroidx/fragment/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 209
    .local p0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fd"    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "writer"    # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "args"    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 80
    .local p0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 185
    .local p0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onGetHost()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 95
    .local p0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Landroidx/fragment/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public onGetWindowAnimations()I
    .locals 1

    .line 179
    .local p0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    iget v0, p0, Landroidx/fragment/app/FragmentHostCallback;->mWindowAnimations:I

    return v0
.end method

.method public onHasView()Z
    .locals 1

    .line 190
    .local p0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onHasWindowAnimations()Z
    .locals 1

    .line 172
    .local p0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onRequestPermissionsFromFragment(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .locals 0
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requestCode"    # I

    .line 158
    .local p0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public onShouldSaveFragmentState(Landroidx/fragment/app/Fragment;)Z
    .locals 1
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 86
    .local p0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 165
    .local p0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onStartActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .param p3, "requestCode"    # I

    .line 119
    .local p0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/FragmentHostCallback;->onStartActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 120
    return-void
.end method

.method public onStartActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 129
    .local p0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 133
    iget-object v0, p0, Landroidx/fragment/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 134
    return-void

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onStartIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 10
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "intent"    # Landroid/content/IntentSender;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .param p8, "options"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 144
    .local p0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    const/4 v0, -0x1

    move v9, p3

    if-ne v9, v0, :cond_0

    .line 148
    move-object v0, p0

    iget-object v1, v0, Landroidx/fragment/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v1 .. v8}, Landroidx/core/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 150
    return-void

    .line 145
    :cond_0
    move-object v0, p0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Starting intent sender with a requestCode requires a FragmentActivity host"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onSupportInvalidateOptionsMenu()V
    .locals 0

    .line 111
    .local p0, "this":Landroidx/fragment/app/FragmentHostCallback;, "Landroidx/fragment/app/FragmentHostCallback<TE;>;"
    return-void
.end method
