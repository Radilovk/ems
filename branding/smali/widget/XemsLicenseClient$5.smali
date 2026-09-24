.class Lcom/isaigu/gymapp/widget/XemsLicenseClient$5;
.super Ljava/lang/Object;
.source "XemsLicenseClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLicenseClient;->offer(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 222
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$5;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$5;->val$u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .prologue
    .line 225
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$5;->val$a:Landroid/app/Activity;

    const-string v1, "\u0418\u0437\u0442\u0435\u0433\u043b\u044f\u043d\u0435\u2026"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 226
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$5;->val$a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$5;->val$u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLicenseClient$5$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$5$1;-><init>(Lcom/isaigu/gymapp/widget/XemsLicenseClient$5;)V

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->downloadAndInstall(Landroid/content/Context;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;)V

    .line 235
    return-void
.end method
