.class Luc/ciceron/cerberus/fOther$4;
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

    .line 86
    iput-object p1, p0, Luc/ciceron/cerberus/fOther$4;->this$0:Luc/ciceron/cerberus/fOther;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 3
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 89
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AndroidThunkJava_EnableDebugMode"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method
