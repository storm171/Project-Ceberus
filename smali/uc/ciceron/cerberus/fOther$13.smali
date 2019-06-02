.class Luc/ciceron/cerberus/fOther$13;
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


# direct methods
.method constructor <init>(Luc/ciceron/cerberus/fOther;)V
    .locals 0
    .param p1, "this$0"    # Luc/ciceron/cerberus/fOther;

    .line 160
    iput-object p1, p0, Luc/ciceron/cerberus/fOther$13;->this$0:Luc/ciceron/cerberus/fOther;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 3
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 162
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    instance-of v0, v0, Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v2

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v1

    const-string v1, "ov"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const-string v1, "27"

    aput-object v1, v0, v2

    .line 168
    :cond_0
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v2

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const-string v1, "arm64"

    aput-object v1, v0, v2

    .line 173
    :cond_1
    return-void
.end method
