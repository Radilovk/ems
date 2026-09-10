.class Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$8;
.super Ljava/lang/Object;
.source "UserProgramDeviceConnectDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$8;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 440
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 441
    .local v2, "text":Ljava/lang/String;
    const/4 v1, 0x0

    .line 442
    .local v1, "show":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUser;>;"
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 443
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$8;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->access$1100(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)Ljava/util/List;

    move-result-object v1

    .line 452
    :cond_0
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$8;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->access$1200(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$UserAdapter;->updateData(Ljava/util/List;)V

    .line 453
    return-void

    .line 445
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "show":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUser;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .restart local v1    # "show":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUser;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$8;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->access$1100(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 447
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$8;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->access$1100(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 448
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$8;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->access$1100(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 436
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 438
    return-void
.end method
