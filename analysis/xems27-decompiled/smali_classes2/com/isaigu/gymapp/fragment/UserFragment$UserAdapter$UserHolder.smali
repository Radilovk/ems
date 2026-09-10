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
    .locals 0
    .param p2, "itemView"    # Landroid/view/View;

    .line 249
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->this$1:Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;

    .line 250
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 251
    const p1, 0x7f0901d9

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->username:Landroid/widget/TextView;

    .line 252
    const p1, 0x7f0901ce

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->usericon:Landroid/widget/ImageView;

    .line 253
    const p1, 0x7f090173

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->sex:Landroid/widget/TextView;

    .line 254
    const p1, 0x7f09014c

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->registertime:Landroid/widget/TextView;

    .line 256
    const p1, 0x7f0900b4

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->height:Landroid/widget/TextView;

    .line 257
    const p1, 0x7f0901f9

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->weight:Landroid/widget/TextView;

    .line 258
    const p1, 0x7f0901b9

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->trainname:Landroid/widget/TextView;

    .line 259
    const p1, 0x7f0901b8

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->traindata:Landroid/widget/TextView;

    .line 261
    const p1, 0x7f090148

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->recordImage:Landroid/widget/ImageView;

    .line 263
    const p1, 0x7f090117

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->orderText:Landroid/widget/TextView;

    .line 264
    return-void
.end method

.method static synthetic access$300(Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;

    .line 244
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->orderText:Landroid/widget/TextView;

    return-object v0
.end method
