.class Luc/ciceron/cerberus/fOther$10;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "fOther.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luc/ciceron/cerberus/fOther;->fOther(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luc/ciceron/cerberus/fOther;

.field final synthetic val$config:Lde/robv/android/xposed/XSharedPreferences;

.field final synthetic val$pref:Lde/robv/android/xposed/XSharedPreferences;


# direct methods
.method constructor <init>(Luc/ciceron/cerberus/fOther;Lde/robv/android/xposed/XSharedPreferences;Lde/robv/android/xposed/XSharedPreferences;)V
    .locals 0
    .param p1, "this$0"    # Luc/ciceron/cerberus/fOther;

    .line 135
    iput-object p1, p0, Luc/ciceron/cerberus/fOther$10;->this$0:Luc/ciceron/cerberus/fOther;

    iput-object p2, p0, Luc/ciceron/cerberus/fOther$10;->val$pref:Lde/robv/android/xposed/XSharedPreferences;

    iput-object p3, p0, Luc/ciceron/cerberus/fOther$10;->val$config:Lde/robv/android/xposed/XSharedPreferences;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 5
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 138
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v2, "http.agent"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dalvik/2.1.0 (Linux; U; Android 8.1.0; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Luc/ciceron/cerberus/fOther$10;->val$pref:Lde/robv/android/xposed/XSharedPreferences;

    const-string v4, "ro.product.model"

    invoke-virtual {v3, v4, v2}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Build/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Luc/ciceron/cerberus/fOther$10;->val$pref:Lde/robv/android/xposed/XSharedPreferences;

    const-string v4, "ro.build.id"

    invoke-virtual {v3, v4, v2}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 142
    :cond_0
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v1

    const-string v1, "os.version"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Luc/ciceron/cerberus/fOther$10;->val$config:Lde/robv/android/xposed/XSharedPreferences;

    const-string v1, "K"

    invoke-virtual {v0, v1, v2}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 145
    :cond_1
    return-void
.end method
