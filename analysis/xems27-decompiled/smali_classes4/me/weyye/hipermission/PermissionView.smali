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

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0}, Lme/weyye/hipermission/PermissionView;->initView()V

    .line 42
    return-void
.end method

.method private getColorFilter(I)Landroid/graphics/ColorFilter;
    .locals 8
    .param p1, "bgFilterColor"    # I

    .line 123
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 124
    .local v0, "blue":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 125
    .local v1, "green":I
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 126
    .local v2, "red":I
    const/16 v3, 0x14

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v6, 0x0

    aput v6, v3, v4

    const/4 v4, 0x2

    aput v6, v3, v4

    const/4 v4, 0x3

    aput v6, v3, v4

    int-to-float v4, v2

    const/4 v7, 0x4

    aput v4, v3, v7

    const/4 v4, 0x5

    aput v6, v3, v4

    const/4 v4, 0x6

    aput v5, v3, v4

    const/4 v4, 0x7

    aput v6, v3, v4

    const/16 v4, 0x8

    aput v6, v3, v4

    int-to-float v4, v1

    const/16 v7, 0x9

    aput v4, v3, v7

    const/16 v4, 0xa

    aput v6, v3, v4

    const/16 v4, 0xb

    aput v6, v3, v4

    const/16 v4, 0xc

    aput v5, v3, v4

    const/16 v4, 0xd

    aput v6, v3, v4

    int-to-float v4, v0

    const/16 v7, 0xe

    aput v4, v3, v7

    const/16 v4, 0xf

    aput v6, v3, v4

    const/16 v4, 0x10

    aput v6, v3, v4

    const/16 v4, 0x11

    aput v6, v3, v4

    const/16 v4, 0x12

    aput v5, v3, v4

    const/16 v4, 0x13

    aput v5, v3, v4

    .line 132
    .local v3, "cm":[F
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 133
    .local v4, "filter":Landroid/graphics/ColorMatrixColorFilter;
    return-object v4
.end method

.method private initView()V
    .locals 2

    .line 45
    invoke-virtual {p0}, Lme/weyye/hipermission/PermissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lme/weyye/hipermission/R$layout;->dialog_request_permission:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

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

    .line 70
    iget-object v0, p0, Lme/weyye/hipermission/PermissionView;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method public setFilterColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 137
    if-nez p1, :cond_0

    .line 138
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lme/weyye/hipermission/PermissionView;->mGvPermission:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lme/weyye/hipermission/PermissionAdapter;

    invoke-virtual {v0, p1}, Lme/weyye/hipermission/PermissionAdapter;->setFilterColor(I)V

    .line 141
    return-void
.end method

.method public setGridViewAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 58
    iget-object v0, p0, Lme/weyye/hipermission/PermissionView;->mGvPermission:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    return-void
.end method

.method public setGridViewColum(I)V
    .locals 1
    .param p1, "colum"    # I

    .line 54
    iget-object v0, p0, Lme/weyye/hipermission/PermissionView;->mGvPermission:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 55
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lme/weyye/hipermission/PermissionView;->mTvDesc:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method

.method public setStyleId(I)V
    .locals 12
    .param p1, "styleId"    # I

    .line 75
    if-gtz p1, :cond_0

    .line 76
    return-void

    .line 77
    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [I

    sget v1, Lme/weyye/hipermission/R$attr;->PermissionMsgColor:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lme/weyye/hipermission/R$attr;->PermissionTitleColor:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Lme/weyye/hipermission/R$attr;->PermissionItemTextColor:I

    const/4 v4, 0x2

    aput v1, v0, v4

    sget v1, Lme/weyye/hipermission/R$attr;->PermissionButtonTextColor:I

    const/4 v5, 0x3

    aput v1, v0, v5

    sget v1, Lme/weyye/hipermission/R$attr;->PermissionBackround:I

    const/4 v6, 0x4

    aput v1, v0, v6

    sget v1, Lme/weyye/hipermission/R$attr;->PermissionButtonBackground:I

    const/4 v7, 0x5

    aput v1, v0, v7

    sget v1, Lme/weyye/hipermission/R$attr;->PermissionBgFilterColor:I

    const/4 v8, 0x6

    aput v1, v0, v8

    sget v1, Lme/weyye/hipermission/R$attr;->PermissionIconFilterColor:I

    const/4 v9, 0x7

    aput v1, v0, v9

    .line 87
    .local v0, "ints":[I
    invoke-virtual {p0}, Lme/weyye/hipermission/PermissionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 88
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v1, p1, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 90
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 91
    .local v10, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v10, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    .line 92
    .local v11, "msgColor":I
    invoke-virtual {v10, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 93
    .local v3, "titleColor":I
    invoke-virtual {v10, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 94
    .local v4, "itemTextColor":I
    invoke-virtual {v10, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 95
    .local v5, "btnTextColor":I
    invoke-virtual {v10, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 96
    .local v6, "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 97
    .local v7, "Btnbackground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10, v8, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    .line 98
    .local v8, "bgFilterColor":I
    invoke-virtual {v10, v9, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 100
    .local v2, "iconFilterColor":I
    if-eqz v3, :cond_1

    .line 101
    iget-object v9, p0, Lme/weyye/hipermission/PermissionView;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    :cond_1
    if-eqz v6, :cond_3

    .line 103
    if-eqz v8, :cond_2

    .line 104
    invoke-direct {p0, v8}, Lme/weyye/hipermission/PermissionView;->getColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 105
    :cond_2
    iget-object v9, p0, Lme/weyye/hipermission/PermissionView;->mLlRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    :cond_3
    if-eqz v11, :cond_4

    .line 108
    iget-object v9, p0, Lme/weyye/hipermission/PermissionView;->mTvDesc:Landroid/widget/TextView;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    :cond_4
    if-eqz v4, :cond_5

    .line 110
    iget-object v9, p0, Lme/weyye/hipermission/PermissionView;->mGvPermission:Landroid/widget/GridView;

    invoke-virtual {v9}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    check-cast v9, Lme/weyye/hipermission/PermissionAdapter;

    invoke-virtual {v9, v4}, Lme/weyye/hipermission/PermissionAdapter;->setTextColor(I)V

    .line 111
    :cond_5
    if-eqz v7, :cond_6

    .line 112
    iget-object v9, p0, Lme/weyye/hipermission/PermissionView;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v9, v7}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    :cond_6
    if-eqz v5, :cond_7

    .line 114
    iget-object v9, p0, Lme/weyye/hipermission/PermissionView;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v9, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 115
    :cond_7
    if-eqz v2, :cond_8

    .line 116
    invoke-virtual {p0, v2}, Lme/weyye/hipermission/PermissionView;->setFilterColor(I)V

    .line 118
    :cond_8
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lme/weyye/hipermission/PermissionView;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method
