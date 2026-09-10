.class Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$9;
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

    .line 455
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$9;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "editable"    # Landroid/text/Editable;

    .line 461
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x0

    .line 463
    .local v1, "show":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$9;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->access$000(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 466
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 467
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$9;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->access$000(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 468
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$9;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->access$000(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 469
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$9;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->access$000(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 473
    .end local v2    # "i":I
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$9;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->access$100(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;)Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;->updateDataBean(Ljava/util/List;)V

    .line 474
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .line 457
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .line 459
    return-void
.end method
