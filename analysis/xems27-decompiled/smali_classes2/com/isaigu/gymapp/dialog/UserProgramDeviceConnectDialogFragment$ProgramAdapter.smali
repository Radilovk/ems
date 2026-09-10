.class Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "UserProgramDeviceConnectDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProgramAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter$ProgramHolder;
    }
.end annotation


# instance fields
.field private dataBeen:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            ">;"
        }
    .end annotation
.end field

.field private selects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            ">;)V"
        }
    .end annotation

    .line 807
    .local p2, "dataBeen":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 808
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;->updateDataBean(Ljava/util/List;)V

    .line 809
    return-void
.end method

.method static synthetic access$2000(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;

    .line 802
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;->selects:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;

    .line 802
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;->dataBeen:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;->dataBeen:Ljava/util/List;

    if-nez v0, :cond_0

    .line 867
    const/4 v0, 0x0

    return v0

    .line 869
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 10
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 835
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;->dataBeen:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 836
    .local v0, "data":Lcom/isaigu/gymapp/bean/TrainProgram;
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 837
    .local v1, "programDataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    move-object v2, p1

    check-cast v2, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter$ProgramHolder;

    .line 838
    .local v2, "programHolder":Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter$ProgramHolder;
    iget-object v3, v2, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter$ProgramHolder;->programname:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 839
    iget-object v3, v2, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter$ProgramHolder;->programvalue:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    const v5, 0x7f0d00e6

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    div-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget v6, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    iget v6, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x2

    aput-object v6, v5, v9

    iget v6, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x3

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 841
    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;->selects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, p2, :cond_0

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;->selects:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 843
    iget-object v3, v2, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter$ProgramHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 846
    :cond_0
    iget-object v3, v2, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter$ProgramHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setPressed(Z)V

    .line 850
    :goto_0
    iget-object v3, v2, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter$ProgramHolder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter$1;

    invoke-direct {v4, p0, p2}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter$1;-><init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 862
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 830
    new-instance v0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter$ProgramHolder;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;->this$0:Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b005b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter$ProgramHolder;-><init>(Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method public setTrainProgramSelected(IZ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "selected"    # Z

    .line 822
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;->selects:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;->selects:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 826
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;->notifyDataSetChanged()V

    .line 827
    return-void

    .line 823
    :cond_1
    :goto_0
    return-void
.end method

.method public updateDataBean(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            ">;)V"
        }
    .end annotation

    .line 812
    .local p1, "dataBeen":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainProgram;>;"
    if-eqz p1, :cond_1

    .line 813
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;->dataBeen:Ljava/util/List;

    .line 814
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;->selects:Ljava/util/List;

    .line 815
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;->dataBeen:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 816
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;->selects:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 815
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 818
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserProgramDeviceConnectDialogFragment$ProgramAdapter;->notifyDataSetChanged()V

    .line 820
    :cond_1
    return-void
.end method
