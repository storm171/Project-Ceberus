.class Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarDrawableToggleImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 0

    .line 3011
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3012
    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 1

    .line 3025
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 3016
    nop

    .line 3017
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    sget v2, Landroidx/appcompat/R$attr;->homeAsUpIndicator:I

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 3016
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 3018
    .local v0, "a":Landroidx/appcompat/widget/TintTypedArray;
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3019
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 3020
    return-object v1
.end method

.method public isNavigationVisible()Z
    .locals 2

    .line 3030
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 3031
    .local v0, "ab":Landroidx/appcompat/app/ActionBar;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setActionBarDescription(I)V
    .locals 1
    .param p1, "contentDescRes"    # I

    .line 3045
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 3046
    .local v0, "ab":Landroidx/appcompat/app/ActionBar;
    if-eqz v0, :cond_0

    .line 3047
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 3049
    :cond_0
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "upDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .line 3036
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 3037
    .local v0, "ab":Landroidx/appcompat/app/ActionBar;
    if-eqz v0, :cond_0

    .line 3038
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 3039
    invoke-virtual {v0, p2}, Landroidx/appcompat/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 3041
    :cond_0
    return-void
.end method
