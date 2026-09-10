.class Lcom/isaigu/gymapp/fragment/StartFragment$3$1$1;
.super Ljava/lang/Object;
.source "StartFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/StartFragment$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/isaigu/gymapp/fragment/StartFragment$3$1;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/StartFragment$3$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/isaigu/gymapp/fragment/StartFragment$3$1;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/StartFragment$3$1$1;->this$2:Lcom/isaigu/gymapp/fragment/StartFragment$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/StartFragment$3$1$1;->this$2:Lcom/isaigu/gymapp/fragment/StartFragment$3$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/StartFragment$3$1;->this$1:Lcom/isaigu/gymapp/fragment/StartFragment$3;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/StartFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/StartFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/StartFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/StartFragment$3$1$1;->this$2:Lcom/isaigu/gymapp/fragment/StartFragment$3$1;

    iget-object v1, v1, Lcom/isaigu/gymapp/fragment/StartFragment$3$1;->val$clientUpdateVO:Lcom/isaigu/gymapp/bean/vo/ClientUpdateVO;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/vo/ClientUpdateVO;->packageUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/StartFragment$3$1$1;->this$2:Lcom/isaigu/gymapp/fragment/StartFragment$3$1;

    iget-object v2, v2, Lcom/isaigu/gymapp/fragment/StartFragment$3$1;->val$clientUpdateVO:Lcom/isaigu/gymapp/bean/vo/ClientUpdateVO;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/vo/ClientUpdateVO;->apkVersion:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/mgr/ApiMgr;->downloadApk(Lcom/isaigu/gymapp/BaseActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method
