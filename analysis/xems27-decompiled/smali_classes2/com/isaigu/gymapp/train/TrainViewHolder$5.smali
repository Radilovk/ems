.class Lcom/isaigu/gymapp/train/TrainViewHolder$5;
.super Ljava/lang/Object;
.source "TrainViewHolder.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/VerticalColorSeekBar$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/TrainViewHolder;->setBarsListener(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/TrainViewHolder;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/train/TrainViewHolder;

    .line 339
    iput-object p1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$5;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    iput p2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$5;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnStateChangeListener(Landroid/view/View;F)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "p"    # F

    .line 342
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$5;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 343
    .local v0, "programDataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$5;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v1}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$600(Lcom/isaigu/gymapp/train/TrainViewHolder;)[Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$5;->val$index:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$5;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v2}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$500(Lcom/isaigu/gymapp/train/TrainViewHolder;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d006e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v4, p2, v4

    iget v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-float v5, v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    return-void
.end method

.method public onStopTrackingTouch(Landroid/view/View;F)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "p"    # F

    .line 348
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$5;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 349
    .local v0, "programDataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    iget v2, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$5;->val$index:I

    float-to-int v3, p2

    aput v3, v1, v2

    .line 350
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$5;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v1}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$100(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    .line 351
    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$5;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v1}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$200(Lcom/isaigu/gymapp/train/TrainViewHolder;)V

    .line 352
    return-void
.end method
