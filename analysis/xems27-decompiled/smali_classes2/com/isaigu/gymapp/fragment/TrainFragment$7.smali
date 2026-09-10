.class Lcom/isaigu/gymapp/fragment/TrainFragment$7;
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

    .line 307
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$7;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 309
    const-string v0, "\u6309\u4e86\u505c\u6b62\u6240\u6709\u8bbe\u5907\u6309\u94ae"

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$7;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->handleStopAllUser()V

    .line 311
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$7;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->isSomeoneStart()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$300(Lcom/isaigu/gymapp/fragment/TrainFragment;Z)V

    .line 312
    return-void
.end method
