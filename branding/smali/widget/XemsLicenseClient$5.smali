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

    .line 228
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$5;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$5;->val$u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 231
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$5;->val$a:Landroid/app/Activity;

    const-string p2, "\u0418\u0437\u0442\u0435\u0433\u043b\u044f\u043d\u0435\u2026"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 232
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$5;->val$a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$5;->val$u:Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    new-instance v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$5$1;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient$5$1;-><init>(Lcom/isaigu/gymapp/widget/XemsLicenseClient$5;)V

    invoke-static {p1, p2, v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->downloadAndInstall(Landroid/content/Context;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;)V

    .line 241
    return-void
.end method
