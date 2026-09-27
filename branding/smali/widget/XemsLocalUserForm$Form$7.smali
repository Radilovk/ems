.class Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$7;
.super Ljava/lang/Object;
.source "XemsLocalUserForm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderOwner()V
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
    .line 359
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$7;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$7;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->owner:Z

    .line 362
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$7;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderOwner()V

    .line 363
    return-void
.end method
