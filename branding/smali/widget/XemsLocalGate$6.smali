.class Lcom/isaigu/gymapp/widget/XemsLocalGate$6;
.super Ljava/lang/Object;
.source "XemsLocalGate.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalGate;->onTaps(Landroid/view/View;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$tap:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 219
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$6;->val$tap:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$6;->val$tap:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 225
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
