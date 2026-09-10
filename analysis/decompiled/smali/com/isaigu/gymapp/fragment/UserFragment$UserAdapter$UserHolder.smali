.class Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "UserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserHolder"
.end annotation


# instance fields
.field height:Landroid/widget/TextView;

.field private orderText:Landroid/widget/TextView;

.field recordImage:Landroid/widget/ImageView;

.field registertime:Landroid/widget/TextView;

.field sex:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;

.field traindata:Landroid/widget/TextView;

.field trainname:Landroid/widget/TextView;

.field usericon:Landroid/widget/ImageView;

.field username:Landroid/widget/TextView;

.field weight:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->this$1:Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;

    .line 250
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 251
    const v0, 0x7f0f00b3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->username:Landroid/widget/TextView;

    .line 252
    const v0, 0x7f0f009b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->usericon:Landroid/widget/ImageView;

    .line 253
    const v0, 0x7f0f00a4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->sex:Landroid/widget/TextView;

    .line 254
    const v0, 0x7f0f01c0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->registertime:Landroid/widget/TextView;

    .line 256
    const v0, 0x7f0f00a5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->height:Landroid/widget/TextView;

    .line 257
    const v0, 0x7f0f00a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->weight:Landroid/widget/TextView;

    .line 258
    const v0, 0x7f0f01c1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->trainname:Landroid/widget/TextView;

    .line 259
    const v0, 0x7f0f01c2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->traindata:Landroid/widget/TextView;

    .line 261
    const v0, 0x7f0f01c3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->recordImage:Landroid/widget/ImageView;

    .line 263
    const v0, 0x7f0f01c4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->orderText:Landroid/widget/TextView;

    .line 264
    return-void
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->orderText:Landroid/widget/TextView;

    return-object v0
.end method
