.class Luc/ciceron/cerberus/fCPU$4;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "fCPU.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luc/ciceron/cerberus/fCPU;->fCPU(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luc/ciceron/cerberus/fCPU;


# direct methods
.method constructor <init>(Luc/ciceron/cerberus/fCPU;)V
    .locals 0
    .param p1, "this$0"    # Luc/ciceron/cerberus/fCPU;

    .line 50
    iput-object p1, p0, Luc/ciceron/cerberus/fCPU$4;->this$0:Luc/ciceron/cerberus/fCPU;

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

    .line 53
    const-string v0, "exynos"

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 54
    return-void
.end method
