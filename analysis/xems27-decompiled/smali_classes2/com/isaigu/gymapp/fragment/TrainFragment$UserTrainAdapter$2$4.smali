.class Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4;
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

.field final synthetic val$bean:Lcom/isaigu/gymapp/bean/ProgramDataBean;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;Lcom/isaigu/gymapp/bean/ProgramDataBean;)V
    .locals 0
    .param p1, "this$2"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    .line 1193
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4;->val$bean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1195
    const/4 v0, 0x0

    .line 1196
    .local v0, "progress":I
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4;->val$bean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-eqz v1, :cond_0

    .line 1197
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4;->val$bean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x41f00000    # 30.0f

    mul-float v1, v1, v2

    float-to-int v0, v1

    .line 1199
    :cond_0
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setVisibility(I)V

    .line 1200
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setProgress(I)V

    .line 1201
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v4, 0x7f0600bb

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setWaveColor(I)V

    .line 1202
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1203
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4;->val$bean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    sub-int/2addr v1, v3

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4;->val$bean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    sub-int v2, v1, v2

    :goto_0
    move v1, v2

    .line 1204
    .local v1, "value":I
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1205
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1207
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4;->val$bean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    sub-int/2addr v2, v3

    if-gtz v2, :cond_3

    .line 1208
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4;->val$bean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-gtz v2, :cond_2

    .line 1209
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v4, v4, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4;->val$bean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v6, v6, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v6, v6, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    invoke-static {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->access$1200(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;Z)V

    .line 1211
    :cond_2
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4$1;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4$1;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$4;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Lcom/isaigu/gymapp/BaseActivity;->runDelay(Ljava/lang/Runnable;J)V

    .line 1245
    :cond_3
    return-void
.end method
