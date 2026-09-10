.class Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;
.super Ljava/lang/Object;
.source "TrainFragment.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/VerticalColorSeekBar$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->addListener(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

.field final synthetic val$fi:I

.field final synthetic val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

.field final synthetic val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    .line 1498
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iput-object p3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iput p4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;->val$fi:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnStateChangeListener(Landroid/view/View;F)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "progress"    # F

    .line 1500
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 1501
    .local v0, "programDataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    float-to-int v1, p2

    .line 1503
    .local v1, "p":I
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->textViews:[Landroid/widget/TextView;

    iget v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;->val$fi:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v4, 0x7f0d006e

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    int-to-float v5, v1

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    iget v6, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v6, v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1504
    return-void
.end method

.method public onStopTrackingTouch(Landroid/view/View;F)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "progress"    # F

    .line 1506
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 1507
    .local v0, "programDataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    iget v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    const/high16 v2, 0x42c80000    # 100.0f

    const/16 v3, 0x55

    if-lt v1, v3, :cond_3

    .line 1508
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    iget v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;->val$fi:I

    aget v1, v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v3, v3

    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 1509
    .local v1, "currentValue":I
    div-float v3, p2, v2

    iget v4, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v4, v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 1510
    .local v3, "targetValue":I
    rsub-int/lit8 v4, v1, 0x46

    const/4 v5, 0x5

    if-le v4, v5, :cond_1

    .line 1511
    const/16 v4, 0x46

    if-lt v3, v4, :cond_0

    .line 1512
    const/16 v1, 0x46

    goto :goto_0

    .line 1514
    :cond_0
    move v1, v3

    goto :goto_0

    .line 1517
    :cond_1
    sub-int v4, v3, v1

    const/16 v5, 0xa

    if-le v4, v5, :cond_2

    .line 1518
    add-int/2addr v1, v5

    goto :goto_0

    .line 1520
    :cond_2
    move v1, v3

    .line 1523
    :goto_0
    iget-object v4, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    iget v5, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;->val$fi:I

    int-to-float v6, v1

    mul-float v6, v6, v2

    iget v7, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    aput v6, v4, v5

    .line 1524
    .end local v1    # "currentValue":I
    .end local v3    # "targetValue":I
    goto :goto_1

    .line 1525
    :cond_3
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    iget v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;->val$fi:I

    float-to-int v4, p2

    aput v4, v1, v3

    .line 1527
    :goto_1
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/bean/PartStrenthBean;->getMaxBodyStrenth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v5, v5

    mul-float v4, v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "maxBodyStrenth"

    invoke-static {v1, v3, v5, v4}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->access$1700(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1528
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/bean/PartStrenthBean;->getMinBodyStrenth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v5, v5

    mul-float v4, v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "minBodyStrenth"

    invoke-static {v1, v3, v5, v4}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->access$1700(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1530
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->verticalColorSeekBars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    iget v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;->val$fi:I

    aget-object v1, v1, v3

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    iget v4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;->val$fi:I

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setProgress(F)V

    .line 1531
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->textViews:[Landroid/widget/TextView;

    iget v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;->val$fi:I

    aget-object v1, v1, v3

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v3, v3, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    const v4, 0x7f0d006e

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    iget v7, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;->val$fi:I

    aget v6, v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v2

    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v2, v2

    mul-float v6, v6, v2

    float-to-int v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1532
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$8;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    invoke-static {v1, v2, v3, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->access$1600(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Ljava/lang/String;ILcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 1533
    return-void
.end method
