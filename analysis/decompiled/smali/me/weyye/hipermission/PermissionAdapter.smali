.class public Lme/weyye/hipermission/PermissionAdapter;
.super Landroid/widget/BaseAdapter;
.source "PermissionAdapter.java"


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lme/weyye/hipermission/PermissionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterColor:I

.field private mTextColor:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lme/weyye/hipermission/PermissionItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lme/weyye/hipermission/PermissionItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lme/weyye/hipermission/PermissionAdapter;->mData:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lme/weyye/hipermission/PermissionAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lme/weyye/hipermission/PermissionAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 38
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 43
    iget-object v9, p0, Lme/weyye/hipermission/PermissionAdapter;->mData:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lme/weyye/hipermission/PermissionItem;

    .line 44
    .local v5, "item":Lme/weyye/hipermission/PermissionItem;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lme/weyye/hipermission/R$layout;->permission_info_item:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 45
    .local v8, "view":Landroid/view/View;
    iget v9, p0, Lme/weyye/hipermission/PermissionAdapter;->mFilterColor:I

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 46
    .local v0, "blue":I
    iget v9, p0, Lme/weyye/hipermission/PermissionAdapter;->mFilterColor:I

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 47
    .local v3, "green":I
    iget v9, p0, Lme/weyye/hipermission/PermissionAdapter;->mFilterColor:I

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 48
    .local v7, "red":I
    sget v9, Lme/weyye/hipermission/R$id;->icon:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 49
    .local v4, "icon":Landroid/widget/ImageView;
    const/16 v9, 0x14

    new-array v1, v9, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v1, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v1, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput v10, v1, v9

    const/4 v9, 0x3

    const/4 v10, 0x0

    aput v10, v1, v9

    const/4 v9, 0x4

    int-to-float v10, v7

    aput v10, v1, v9

    const/4 v9, 0x5

    const/4 v10, 0x0

    aput v10, v1, v9

    const/4 v9, 0x6

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v1, v9

    const/4 v9, 0x7

    const/4 v10, 0x0

    aput v10, v1, v9

    const/16 v9, 0x8

    const/4 v10, 0x0

    aput v10, v1, v9

    const/16 v9, 0x9

    int-to-float v10, v3

    aput v10, v1, v9

    const/16 v9, 0xa

    const/4 v10, 0x0

    aput v10, v1, v9

    const/16 v9, 0xb

    const/4 v10, 0x0

    aput v10, v1, v9

    const/16 v9, 0xc

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v1, v9

    const/16 v9, 0xd

    const/4 v10, 0x0

    aput v10, v1, v9

    const/16 v9, 0xe

    int-to-float v10, v0

    aput v10, v1, v9

    const/16 v9, 0xf

    const/4 v10, 0x0

    aput v10, v1, v9

    const/16 v9, 0x10

    const/4 v10, 0x0

    aput v10, v1, v9

    const/16 v9, 0x11

    const/4 v10, 0x0

    aput v10, v1, v9

    const/16 v9, 0x12

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v1, v9

    const/16 v9, 0x13

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v1, v9

    .line 55
    .local v1, "cm":[F
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 56
    .local v2, "filter":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 57
    sget v9, Lme/weyye/hipermission/R$id;->name:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 58
    .local v6, "name":Landroid/widget/TextView;
    iget v9, p0, Lme/weyye/hipermission/PermissionAdapter;->mTextColor:I

    if-eqz v9, :cond_0

    .line 59
    iget v9, p0, Lme/weyye/hipermission/PermissionAdapter;->mTextColor:I

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    :cond_0
    iget v9, v5, Lme/weyye/hipermission/PermissionItem;->PermissionIconRes:I

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    iget-object v9, v5, Lme/weyye/hipermission/PermissionItem;->PermissionName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-object v8
.end method

.method public setFilterColor(I)V
    .locals 0
    .param p1, "filterColor"    # I

    .prologue
    .line 71
    iput p1, p0, Lme/weyye/hipermission/PermissionAdapter;->mFilterColor:I

    .line 72
    invoke-virtual {p0}, Lme/weyye/hipermission/PermissionAdapter;->notifyDataSetChanged()V

    .line 73
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "itemTextColor"    # I

    .prologue
    .line 66
    iput p1, p0, Lme/weyye/hipermission/PermissionAdapter;->mTextColor:I

    .line 67
    invoke-virtual {p0}, Lme/weyye/hipermission/PermissionAdapter;->notifyDataSetChanged()V

    .line 68
    return-void
.end method
