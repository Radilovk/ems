.class Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$1;
.super Ljava/lang/Object;
.source "EditUserProgramDataDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$fi:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    iput p2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$1;->val$fi:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$000(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)[Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$1;->val$fi:I

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$1;->this$0:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;->access$000(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)[Landroid/widget/ImageView;

    move-result-object v0

    iget v2, p0, Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog$1;->val$fi:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    return-void

    .line 227
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
