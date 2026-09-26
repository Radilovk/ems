.class Lcom/isaigu/gymapp/widget/XemsLocalGate$2;
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


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$2;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 123
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$2;->val$a:Landroid/app/Activity;

    const-string v1, "\u0420\u0435\u0441\u0442\u0430\u0440\u0442 \u043a\u044a\u043c \u0432\u0445\u043e\u0434\u0430\u2026"

    const-string v2, "Restarting to login\u2026"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 125
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$2;->val$a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->restartToLogin(Landroid/app/Activity;)V

    .line 126
    return-void
.end method
