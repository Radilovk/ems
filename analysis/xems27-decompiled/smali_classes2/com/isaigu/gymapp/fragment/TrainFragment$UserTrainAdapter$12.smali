.class Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$12;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "TrainFragment.java"


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

.field final synthetic val$position:I

.field final synthetic val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

.field final synthetic val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    .line 1676
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$12;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$12;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iput-object p3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$12;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iput p4, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$12;->val$position:I

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 1678
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$12;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$12;->val$userHolder:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$12;->val$wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v3, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$12;->val$position:I

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->access$1800(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;II)V

    .line 1679
    return-void
.end method
