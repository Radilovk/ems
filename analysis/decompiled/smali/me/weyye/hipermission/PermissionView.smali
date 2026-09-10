.class public Lme/weyye/hipermission/PermissionView;
.super Landroid/widget/FrameLayout;
.source "PermissionView.java"


# instance fields
.field private mBtnNext:Landroid/widget/Button;

.field private mGvPermission:Landroid/widget/GridView;

.field private mLlRoot:Landroid/widget/LinearLayout;

.field private mTvDesc:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lme/weyye/hipermission/PermissionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lme/weyye/hipermission/PermissionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0}, Lme/weyye/hipermission/PermissionView;->initView()V

    .line 42
    return-void
.end method

.method private getColorFilter(I)Landroid/graphics/ColorFilter;
    .locals 9
    .param p1, "bgFilterColor"    # I

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 123
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 124
    .local v0, "blue":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 125
    .local v3, "green":I
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 126
    .local v4, "red":I
    const/16 v5, 0x14

    new-array v1, v5, [F

    const/4 v5, 0x0

    aput v8, v1, v5

    const/4 v5, 0x1

    aput v7, v1, v5

    const/4 v5, 0x2

    aput v7, v1, v5

    const/4 v5, 0x3

    aput v7, v1, v5

    const/4 v5, 0x4

    int-to-float v6, v4

    aput v6, v1, v5

    const/4 v5, 0x5

    aput v7, v1, v5

    const/4 v5, 0x6

    aput v8, v1, v5

    const/4 v5, 0x7

    aput v7, v1, v5

    const/16 v5, 0x8

    aput v7, v1, v5

    const/16 v5, 0x9

    int-to-float v6, v3

    aput v6, v1, v5

    const/16 v5, 0xa

    aput v7, v1, v5

    const/16 v5, 0xb

    aput v7, v1, v5

    const/16 v5, 0xc

    aput v8, v1, v5

    const/16 v5, 0xd

    aput v7, v1, v5

    const/16 v5, 0xe

    int-to-float v6, v0

    aput v6, v1, v5

    const/16 v5, 0xf

    aput v7, v1, v5

    const/16 v5, 0x10

    aput v7, v1, v5

    const/16 v5, 0x11

    aput v7, v1, v5

    const/16 v5, 0x12

    aput v8, v1, v5

    const/16 v5, 0x13

    aput v8, v1, v5

    .line 132
    .local v1, "cm":[F
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 133
    .local v2, "filter":Landroid/graphics/ColorMatrixColorFilter;
    return-object v2
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 45
    invoke-virtual {p0}, Lme/weyye/hipermission/PermissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lme/weyye/hipermission/R$layout;->dialog_request_permission:I

    invoke-static {v1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "permissionView":Landroid/view/View;
    sget v1, Lme/weyye/hipermission/R$id;->tvTitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lme/weyye/hipermission/PermissionView;->mTvTitle:Landroid/widget/TextView;

    .line 47
    sget v1, Lme/weyye/hipermission/R$id;->llRoot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lme/weyye/hipermission/PermissionView;->mLlRoot:Landroid/widget/LinearLayout;

    .line 48
    sget v1, Lme/weyye/hipermission/R$id;->tvDesc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lme/weyye/hipermission/PermissionView;->mTvDesc:Landroid/widget/TextView;

    .line 49
    sget v1, Lme/weyye/hipermission/R$id;->goto_settings:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lme/weyye/hipermission/PermissionView;->mBtnNext:Landroid/widget/Button;

    .line 50
    sget v1, Lme/weyye/hipermission/R$id;->gvPermission:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lme/weyye/hipermission/PermissionView;->mGvPermission:Landroid/widget/GridView;

    .line 51
    return-void
.end method


# virtual methods
.method public setBtnOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 70
    iget-object v0, p0, Lme/weyye/hipermission/PermissionView;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method public setFilterColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lme/weyye/hipermission/PermissionView;->mGvPermission:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lme/weyye/hipermission/PermissionAdapter;

    invoke-virtual {v0, p1}, Lme/weyye/hipermission/PermissionAdapter;->setFilterColor(I)V

    goto :goto_0
.end method

.method public setGridViewAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 58
    iget-object v0, p0, Lme/weyye/hipermission/PermissionView;->mGvPermission:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    return-void
.end method

.method public setGridViewColum(I)V
    .locals 1
    .param p1, "colum"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lme/weyye/hipermission/PermissionView;->mGvPermission:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 55
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lme/weyye/hipermission/PermissionView;->mTvDesc:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method

.method public setStyleId(I)V
    .locals 13
    .param p1, "styleId"    # I

    .prologue
    .line 75
    if-gtz p1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 77
    :cond_0
    const/16 v11, 0x8

    new-array v5, v11, [I

    const/4 v11, 0x0

    sget v12, Lme/weyye/hipermission/R$attr;->PermissionMsgColor:I

    aput v12, v5, v11

    const/4 v11, 0x1

    sget v12, Lme/weyye/hipermission/R$attr;->PermissionTitleColor:I

    aput v12, v5, v11

    const/4 v11, 0x2

    sget v12, Lme/weyye/hipermission/R$attr;->PermissionItemTextColor:I

    aput v12, v5, v11

    const/4 v11, 0x3

    sget v12, Lme/weyye/hipermission/R$attr;->PermissionButtonTextColor:I

    aput v12, v5, v11

    const/4 v11, 0x4

    sget v12, Lme/weyye/hipermission/R$attr;->PermissionBackround:I

    aput v12, v5, v11

    const/4 v11, 0x5

    sget v12, Lme/weyye/hipermission/R$attr;->PermissionButtonBackground:I

    aput v12, v5, v11

    const/4 v11, 0x6

    sget v12, Lme/weyye/hipermission/R$attr;->PermissionBgFilterColor:I

    aput v12, v5, v11

    const/4 v11, 0x7

    sget v12, Lme/weyye/hipermission/R$attr;->PermissionIconFilterColor:I

    aput v12, v5, v11

    .line 87
    .local v5, "ints":[I
    invoke-virtual {p0}, Lme/weyye/hipermission/PermissionView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 88
    .local v8, "theme":Landroid/content/res/Resources$Theme;
    const/4 v11, 0x1

    invoke-virtual {v8, p1, v11}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 90
    invoke-virtual {v8, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 91
    .local v10, "typedArray":Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 92
    .local v7, "msgColor":I
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    .line 93
    .local v9, "titleColor":I
    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 94
    .local v6, "itemTextColor":I
    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 95
    .local v3, "btnTextColor":I
    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 96
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 97
    .local v0, "Btnbackground":Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 98
    .local v2, "bgFilterColor":I
    const/4 v11, 0x7

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 100
    .local v4, "iconFilterColor":I
    if-eqz v9, :cond_1

    .line 101
    iget-object v11, p0, Lme/weyye/hipermission/PermissionView;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    :cond_1
    if-eqz v1, :cond_3

    .line 103
    if-eqz v2, :cond_2

    .line 104
    invoke-direct {p0, v2}, Lme/weyye/hipermission/PermissionView;->getColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 105
    :cond_2
    iget-object v11, p0, Lme/weyye/hipermission/PermissionView;->mLlRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    :cond_3
    if-eqz v7, :cond_4

    .line 108
    iget-object v11, p0, Lme/weyye/hipermission/PermissionView;->mTvDesc:Landroid/widget/TextView;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    :cond_4
    if-eqz v6, :cond_5

    .line 110
    iget-object v11, p0, Lme/weyye/hipermission/PermissionView;->mGvPermission:Landroid/widget/GridView;

    invoke-virtual {v11}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    check-cast v11, Lme/weyye/hipermission/PermissionAdapter;

    invoke-virtual {v11, v6}, Lme/weyye/hipermission/PermissionAdapter;->setTextColor(I)V

    .line 111
    :cond_5
    if-eqz v0, :cond_6

    .line 112
    iget-object v11, p0, Lme/weyye/hipermission/PermissionView;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    :cond_6
    if-eqz v3, :cond_7

    .line 114
    iget-object v11, p0, Lme/weyye/hipermission/PermissionView;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v11, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 115
    :cond_7
    if-eqz v4, :cond_8

    .line 116
    invoke-virtual {p0, v4}, Lme/weyye/hipermission/PermissionView;->setFilterColor(I)V

    .line 118
    :cond_8
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lme/weyye/hipermission/PermissionView;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method
