.class Lcom/isaigu/gymapp/widget/XemsLocalGate$3;
.super Ljava/lang/Object;
.source "XemsLocalGate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalGate;->attach(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$group:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 131
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$3;->val$group:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$3;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 134
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->access$102(Z)Z

    .line 135
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$3;->val$group:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->applyLicenceRule(Landroid/view/ViewGroup;)V

    .line 136
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$3;->val$a:Landroid/app/Activity;

    const-string v1, "\u0414\u043e\u0441\u0442\u044a\u043f \u0438 \u043b\u0438\u0446\u0435\u043d\u0437"

    const-string v2, "Access & licence"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 138
    return-void
.end method
