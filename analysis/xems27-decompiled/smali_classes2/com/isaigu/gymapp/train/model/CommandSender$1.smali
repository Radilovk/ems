.class Lcom/isaigu/gymapp/train/model/CommandSender$1;
.super Lcom/clj/fastble/callback/BleWriteCallback;
.source "CommandSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/model/CommandSender;->writeCommend(Lcom/isaigu/gymapp/train/ble/BleDeviceCommend;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/train/model/CommandSender;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/model/CommandSender;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/train/model/CommandSender;

    .line 91
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/CommandSender$1;->this$0:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleWriteCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteFailure(Lcom/clj/fastble/exception/BleException;)V
    .locals 2
    .param p1, "exception"    # Lcom/clj/fastble/exception/BleException;

    .line 100
    const-string v0, "www"

    const-string v1, "\u5199\u5165\u547d\u4ee4\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/CommandSender$1;->this$0:Lcom/isaigu/gymapp/train/model/CommandSender;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/model/CommandSender;->access$002(Lcom/isaigu/gymapp/train/model/CommandSender;Z)Z

    .line 102
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/CommandSender$1;->this$0:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/model/CommandSender;->access$100(Lcom/isaigu/gymapp/train/model/CommandSender;)V

    .line 103
    return-void
.end method

.method public onWriteSuccess(II[B)V
    .locals 2
    .param p1, "current"    # I
    .param p2, "total"    # I
    .param p3, "justWrite"    # [B

    .line 94
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/CommandSender$1;->this$0:Lcom/isaigu/gymapp/train/model/CommandSender;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/model/CommandSender;->access$002(Lcom/isaigu/gymapp/train/model/CommandSender;Z)Z

    .line 95
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/CommandSender$1;->this$0:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/model/CommandSender;->access$100(Lcom/isaigu/gymapp/train/model/CommandSender;)V

    .line 96
    return-void
.end method
