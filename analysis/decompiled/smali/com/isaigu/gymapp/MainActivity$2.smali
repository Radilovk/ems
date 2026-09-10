.class Lcom/isaigu/gymapp/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/MainActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/MainActivity;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/MainActivity;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/isaigu/gymapp/MainActivity$2;->this$0:Lcom/isaigu/gymapp/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    .line 245
    const/16 v0, 0x6b

    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(S)V

    .line 246
    iget-object v0, p0, Lcom/isaigu/gymapp/MainActivity$2;->this$0:Lcom/isaigu/gymapp/MainActivity;

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/MainActivity;->showLoadingDialog(J)V

    .line 247
    iget-object v0, p0, Lcom/isaigu/gymapp/MainActivity$2;->this$0:Lcom/isaigu/gymapp/MainActivity;

    new-instance v1, Lcom/isaigu/gymapp/MainActivity$2$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/MainActivity$2$1;-><init>(Lcom/isaigu/gymapp/MainActivity$2;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/isaigu/gymapp/MainActivity;->runDelay(Ljava/lang/Runnable;J)V

    .line 253
    return-void
.end method
