.class Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$46;
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

    .line 935
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$46;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAmountClick(Landroid/view/View;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "amount"    # I

    .line 937
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$46;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    const v1, 0x7f0d003d

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4, v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$100(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;IIILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 938
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/PickerViewData;>;"
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$46;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$46;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    const v3, 0x7f0d0027

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$46;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v4

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget v4, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->massageCycle:I

    invoke-static {v3, v0, v4}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$300(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Ljava/util/List;I)I

    move-result v3

    new-instance v4, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$46$1;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$46$1;-><init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$46;)V

    invoke-static {v1, v2, v0, v3, v4}, Lcom/isaigu/gymapp/UIFactory;->showOptionView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILcom/isaigu/gymapp/UIFactory$OptionSelectListener;)V

    .line 944
    return-void
.end method
