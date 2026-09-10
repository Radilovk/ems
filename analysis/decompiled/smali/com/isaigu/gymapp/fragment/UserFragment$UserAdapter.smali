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
            "Ljava/util/List",
            "<",
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
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;)V"
        }
    .end annotation

    .prologue
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

    .prologue
    .line 159
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->mData:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 238
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 12
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 185
    move-object v4, p1

    check-cast v4, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;

    .line 186
    .local v4, "userHolder":Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;
    iget-object v5, v4, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->itemView:Landroid/view/View;

    new-instance v6, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$1;

    invoke-direct {v6, p0, p2}, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$1;-><init>(Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->mData:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 198
    .local v3, "user":Lcom/isaigu/gymapp/bean/TrainUser;
    :try_start_0
    iget-object v5, v3, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "sample"

    iget-object v6, v3, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 199
    :cond_0
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/fragment/UserFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    const v6, 0x7f03001c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    const/4 v7, 0x0

    new-instance v8, Lcom/isaigu/gymapp/widget/GlideCircleTransform;

    iget-object v9, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-virtual {v9}, Lcom/isaigu/gymapp/fragment/UserFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/isaigu/gymapp/widget/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->usericon:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    iget-object v5, v4, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->sex:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/fragment/UserFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v6

    iget-object v7, v3, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/mgr/CommonUtils;->getGenderString(Landroid/content/Context;Lcom/isaigu/gymapp/bean/Gender;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    const v6, 0x7f08003e

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/fragment/UserFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "dateFormat":Ljava/lang/String;
    iget-object v6, v4, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->registertime:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/isaigu/gymapp/bean/TrainUser;->createTime:Ljava/util/Date;

    if-nez v5, :cond_4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    :goto_1
    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v5, v4, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->username:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v5, v4, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->height:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    const v7, 0x7f08004d

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/fragment/UserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    iget v8, v3, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v5, v4, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->weight:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    const v7, 0x7f0800cd

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/fragment/UserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    iget v8, v3, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    invoke-static {v4}, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->access$300(Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;)Landroid/widget/TextView;

    move-result-object v5

    add-int/lit8 v6, p2, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v5

    iget-object v6, v3, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/mgr/DataMgr;->getProgramData(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 215
    .local v0, "dataBean":Lcom/isaigu/gymapp/bean/TrainProgram;
    if-eqz v0, :cond_1

    .line 216
    iget-object v5, v4, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->trainname:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :cond_1
    iget-object v5, v4, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->recordImage:Landroid/widget/ImageView;

    new-instance v6, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$2;

    invoke-direct {v6, p0, v3}, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$2;-><init>(Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;Lcom/isaigu/gymapp/bean/TrainUser;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v5

    iget-object v6, v3, Lcom/isaigu/gymapp/bean/TrainUser;->inputId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/mgr/DataMgr;->getUserUsedTrainType(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 228
    .local v2, "programDataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    if-eqz v2, :cond_2

    .line 229
    iget-object v5, v4, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->traindata:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    const v7, 0x7f0800bf

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/fragment/UserFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    div-int/lit8 v8, v8, 0x3c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    iget v8, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    const/4 v8, 0x2

    iget v9, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget v9, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :cond_2
    return-void

    .line 201
    .end local v0    # "dataBean":Lcom/isaigu/gymapp/bean/TrainProgram;
    .end local v1    # "dateFormat":Ljava/lang/String;
    .end local v2    # "programDataBean":Lcom/isaigu/gymapp/bean/ProgramDataBean;
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/fragment/UserFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    iget-object v6, v3, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    const/4 v7, 0x0

    new-instance v8, Lcom/isaigu/gymapp/widget/GlideCircleTransform;

    iget-object v9, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-virtual {v9}, Lcom/isaigu/gymapp/fragment/UserFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/isaigu/gymapp/widget/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter$UserHolder;->usericon:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 203
    :catch_0
    move-exception v5

    goto/16 :goto_0

    .line 209
    .restart local v1    # "dateFormat":Ljava/lang/String;
    :cond_4
    iget-object v5, v3, Lcom/isaigu/gymapp/bean/TrainUser;->createTime:Ljava/util/Date;

    goto/16 :goto_1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 179
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/UserFragment$UserAdapter;->this$0:Lcom/isaigu/gymapp/fragment/UserFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/UserFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04006e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

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
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;)V"
        }
    .end annotation

    .prologue
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
