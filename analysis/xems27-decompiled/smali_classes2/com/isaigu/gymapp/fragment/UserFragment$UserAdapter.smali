.class public Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "UserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/fragment/UserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;
    }
.end annotation


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/UserFragment;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/fragment/UserFragment;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/fragment/UserFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;)V"
        }
    .end annotation

    .line 163
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUser;>;"
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 164
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->updateAdapter(Ljava/util/List;)V

    .line 165
    return-void
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;

    .line 159
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->mData:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 236
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 238
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 11
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 185
    move-object v0, p1

    check-cast v0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;

    .line 186
    .local v0, "userHolder":Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;
    iget-object v1, v0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$1;-><init>(Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 198
    .local v1, "user":Lcom/isaigu/gymapp/bean/TrainUser;
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "sample"

    iget-object v5, v1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/fragment/UserFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    iget-object v5, v1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    new-array v5, v3, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v6, Lcom/isaigu/gymapp/widget/GlideCircleTransform;

    iget-object v7, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-virtual {v7}, Lcom/isaigu/gymapp/fragment/UserFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/isaigu/gymapp/widget/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v6, v5, v2

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->usericon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_1

    .line 199
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/fragment/UserFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    const v5, 0x7f0c0020

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    new-array v5, v3, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v6, Lcom/isaigu/gymapp/widget/GlideCircleTransform;

    iget-object v7, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-virtual {v7}, Lcom/isaigu/gymapp/fragment/UserFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/isaigu/gymapp/widget/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v6, v5, v2

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->usericon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_1
    goto :goto_2

    .line 203
    :catch_0
    move-exception v4

    .line 206
    :goto_2
    iget-object v4, v0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->sex:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/fragment/UserFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v5

    iget-object v6, v1, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/mgr/CommonUtils;->getGenderString(Landroid/content/Context;Lcom/isaigu/gymapp/bean/Gender;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v4, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    const v5, 0x7f0d004b

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/fragment/UserFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, "dateFormat":Ljava/lang/String;
    iget-object v5, v0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->registertime:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/isaigu/gymapp/bean/TrainUser;->createTime:Ljava/util/Date;

    if-nez v6, :cond_2

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    goto :goto_3

    :cond_2
    iget-object v6, v1, Lcom/isaigu/gymapp/bean/TrainUser;->createTime:Ljava/util/Date;

    :goto_3
    invoke-static {v4, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v5, v0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->username:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v5, v0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->height:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    const v7, 0x7f0d005a

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/fragment/UserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    iget v8, v1, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v5, v0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->weight:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    const v7, 0x7f0d00f4

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/fragment/UserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    iget v8, v1, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->access$300(Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;)Landroid/widget/TextView;

    move-result-object v5

    add-int/lit8 v6, p2, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v5

    iget-object v6, v1, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/mgr/DataMgr;->getProgramData(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v5

    .line 215
    .local v5, "dataBean":Lcom/isaigu/gymapp/bean/TrainProgram;
    if-eqz v5, :cond_3

    .line 216
    iget-object v6, v0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->trainname:Landroid/widget/TextView;

    iget-object v7, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :cond_3
    iget-object v6, v0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->recordImage:Landroid/widget/ImageView;

    new-instance v7, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$2;

    invoke-direct {v7, p0, v1}, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$2;-><init>(Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;Lcom/isaigu/gymapp/bean/TrainUser;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v6

    iget-object v7, v1, Lcom/isaigu/gymapp/bean/TrainUser;->inputId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/mgr/DataMgr;->getUserUsedTrainType(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v6

    .line 228
    .local v6, "programDataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    if-eqz v6, :cond_4

    .line 229
    iget-object v7, v0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->traindata:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    const v9, 0x7f0d00e6

    invoke-virtual {v8, v9}, Lcom/isaigu/gymapp/fragment/UserFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    div-int/lit8 v10, v10, 0x3c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    iget v2, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v3

    const/4 v2, 0x2

    iget v3, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v2, 0x3

    iget v3, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v2

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :cond_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 179
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/UserFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0072

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 180
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;

    invoke-direct {v1, p0, v0}, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;-><init>(Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public updateAdapter(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;)V"
        }
    .end annotation

    .line 168
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/TrainUser;>;"
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->mData:Ljava/util/List;

    .line 171
    :cond_0
    if-eqz p1, :cond_1

    .line 172
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->mData:Ljava/util/List;

    .line 173
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->notifyDataSetChanged()V

    .line 175
    :cond_1
    return-void
.end method
