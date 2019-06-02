.class public final synthetic Luc/ciceron/cerberus/-$$Lambda$SettingsActivity$SettingsFragment$TJNroVdoCqDgbBLRs6E8X7A3p1c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Landroidx/preference/SwitchPreferenceCompat;

.field private final synthetic f$1:Landroidx/preference/SwitchPreferenceCompat;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/SwitchPreferenceCompat;Landroidx/preference/SwitchPreferenceCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luc/ciceron/cerberus/-$$Lambda$SettingsActivity$SettingsFragment$TJNroVdoCqDgbBLRs6E8X7A3p1c;->f$0:Landroidx/preference/SwitchPreferenceCompat;

    iput-object p2, p0, Luc/ciceron/cerberus/-$$Lambda$SettingsActivity$SettingsFragment$TJNroVdoCqDgbBLRs6E8X7A3p1c;->f$1:Landroidx/preference/SwitchPreferenceCompat;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Luc/ciceron/cerberus/-$$Lambda$SettingsActivity$SettingsFragment$TJNroVdoCqDgbBLRs6E8X7A3p1c;->f$0:Landroidx/preference/SwitchPreferenceCompat;

    iget-object v1, p0, Luc/ciceron/cerberus/-$$Lambda$SettingsActivity$SettingsFragment$TJNroVdoCqDgbBLRs6E8X7A3p1c;->f$1:Landroidx/preference/SwitchPreferenceCompat;

    invoke-static {v0, v1, p1, p2}, Luc/ciceron/cerberus/SettingsActivity$SettingsFragment;->lambda$onCreatePreferences$0(Landroidx/preference/SwitchPreferenceCompat;Landroidx/preference/SwitchPreferenceCompat;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
