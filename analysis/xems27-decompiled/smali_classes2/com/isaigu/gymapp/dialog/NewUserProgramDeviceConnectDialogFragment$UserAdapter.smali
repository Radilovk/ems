.class Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "NewUserProgramDeviceConnectDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$UserHolder;
    }
.end annotation


# instance fields
.field private selects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

.field private trainUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;)V"
        }
    .end annotation

    .line 772
    .local p2, "trainUsers":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUser;>;"
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 773
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->updateData(Ljava/util/List;)V

    .line 774
    return-void
.end method

.method static synthetic access$1600(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;

    .line 767
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->trainUsers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;Lcom/isaigu/gymapp/bean/TrainUser;)Z
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;
    .param p1, "x1"    # Lcom/isaigu/gymapp/bean/TrainUser;

    .line 767
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->isUserTraining(Lcom/isaigu/gymapp/bean/TrainUser;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;

    .line 767
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->selects:Ljava/util/List;

    return-object v0
.end method

.method private isUserTraining(Lcom/isaigu/gymapp/bean/TrainUser;)Z
    .locals 2
    .param p1, "trainUser"    # Lcom/isaigu/gymapp/bean/TrainUser;

    .line 841
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainingUsers:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainingUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 842
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainingUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 843
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainingUsers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 844
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainingUsers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_0

    .line 845
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/mgr/DataMgr;->trainingUsers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-virtual {v1, p1}, Lcom/isaigu/gymapp/bean/TrainUser;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 846
    const/4 v1, 0x1

    return v1

    .line 842
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 850
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->trainUsers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 856
    const/4 v0, 0x0

    return v0

    .line 858
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 803
    move-object v0, p1

    check-cast v0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$UserHolder;

    .line 804
    .local v0, "userHolder":Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$UserHolder;
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->trainUsers:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 805
    .local v1, "user":Lcom/isaigu/gymapp/bean/TrainUser;
    iget-object v2, v0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$UserHolder;->username:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 807
    :try_start_0
    iget-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    const-string v2, "sample"

    iget-object v5, v1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 810
    :cond_0
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v5, v1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    new-array v4, v4, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v5, Lcom/isaigu/gymapp/widget/GlideCircleTransform;

    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/isaigu/gymapp/widget/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v3

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$UserHolder;->usericon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_1

    .line 808
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    const v5, 0x7f0c0020

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    new-array v4, v4, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v5, Lcom/isaigu/gymapp/widget/GlideCircleTransform;

    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/isaigu/gymapp/widget/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v3

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$UserHolder;->usericon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    :goto_1
    goto :goto_2

    .line 812
    :catch_0
    move-exception v2

    .line 816
    :goto_2
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->selects:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 817
    iget-object v2, v0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$UserHolder;->itemView:Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3

    .line 819
    :cond_2
    iget-object v2, v0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$UserHolder;->itemView:Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600be

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 821
    :goto_3
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->trainUsers:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->isUserTraining(Lcom/isaigu/gymapp/bean/TrainUser;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 822
    iget-object v2, v0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$UserHolder;->itemView:Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060063

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 824
    :cond_3
    iget-object v2, v0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$UserHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$1;

    invoke-direct {v3, p0, p2}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$1;-><init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 838
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 797
    new-instance v0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$UserHolder;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0020

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$UserHolder;-><init>(Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;Landroid/view/View;)V

    .line 798
    .local v0, "holder":Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter$UserHolder;
    return-object v0
.end method

.method public setUserSelected(IZ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "selected"    # Z

    .line 788
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->selects:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->selects:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 792
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->notifyDataSetChanged()V

    .line 793
    return-void

    .line 789
    :cond_1
    :goto_0
    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;)V"
        }
    .end annotation

    .line 777
    .local p1, "trainUsers":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUser;>;"
    if-eqz p1, :cond_1

    .line 778
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->trainUsers:Ljava/util/List;

    .line 779
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->selects:Ljava/util/List;

    .line 780
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->trainUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 781
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->selects:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 783
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/NewUserProgramDeviceConnectDialogFragment$UserAdapter;->notifyDataSetChanged()V

    .line 785
    :cond_1
    return-void
.end method
