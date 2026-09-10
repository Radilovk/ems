.class public Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "UserRecordDataDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrainRecordAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter$TrainRecordHolder;
    }
.end annotation


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;",
            ">;)V"
        }
    .end annotation

    .line 149
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;>;"
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter;->this$0:Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 150
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter;->updateAdapter(Ljava/util/List;)V

    .line 151
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 192
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 194
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 9
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 170
    move-object v0, p1

    check-cast v0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter$TrainRecordHolder;

    .line 171
    .local v0, "userHolder":Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter$TrainRecordHolder;
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;

    .line 172
    .local v1, "recordVO":Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter$TrainRecordHolder;->textViews:[Landroid/widget/TextView;

    array-length v3, v3

    if-ge v2, v3, :cond_6

    .line 173
    if-nez v2, :cond_0

    .line 174
    iget-object v3, v0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter$TrainRecordHolder;->textViews:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    iget-object v4, v1, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->createTime:Ljava/util/Date;

    invoke-static {v4}, Lcom/isaigu/gymapp/utils/TimeUtils;->getDateWithFormat_yyyy_MM_dd(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 175
    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 176
    iget-object v3, v0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter$TrainRecordHolder;->textViews:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    iget-object v4, v1, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->trainName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 177
    :cond_1
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 178
    iget-object v3, v0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter$TrainRecordHolder;->textViews:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    iget v4, v1, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->strenth:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 179
    :cond_2
    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 180
    iget-object v3, v0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter$TrainRecordHolder;->textViews:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v1, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->hz:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " hz"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 181
    :cond_3
    const/4 v4, 0x4

    if-ne v2, v4, :cond_4

    .line 182
    iget-object v3, v0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter$TrainRecordHolder;->textViews:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v1, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->pulseWidth:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " us"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 183
    :cond_4
    const/4 v4, 0x5

    if-ne v2, v4, :cond_5

    .line 184
    iget-object v4, v0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter$TrainRecordHolder;->textViews:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v1, Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;->workLength:I

    int-to-float v7, v7

    const/high16 v8, 0x42700000    # 60.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v3, v6

    const-string v6, "%.1f"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " min"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 187
    .end local v2    # "i":I
    :cond_6
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 164
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter;->this$0:Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b006f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 165
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter$TrainRecordHolder;

    invoke-direct {v1, p0, v0}, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter$TrainRecordHolder;-><init>(Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public updateAdapter(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;",
            ">;)V"
        }
    .end annotation

    .line 154
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/vo/TrainRecordVO;>;"
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter;->mData:Ljava/util/List;

    .line 157
    :cond_0
    if-eqz p1, :cond_1

    .line 158
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter;->mData:Ljava/util/List;

    .line 159
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter;->notifyDataSetChanged()V

    .line 161
    :cond_1
    return-void
.end method
