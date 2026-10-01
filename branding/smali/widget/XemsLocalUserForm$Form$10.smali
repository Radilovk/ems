.class Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$10;
.super Ljava/lang/Object;
.source "XemsLocalUserForm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderGoal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

.field final synthetic val$g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 490
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$10;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$10;->val$g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 492
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$10;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$10;->val$g:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goal:Ljava/lang/String;

    .line 493
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$10;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderGoal()V

    .line 494
    return-void
.end method
