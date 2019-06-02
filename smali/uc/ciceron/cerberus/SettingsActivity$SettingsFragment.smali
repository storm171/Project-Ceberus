.class public Luc/ciceron/cerberus/SettingsActivity$SettingsFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luc/ciceron/cerberus/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCreatePreferences$0(Landroidx/preference/SwitchPreferenceCompat;Landroidx/preference/SwitchPreferenceCompat;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "switchClassic"    # Landroidx/preference/SwitchPreferenceCompat;
    .param p1, "switchExperimental"    # Landroidx/preference/SwitchPreferenceCompat;
    .param p2, "preference"    # Landroidx/preference/Preference;
    .param p3, "o"    # Ljava/lang/Object;

    .line 66
    invoke-virtual {p0}, Landroidx/preference/SwitchPreferenceCompat;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p1, v1}, Landroidx/preference/SwitchPreferenceCompat;->setChecked(Z)V

    goto :goto_0

    .line 69
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/SwitchPreferenceCompat;->setChecked(Z)V

    .line 71
    :goto_0
    return v1
.end method

.method static synthetic lambda$onCreatePreferences$1(Landroidx/preference/SwitchPreferenceCompat;Landroidx/preference/SwitchPreferenceCompat;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "switchExperimental"    # Landroidx/preference/SwitchPreferenceCompat;
    .param p1, "switchClassic"    # Landroidx/preference/SwitchPreferenceCompat;
    .param p2, "preference"    # Landroidx/preference/Preference;
    .param p3, "o"    # Ljava/lang/Object;

    .line 77
    invoke-virtual {p0}, Landroidx/preference/SwitchPreferenceCompat;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p1, v1}, Landroidx/preference/SwitchPreferenceCompat;->setChecked(Z)V

    goto :goto_0

    .line 80
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/SwitchPreferenceCompat;->setChecked(Z)V

    .line 82
    :goto_0
    return v1
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .line 59
    const/high16 v0, 0x7f120000

    invoke-virtual {p0, v0, p2}, Luc/ciceron/cerberus/SettingsActivity$SettingsFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 61
    const-string v0, "classic"

    invoke-virtual {p0, v0}, Luc/ciceron/cerberus/SettingsActivity$SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    .line 62
    .local v0, "switchClassic":Landroidx/preference/SwitchPreferenceCompat;
    const-string v1, "experimental"

    invoke-virtual {p0, v1}, Luc/ciceron/cerberus/SettingsActivity$SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreferenceCompat;

    .line 64
    .local v1, "switchExperimental":Landroidx/preference/SwitchPreferenceCompat;
    if-eqz v0, :cond_0

    .line 65
    new-instance v2, Luc/ciceron/cerberus/-$$Lambda$SettingsActivity$SettingsFragment$TJNroVdoCqDgbBLRs6E8X7A3p1c;

    invoke-direct {v2, v0, v1}, Luc/ciceron/cerberus/-$$Lambda$SettingsActivity$SettingsFragment$TJNroVdoCqDgbBLRs6E8X7A3p1c;-><init>(Landroidx/preference/SwitchPreferenceCompat;Landroidx/preference/SwitchPreferenceCompat;)V

    invoke-virtual {v0, v2}, Landroidx/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 75
    :cond_0
    if-eqz v1, :cond_1

    .line 76
    new-instance v2, Luc/ciceron/cerberus/-$$Lambda$SettingsActivity$SettingsFragment$Jh7hvnXqfziVmOipUi_FQmJ9Wuc;

    invoke-direct {v2, v1, v0}, Luc/ciceron/cerberus/-$$Lambda$SettingsActivity$SettingsFragment$Jh7hvnXqfziVmOipUi_FQmJ9Wuc;-><init>(Landroidx/preference/SwitchPreferenceCompat;Landroidx/preference/SwitchPreferenceCompat;)V

    invoke-virtual {v1, v2}, Landroidx/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 85
    :cond_1
    return-void
.end method
