.class public abstract Landroidx/preference/PreferenceDialogFragmentCompat;
.super Landroidx/fragment/app/DialogFragment;
.source "PreferenceDialogFragmentCompat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field protected static final ARG_KEY:Ljava/lang/String; = "key"

.field private static final SAVE_STATE_ICON:Ljava/lang/String; = "PreferenceDialogFragment.icon"

.field private static final SAVE_STATE_LAYOUT:Ljava/lang/String; = "PreferenceDialogFragment.layout"

.field private static final SAVE_STATE_MESSAGE:Ljava/lang/String; = "PreferenceDialogFragment.message"

.field private static final SAVE_STATE_NEGATIVE_TEXT:Ljava/lang/String; = "PreferenceDialogFragment.negativeText"

.field private static final SAVE_STATE_POSITIVE_TEXT:Ljava/lang/String; = "PreferenceDialogFragment.positiveText"

.field private static final SAVE_STATE_TITLE:Ljava/lang/String; = "PreferenceDialogFragment.title"


# instance fields
.field private mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mDialogLayoutRes:I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mPreference:Landroidx/preference/DialogPreference;

.field private mWhichButtonClicked:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/Dialog;

    .line 210
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 211
    .local v0, "window":Landroid/view/Window;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 212
    return-void
.end method


# virtual methods
.method public getPreference()Landroidx/preference/DialogPreference;
    .locals 3

    .line 173
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPreference:Landroidx/preference/DialogPreference;

    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "key":Ljava/lang/String;
    nop

    .line 176
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/preference/DialogPreference$TargetFragment;

    .line 177
    .local v1, "fragment":Landroidx/preference/DialogPreference$TargetFragment;
    invoke-interface {v1, v0}, Landroidx/preference/DialogPreference$TargetFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/DialogPreference;

    iput-object v2, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPreference:Landroidx/preference/DialogPreference;

    .line 179
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "fragment":Landroidx/preference/DialogPreference$TargetFragment;
    :cond_0
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPreference:Landroidx/preference/DialogPreference;

    return-object v0
.end method

.method protected needInputMethod()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 239
    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 241
    .local v0, "dialogMessageView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 242
    iget-object v1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogMessage:Ljava/lang/CharSequence;

    .line 243
    .local v1, "message":Ljava/lang/CharSequence;
    const/16 v2, 0x8

    .line 245
    .local v2, "newVisibility":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 246
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 247
    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    :cond_0
    const/4 v2, 0x0

    .line 253
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 254
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 257
    .end local v1    # "message":Ljava/lang/CharSequence;
    .end local v2    # "newVisibility":I
    :cond_2
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 261
    iput p2, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mWhichButtonClicked:I

    .line 262
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 77
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 80
    .local v0, "rawFragment":Landroidx/fragment/app/Fragment;
    instance-of v1, v0, Landroidx/preference/DialogPreference$TargetFragment;

    if-eqz v1, :cond_4

    .line 85
    move-object v1, v0

    check-cast v1, Landroidx/preference/DialogPreference$TargetFragment;

    .line 88
    .local v1, "fragment":Landroidx/preference/DialogPreference$TargetFragment;
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "key"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "key":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez p1, :cond_2

    .line 90
    invoke-interface {v1, v2}, Landroidx/preference/DialogPreference$TargetFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/DialogPreference;

    iput-object v4, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPreference:Landroidx/preference/DialogPreference;

    .line 91
    iget-object v4, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPreference:Landroidx/preference/DialogPreference;

    invoke-virtual {v4}, Landroidx/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogTitle:Ljava/lang/CharSequence;

    .line 92
    iget-object v4, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPreference:Landroidx/preference/DialogPreference;

    invoke-virtual {v4}, Landroidx/preference/DialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 93
    iget-object v4, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPreference:Landroidx/preference/DialogPreference;

    invoke-virtual {v4}, Landroidx/preference/DialogPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 94
    iget-object v4, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPreference:Landroidx/preference/DialogPreference;

    invoke-virtual {v4}, Landroidx/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogMessage:Ljava/lang/CharSequence;

    .line 95
    iget-object v4, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPreference:Landroidx/preference/DialogPreference;

    invoke-virtual {v4}, Landroidx/preference/DialogPreference;->getDialogLayoutResource()I

    move-result v4

    iput v4, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogLayoutRes:I

    .line 97
    iget-object v4, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPreference:Landroidx/preference/DialogPreference;

    invoke-virtual {v4}, Landroidx/preference/DialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 98
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1

    instance-of v5, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 102
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 101
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 103
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 104
    .local v6, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    invoke-virtual {v4, v3, v3, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 105
    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 106
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v3, v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1

    .line 99
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    :goto_0
    move-object v3, v4

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v3, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 108
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_1
    goto :goto_2

    .line 109
    :cond_2
    const-string v4, "PreferenceDialogFragment.title"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogTitle:Ljava/lang/CharSequence;

    .line 110
    const-string v4, "PreferenceDialogFragment.positiveText"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 111
    const-string v4, "PreferenceDialogFragment.negativeText"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 112
    const-string v4, "PreferenceDialogFragment.message"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogMessage:Ljava/lang/CharSequence;

    .line 113
    const-string v4, "PreferenceDialogFragment.layout"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogLayoutRes:I

    .line 114
    const-string v3, "PreferenceDialogFragment.icon"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 115
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_3

    .line 116
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 119
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    :goto_2
    return-void

    .line 81
    .end local v1    # "fragment":Landroidx/preference/DialogPreference$TargetFragment;
    .end local v2    # "key":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Target fragment must implement TargetFragment interface"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 138
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 139
    .local v0, "context":Landroid/content/Context;
    const/4 v1, -0x2

    iput v1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mWhichButtonClicked:I

    .line 141
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogTitle:Ljava/lang/CharSequence;

    .line 142
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 143
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 144
    invoke-virtual {v1, v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 145
    invoke-virtual {v1, v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 147
    .local v1, "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceDialogFragmentCompat;->onCreateDialogView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    .line 148
    .local v2, "contentView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 149
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceDialogFragmentCompat;->onBindDialogView(Landroid/view/View;)V

    .line 150
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 152
    :cond_0
    iget-object v3, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 155
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 158
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v3

    .line 159
    .local v3, "dialog":Landroid/app/Dialog;
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->needInputMethod()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 160
    invoke-direct {p0, v3}, Landroidx/preference/PreferenceDialogFragmentCompat;->requestInputMethod(Landroid/app/Dialog;)V

    .line 163
    :cond_1
    return-object v3
.end method

.method protected onCreateDialogView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 222
    iget v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogLayoutRes:I

    .line 223
    .local v0, "resId":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 224
    return-object v1

    .line 227
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 228
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public abstract onDialogClosed(Z)V
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 266
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 267
    iget v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mWhichButtonClicked:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceDialogFragmentCompat;->onDialogClosed(Z)V

    .line 268
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 0
    .param p1, "builder"    # Landroidx/appcompat/app/AlertDialog$Builder;

    .line 188
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 123
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 125
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogTitle:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.title"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPositiveButtonText:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.positiveText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mNegativeButtonText:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.negativeText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogMessage:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.message"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 129
    iget v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogLayoutRes:I

    const-string v1, "PreferenceDialogFragment.layout"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "PreferenceDialogFragment.icon"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 133
    :cond_0
    return-void
.end method
