.class Lcom/isaigu/gymapp/MainActivity$2$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/MainActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/MainActivity$2;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/MainActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/isaigu/gymapp/MainActivity$2;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/isaigu/gymapp/MainActivity$2$1;->this$1:Lcom/isaigu/gymapp/MainActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/isaigu/gymapp/MainActivity$2$1;->this$1:Lcom/isaigu/gymapp/MainActivity$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/MainActivity$2;->this$0:Lcom/isaigu/gymapp/MainActivity;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/MainActivity;->dismissLoadingDialog()V

    .line 250
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 251
    return-void
.end method
