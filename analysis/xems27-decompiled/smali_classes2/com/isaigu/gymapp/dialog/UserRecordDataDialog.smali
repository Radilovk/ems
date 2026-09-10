.class public Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;
.super Lcom/isaigu/gymapp/BaseDialogFragment;
.source "UserRecordDataDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$TrainRecordAdapter;
    }
.end annotation


# instance fields
.field private close:Landroid/widget/Button;

.field private idprogram:Landroid/widget/TextView;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

.field private userIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;

    .line 39
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private initData(Lcom/isaigu/gymapp/bean/TrainUser;)V
    .locals 3
    .param p1, "trainUser"    # Lcom/isaigu/gymapp/bean/TrainUser;

    .line 123
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    const-string v1, "sample"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;->userIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_1

    .line 124
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    const v1, 0x7f0c0020

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;->userIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 129
    :goto_1
    iget-wide v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    new-instance v2, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$2;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$2;-><init>(Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;)V

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->getTrainRecordList(JLcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 143
    return-void
.end method

.method private initListener()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;->close:Landroid/widget/Button;

    new-instance v1, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog$1;-><init>(Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 99
    const v0, 0x7f0901d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 100
    const v0, 0x7f090078

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;->close:Landroid/widget/Button;

    .line 102
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 103
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/isaigu/gymapp/widget/SpacesItemDecoration;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/widget/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 104
    const v0, 0x7f0901ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;->userIcon:Landroid/widget/ImageView;

    .line 106
    const v0, 0x7f0900bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;->idprogram:Landroid/widget/TextView;

    .line 109
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method


# virtual methods
.method public getViewIid()I
    .locals 1

    .line 51
    const v0, 0x7f0b0074

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;->initView(Landroid/view/View;)V

    .line 62
    invoke-direct {p0}, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;->initListener()V

    .line 64
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 65
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 66
    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUser;

    iput-object v2, p0, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 67
    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;->initData(Lcom/isaigu/gymapp/bean/TrainUser;)V

    .line 70
    :cond_0
    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .line 93
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseDialogFragment;->onDestroyView()V

    .line 94
    return-void
.end method

.method public onStart()V
    .locals 6

    .line 75
    invoke-super {p0}, Lcom/isaigu/gymapp/BaseDialogFragment;->onStart()V

    .line 76
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 78
    .local v0, "win":Landroid/view/Window;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 81
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 83
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 85
    .local v3, "params":Landroid/view/WindowManager$LayoutParams;
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    const v5, 0x3f666666    # 0.9f

    mul-float v4, v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 86
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 87
    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 88
    invoke-virtual {p0}, Lcom/isaigu/gymapp/dialog/UserRecordDataDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 89
    return-void
.end method
