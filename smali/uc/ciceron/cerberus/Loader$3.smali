.class Luc/ciceron/cerberus/Loader$3;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luc/ciceron/cerberus/Loader;->handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luc/ciceron/cerberus/Loader;

.field final synthetic val$tencentLoadLib:Ljava/lang/Class;


# direct methods
.method constructor <init>(Luc/ciceron/cerberus/Loader;Ljava/lang/Class;)V
    .locals 0
    .param p1, "this$0"    # Luc/ciceron/cerberus/Loader;

    .line 115
    iput-object p1, p0, Luc/ciceron/cerberus/Loader$3;->this$0:Luc/ciceron/cerberus/Loader;

    iput-object p2, p0, Luc/ciceron/cerberus/Loader$3;->val$tencentLoadLib:Ljava/lang/Class;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 6
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Luc/ciceron/cerberus/Loader$3;->val$tencentLoadLib:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Luc/ciceron/cerberus/Loader$3;->this$0:Luc/ciceron/cerberus/Loader;

    iget-object v3, v3, Luc/ciceron/cerberus/Loader;->app_ctx:Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v5, "xhook"

    aput-object v5, v2, v3

    const-string v5, "loadLibrary"

    invoke-static {v0, v5, v2}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Luc/ciceron/cerberus/Loader$3;->val$tencentLoadLib:Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Luc/ciceron/cerberus/Loader$3;->this$0:Luc/ciceron/cerberus/Loader;

    iget-object v2, v2, Luc/ciceron/cerberus/Loader;->app_ctx:Landroid/content/Context;

    aput-object v2, v1, v4

    iget-object v2, p0, Luc/ciceron/cerberus/Loader$3;->this$0:Luc/ciceron/cerberus/Loader;

    iget-object v2, v2, Luc/ciceron/cerberus/Loader;->libToLoad:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v5, v1}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Luc/ciceron/cerberus/Loader$3;->this$0:Luc/ciceron/cerberus/Loader;

    iget-object v0, v0, Luc/ciceron/cerberus/Loader;->app_ctx:Landroid/content/Context;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Luc/ciceron/cerberus/Loader$3;->this$0:Luc/ciceron/cerberus/Loader;

    iget-object v2, v2, Luc/ciceron/cerberus/Loader;->mode:Ljava/lang/String;

    aput-object v2, v1, v4

    const-string v2, "Cerberus (%s mode) has been loaded successfully"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 122
    return-void
.end method
