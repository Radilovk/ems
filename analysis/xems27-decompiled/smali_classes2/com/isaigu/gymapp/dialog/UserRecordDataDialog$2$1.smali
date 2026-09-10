.class Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$2$1;
.super Ljava/lang/Object;
.source "UserRecordDataDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$2;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$2;

.field final synthetic val$trainRecordVOList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$2;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$2;

    .line 133
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$2$1;->this$1:Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$2;

    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$2$1;->val$trainRecordVOList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 135
    new-instance v0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$2$1;->this$1:Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$2;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$2;->this$0:Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$2$1;->val$trainRecordVOList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter;-><init>(Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;Ljava/util/List;)V

    .line 136
    .local v0, "adapter":Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter;
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$2$1;->this$1:Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$2;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$2;->this$0:Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;->access$000(Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 137
    return-void
.end method
