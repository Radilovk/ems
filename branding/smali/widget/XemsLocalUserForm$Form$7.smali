.class Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$7;
.super Ljava/lang/Object;
.source "XemsLocalUserForm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderFitness()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

.field final synthetic val$f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 345
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$7;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$7;->val$f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$7;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$7;->val$f:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitness:Ljava/lang/String;

    .line 348
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$7;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderFitness()V

    .line 349
    return-void
.end method
