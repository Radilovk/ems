.class public Lcom/isaigu/gymapp/train/TrainAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TrainAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/isaigu/gymapp/train/TrainViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_EMPTY:I = 0x0

.field private static final VIEW_TYPE_NON_EMPTY:I = 0x1


# instance fields
.field private fragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

.field private itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/isaigu/gymapp/train/listener/OnTrainListListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/isaigu/gymapp/fragment/NewTrainFragment;Lcom/isaigu/gymapp/train/listener/OnTrainListListener;)V
    .locals 0
    .param p2, "fragment"    # Lcom/isaigu/gymapp/fragment/NewTrainFragment;
    .param p3, "listener"    # Lcom/isaigu/gymapp/train/listener/OnTrainListListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;",
            "Lcom/isaigu/gymapp/fragment/NewTrainFragment;",
            "Lcom/isaigu/gymapp/train/listener/OnTrainListListener;",
            ")V"
        }
    .end annotation

    .line 23
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/train/model/TrainItem;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/isaigu/gymapp/train/TrainAdapter;->itemList:Ljava/util/List;

    .line 25
    iput-object p3, p0, Lcom/isaigu/gymapp/train/TrainAdapter;->listener:Lcom/isaigu/gymapp/train/listener/OnTrainListListener;

    .line 26
    iput-object p2, p0, Lcom/isaigu/gymapp/train/TrainAdapter;->fragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    .line 27
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 50
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 16
    check-cast p1, Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/train/TrainAdapter;->onBindViewHolder(Lcom/isaigu/gymapp/train/TrainViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/isaigu/gymapp/train/TrainViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/isaigu/gymapp/train/TrainViewHolder;
    .param p2, "position"    # I

    .line 44
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 45
    .local v0, "item":Lcom/isaigu/gymapp/train/model/TrainItem;
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainAdapter;->listener:Lcom/isaigu/gymapp/train/listener/OnTrainListListener;

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/train/TrainViewHolder;->bind(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/train/listener/OnTrainListListener;)V

    .line 46
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/train/TrainAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/isaigu/gymapp/train/TrainViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/isaigu/gymapp/train/TrainViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 33
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 34
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b006d

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 35
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/isaigu/gymapp/train/TrainViewHolder;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/isaigu/gymapp/train/TrainAdapter;->fragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-direct {v1, v2, v0, v3}, Lcom/isaigu/gymapp/train/TrainViewHolder;-><init>(ZLandroid/view/View;Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    return-object v1

    .line 37
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0048

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 38
    .local v1, "view":Landroid/view/View;
    new-instance v2, Lcom/isaigu/gymapp/train/TrainViewHolder;

    iget-object v3, p0, Lcom/isaigu/gymapp/train/TrainAdapter;->fragment:Lcom/isaigu/gymapp/fragment/NewTrainFragment;

    invoke-direct {v2, v0, v1, v3}, Lcom/isaigu/gymapp/train/TrainViewHolder;-><init>(ZLandroid/view/View;Lcom/isaigu/gymapp/fragment/NewTrainFragment;)V

    return-object v2
.end method
