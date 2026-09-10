.class Lcom/isaigu/gymapp/fragment/SettingFragment$20$1$1;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/SettingFragment$20$1;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/isaigu/gymapp/fragment/SettingFragment$20$1;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/SettingFragment$20$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/isaigu/gymapp/fragment/SettingFragment$20$1;

    .line 610
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$20$1$1;->this$2:Lcom/isaigu/gymapp/fragment/SettingFragment$20$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$20$1$1;->this$2:Lcom/isaigu/gymapp/fragment/SettingFragment$20$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SettingFragment$20$1;->this$1:Lcom/isaigu/gymapp/fragment/SettingFragment$20;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SettingFragment$20;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$20$1$1;->this$2:Lcom/isaigu/gymapp/fragment/SettingFragment$20$1;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/SettingFragment$20$1;->this$1:Lcom/isaigu/gymapp/fragment/SettingFragment$20;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/SettingFragment$20;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-static {v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->access$800(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 613
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$20$1$1;->this$2:Lcom/isaigu/gymapp/fragment/SettingFragment$20$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SettingFragment$20$1;->this$1:Lcom/isaigu/gymapp/fragment/SettingFragment$20;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/SettingFragment$20;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/SettingFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/UserData;->logoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/SettingFragment$20$1$1;->this$2:Lcom/isaigu/gymapp/fragment/SettingFragment$20$1;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/SettingFragment$20$1;->this$1:Lcom/isaigu/gymapp/fragment/SettingFragment$20;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/SettingFragment$20;->this$0:Lcom/isaigu/gymapp/fragment/SettingFragment;

    invoke-static {v1}, Lcom/isaigu/gymapp/fragment/SettingFragment;->access$900(Lcom/isaigu/gymapp/fragment/SettingFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 614
    return-void
.end method
