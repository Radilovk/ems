.class Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$2;
.super Ljava/lang/Object;
.source "EditUserPersonalDataDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->showList(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$OnChooseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

.field final synthetic val$callback:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$OnChooseCallback;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$OnChooseCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    .line 260
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$2;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$2;->val$callback:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$OnChooseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 263
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$2;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->access$200(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 264
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$2;->val$callback:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$OnChooseCallback;

    if-eqz v0, :cond_0

    .line 265
    invoke-interface {v0, p2}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$OnChooseCallback;->onChoose(I)V

    .line 267
    :cond_0
    return-void
.end method
