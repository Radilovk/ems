.class Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$8;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "EditUserPersonalDataDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    .line 518
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$8;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 520
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$8;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$8;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    const v2, 0x7f0d00cc

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$8;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$1200(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$8$1;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$8$1;-><init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$8;)V

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Lcom/isaigu/gymapp/UIFactory;->showOptionView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILcom/isaigu/gymapp/UIFactory$OptionSelectListener;)V

    .line 526
    return-void
.end method
