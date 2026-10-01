.class Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$5;
.super Ljava/lang/Object;
.source "XemsLocalUserForm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderSex()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V
    .registers 2

    .prologue
    .line 409
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$5;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 411
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$5;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    sget-object v1, Lcom/isaigu/gymapp/bean/Gender;->Male:Lcom/isaigu/gymapp/bean/Gender;

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sex:Lcom/isaigu/gymapp/bean/Gender;

    .line 412
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$5;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderSex()V

    .line 413
    const-string v0, "cellulite"

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$5;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 414
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$5;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    const-string v1, "tone"

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goal:Ljava/lang/String;

    .line 416
    :cond_1d
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$5;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderGoal()V

    .line 417
    return-void
.end method
