.class public Landroidx/appcompat/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroidx/appcompat/view/menu/ShowableListMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;,
        Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;,
        Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;,
        Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;,
        Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"

.field public static final WRAP_CONTENT:I = -0x2

.field private static sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

.field private static sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;

.field private static sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownGravity:I

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field mDropDownList:Landroidx/appcompat/widget/DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mDropDownWindowLayoutType:I

.field private mEpicenterBounds:Landroid/graphics/Rect;

.field private mForceIgnoreOutsideTouch:Z

.field final mHandler:Landroid/os/Handler;

.field private final mHideSelector:Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

.field private mIsAnimatedFromAnchor:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOverlapAnchor:Z

.field private mOverlapAnchorSet:Z

.field mPopup:Landroid/widget/PopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field final mResizePopupRunnable:Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 84
    const-string v0, "ListPopupWindow"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-class v3, Landroid/widget/PopupWindow;

    const-string v4, "setClipToScreenEnabled"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroidx/appcompat/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_0

    .line 86
    :catch_0
    move-exception v3

    .line 87
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    :try_start_1
    const-class v3, Landroid/widget/PopupWindow;

    const-string v4, "getMaxAvailableHeight"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/view/View;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroidx/appcompat/widget/ListPopupWindow;->sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    goto :goto_1

    .line 92
    :catch_1
    move-exception v3

    .line 93
    .restart local v3    # "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :goto_1
    :try_start_2
    const-class v3, Landroid/widget/PopupWindow;

    const-string v4, "setEpicenterBounds"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/widget/ListPopupWindow;->sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 101
    goto :goto_2

    .line 99
    :catch_2
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :goto_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 218
    sget v0, Landroidx/appcompat/R$attr;->listPopupWindowStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 229
    sget v0, Landroidx/appcompat/R$attr;->listPopupWindowStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 243
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4, "defStyleRes"    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, -0x2

    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    .line 109
    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    .line 112
    const/16 v0, 0x3ea

    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mIsAnimatedFromAnchor:Z

    .line 118
    const/4 v1, 0x0

    iput v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownGravity:I

    .line 120
    iput-boolean v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 121
    iput-boolean v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 122
    const v2, 0x7fffffff

    iput v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 125
    iput v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptPosition:I

    .line 136
    new-instance v2, Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mResizePopupRunnable:Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

    .line 137
    new-instance v2, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTouchInterceptor:Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 138
    new-instance v2, Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mScrollListener:Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;

    .line 139
    new-instance v2, Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHideSelector:Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

    .line 144
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 256
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 257
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 259
    sget-object v2, Landroidx/appcompat/R$styleable;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 261
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v3, Landroidx/appcompat/R$styleable;->ListPopupWindow_android_dropDownHorizontalOffset:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 263
    sget v3, Landroidx/appcompat/R$styleable;->ListPopupWindow_android_dropDownVerticalOffset:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 265
    iget v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    if-eqz v1, :cond_0

    .line 266
    iput-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 268
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 270
    new-instance v1, Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-direct {v1, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 271
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 272
    return-void
.end method

.method private buildDropDown()I
    .locals 15

    .line 1146
    const/4 v0, 0x0

    .line 1148
    .local v0, "otherHeights":I
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_6

    .line 1149
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1157
    .local v1, "context":Landroid/content/Context;
    new-instance v5, Landroidx/appcompat/widget/ListPopupWindow$2;

    invoke-direct {v5, p0}, Landroidx/appcompat/widget/ListPopupWindow$2;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 1168
    iget-boolean v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    xor-int/2addr v5, v4

    invoke-virtual {p0, v1, v5}, Landroidx/appcompat/widget/ListPopupWindow;->createDropDownListView(Landroid/content/Context;Z)Landroidx/appcompat/widget/DropDownListView;

    move-result-object v5

    iput-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 1169
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 1170
    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1172
    :cond_0
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1173
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1174
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v5, v4}, Landroidx/appcompat/widget/DropDownListView;->setFocusable(Z)V

    .line 1175
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v5, v4}, Landroidx/appcompat/widget/DropDownListView;->setFocusableInTouchMode(Z)V

    .line 1176
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    new-instance v6, Landroidx/appcompat/widget/ListPopupWindow$3;

    invoke-direct {v6, p0}, Landroidx/appcompat/widget/ListPopupWindow$3;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1194
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mScrollListener:Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1196
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v5, :cond_1

    .line 1197
    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1200
    :cond_1
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 1202
    .local v5, "dropDownView":Landroid/view/ViewGroup;
    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 1203
    .local v6, "hintView":Landroid/view/View;
    if-eqz v6, :cond_5

    .line 1206
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1207
    .local v7, "hintContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1209
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v8, v2, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1213
    .local v8, "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v9, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptPosition:I

    if-eqz v9, :cond_3

    if-eq v9, v4, :cond_2

    .line 1225
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid hint position "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ListPopupWindow"

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1215
    :cond_2
    invoke-virtual {v7, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1216
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1217
    goto :goto_0

    .line 1220
    :cond_3
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1221
    invoke-virtual {v7, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1222
    nop

    .line 1233
    :goto_0
    iget v9, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    if-ltz v9, :cond_4

    .line 1234
    const/high16 v9, -0x80000000

    .line 1235
    .local v9, "widthMode":I
    iget v10, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    .local v10, "widthSize":I
    goto :goto_1

    .line 1237
    .end local v9    # "widthMode":I
    .end local v10    # "widthSize":I
    :cond_4
    const/4 v9, 0x0

    .line 1238
    .restart local v9    # "widthMode":I
    const/4 v10, 0x0

    .line 1240
    .restart local v10    # "widthSize":I
    :goto_1
    invoke-static {v10, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1241
    .local v11, "widthSpec":I
    const/4 v12, 0x0

    .line 1242
    .local v12, "heightSpec":I
    invoke-virtual {v6, v11, v3}, Landroid/view/View;->measure(II)V

    .line 1244
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    move-object v8, v13

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 1245
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    iget v14, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v13, v14

    iget v14, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v13, v14

    .line 1248
    .end local v0    # "otherHeights":I
    .local v13, "otherHeights":I
    move-object v5, v7

    move v0, v13

    .line 1251
    .end local v7    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v8    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "widthMode":I
    .end local v10    # "widthSize":I
    .end local v11    # "widthSpec":I
    .end local v12    # "heightSpec":I
    .end local v13    # "otherHeights":I
    .restart local v0    # "otherHeights":I
    :cond_5
    iget-object v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1252
    .end local v1    # "context":Landroid/content/Context;
    .end local v6    # "hintView":Landroid/view/View;
    goto :goto_2

    .line 1253
    .end local v5    # "dropDownView":Landroid/view/ViewGroup;
    :cond_6
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/view/ViewGroup;

    .line 1254
    .restart local v5    # "dropDownView":Landroid/view/ViewGroup;
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 1255
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_7

    .line 1256
    nop

    .line 1257
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 1258
    .local v6, "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v0, v7, v8

    .line 1266
    .end local v1    # "view":Landroid/view/View;
    .end local v6    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    :goto_2
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1267
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_8

    .line 1268
    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1269
    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    .line 1273
    .local v6, "padding":I
    iget-boolean v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v7, :cond_9

    .line 1274
    iget-object v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    neg-int v7, v7

    iput v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    goto :goto_3

    .line 1277
    .end local v6    # "padding":I
    :cond_8
    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 1278
    const/4 v6, 0x0

    .line 1282
    .restart local v6    # "padding":I
    :cond_9
    :goto_3
    iget-object v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1283
    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_a

    const/4 v3, 0x1

    .line 1284
    .local v3, "ignoreBottomDecorations":Z
    :cond_a
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v4

    iget v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    invoke-direct {p0, v4, v7, v3}, Landroidx/appcompat/widget/ListPopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v4

    .line 1286
    .local v4, "maxHeight":I
    iget-boolean v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v7, :cond_f

    iget v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v7, v2, :cond_b

    goto :goto_5

    .line 1291
    :cond_b
    iget v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v8, -0x2

    if-eq v7, v8, :cond_d

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v7, v2, :cond_c

    .line 1305
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .local v2, "childWidthSpec":I
    goto :goto_4

    .line 1299
    .end local v2    # "childWidthSpec":I
    :cond_c
    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1300
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v9

    sub-int/2addr v2, v7

    .line 1299
    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1303
    .restart local v2    # "childWidthSpec":I
    goto :goto_4

    .line 1293
    .end local v2    # "childWidthSpec":I
    :cond_d
    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1294
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    sub-int/2addr v2, v7

    const/high16 v7, -0x80000000

    .line 1293
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1297
    .restart local v2    # "childWidthSpec":I
    nop

    .line 1311
    :goto_4
    iget-object v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    const/4 v9, 0x0

    const/4 v10, -0x1

    sub-int v11, v4, v0

    const/4 v12, -0x1

    move v8, v2

    invoke-virtual/range {v7 .. v12}, Landroidx/appcompat/widget/DropDownListView;->measureHeightOfChildrenCompat(IIIII)I

    move-result v7

    .line 1313
    .local v7, "listContent":I
    if-lez v7, :cond_e

    .line 1314
    iget-object v8, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v8}, Landroidx/appcompat/widget/DropDownListView;->getPaddingTop()I

    move-result v8

    iget-object v9, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 1315
    invoke-virtual {v9}, Landroidx/appcompat/widget/DropDownListView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    .line 1316
    .local v8, "listPadding":I
    add-int v9, v6, v8

    add-int/2addr v0, v9

    .line 1319
    .end local v8    # "listPadding":I
    :cond_e
    add-int v8, v7, v0

    return v8

    .line 1287
    .end local v2    # "childWidthSpec":I
    .end local v7    # "listContent":I
    :cond_f
    :goto_5
    add-int v2, v4, v6

    return v2
.end method

.method private getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 5
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I
    .param p3, "ignoreBottomDecorations"    # Z

    .line 1431
    sget-object v0, Landroidx/appcompat/widget/ListPopupWindow;->sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 1433
    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 1434
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1433
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1435
    :catch_0
    move-exception v0

    .line 1436
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ListPopupWindow"

    const-string v2, "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method private static isConfirmKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .line 1417
    const/16 v0, 0x42

    if-eq p0, v0, :cond_1

    const/16 v0, 0x17

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private removePromptView()V
    .locals 3

    .line 779
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 780
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 781
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 782
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 783
    .local v1, "group":Landroid/view/ViewGroup;
    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 786
    .end local v0    # "parent":Landroid/view/ViewParent;
    .end local v1    # "group":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private setPopupClipToScreenEnabled(Z)V
    .locals 5
    .param p1, "clip"    # Z

    .line 1421
    sget-object v0, Landroidx/appcompat/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 1423
    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1426
    goto :goto_0

    .line 1424
    :catch_0
    move-exception v0

    .line 1425
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ListPopupWindow"

    const-string v2, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public clearListSelection()V
    .locals 2

    .line 836
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 837
    .local v0, "list":Landroidx/appcompat/widget/DropDownListView;
    if-eqz v0, :cond_0

    .line 839
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 841
    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->requestLayout()V

    .line 843
    :cond_0
    return-void
.end method

.method public createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p1, "src"    # Landroid/view/View;

    .line 1130
    new-instance v0, Landroidx/appcompat/widget/ListPopupWindow$1;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/ListPopupWindow$1;-><init>(Landroidx/appcompat/widget/ListPopupWindow;Landroid/view/View;)V

    return-object v0
.end method

.method createDropDownListView(Landroid/content/Context;Z)Landroidx/appcompat/widget/DropDownListView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 940
    new-instance v0, Landroidx/appcompat/widget/DropDownListView;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    .line 762
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 763
    invoke-direct {p0}, Landroidx/appcompat/widget/ListPopupWindow;->removePromptView()V

    .line 764
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 765
    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 766
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mResizePopupRunnable:Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 767
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 454
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 1
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    .line 445
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 417
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getEpicenterBounds()Landroid/graphics/Rect;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 522
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getHeight()I
    .locals 1

    .line 572
    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .line 471
    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .line 810
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 936
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    return-object v0
.end method

.method public getPromptPosition()I
    .locals 1

    .line 316
    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptPosition:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 885
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 886
    const/4 v0, 0x0

    return-object v0

    .line 888
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .line 911
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 912
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 914
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .line 898
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 899
    const/4 v0, -0x1

    return v0

    .line 901
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 924
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 925
    const/4 v0, 0x0

    return-object v0

    .line 927
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSoftInputMode()I
    .locals 1

    .line 401
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .line 487
    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v0, :cond_0

    .line 488
    const/4 v0, 0x0

    return v0

    .line 490
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 539
    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 377
    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .line 858
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isModal()Z
    .locals 1

    .line 339
    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 850
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 966
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 972
    const/16 v0, 0x3e

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 973
    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v0

    if-gez v0, :cond_0

    .line 974
    invoke-static {p1}, Landroidx/appcompat/widget/ListPopupWindow;->isConfirmKey(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 975
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v0

    .line 978
    .local v0, "curIndex":I
    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 980
    .local v2, "below":Z
    iget-object v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 983
    .local v4, "adapter":Landroid/widget/ListAdapter;
    const v5, 0x7fffffff

    .line 984
    .local v5, "firstItem":I
    const/high16 v6, -0x80000000

    .line 986
    .local v6, "lastItem":I
    if-eqz v4, :cond_3

    .line 987
    invoke-interface {v4}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v7

    .line 988
    .local v7, "allEnabled":Z
    if-eqz v7, :cond_1

    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    iget-object v8, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 989
    invoke-virtual {v8, v1, v3}, Landroidx/appcompat/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v8

    :goto_0
    move v5, v8

    .line 990
    if-eqz v7, :cond_2

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    sub-int/2addr v8, v3

    goto :goto_1

    :cond_2
    iget-object v8, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 991
    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {v8, v9, v1}, Landroidx/appcompat/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v8

    :goto_1
    move v6, v8

    .line 994
    .end local v7    # "allEnabled":Z
    :cond_3
    const/16 v7, 0x13

    if-eqz v2, :cond_4

    if-ne p1, v7, :cond_4

    if-le v0, v5, :cond_5

    :cond_4
    const/16 v8, 0x14

    if-nez v2, :cond_6

    if-ne p1, v8, :cond_6

    if-lt v0, v6, :cond_6

    .line 998
    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->clearListSelection()V

    .line 999
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1000
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 1001
    return v3

    .line 1005
    :cond_6
    iget-object v9, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v9, v1}, Landroidx/appcompat/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 1008
    iget-object v9, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v9, p1, p2}, Landroidx/appcompat/widget/DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    .line 1011
    .local v9, "consumed":Z
    if-eqz v9, :cond_8

    .line 1014
    iget-object v10, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1019
    iget-object v10, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v10}, Landroidx/appcompat/widget/DropDownListView;->requestFocusFromTouch()Z

    .line 1020
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 1022
    if-eq p1, v7, :cond_7

    if-eq p1, v8, :cond_7

    const/16 v7, 0x17

    if-eq p1, v7, :cond_7

    const/16 v7, 0x42

    if-eq p1, v7, :cond_7

    .line 1029
    goto :goto_2

    :cond_7
    return v3

    .line 1032
    :cond_8
    if-eqz v2, :cond_9

    if-ne p1, v8, :cond_9

    .line 1035
    if-ne v0, v6, :cond_a

    .line 1036
    return v3

    .line 1038
    :cond_9
    if-nez v2, :cond_a

    if-ne p1, v7, :cond_a

    if-ne v0, v5, :cond_a

    .line 1040
    return v3

    .line 1046
    .end local v0    # "curIndex":I
    .end local v2    # "below":Z
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "firstItem":I
    .end local v6    # "lastItem":I
    .end local v9    # "consumed":Z
    :cond_a
    :goto_2
    return v1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1085
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1088
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 1089
    .local v0, "anchorView":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1090
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1091
    .local v1, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_0

    .line 1092
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1094
    :cond_0
    return v2

    .line 1095
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 1096
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1097
    .restart local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    .line 1098
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1100
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1101
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 1102
    return v2

    .line 1106
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1061
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_1

    .line 1062
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1063
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/appcompat/widget/ListPopupWindow;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1066
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 1068
    :cond_0
    return v0

    .line 1070
    .end local v0    # "consumed":Z
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public performItemClick(I)Z
    .locals 9
    .param p1, "position"    # I

    .line 869
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 870
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 872
    .local v0, "list":Landroidx/appcompat/widget/DropDownListView;
    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 873
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    .line 874
    .local v8, "adapter":Landroid/widget/ListAdapter;
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v8, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    move-object v2, v0

    move-object v3, v7

    move v4, p1

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 876
    .end local v0    # "list":Landroidx/appcompat/widget/DropDownListView;
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 878
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public postShow()V
    .locals 2

    .line 648
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 649
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 281
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    goto :goto_0

    .line 283
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 284
    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 286
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 287
    if-eqz p1, :cond_2

    .line 288
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 291
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    if-eqz v0, :cond_3

    .line 292
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 294
    :cond_3
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 464
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 465
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 1
    .param p1, "animationStyle"    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 435
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 436
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 426
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 427
    return-void
.end method

.method public setContentWidth(I)V
    .locals 3
    .param p1, "width"    # I

    .line 559
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 560
    .local v0, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 561
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 562
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    goto :goto_0

    .line 564
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setWidth(I)V

    .line 566
    :goto_0
    return-void
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0
    .param p1, "dropDownAlwaysVisible"    # Z
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 367
    iput-boolean p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 368
    return-void
.end method

.method public setDropDownGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .line 532
    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownGravity:I

    .line 533
    return-void
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 511
    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    .line 512
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0
    .param p1, "forceIgnoreOutsideTouch"    # Z
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 351
    iput-boolean p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 352
    return-void
.end method

.method public setHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .line 584
    if-gez p1, :cond_1

    const/4 v0, -0x2

    if-eq v0, p1, :cond_1

    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 586
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid height. Must be a positive value, MATCH_PARENT, or WRAP_CONTENT."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_1
    :goto_0
    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    .line 590
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 480
    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 481
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 801
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 802
    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 0
    .param p1, "max"    # I

    .line 950
    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 951
    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "selector"    # Landroid/graphics/drawable/Drawable;

    .line 410
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 411
    return-void
.end method

.method public setModal(Z)V
    .locals 1
    .param p1, "modal"    # Z

    .line 329
    iput-boolean p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    .line 330
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 331
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 775
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 776
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/widget/AdapterView$OnItemClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 613
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 614
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "selectedListener"    # Landroid/widget/AdapterView$OnItemSelectedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 624
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 625
    return-void
.end method

.method public setOverlapAnchor(Z)V
    .locals 1
    .param p1, "overlapAnchor"    # Z
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1328
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mOverlapAnchorSet:Z

    .line 1329
    iput-boolean p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mOverlapAnchor:Z

    .line 1330
    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 306
    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptPosition:I

    .line 307
    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1
    .param p1, "prompt"    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 634
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    .line 635
    .local v0, "showing":Z
    if-eqz v0, :cond_0

    .line 636
    invoke-direct {p0}, Landroidx/appcompat/widget/ListPopupWindow;->removePromptView()V

    .line 638
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 639
    if-eqz v0, :cond_1

    .line 640
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 642
    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .param p1, "position"    # I

    .line 820
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 821
    .local v0, "list":Landroidx/appcompat/widget/DropDownListView;
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 822
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 823
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/DropDownListView;->setSelection(I)V

    .line 825
    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 826
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/DropDownListView;->setItemChecked(IZ)V

    .line 829
    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 391
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 392
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 499
    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 500
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 501
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 549
    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    .line 550
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .param p1, "layoutType"    # I

    .line 602
    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    .line 603
    return-void
.end method

.method public show()V
    .locals 14

    .line 657
    invoke-direct {p0}, Landroidx/appcompat/widget/ListPopupWindow;->buildDropDown()I

    move-result v0

    .line 659
    .local v0, "height":I
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v1

    .line 660
    .local v1, "noInputMethod":Z
    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    invoke-static {v2, v3}, Landroidx/core/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 662
    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v2, :cond_c

    .line 663
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 665
    return-void

    .line 668
    :cond_0
    iget v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v6, :cond_1

    .line 671
    const/4 v2, -0x1

    .local v2, "widthSpec":I
    goto :goto_0

    .line 672
    .end local v2    # "widthSpec":I
    :cond_1
    if-ne v2, v4, :cond_2

    .line 673
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .restart local v2    # "widthSpec":I
    goto :goto_0

    .line 675
    .end local v2    # "widthSpec":I
    :cond_2
    iget v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    .line 679
    .restart local v2    # "widthSpec":I
    :goto_0
    iget v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v7, v6, :cond_7

    .line 682
    if-eqz v1, :cond_3

    move v4, v0

    goto :goto_1

    :cond_3
    const/4 v4, -0x1

    .line 683
    .local v4, "heightSpec":I
    :goto_1
    if-eqz v1, :cond_5

    .line 684
    iget-object v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v8, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v8, v6, :cond_4

    const/4 v8, -0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 686
    iget-object v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_4

    .line 688
    :cond_5
    iget-object v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v8, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v8, v6, :cond_6

    const/4 v8, -0x1

    goto :goto_3

    :cond_6
    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 690
    iget-object v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_4

    .line 692
    .end local v4    # "heightSpec":I
    :cond_7
    if-ne v7, v4, :cond_8

    .line 693
    move v4, v0

    .restart local v4    # "heightSpec":I
    goto :goto_4

    .line 695
    .end local v4    # "heightSpec":I
    :cond_8
    iget v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    .line 698
    .restart local v4    # "heightSpec":I
    :goto_4
    iget-object v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v8, p0, Landroidx/appcompat/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v8, :cond_9

    iget-boolean v8, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v8, :cond_9

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v7, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 700
    iget-object v8, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v9

    iget v10, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v11, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    if-gez v2, :cond_a

    const/4 v12, -0x1

    goto :goto_6

    :cond_a
    move v12, v2

    :goto_6
    if-gez v4, :cond_b

    const/4 v13, -0x1

    goto :goto_7

    :cond_b
    move v13, v4

    :goto_7
    invoke-virtual/range {v8 .. v13}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 703
    .end local v2    # "widthSpec":I
    .end local v4    # "heightSpec":I
    goto/16 :goto_c

    .line 705
    :cond_c
    iget v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v6, :cond_d

    .line 706
    const/4 v2, -0x1

    .restart local v2    # "widthSpec":I
    goto :goto_8

    .line 708
    .end local v2    # "widthSpec":I
    :cond_d
    if-ne v2, v4, :cond_e

    .line 709
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .restart local v2    # "widthSpec":I
    goto :goto_8

    .line 711
    .end local v2    # "widthSpec":I
    :cond_e
    iget v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    .line 716
    .restart local v2    # "widthSpec":I
    :goto_8
    iget v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v7, v6, :cond_f

    .line 717
    const/4 v4, -0x1

    .restart local v4    # "heightSpec":I
    goto :goto_9

    .line 719
    .end local v4    # "heightSpec":I
    :cond_f
    if-ne v7, v4, :cond_10

    .line 720
    move v4, v0

    .restart local v4    # "heightSpec":I
    goto :goto_9

    .line 722
    .end local v4    # "heightSpec":I
    :cond_10
    iget v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    .line 726
    .restart local v4    # "heightSpec":I
    :goto_9
    iget-object v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 727
    iget-object v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 728
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/ListPopupWindow;->setPopupClipToScreenEnabled(Z)V

    .line 732
    iget-object v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v8, p0, Landroidx/appcompat/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v8, :cond_11

    iget-boolean v8, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v8, :cond_11

    const/4 v8, 0x1

    goto :goto_a

    :cond_11
    const/4 v8, 0x0

    :goto_a
    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 733
    iget-object v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v8, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTouchInterceptor:Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 734
    iget-boolean v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mOverlapAnchorSet:Z

    if-eqz v7, :cond_12

    .line 735
    iget-object v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v8, p0, Landroidx/appcompat/widget/ListPopupWindow;->mOverlapAnchor:Z

    invoke-static {v7, v8}, Landroidx/core/widget/PopupWindowCompat;->setOverlapAnchor(Landroid/widget/PopupWindow;Z)V

    .line 737
    :cond_12
    sget-object v7, Landroidx/appcompat/widget/ListPopupWindow;->sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_13

    .line 739
    :try_start_0
    iget-object v8, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v9, p0, Landroidx/appcompat/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    aput-object v9, v3, v5

    invoke-virtual {v7, v8, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    goto :goto_b

    .line 740
    :catch_0
    move-exception v3

    .line 741
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "ListPopupWindow"

    const-string v7, "Could not invoke setEpicenterBounds on PopupWindow"

    invoke-static {v5, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 744
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_13
    :goto_b
    iget-object v3, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v5

    iget v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v8, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    iget v9, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownGravity:I

    invoke-static {v3, v5, v7, v8, v9}, Landroidx/core/widget/PopupWindowCompat;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 746
    iget-object v3, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v3, v6}, Landroidx/appcompat/widget/DropDownListView;->setSelection(I)V

    .line 748
    iget-boolean v3, p0, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    if-eqz v3, :cond_14

    iget-object v3, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v3}, Landroidx/appcompat/widget/DropDownListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 749
    :cond_14
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->clearListSelection()V

    .line 751
    :cond_15
    iget-boolean v3, p0, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    if-nez v3, :cond_16

    .line 752
    iget-object v3, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHideSelector:Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 755
    .end local v2    # "widthSpec":I
    .end local v4    # "heightSpec":I
    :cond_16
    :goto_c
    return-void
.end method
