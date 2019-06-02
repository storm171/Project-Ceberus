.class Lspencerstudios/com/ezdialoglib/EZDialog$Builder$1;
.super Ljava/lang/Object;
.source "EZDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lspencerstudios/com/ezdialoglib/EZDialog$Builder;

.field final synthetic val$dialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method constructor <init>(Lspencerstudios/com/ezdialoglib/EZDialog$Builder;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lspencerstudios/com/ezdialoglib/EZDialog$Builder;

    .line 256
    iput-object p1, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder$1;->this$0:Lspencerstudios/com/ezdialoglib/EZDialog$Builder;

    iput-object p2, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder$1;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 259
    iget-object v0, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder$1;->this$0:Lspencerstudios/com/ezdialoglib/EZDialog$Builder;

    invoke-static {v0}, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->access$000(Lspencerstudios/com/ezdialoglib/EZDialog$Builder;)Lspencerstudios/com/ezdialoglib/EZDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lspencerstudios/com/ezdialoglib/EZDialogListener;->OnClick()V

    .line 260
    iget-object v0, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder$1;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 261
    return-void
.end method
