.class Lcom/isaigu/gymapp/fragment/SplashFragment$1;
.super Ljava/lang/Object;
.source "SplashFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/SplashFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/SplashFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/fragment/SplashFragment;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/SplashFragment$1;->this$0:Lcom/isaigu/gymapp/fragment/SplashFragment;

    new-instance v1, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/fragment/SplashFragment$1$1;-><init>(Lcom/isaigu/gymapp/fragment/SplashFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/fragment/SplashFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 146
    return-void
.end method
