.class Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;
.super Ljava/lang/Object;
.source "TrainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;)V
    .locals 0
    .param p1, "this$3"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    .line 1265
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1267
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->val$bean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    const/high16 v1, 0x41f00000    # 30.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-lez v0, :cond_2

    .line 1268
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iput v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 1269
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iput-boolean v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    .line 1270
    const/4 v0, 0x0

    .line 1271
    .local v0, "progress":I
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v4, v4, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->val$bean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v4, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-eqz v4, :cond_0

    .line 1272
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v4, v4, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v4, v4, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    int-to-float v4, v4

    mul-float v4, v4, v2

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->val$bean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    int-to-float v2, v2

    div-float/2addr v4, v2

    mul-float v4, v4, v1

    float-to-int v0, v4

    .line 1274
    :cond_0
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v1, v3}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setVisibility(I)V

    .line 1275
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setProgress(I)V

    .line 1276
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v4, 0x7f0600bb

    invoke-virtual {v2, v4}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setWaveColor(I)V

    .line 1277
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1278
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->val$bean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    sub-int/2addr v1, v2

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->val$bean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    sub-int v3, v1, v2

    :goto_0
    move v1, v3

    .line 1279
    .local v1, "value":I
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1280
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1281
    .end local v0    # "progress":I
    .end local v1    # "value":I
    goto/16 :goto_2

    .line 1282
    :cond_2
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iput v3, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 1283
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    .line 1284
    const/4 v0, 0x0

    .line 1285
    .restart local v0    # "progress":I
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v4, v4, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->val$bean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v4, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-eqz v4, :cond_3

    .line 1286
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v4, v4, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v4, v4, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    int-to-float v4, v4

    mul-float v4, v4, v2

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->val$bean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v2, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    int-to-float v2, v2

    div-float/2addr v4, v2

    mul-float v4, v4, v1

    float-to-int v0, v4

    .line 1288
    :cond_3
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v1, v3}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setVisibility(I)V

    .line 1289
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setProgress(I)V

    .line 1290
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v4, 0x7f0600bc

    invoke-virtual {v2, v4}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->setWaveColor(I)V

    .line 1291
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1292
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->val$bean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    sub-int/2addr v1, v2

    if-gez v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->val$bean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    sub-int v3, v1, v2

    :goto_1
    move v1, v3

    .line 1293
    .restart local v1    # "value":I
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1294
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5$1;->this$3:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2$5;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$2;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1296
    .end local v0    # "progress":I
    .end local v1    # "value":I
    :goto_2
    return-void
.end method
