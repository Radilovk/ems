.class Lcom/isaigu/gymapp/widget/XemsLocalSection$5;
.super Ljava/lang/Object;
.source "XemsLocalSection.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalSection;->confirmFinish(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .registers 3

    .line 164
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$5;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$5;->val$root:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 166
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->finishSetup()V

    .line 167
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$5;->val$a:Landroid/app/Activity;

    const-string p2, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430\u0442\u0430 \u0435 \u0437\u0430\u0432\u044a\u0440\u0448\u0435\u043d\u0430"

    const-string v0, "Setup finished"

    # invokes: Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p2, v0}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->access$200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 168
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$5;->val$a:Landroid/app/Activity;

    iget-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$5;->val$root:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->attach(Landroid/app/Activity;Landroid/view/View;)V

    .line 169
    return-void
.end method
