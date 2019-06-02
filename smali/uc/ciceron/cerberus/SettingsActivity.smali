.class public Luc/ciceron/cerberus/SettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luc/ciceron/cerberus/SettingsActivity$SettingsFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic lambda$null$0()V
    .locals 0

    .line 41
    return-void
.end method

.method static synthetic lambda$null$2()V
    .locals 0

    .line 51
    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$1$SettingsActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 36
    new-instance v0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;

    invoke-direct {v0, p0}, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 37
    const-string v1, "Disclaimer"

    invoke-virtual {v0, v1}, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->setTitle(Ljava/lang/String;)Lspencerstudios/com/ezdialoglib/EZDialog$Builder;

    move-result-object v0

    .line 38
    const-string v1, "This software is provided AS IS without warranty of any kind. The author is not responsible for any bugs, errors, bans that may occur during your gameplay.<br><br>USE AT YOUR OWN RISK!"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->setMessage(Ljava/lang/String;)Lspencerstudios/com/ezdialoglib/EZDialog$Builder;

    move-result-object v0

    .line 39
    const-string v1, "okay"

    invoke-virtual {v0, v1}, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->setNeutralBtnText(Ljava/lang/String;)Lspencerstudios/com/ezdialoglib/EZDialog$Builder;

    move-result-object v0

    .line 40
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->setCancelableOnTouchOutside(Z)Lspencerstudios/com/ezdialoglib/EZDialog$Builder;

    move-result-object v0

    sget-object v1, Luc/ciceron/cerberus/-$$Lambda$SettingsActivity$YZVOZ8ZUiWa12MTMCcAbhSEfxsI;->INSTANCE:Luc/ciceron/cerberus/-$$Lambda$SettingsActivity$YZVOZ8ZUiWa12MTMCcAbhSEfxsI;

    .line 41
    invoke-virtual {v0, v1}, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->OnNeutralClicked(Lspencerstudios/com/ezdialoglib/EZDialogListener;)Lspencerstudios/com/ezdialoglib/EZDialog$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->build()V

    .line 43
    return-void
.end method

.method public synthetic lambda$onCreate$3$SettingsActivity(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 46
    new-instance v0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;

    invoke-direct {v0, p0}, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 47
    const-string v1, "About"

    invoke-virtual {v0, v1}, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->setTitle(Ljava/lang/String;)Lspencerstudios/com/ezdialoglib/EZDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    invoke-virtual {p0}, Luc/ciceron/cerberus/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<br>Developed by: ciceron<br><br>The current version is completely FREE, if you\'ve paid for it, then you\'ve been scammed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->setMessage(Ljava/lang/String;)Lspencerstudios/com/ezdialoglib/EZDialog$Builder;

    move-result-object v0

    .line 49
    const-string v1, "close"

    invoke-virtual {v0, v1}, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->setNeutralBtnText(Ljava/lang/String;)Lspencerstudios/com/ezdialoglib/EZDialog$Builder;

    move-result-object v0

    .line 50
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->setCancelableOnTouchOutside(Z)Lspencerstudios/com/ezdialoglib/EZDialog$Builder;

    move-result-object v0

    sget-object v1, Luc/ciceron/cerberus/-$$Lambda$SettingsActivity$2wqIde2FIxPU1u2b1WoOGraDztE;->INSTANCE:Luc/ciceron/cerberus/-$$Lambda$SettingsActivity$2wqIde2FIxPU1u2b1WoOGraDztE;

    .line 51
    invoke-virtual {v0, v1}, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->OnNeutralClicked(Lspencerstudios/com/ezdialoglib/EZDialogListener;)Lspencerstudios/com/ezdialoglib/EZDialog$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->build()V

    .line 53
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 21
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f0c0045

    invoke-virtual {p0, v0}, Luc/ciceron/cerberus/SettingsActivity;->setContentView(I)V

    .line 23
    invoke-virtual {p0}, Luc/ciceron/cerberus/SettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Luc/ciceron/cerberus/SettingsActivity$SettingsFragment;

    invoke-direct {v1}, Luc/ciceron/cerberus/SettingsActivity$SettingsFragment;-><init>()V

    .line 25
    const v2, 0x7f0900ae

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 27
    invoke-virtual {p0}, Luc/ciceron/cerberus/SettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 28
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    if-eqz v0, :cond_0

    .line 29
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 32
    :cond_0
    const v1, 0x7f090048

    invoke-virtual {p0, v1}, Luc/ciceron/cerberus/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 33
    .local v1, "btnDisclairmer":Landroid/widget/Button;
    const v2, 0x7f090046

    invoke-virtual {p0, v2}, Luc/ciceron/cerberus/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 35
    .local v2, "btnAbout":Landroid/widget/Button;
    new-instance v3, Luc/ciceron/cerberus/-$$Lambda$SettingsActivity$ys449Jzrw5Sjab1Q_HgYnOexkbA;

    invoke-direct {v3, p0}, Luc/ciceron/cerberus/-$$Lambda$SettingsActivity$ys449Jzrw5Sjab1Q_HgYnOexkbA;-><init>(Luc/ciceron/cerberus/SettingsActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    new-instance v3, Luc/ciceron/cerberus/-$$Lambda$SettingsActivity$oB8qSPkmZI74vVtKq3UYCOTut1Q;

    invoke-direct {v3, p0}, Luc/ciceron/cerberus/-$$Lambda$SettingsActivity$oB8qSPkmZI74vVtKq3UYCOTut1Q;-><init>(Luc/ciceron/cerberus/SettingsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 90
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 95
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 92
    :cond_0
    invoke-virtual {p0}, Luc/ciceron/cerberus/SettingsActivity;->finish()V

    .line 93
    const/4 v0, 0x1

    return v0
.end method
