.class Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$12;
.super Ljava/lang/Object;
.source "EditUserPersonalDataDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->onActivityResult(IILandroid/content/Intent;)V
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

    .line 619
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$12;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$12;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/BaseActivity;->showLoadingDialog()V

    .line 622
    return-void
.end method
