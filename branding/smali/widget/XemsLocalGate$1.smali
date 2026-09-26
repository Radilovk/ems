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
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$1;->val$fragment:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$1;->val$fragment:Ljava/lang/Object;

    # invokes: Lcom/isaigu/gymapp/widget/XemsLocalGate;->autoLogin(Ljava/lang/Object;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->access$000(Ljava/lang/Object;)V

    .line 65
    return-void
.end method
