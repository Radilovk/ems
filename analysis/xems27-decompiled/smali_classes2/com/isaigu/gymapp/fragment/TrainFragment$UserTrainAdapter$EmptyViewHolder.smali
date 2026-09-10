.class Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$EmptyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TrainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmptyViewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$1"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .line 1986
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$EmptyViewHolder;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    .line 1987
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1988
    new-instance v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$EmptyViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$EmptyViewHolder$1;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$EmptyViewHolder;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1994
    return-void
.end method
