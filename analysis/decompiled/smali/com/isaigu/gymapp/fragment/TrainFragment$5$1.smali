.class Lcom/isaigu/gymapp/fragment/TrainFragment$5$1;
.super Ljava/lang/Object;
.source "TrainFragment.java"

# interfaces
.implements Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$SaveProgramListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment$5;->onNoDoubleClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$5;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/fragment/TrainFragment$5;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$5$1;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSaveProgram(Lcom/isaigu/gymapp/bean/TrainProgram;Ljava/util/List;)V
    .locals 8
    .param p1, "trainProgram"    # Lcom/isaigu/gymapp/bean/TrainProgram;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p2, "checks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 275
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$5$1;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$5;

    iget-object v6, v6, Lcom/isaigu/gymapp/fragment/TrainFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v6}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getmData()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 276
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$5$1;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$5;

    iget-object v5, v5, Lcom/isaigu/gymapp/fragment/TrainFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v5}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getmData()Ljava/util/List;

    move-result-object v6

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 277
    .local v4, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iget-object v5, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v3, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 278
    .local v3, "useType":I
    invoke-static {p1}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 279
    .local v0, "cloneProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    iget-object v2, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 280
    .local v2, "originalProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    iput-object v0, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 281
    iget-object v5, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iput-object v6, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 282
    iget-object v5, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->userId:Ljava/lang/Long;

    iput-object v6, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->userId:Ljava/lang/Long;

    .line 283
    iget-object v5, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    iput-object v6, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    .line 284
    iget-object v5, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iput v3, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 285
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$5$1;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$5;

    iget-object v5, v5, Lcom/isaigu/gymapp/fragment/TrainFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v5}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v7

    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$5$1;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$5;

    iget-object v5, v5, Lcom/isaigu/gymapp/fragment/TrainFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v5}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v5

    iget-object v5, v5, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v7, v5, v4, v6}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->access$200(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 274
    .end local v0    # "cloneProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    .end local v2    # "originalProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    .end local v3    # "useType":I
    .end local v4    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 288
    :cond_1
    return-void
.end method
