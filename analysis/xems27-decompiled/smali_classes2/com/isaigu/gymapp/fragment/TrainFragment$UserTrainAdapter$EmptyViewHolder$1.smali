.class Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$EmptyViewHolder$1;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "TrainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$EmptyViewHolder;-><init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$EmptyViewHolder;

.field final synthetic val$this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$EmptyViewHolder;Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;)V
    .locals 0
    .param p1, "this$2"    # Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$EmptyViewHolder;

    .line 1988
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$EmptyViewHolder$1;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$EmptyViewHolder;

    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$EmptyViewHolder$1;->val$this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 1990
    new-instance v0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;-><init>()V

    .line 1991
    .local v0, "fragment":Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$EmptyViewHolder$1;->this$2:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$EmptyViewHolder;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$EmptyViewHolder;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/fragment/TrainFragment;->showDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 1992
    return-void
.end method
