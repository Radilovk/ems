.class Lcom/clj/fastble/bluetooth/SplitWriter$1;
.super Landroid/os/Handler;
.source "SplitWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clj/fastble/bluetooth/SplitWriter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clj/fastble/bluetooth/SplitWriter;


# direct methods
.method constructor <init>(Lcom/clj/fastble/bluetooth/SplitWriter;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/clj/fastble/bluetooth/SplitWriter;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 38
    iput-object p1, p0, Lcom/clj/fastble/bluetooth/SplitWriter$1;->this$0:Lcom/clj/fastble/bluetooth/SplitWriter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 41
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x33

    if-ne v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/SplitWriter$1;->this$0:Lcom/clj/fastble/bluetooth/SplitWriter;

    invoke-static {v0}, Lcom/clj/fastble/bluetooth/SplitWriter;->access$000(Lcom/clj/fastble/bluetooth/SplitWriter;)V

    .line 45
    :cond_0
    return-void
.end method
