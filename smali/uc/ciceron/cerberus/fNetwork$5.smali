.class Luc/ciceron/cerberus/fNetwork$5;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "fNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luc/ciceron/cerberus/fNetwork;->fNetwork(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luc/ciceron/cerberus/fNetwork;


# direct methods
.method constructor <init>(Luc/ciceron/cerberus/fNetwork;)V
    .locals 0
    .param p1, "this$0"    # Luc/ciceron/cerberus/fNetwork;

    .line 54
    iput-object p1, p0, Luc/ciceron/cerberus/fNetwork$5;->this$0:Luc/ciceron/cerberus/fNetwork;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 57
    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 58
    return-void
.end method
