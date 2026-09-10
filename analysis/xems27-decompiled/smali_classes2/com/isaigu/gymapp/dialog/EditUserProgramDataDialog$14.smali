.class Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$14;
.super Ljava/lang/Object;
.source "EditUserProgramDataDialog.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/AmountView$OnAmountClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 664
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$14;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAmountClick(Landroid/view/View;I)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "amount"    # I

    .line 666
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$14;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$14;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    const v2, 0x7f0d0053

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$14;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$2900(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$14;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$2900(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$14;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v5}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v5

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v5, v5, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    invoke-static {v3, v4, v5}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$300(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Ljava/util/List;I)I

    move-result v3

    new-instance v4, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$14$1;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$14$1;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$14;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/UIFactory;->showOptionView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILcom/isaigu/gymapp/UIFactory$OptionSelectListener;)V

    .line 672
    return-void
.end method
