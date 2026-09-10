.class Lcom/isaigu/gymapp/fragment/StartFragment$3$1;
.super Ljava/lang/Object;
.source "StartFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/fragment/StartFragment$3;->httpResponse(ZLjava/lang/String;Lcom/isaigu/gymapp/bean/vo/ResponseData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/StartFragment$3;

.field final synthetic val$clientUpdateVO:Lcom/isaigu/gymapp/bean/vo/ClientUpdateVO;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/fragment/StartFragment$3;Lcom/isaigu/gymapp/bean/vo/ClientUpdateVO;)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/fragment/StartFragment$3;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/StartFragment$3$1;->this$1:Lcom/isaigu/gymapp/fragment/StartFragment$3;

    iput-object p2, p0, Lcom/isaigu/gymapp/fragment/StartFragment$3$1;->val$clientUpdateVO:Lcom/isaigu/gymapp/bean/vo/ClientUpdateVO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/StartFragment$3$1;->this$1:Lcom/isaigu/gymapp/fragment/StartFragment$3;

    iget-object v0, v0, Lcom/isaigu/gymapp/fragment/StartFragment$3;->this$0:Lcom/isaigu/gymapp/fragment/StartFragment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/fragment/StartFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u53d1\u73b0\u65b0\u7248\u672c\uff1aV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/fragment/StartFragment$3$1;->val$clientUpdateVO:Lcom/isaigu/gymapp/bean/vo/ClientUpdateVO;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/vo/ClientUpdateVO;->apkVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\u662f\u5426\u66f4\u65b0\uff1f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/fragment/StartFragment$3$1$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/fragment/StartFragment$3$1$1;-><init>(Lcom/isaigu/gymapp/fragment/StartFragment$3$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/BaseActivity;->showMessageDialog(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method
