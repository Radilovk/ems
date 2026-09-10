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

    .line 273
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
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 275
    .local p2, "checks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 276
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$5$1;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$5;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getmData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 277
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$5$1;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$5;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->getmData()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 278
    .local v1, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iget-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v2, v2, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 279
    .local v2, "useType":I
    invoke-static {p1}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 280
    .local v3, "cloneProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    iget-object v4, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 281
    .local v4, "originalProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    iput-object v3, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 282
    iget-object v5, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iput-object v6, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 283
    iget-object v5, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->userId:Ljava/lang/Long;

    iput-object v6, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->userId:Ljava/lang/Long;

    .line 284
    iget-object v5, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v6, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    iput-object v6, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    .line 285
    iget-object v5, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iput v2, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 286
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$5$1;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$5;

    iget-object v5, v5, Lcom/isaigu/gymapp/fragment/TrainFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v5}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$5$1;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$5;

    iget-object v6, v6, Lcom/isaigu/gymapp/fragment/TrainFragment$5;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-static {v6}, Lcom/isaigu/gymapp/fragment/TrainFragment;->access$000(Lcom/isaigu/gymapp/fragment/TrainFragment;)Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    move-result-object v6

    iget-object v6, v6, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v5, v6, v1, v7}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->access$200(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 275
    .end local v1    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    .end local v2    # "useType":I
    .end local v3    # "cloneProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    .end local v4    # "originalProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 289
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
