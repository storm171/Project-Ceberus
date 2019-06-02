.class Luc/ciceron/cerberus/Loader$4;
.super Landroid/content/res/XResources$DrawableLoader;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luc/ciceron/cerberus/Loader;->handleInitPackageResources(Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luc/ciceron/cerberus/Loader;


# direct methods
.method constructor <init>(Luc/ciceron/cerberus/Loader;)V
    .locals 0
    .param p1, "this$0"    # Luc/ciceron/cerberus/Loader;

    .line 150
    iput-object p1, p0, Luc/ciceron/cerberus/Loader$4;->this$0:Luc/ciceron/cerberus/Loader;

    invoke-direct {p0}, Landroid/content/res/XResources$DrawableLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/XResources;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "res"    # Landroid/content/res/XResources;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 153
    const-string v0, "/data/local/tmp/project_cerberus_splashscreen.jpg"

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
