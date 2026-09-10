.class Lcom/isaigu/gymapp/fragment/SplashFragment$2$1;
.super Ljava/lang/Object;
.source "SplashFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/SplashFragment$2;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/SplashFragment$2;

.field final synthetic val$splashScreenVO:Lcom/isaigu/gymapp/bean/vo/SplashScreenVO;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/SplashFragment$2;Lcom/isaigu/gymapp/bean/vo/SplashScreenVO;)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/fragment/SplashFragment$2;

    .line 155
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$2$1;->this$1:Lcom/isaigu/gymapp/fragment/SplashFragment$2;

    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$2$1;->val$splashScreenVO:Lcom/isaigu/gymapp/bean/vo/SplashScreenVO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$2$1;->this$1:Lcom/isaigu/gymapp/fragment/SplashFragment$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SplashFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/SplashFragment;->access$000(Lcom/isaigu/gymapp/fragment/SplashFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$2$1;->this$1:Lcom/isaigu/gymapp/fragment/SplashFragment$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SplashFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;

    invoke-static {v0}, Lcom/isaigu/gymapp/fragment/SplashFragment;->access$100(Lcom/isaigu/gymapp/fragment/SplashFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$2$1;->this$1:Lcom/isaigu/gymapp/fragment/SplashFragment$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SplashFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/SplashFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$2$1;->val$splashScreenVO:Lcom/isaigu/gymapp/bean/vo/SplashScreenVO;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/vo/SplashScreenVO;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$2$1;->this$1:Lcom/isaigu/gymapp/fragment/SplashFragment$2;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/SplashFragment$2;->this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;

    invoke-static {v1}, Lcom/isaigu/gymapp/fragment/SplashFragment;->access$100(Lcom/isaigu/gymapp/fragment/SplashFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 160
    return-void
.end method
