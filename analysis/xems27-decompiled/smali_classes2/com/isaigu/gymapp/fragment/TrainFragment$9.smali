.class Lcom/isaigu/gymapp/fragment/TrainFragment$9;
.super Ljava/lang/Object;
.source "TrainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment;->handleDeviceConnectedRefreshUI(Lcom/isaigu/gymapp/message/DataBundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

.field final synthetic val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/fragment/TrainFragment;

    .line 384
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$9;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$9;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$9;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$9;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->addUser(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V

    .line 387
    return-void
.end method
