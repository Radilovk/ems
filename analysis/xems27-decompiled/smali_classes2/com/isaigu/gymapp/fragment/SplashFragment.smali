.class public Lcom/isaigu/gymapp/fragment/SplashFragment;
.super Lcom/isaigu/gymapp/BaseFragment;
.source "SplashFragment.java"


# instance fields
.field private logoImage:Landroid/widget/ImageView;

.field private splashImage:Landroid/widget/ImageView;

.field private verText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/isaigu/gymapp/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/fragment/SplashFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/SplashFragment;

    .line 38
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SplashFragment;->logoImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/fragment/SplashFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/fragment/SplashFragment;

    .line 38
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SplashFragment;->splashImage:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 53
    invoke-super {p0, p1, p2, p3}, Lcom/isaigu/gymapp/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0901e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/SplashFragment;->verText:Landroid/widget/TextView;

    .line 57
    const/16 v1, 0x1388

    .line 58
    .local v1, "delayTime":I
    const v2, 0x7f090182

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/isaigu/gymapp/fragment/SplashFragment;->splashImage:Landroid/widget/ImageView;

    .line 59
    const v2, 0x7f0900f6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/isaigu/gymapp/fragment/SplashFragment;->logoImage:Landroid/widget/ImageView;

    .line 60
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SplashFragment;->logoImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SplashFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v3

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/fragment/SplashFragment;->logoImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/SplashFragment;->verText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/fragment/SplashFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/utils/AndroidUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    new-instance v2, Lcom/isaigu/gymapp/fragment/SplashFragment$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/SplashFragment$1;-><init>(Lcom/isaigu/gymapp/fragment/SplashFragment;)V

    int-to-long v3, v1

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/utils/TimerUtils;->delayCallback(Ljava/lang/Runnable;J)Ljava/util/Timer;

    .line 150
    new-instance v2, Lcom/isaigu/gymapp/fragment/SplashFragment$2;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/SplashFragment$2;-><init>(Lcom/isaigu/gymapp/fragment/SplashFragment;)V

    invoke-static {v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->getSplashScreen(Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;)V

    .line 167
    return-object v0
.end method

.method protected viewId()I
    .locals 1

    .line 47
    const v0, 0x7f0b0068

    return v0
.end method
