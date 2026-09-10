.class Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$4$1;
.super Ljava/lang/Object;
.source "EditUserPersonalDataDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$4;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$4;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$4;)V
    .locals 0
    .param p1, "this$2"    # Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$4;

    .line 467
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$4$1;->this$2:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 469
    const/16 v0, 0x68

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 470
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$4$1;->this$2:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$4;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$4;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$4$1;->this$2:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$4;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6$4;->this$1:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog$6;->this$0:Lcom/isaigu/gymapp/dialog/EditUserPersonalDataDialog;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->closeDialogFragment(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 471
    return-void
.end method
