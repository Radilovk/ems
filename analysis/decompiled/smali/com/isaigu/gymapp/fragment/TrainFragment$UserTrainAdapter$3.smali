.class Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$3;
.super Ljava/lang/Object;
.source "TrainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->handleConnectionStatusChange(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

.field final synthetic val$connected:Z

.field final synthetic val$macAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    .prologue
    .line 1295
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$3;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$3;->val$macAddress:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$3;->val$connected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 1297
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$3;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-static {v4}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->access$1300(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 1298
    move v0, v2

    .line 1299
    .local v0, "fi":I
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$3;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-static {v4}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->access$1300(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 1300
    .local v3, "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$3;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v4, v4, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->userTrainControlHolders:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    .line 1301
    .local v1, "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    if-eqz v1, :cond_2

    iget-object v4, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$3;->val$macAddress:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/utils/MacUtils;->equalsMac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1302
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$3;->val$macAddress:Ljava/lang/String;

    iput-object v4, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$3;->val$connected:Z

    iput-boolean v4, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    .line 1303
    iget-boolean v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$3;->val$connected:Z

    if-nez v4, :cond_0

    .line 1304
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$3;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$3;->val$macAddress:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->access$1400(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Ljava/lang/String;)V

    .line 1306
    :cond_0
    iput-boolean v6, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    .line 1307
    iput-boolean v6, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    .line 1308
    iput v6, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 1310
    iget-object v4, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1311
    iget-object v4, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1312
    iget-object v4, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v4, v7}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setVisibility(I)V

    .line 1313
    iget-object v4, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v4, v6}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setProgress(I)V

    .line 1314
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$3;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-static {v4, v1, v3, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->access$200(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V

    .line 1315
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$3;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-static {v4, v1, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->access$1500(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V

    .line 1319
    .end local v0    # "fi":I
    .end local v1    # "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .end local v3    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :cond_1
    return-void

    .line 1297
    .restart local v0    # "fi":I
    .restart local v1    # "holder":Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
    .restart local v3    # "wrapper":Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
