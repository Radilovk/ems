.class Lcom/isaigu/gymapp/train/model/CommandReceiver$2;
.super Lcom/clj/fastble/callback/BleNotifyCallback;
.source "CommandReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/model/CommandReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/train/model/CommandReceiver;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/model/CommandReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/train/model/CommandReceiver;

    .line 55
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver$2;->this$0:Lcom/isaigu/gymapp/train/model/CommandReceiver;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleNotifyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 68
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/CommandReceiver$2;->this$0:Lcom/isaigu/gymapp/train/model/CommandReceiver;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/model/CommandReceiver;->access$400(Lcom/isaigu/gymapp/train/model/CommandReceiver;[B)V

    .line 69
    return-void
.end method

.method public onNotifyFailure(Lcom/clj/fastble/exception/BleException;)V
    .locals 2
    .param p1, "exception"    # Lcom/clj/fastble/exception/BleException;

    .line 63
    const-string v0, "www"

    const-string v1, "\u63a5\u6536\u547d\u4ee4\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method public onNotifySuccess()V
    .locals 2

    .line 58
    const-string v0, "www"

    const-string v1, "\u63a5\u6536\u547d\u4ee4\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method
