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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 157
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$5;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$5;->val$root:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 159
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->finishSetup()V

    .line 160
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$5;->val$a:Landroid/app/Activity;

    const-string v1, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430\u0442\u0430 \u0435 \u0437\u0430\u0432\u044a\u0440\u0448\u0435\u043d\u0430"

    const-string v2, "Setup finished"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->access$200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 161
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$5;->val$a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$5;->val$root:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->attach(Landroid/app/Activity;Landroid/view/View;)V

    .line 162
    return-void
.end method
