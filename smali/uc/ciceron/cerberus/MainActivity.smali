.class public Luc/ciceron/cerberus/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field editor:Landroid/content/SharedPreferences$Editor;

.field helper:Luc/ciceron/cerberus/Helper;

.field output:Ljava/lang/String;

.field rd:Luc/ciceron/cerberus/RandomDataGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 14
    new-instance v0, Luc/ciceron/cerberus/Helper;

    invoke-direct {v0}, Luc/ciceron/cerberus/Helper;-><init>()V

    iput-object v0, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    .line 16
    new-instance v0, Luc/ciceron/cerberus/RandomDataGenerator;

    invoke-direct {v0}, Luc/ciceron/cerberus/RandomDataGenerator;-><init>()V

    iput-object v0, p0, Luc/ciceron/cerberus/MainActivity;->rd:Luc/ciceron/cerberus/RandomDataGenerator;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Luc/ciceron/cerberus/MainActivity;->output:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$MainActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "v1"    # Landroid/view/View;

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v1, Luc/ciceron/cerberus/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Luc/ciceron/cerberus/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 37
    return-void
.end method

.method public synthetic lambda$onCreate$1$MainActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "v1"    # Landroid/view/View;

    .line 55
    invoke-virtual {p0}, Luc/ciceron/cerberus/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.tencent.ig"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, v0}, Luc/ciceron/cerberus/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 58
    return-void
.end method

.method public synthetic lambda$onCreate$2$MainActivity(Landroid/widget/TextView;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;Landroid/widget/Button;Landroid/view/View;)V
    .locals 5
    .param p1, "txtLog"    # Landroid/widget/TextView;
    .param p2, "chbxClearData"    # Landroid/widget/CheckBox;
    .param p3, "pref"    # Landroid/content/SharedPreferences;
    .param p4, "config"    # Landroid/content/SharedPreferences;
    .param p5, "bypass_mode"    # Landroid/content/SharedPreferences;
    .param p6, "btnBypass"    # Landroid/widget/Button;
    .param p7, "v1"    # Landroid/view/View;

    .line 61
    iget-object v0, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    const-string v1, "com.tencent.ig"

    invoke-virtual {v0, v1, p0}, Luc/ciceron/cerberus/Helper;->isInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    const-string v2, "<font color=\'red\'>Failed copying libs. Aborting.<strong></strong></font>"

    const-string v3, ""

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    invoke-virtual {v0, v1, p0}, Luc/ciceron/cerberus/Helper;->getLibDir(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "libDir":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    iget-object v1, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    invoke-virtual {p0}, Luc/ciceron/cerberus/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Luc/ciceron/cerberus/Helper;->copyCerberusLibs(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-void

    .line 72
    .end local v0    # "libDir":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v0, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    const-string v1, "com.pubg.krmobile"

    invoke-virtual {v0, v1, p0}, Luc/ciceron/cerberus/Helper;->isInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    iget-object v0, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    invoke-virtual {v0, v1, p0}, Luc/ciceron/cerberus/Helper;->getLibDir(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .restart local v0    # "libDir":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 76
    iget-object v1, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    invoke-virtual {p0}, Luc/ciceron/cerberus/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Luc/ciceron/cerberus/Helper;->copyCerberusLibs(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    goto :goto_1

    .line 78
    :cond_2
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    return-void

    .line 83
    .end local v0    # "libDir":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v0, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    const-string v1, "com.vng.pubgmobile"

    invoke-virtual {v0, v1, p0}, Luc/ciceron/cerberus/Helper;->isInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 84
    iget-object v0, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    invoke-virtual {v0, v1, p0}, Luc/ciceron/cerberus/Helper;->getLibDir(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .restart local v0    # "libDir":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 87
    iget-object v1, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    invoke-virtual {p0}, Luc/ciceron/cerberus/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Luc/ciceron/cerberus/Helper;->copyCerberusLibs(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    goto :goto_2

    .line 89
    :cond_4
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    return-void

    .line 94
    .end local v0    # "libDir":Ljava/lang/String;
    :cond_5
    :goto_2
    iget-object v0, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    invoke-virtual {p0}, Luc/ciceron/cerberus/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Luc/ciceron/cerberus/Helper;->copySplashScreen(Landroid/content/res/AssetManager;)V

    .line 95
    iget-object v0, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    invoke-virtual {p0}, Luc/ciceron/cerberus/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Luc/ciceron/cerberus/Helper;->prepareAssets(Landroid/content/res/AssetManager;)V

    .line 96
    iget-object v0, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    invoke-virtual {v0}, Luc/ciceron/cerberus/Helper;->deleteLdLib()V

    .line 97
    iget-object v0, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    invoke-virtual {v0}, Luc/ciceron/cerberus/Helper;->clearGameDataLite()V

    .line 99
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 100
    iget-object v0, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    invoke-virtual {v0}, Luc/ciceron/cerberus/Helper;->clearGameData()V

    .line 101
    iget-object v0, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    invoke-virtual {v0}, Luc/ciceron/cerberus/Helper;->resetGoogleAd()V

    .line 104
    :cond_6
    iget-object v0, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    invoke-virtual {v0}, Luc/ciceron/cerberus/Helper;->deleteGenyd()V

    .line 106
    new-instance v0, Luc/ciceron/cerberus/fBuildProp;

    invoke-direct {v0}, Luc/ciceron/cerberus/fBuildProp;-><init>()V

    .line 107
    .local v0, "b":Luc/ciceron/cerberus/fBuildProp;
    invoke-virtual {v0, p3}, Luc/ciceron/cerberus/fBuildProp;->generateBuildProp(Landroid/content/SharedPreferences;)V

    .line 108
    invoke-virtual {v0, p3}, Luc/ciceron/cerberus/fBuildProp;->changeBuildProp(Landroid/content/SharedPreferences;)V

    .line 110
    invoke-interface {p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Luc/ciceron/cerberus/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 111
    iget-object v1, p0, Luc/ciceron/cerberus/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x1

    const-string v3, "bypassed"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 112
    iget-object v1, p0, Luc/ciceron/cerberus/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Luc/ciceron/cerberus/MainActivity;->rd:Luc/ciceron/cerberus/RandomDataGenerator;

    invoke-virtual {v3}, Luc/ciceron/cerberus/RandomDataGenerator;->randomA()Ljava/lang/String;

    move-result-object v3

    const-string v4, "A"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    iget-object v1, p0, Luc/ciceron/cerberus/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Luc/ciceron/cerberus/MainActivity;->rd:Luc/ciceron/cerberus/RandomDataGenerator;

    invoke-virtual {v3}, Luc/ciceron/cerberus/RandomDataGenerator;->randomI()Ljava/lang/String;

    move-result-object v3

    const-string v4, "I"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    iget-object v1, p0, Luc/ciceron/cerberus/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Luc/ciceron/cerberus/MainActivity;->rd:Luc/ciceron/cerberus/RandomDataGenerator;

    invoke-virtual {v3}, Luc/ciceron/cerberus/RandomDataGenerator;->randomS()Ljava/lang/String;

    move-result-object v3

    const-string v4, "S"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    iget-object v1, p0, Luc/ciceron/cerberus/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Luc/ciceron/cerberus/MainActivity;->rd:Luc/ciceron/cerberus/RandomDataGenerator;

    invoke-virtual {v3}, Luc/ciceron/cerberus/RandomDataGenerator;->randomM()Ljava/lang/String;

    move-result-object v3

    const-string v4, "M"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 116
    iget-object v1, p0, Luc/ciceron/cerberus/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Luc/ciceron/cerberus/MainActivity;->rd:Luc/ciceron/cerberus/RandomDataGenerator;

    invoke-virtual {v3}, Luc/ciceron/cerberus/RandomDataGenerator;->randomW()Ljava/lang/String;

    move-result-object v3

    const-string v4, "W"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 117
    iget-object v1, p0, Luc/ciceron/cerberus/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Luc/ciceron/cerberus/MainActivity;->rd:Luc/ciceron/cerberus/RandomDataGenerator;

    invoke-virtual {v3}, Luc/ciceron/cerberus/RandomDataGenerator;->randomK()Ljava/lang/String;

    move-result-object v3

    const-string v4, "K"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 118
    iget-object v1, p0, Luc/ciceron/cerberus/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 120
    invoke-interface {p5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Luc/ciceron/cerberus/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 121
    iget-object v1, p0, Luc/ciceron/cerberus/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v3, 0x0

    const-string v4, "classic"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 122
    iget-object v1, p0, Luc/ciceron/cerberus/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "experimental"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 123
    iget-object v1, p0, Luc/ciceron/cerberus/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 125
    const-string v1, "Succesfully bypassed.<br>"

    iput-object v1, p0, Luc/ciceron/cerberus/MainActivity;->output:Ljava/lang/String;

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Luc/ciceron/cerberus/MainActivity;->output:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<font color=\'red\'><strong>Please reboot the emu manually.</strong></font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Luc/ciceron/cerberus/MainActivity;->output:Ljava/lang/String;

    .line 128
    iget-object v1, p0, Luc/ciceron/cerberus/MainActivity;->output:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    const v1, 0x7f070064

    invoke-virtual {p6, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 130
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 21
    move-object/from16 v8, p0

    invoke-virtual/range {p0 .. p0}, Luc/ciceron/cerberus/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "phone"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 22
    .local v9, "pref":Landroid/content/SharedPreferences;
    invoke-virtual/range {p0 .. p0}, Luc/ciceron/cerberus/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "config"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 23
    .local v10, "config":Landroid/content/SharedPreferences;
    invoke-virtual/range {p0 .. p0}, Luc/ciceron/cerberus/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "uc.ciceron.cerberus_preferences"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 25
    .local v11, "bypass_mode":Landroid/content/SharedPreferences;
    invoke-super/range {p0 .. p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f0c001c

    invoke-virtual {v8, v0}, Luc/ciceron/cerberus/MainActivity;->setContentView(I)V

    .line 28
    const v0, 0x7f0900d6

    invoke-virtual {v8, v0}, Luc/ciceron/cerberus/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    .line 29
    .local v12, "txtLog":Landroid/widget/TextView;
    const v0, 0x7f090047

    invoke-virtual {v8, v0}, Luc/ciceron/cerberus/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/Button;

    .line 30
    .local v13, "btnBypass":Landroid/widget/Button;
    const v0, 0x7f090049

    invoke-virtual {v8, v0}, Luc/ciceron/cerberus/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/Button;

    .line 31
    .local v14, "btnRunPUBGM":Landroid/widget/Button;
    const v0, 0x7f090052

    invoke-virtual {v8, v0}, Luc/ciceron/cerberus/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/CheckBox;

    .line 32
    .local v15, "chbxClearData":Landroid/widget/CheckBox;
    const v0, 0x7f0900af

    invoke-virtual {v8, v0}, Luc/ciceron/cerberus/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/Button;

    .line 34
    .local v7, "settingsBtn":Landroid/widget/Button;
    new-instance v0, Luc/ciceron/cerberus/-$$Lambda$MainActivity$q5Z2BVc4UwKAmfAsfwjnBffbtek;

    invoke-direct {v0, v8}, Luc/ciceron/cerberus/-$$Lambda$MainActivity$q5Z2BVc4UwKAmfAsfwjnBffbtek;-><init>(Luc/ciceron/cerberus/MainActivity;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v0, v8, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    invoke-virtual {v0}, Luc/ciceron/cerberus/Helper;->testHook()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 40
    const-string v0, "<font color=\'red\'><strong>Module is not working. Make sure Xposed was correctly installed and the module is activated! Aborting...</strong></font>"

    iput-object v0, v8, Luc/ciceron/cerberus/MainActivity;->output:Ljava/lang/String;

    .line 41
    iget-object v0, v8, Luc/ciceron/cerberus/MainActivity;->output:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    const v0, 0x7f070061

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 43
    invoke-virtual {v13, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 44
    return-void

    .line 47
    :cond_0
    const-string v0, "<font color=\'#228B22\'><strong>Module is working. You can run PUBG MOBILE</strong></font>"

    iput-object v0, v8, Luc/ciceron/cerberus/MainActivity;->output:Ljava/lang/String;

    .line 48
    iget-object v0, v8, Luc/ciceron/cerberus/MainActivity;->output:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const-string v0, "bypassed"

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    const v0, 0x7f070064

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 54
    :cond_1
    new-instance v0, Luc/ciceron/cerberus/-$$Lambda$MainActivity$aV1SUwEosNdPvjtzi2ZN1TDMuXM;

    invoke-direct {v0, v8}, Luc/ciceron/cerberus/-$$Lambda$MainActivity$aV1SUwEosNdPvjtzi2ZN1TDMuXM;-><init>(Luc/ciceron/cerberus/MainActivity;)V

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    new-instance v6, Luc/ciceron/cerberus/-$$Lambda$MainActivity$v7hvqoUhqw7OA5Xcf_BjvZyqFPo;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v15

    move-object v4, v9

    move-object v5, v10

    move-object v8, v6

    move-object v6, v11

    move-object/from16 v16, v7

    .end local v7    # "settingsBtn":Landroid/widget/Button;
    .local v16, "settingsBtn":Landroid/widget/Button;
    move-object v7, v13

    invoke-direct/range {v0 .. v7}, Luc/ciceron/cerberus/-$$Lambda$MainActivity$v7hvqoUhqw7OA5Xcf_BjvZyqFPo;-><init>(Luc/ciceron/cerberus/MainActivity;Landroid/widget/TextView;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;Landroid/widget/Button;)V

    invoke-virtual {v13, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-void
.end method
