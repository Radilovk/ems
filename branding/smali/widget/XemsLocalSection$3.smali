.class Lcom/isaigu/gymapp/widget/XemsLocalSection$3;
.super Ljava/lang/Object;
.source "XemsLocalSection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalSection;->build(Landroid/app/Activity;Landroid/view/View;)V
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$3;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 121
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$3;->val$a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->refreshNow(Landroid/content/Context;)V

    .line 122
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$3;->val$a:Landroid/app/Activity;

    const-string v0, "\u041f\u0440\u043e\u0432\u0435\u0440\u044f\u0432\u0430\u043c \u0441\u044a\u0440\u0432\u044a\u0440\u0430\u2026 \u043e\u0442\u0432\u043e\u0440\u0438 \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u043f\u0430\u043a \u0441\u043b\u0435\u0434 \u043c\u0430\u043b\u043a\u043e."

    const-string v1, "Checking the server\u2026 reopen Settings in a moment."

    # invokes: Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->access$200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 124
    return-void
.end method
