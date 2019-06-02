.class Luc/ciceron/cerberus/fOther$11;
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

    .line 148
    iput-object p1, p0, Luc/ciceron/cerberus/fOther$11;->this$0:Luc/ciceron/cerberus/fOther;

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

    .line 150
    const-string v0, "arm64-v8"

    const-string v1, "armeabi-v7a"

    const-string v2, "armeabi"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 151
    return-void
.end method
