.class Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$1;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "UserRecordDataDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;

    .line 114
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 117
    return-void
.end method
