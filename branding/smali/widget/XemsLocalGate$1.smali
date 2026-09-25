.class Lcom/isaigu/gymapp/widget/XemsLocalGate$1;
.super Ljava/lang/Object;
.source "XemsLocalGate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalGate;->onLoginView(Ljava/lang/Object;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fragment:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 61
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$1;->val$fragment:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$1;->val$fragment:Ljava/lang/Object;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->access$000(Ljava/lang/Object;)V

    .line 65
    return-void
.end method
