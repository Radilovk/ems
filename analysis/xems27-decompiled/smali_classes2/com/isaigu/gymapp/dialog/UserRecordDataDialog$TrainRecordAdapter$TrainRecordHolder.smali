.class Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter$TrainRecordHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "UserRecordDataDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrainRecordHolder"
.end annotation


# instance fields
.field textViews:[Landroid/widget/TextView;

.field final synthetic this$1:Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter;Landroid/view/View;)V
    .locals 2
    .param p2, "itemView"    # Landroid/view/View;

    .line 203
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter$TrainRecordHolder;->this$1:Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter;

    .line 204
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 206
    const/4 p1, 0x6

    new-array p1, p1, [Landroid/widget/TextView;

    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter$TrainRecordHolder;->textViews:[Landroid/widget/TextView;

    .line 207
    const v0, 0x7f09019f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 208
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter$TrainRecordHolder;->textViews:[Landroid/widget/TextView;

    const v0, 0x7f0901a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 209
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter$TrainRecordHolder;->textViews:[Landroid/widget/TextView;

    const v0, 0x7f0901a2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x2

    aput-object v0, p1, v1

    .line 210
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter$TrainRecordHolder;->textViews:[Landroid/widget/TextView;

    const v0, 0x7f0901a3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x3

    aput-object v0, p1, v1

    .line 211
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter$TrainRecordHolder;->textViews:[Landroid/widget/TextView;

    const v0, 0x7f0901a4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x4

    aput-object v0, p1, v1

    .line 212
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter$TrainRecordHolder;->textViews:[Landroid/widget/TextView;

    const v0, 0x7f0901a5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x5

    aput-object v0, p1, v1

    .line 213
    return-void
.end method
