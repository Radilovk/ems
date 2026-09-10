.class Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$2;
.super Ljava/lang/Object;
.source "TrainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    .line 1156
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$2;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1158
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$2;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$2;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$2;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$2;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget v3, v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$position:I

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->access$900(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 1159
    return-void
.end method
