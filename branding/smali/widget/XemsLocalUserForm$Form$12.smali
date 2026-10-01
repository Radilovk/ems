.class Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$12;
.super Ljava/lang/Object;
.source "XemsLocalUserForm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addToggle(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

.field final synthetic val$isFocus:Z

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$set:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;Ljava/util/Set;Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 544
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$12;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$12;->val$set:Ljava/util/Set;

    iput-object p3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$12;->val$key:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$12;->val$isFocus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 546
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$12;->val$set:Ljava/util/Set;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$12;->val$key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 547
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$12;->val$set:Ljava/util/Set;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$12;->val$key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 549
    :cond_11
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$12;->val$isFocus:Z

    if-eqz v0, :cond_1b

    .line 550
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$12;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderFocus()V

    .line 554
    :goto_1a
    return-void

    .line 552
    :cond_1b
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$12;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderCond()V

    goto :goto_1a
.end method
