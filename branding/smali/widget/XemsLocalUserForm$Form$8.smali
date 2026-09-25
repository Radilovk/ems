.class Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$8;
.super Ljava/lang/Object;
.source "XemsLocalUserForm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addChoice(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

.field final synthetic val$pick:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 419
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$8;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$8;->val$pick:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$8;->val$pick:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 422
    return-void
.end method
