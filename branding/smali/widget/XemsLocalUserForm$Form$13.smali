.class Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$13;
.super Ljava/lang/Object;
.source "XemsLocalUserForm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderMedical()V
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
    .line 561
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$13;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 563
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$13;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->medical:Z

    .line 564
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$13;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 565
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$13;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderMedical()V

    .line 566
    return-void
.end method
