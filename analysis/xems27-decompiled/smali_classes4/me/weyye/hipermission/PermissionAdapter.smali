.class public Lme/weyye/hipermission/PermissionAdapter;
.super Landroid/widget/BaseAdapter;
.source "PermissionAdapter.java"


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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
            "Ljava/util/List<",
            "Lme/weyye/hipermission/PermissionItem;",
            ">;)V"
        }
    .end annotation

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

    .line 28
    iget-object v0, p0, Lme/weyye/hipermission/PermissionAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 33
    iget-object v0, p0, Lme/weyye/hipermission/PermissionAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 38
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 43
    iget-object v0, p0, Lme/weyye/hipermission/PermissionAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/weyye/hipermission/PermissionItem;

    .line 44
    .local v0, "item":Lme/weyye/hipermission/PermissionItem;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lme/weyye/hipermission/R$layout;->permission_info_item:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 45
    .local v1, "view":Landroid/view/View;
    iget v2, p0, Lme/weyye/hipermission/PermissionAdapter;->mFilterColor:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 46
    .local v2, "blue":I
    iget v3, p0, Lme/weyye/hipermission/PermissionAdapter;->mFilterColor:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 47
    .local v3, "green":I
    iget v4, p0, Lme/weyye/hipermission/PermissionAdapter;->mFilterColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 48
    .local v4, "red":I
    sget v5, Lme/weyye/hipermission/R$id;->icon:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 49
    .local v5, "icon":Landroid/widget/ImageView;
    const/16 v6, 0x14

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x0

    aput v9, v6, v7

    const/4 v7, 0x2

    aput v9, v6, v7

    const/4 v7, 0x3

    aput v9, v6, v7

    int-to-float v7, v4

    const/4 v10, 0x4

    aput v7, v6, v10

    const/4 v7, 0x5

    aput v9, v6, v7

    const/4 v7, 0x6

    aput v8, v6, v7

    const/4 v7, 0x7

    aput v9, v6, v7

    const/16 v7, 0x8

    aput v9, v6, v7

    int-to-float v7, v3

    const/16 v10, 0x9

    aput v7, v6, v10

    const/16 v7, 0xa

    aput v9, v6, v7

    const/16 v7, 0xb

    aput v9, v6, v7

    const/16 v7, 0xc

    aput v8, v6, v7

    const/16 v7, 0xd

    aput v9, v6, v7

    int-to-float v7, v2

    const/16 v10, 0xe

    aput v7, v6, v10

    const/16 v7, 0xf

    aput v9, v6, v7

    const/16 v7, 0x10

    aput v9, v6, v7

    const/16 v7, 0x11

    aput v9, v6, v7

    const/16 v7, 0x12

    aput v8, v6, v7

    const/16 v7, 0x13

    aput v8, v6, v7

    .line 55
    .local v6, "cm":[F
    new-instance v7, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v7, v6}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 56
    .local v7, "filter":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 57
    sget v8, Lme/weyye/hipermission/R$id;->name:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 58
    .local v8, "name":Landroid/widget/TextView;
    iget v9, p0, Lme/weyye/hipermission/PermissionAdapter;->mTextColor:I

    if-eqz v9, :cond_0

    .line 59
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    :cond_0
    iget v9, v0, Lme/weyye/hipermission/PermissionItem;->PermissionIconRes:I

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    iget-object v9, v0, Lme/weyye/hipermission/PermissionItem;->PermissionName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-object v1
.end method

.method public setFilterColor(I)V
    .locals 0
    .param p1, "filterColor"    # I

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

    .line 66
    iput p1, p0, Lme/weyye/hipermission/PermissionAdapter;->mTextColor:I

    .line 67
    invoke-virtual {p0}, Lme/weyye/hipermission/PermissionAdapter;->notifyDataSetChanged()V

    .line 68
    return-void
.end method
