.class Lcom/isaigu/gymapp/fragment/TrainFragment$6;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "TrainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/fragment/TrainFragment;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$6;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$6;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->isSomeoneStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    const-string/jumbo v0, "\u6309\u4e86\u5f00\u59cb/\u6682\u505c\u6240\u6709\u8bbe\u5907\u6309\u94ae1"

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$6;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->handleStartPauseAllUser(Z)V

    .line 302
    :goto_0
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$6;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$6;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->isSomeoneStart()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$300(Lcom/isaigu/gymapp/fragment/TrainFragment;Z)V

    .line 303
    return-void

    .line 299
    :cond_0
    const-string/jumbo v0, "\u6309\u4e86\u5f00\u59cb/\u6682\u505c\u6240\u6709\u8bbe\u5907\u6309\u94ae2"

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$6;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->handleStartPauseAllUser()V

    goto :goto_0
.end method
