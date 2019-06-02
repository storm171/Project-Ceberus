.class public Lspencerstudios/com/ezdialoglib/EZDialog$Builder;
.super Ljava/lang/Object;
.source "EZDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lspencerstudios/com/ezdialoglib/EZDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private animation:Lspencerstudios/com/ezdialoglib/Animation;

.field private backgroundColor:I

.field private buttonTextColor:I

.field private cancelOnTouchOutside:Z

.field private context:Landroid/content/Context;

.field private font:Lspencerstudios/com/ezdialoglib/Font;

.field private fontId:I

.field private headerColor:I

.field private message:Ljava/lang/String;

.field private messageTextColor:I

.field private negativeBtnText:Ljava/lang/String;

.field private negativeListener:Lspencerstudios/com/ezdialoglib/EZDialogListener;

.field private neutralBtnText:Ljava/lang/String;

.field private neutralListener:Lspencerstudios/com/ezdialoglib/EZDialogListener;

.field private positiveBtnText:Ljava/lang/String;

.field private positiveListener:Lspencerstudios/com/ezdialoglib/EZDialogListener;

.field private showTitleDivider:Z

.field private title:Ljava/lang/String;

.field private titleDividerColor:I

.field private titleTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->cancelOnTouchOutside:Z

    iput-boolean v0, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->showTitleDivider:Z

    .line 53
    iput-object p1, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->context:Landroid/content/Context;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lspencerstudios/com/ezdialoglib/EZDialog$Builder;)Lspencerstudios/com/ezdialoglib/EZDialogListener;
    .locals 1
    .param p0, "x0"    # Lspencerstudios/com/ezdialoglib/EZDialog$Builder;

    .line 19
    iget-object v0, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->positiveListener:Lspencerstudios/com/ezdialoglib/EZDialogListener;

    return-object v0
.end method

.method static synthetic access$100(Lspencerstudios/com/ezdialoglib/EZDialog$Builder;)Lspencerstudios/com/ezdialoglib/EZDialogListener;
    .locals 1
    .param p0, "x0"    # Lspencerstudios/com/ezdialoglib/EZDialog$Builder;

    .line 19
    iget-object v0, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->negativeListener:Lspencerstudios/com/ezdialoglib/EZDialogListener;

    return-object v0
.end method

.method static synthetic access$200(Lspencerstudios/com/ezdialoglib/EZDialog$Builder;)Lspencerstudios/com/ezdialoglib/EZDialogListener;
    .locals 1
    .param p0, "x0"    # Lspencerstudios/com/ezdialoglib/EZDialog$Builder;

    .line 19
    iget-object v0, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->neutralListener:Lspencerstudios/com/ezdialoglib/EZDialogListener;

    return-object v0
.end method


# virtual methods
.method public OnNegativeClicked(Lspencerstudios/com/ezdialoglib/EZDialogListener;)Lspencerstudios/com/ezdialoglib/EZDialog$Builder;
    .locals 0
    .param p1, "negativeListener"    # Lspencerstudios/com/ezdialoglib/EZDialogListener;

    .line 142
    iput-object p1, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->negativeListener:Lspencerstudios/com/ezdialoglib/EZDialogListener;

    .line 143
    return-object p0
.end method

.method public OnNeutralClicked(Lspencerstudios/com/ezdialoglib/EZDialogListener;)Lspencerstudios/com/ezdialoglib/EZDialog$Builder;
    .locals 0
    .param p1, "neutralListener"    # Lspencerstudios/com/ezdialoglib/EZDialogListener;

    .line 147
    iput-object p1, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->neutralListener:Lspencerstudios/com/ezdialoglib/EZDialogListener;

    .line 148
    return-object p0
.end method

.method public OnPositiveClicked(Lspencerstudios/com/ezdialoglib/EZDialogListener;)Lspencerstudios/com/ezdialoglib/EZDialog$Builder;
    .locals 0
    .param p1, "positiveListener"    # Lspencerstudios/com/ezdialoglib/EZDialogListener;

    .line 137
    iput-object p1, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->positiveListener:Lspencerstudios/com/ezdialoglib/EZDialogListener;

    .line 138
    return-object p0
.end method

.method public build()V
    .locals 13

    .line 155
    iget-object v0, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->animation:Lspencerstudios/com/ezdialoglib/Animation;

    sget-object v1, Lspencerstudios/com/ezdialoglib/Animation;->UP:Lspencerstudios/com/ezdialoglib/Animation;

    if-ne v0, v1, :cond_0

    sget v0, Lspencerstudios/com/ezdialoglib/R$style;->UpTheme:I

    .local v0, "style":I
    goto :goto_0

    .line 156
    .end local v0    # "style":I
    :cond_0
    iget-object v0, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->animation:Lspencerstudios/com/ezdialoglib/Animation;

    sget-object v1, Lspencerstudios/com/ezdialoglib/Animation;->DOWN:Lspencerstudios/com/ezdialoglib/Animation;

    if-ne v0, v1, :cond_1

    sget v0, Lspencerstudios/com/ezdialoglib/R$style;->DownTheme:I

    .restart local v0    # "style":I
    goto :goto_0

    .line 157
    .end local v0    # "style":I
    :cond_1
    const/4 v0, 0x0

    .line 159
    .restart local v0    # "style":I
    :goto_0
    if-eqz v0, :cond_2

    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 160
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    goto :goto_1

    :cond_2
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 161
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    :goto_1
    nop

    .line 163
    .local v1, "dialog":Landroidx/appcompat/app/AlertDialog;
    iget-boolean v2, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->cancelOnTouchOutside:Z

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 166
    iget-object v2, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lspencerstudios/com/ezdialoglib/R$layout;->ez_dialog_layout:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 167
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 169
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 170
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    :cond_3
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 175
    sget v3, Lspencerstudios/com/ezdialoglib/R$id;->title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 176
    .local v3, "tvTitle":Landroid/widget/TextView;
    sget v5, Lspencerstudios/com/ezdialoglib/R$id;->message:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 178
    .local v5, "tvMessage":Landroid/widget/TextView;
    sget v6, Lspencerstudios/com/ezdialoglib/R$id;->cancel:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 179
    .local v6, "btnNegative":Landroid/widget/Button;
    sget v7, Lspencerstudios/com/ezdialoglib/R$id;->confirm:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 180
    .local v7, "btnPositive":Landroid/widget/Button;
    sget v8, Lspencerstudios/com/ezdialoglib/R$id;->neutral:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 182
    .local v8, "btnNeutral":Landroid/widget/Button;
    sget v9, Lspencerstudios/com/ezdialoglib/R$id;->ll_dialog_sub_view:I

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 184
    .local v9, "llRoot":Landroid/widget/LinearLayout;
    sget v10, Lspencerstudios/com/ezdialoglib/R$id;->title_divider:I

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 186
    .local v10, "titleDivider":Landroid/view/View;
    iget-boolean v11, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->showTitleDivider:Z

    if-eqz v11, :cond_4

    const/4 v11, 0x0

    goto :goto_2

    :cond_4
    const/4 v11, 0x4

    :goto_2
    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v11, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->font:Lspencerstudios/com/ezdialoglib/Font;

    if-eqz v11, :cond_7

    .line 190
    sget-object v12, Lspencerstudios/com/ezdialoglib/Font;->COMFORTAA:Lspencerstudios/com/ezdialoglib/Font;

    if-ne v11, v12, :cond_5

    .line 191
    iget-object v11, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->context:Landroid/content/Context;

    sget v12, Lspencerstudios/com/ezdialoglib/R$font;->comfortaa:I

    invoke-static {v11, v12}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v11

    .local v11, "tf":Landroid/graphics/Typeface;
    goto :goto_3

    .line 192
    .end local v11    # "tf":Landroid/graphics/Typeface;
    :cond_5
    iget-object v11, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->font:Lspencerstudios/com/ezdialoglib/Font;

    sget-object v12, Lspencerstudios/com/ezdialoglib/Font;->FINGER_PAINT:Lspencerstudios/com/ezdialoglib/Font;

    if-ne v11, v12, :cond_6

    .line 193
    iget-object v11, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->context:Landroid/content/Context;

    sget v12, Lspencerstudios/com/ezdialoglib/R$font;->finger_paint:I

    invoke-static {v11, v12}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v11

    .restart local v11    # "tf":Landroid/graphics/Typeface;
    goto :goto_3

    .line 195
    .end local v11    # "tf":Landroid/graphics/Typeface;
    :cond_6
    iget-object v11, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->context:Landroid/content/Context;

    sget v12, Lspencerstudios/com/ezdialoglib/R$font;->quicksand_medium:I

    invoke-static {v11, v12}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v11

    .line 197
    .restart local v11    # "tf":Landroid/graphics/Typeface;
    :goto_3
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 198
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 199
    invoke-virtual {v7, v11}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 200
    invoke-virtual {v6, v11}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 201
    invoke-virtual {v8, v11}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 204
    .end local v11    # "tf":Landroid/graphics/Typeface;
    :cond_7
    iget v11, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->fontId:I

    if-eqz v11, :cond_8

    .line 205
    iget-object v12, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v12, v11}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v11

    .line 206
    .restart local v11    # "tf":Landroid/graphics/Typeface;
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 207
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 208
    invoke-virtual {v7, v11}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 209
    invoke-virtual {v6, v11}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 210
    invoke-virtual {v8, v11}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 213
    .end local v11    # "tf":Landroid/graphics/Typeface;
    :cond_8
    iget-object v11, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->title:Ljava/lang/String;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v11, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->message:Ljava/lang/String;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget v11, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->backgroundColor:I

    if-eqz v11, :cond_9

    .line 217
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 220
    :cond_9
    iget v11, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->headerColor:I

    if-eqz v11, :cond_a

    .line 221
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 224
    :cond_a
    iget v11, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->titleTextColor:I

    if-eqz v11, :cond_b

    .line 225
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    :cond_b
    iget v11, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->messageTextColor:I

    if-eqz v11, :cond_c

    .line 229
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    :cond_c
    iget v11, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->titleDividerColor:I

    if-eqz v11, :cond_d

    .line 233
    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 236
    :cond_d
    iget v11, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->buttonTextColor:I

    if-eqz v11, :cond_e

    .line 237
    invoke-virtual {v7, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 238
    iget v11, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->buttonTextColor:I

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 239
    iget v11, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->buttonTextColor:I

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 242
    :cond_e
    iget-object v11, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->positiveBtnText:Ljava/lang/String;

    if-eqz v11, :cond_f

    .line 243
    invoke-virtual {v7, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :cond_f
    iget-object v11, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->negativeBtnText:Ljava/lang/String;

    if-eqz v11, :cond_10

    .line 247
    invoke-virtual {v6, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 250
    :cond_10
    iget-object v11, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->neutralBtnText:Ljava/lang/String;

    if-eqz v11, :cond_11

    .line 251
    invoke-virtual {v8, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :cond_11
    iget-object v11, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->positiveListener:Lspencerstudios/com/ezdialoglib/EZDialogListener;

    const/16 v12, 0x8

    if-eqz v11, :cond_12

    .line 255
    invoke-virtual {v7, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 256
    new-instance v11, Lspencerstudios/com/ezdialoglib/EZDialog$Builder$1;

    invoke-direct {v11, p0, v1}, Lspencerstudios/com/ezdialoglib/EZDialog$Builder$1;-><init>(Lspencerstudios/com/ezdialoglib/EZDialog$Builder;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 265
    :cond_12
    invoke-virtual {v7, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 268
    :goto_4
    iget-object v11, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->negativeListener:Lspencerstudios/com/ezdialoglib/EZDialogListener;

    if-eqz v11, :cond_13

    .line 269
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 270
    new-instance v11, Lspencerstudios/com/ezdialoglib/EZDialog$Builder$2;

    invoke-direct {v11, p0, v1}, Lspencerstudios/com/ezdialoglib/EZDialog$Builder$2;-><init>(Lspencerstudios/com/ezdialoglib/EZDialog$Builder;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 278
    :cond_13
    invoke-virtual {v6, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 281
    :goto_5
    iget-object v11, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->neutralListener:Lspencerstudios/com/ezdialoglib/EZDialogListener;

    if-eqz v11, :cond_14

    .line 282
    invoke-virtual {v8, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 283
    new-instance v4, Lspencerstudios/com/ezdialoglib/EZDialog$Builder$3;

    invoke-direct {v4, p0, v1}, Lspencerstudios/com/ezdialoglib/EZDialog$Builder$3;-><init>(Lspencerstudios/com/ezdialoglib/EZDialog$Builder;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 291
    :cond_14
    invoke-virtual {v8, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 293
    :goto_6
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 294
    return-void
.end method

.method public setAnimation(Lspencerstudios/com/ezdialoglib/Animation;)Lspencerstudios/com/ezdialoglib/EZDialog$Builder;
    .locals 0
    .param p1, "animation"    # Lspencerstudios/com/ezdialoglib/Animation;

    .line 57
    iput-object p1, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->animation:Lspencerstudios/com/ezdialoglib/Animation;

    .line 58
    return-object p0
.end method

.method public setBackgroundColor(I)Lspencerstudios/com/ezdialoglib/EZDialog$Builder;
    .locals 0
    .param p1, "backgroundColor"    # I

    .line 107
    iput p1, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->backgroundColor:I

    .line 108
    return-object p0
.end method

.method public setButtonTextColor(I)Lspencerstudios/com/ezdialoglib/EZDialog$Builder;
    .locals 0
    .param p1, "buttonTextColor"    # I

    .line 117
    iput p1, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->buttonTextColor:I

    .line 118
    return-object p0
.end method

.method public setCancelableOnTouchOutside(Z)Lspencerstudios/com/ezdialoglib/EZDialog$Builder;
    .locals 0
    .param p1, "cancelOnTouchOutside"    # Z

    .line 62
    iput-boolean p1, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->cancelOnTouchOutside:Z

    .line 63
    return-object p0
.end method

.method public setCustomFont(I)Lspencerstudios/com/ezdialoglib/EZDialog$Builder;
    .locals 0
    .param p1, "fontId"    # I

    .line 72
    iput p1, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->fontId:I

    .line 73
    return-object p0
.end method

.method public setFont(Lspencerstudios/com/ezdialoglib/Font;)Lspencerstudios/com/ezdialoglib/EZDialog$Builder;
    .locals 0
    .param p1, "font"    # Lspencerstudios/com/ezdialoglib/Font;

    .line 67
    iput-object p1, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->font:Lspencerstudios/com/ezdialoglib/Font;

    .line 68
    return-object p0
.end method

.method public setHeaderColor(I)Lspencerstudios/com/ezdialoglib/EZDialog$Builder;
    .locals 0
    .param p1, "headerColor"    # I

    .line 112
    iput p1, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->headerColor:I

    .line 113
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lspencerstudios/com/ezdialoglib/EZDialog$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->message:Ljava/lang/String;

    .line 83
    return-object p0
.end method

.method public setMessageTextColor(I)Lspencerstudios/com/ezdialoglib/EZDialog$Builder;
    .locals 0
    .param p1, "messageTextColor"    # I

    .line 102
    iput p1, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->messageTextColor:I

    .line 103
    return-object p0
.end method

.method public setNegativeBtnText(Ljava/lang/String;)Lspencerstudios/com/ezdialoglib/EZDialog$Builder;
    .locals 0
    .param p1, "negativeBtnText"    # Ljava/lang/String;

    .line 127
    iput-object p1, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->negativeBtnText:Ljava/lang/String;

    .line 128
    return-object p0
.end method

.method public setNeutralBtnText(Ljava/lang/String;)Lspencerstudios/com/ezdialoglib/EZDialog$Builder;
    .locals 0
    .param p1, "neutralBtnText"    # Ljava/lang/String;

    .line 132
    iput-object p1, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->neutralBtnText:Ljava/lang/String;

    .line 133
    return-object p0
.end method

.method public setPositiveBtnText(Ljava/lang/String;)Lspencerstudios/com/ezdialoglib/EZDialog$Builder;
    .locals 0
    .param p1, "positiveBtnText"    # Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->positiveBtnText:Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lspencerstudios/com/ezdialoglib/EZDialog$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->title:Ljava/lang/String;

    .line 78
    return-object p0
.end method

.method public setTitleDividerLineColor(I)Lspencerstudios/com/ezdialoglib/EZDialog$Builder;
    .locals 0
    .param p1, "titleDividerColor"    # I

    .line 92
    iput p1, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->titleDividerColor:I

    .line 93
    return-object p0
.end method

.method public setTitleTextColor(I)Lspencerstudios/com/ezdialoglib/EZDialog$Builder;
    .locals 0
    .param p1, "titleTextColor"    # I

    .line 97
    iput p1, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->titleTextColor:I

    .line 98
    return-object p0
.end method

.method public showTitleDivider(Z)Lspencerstudios/com/ezdialoglib/EZDialog$Builder;
    .locals 0
    .param p1, "showTitleDivider"    # Z

    .line 87
    iput-boolean p1, p0, Lspencerstudios/com/ezdialoglib/EZDialog$Builder;->showTitleDivider:Z

    .line 88
    return-object p0
.end method
