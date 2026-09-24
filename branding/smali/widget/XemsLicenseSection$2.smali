.class Lcom/isaigu/gymapp/widget/XemsLicenseSection$2;
.super Ljava/lang/Object;
.source "XemsLicenseSection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLicenseSection;->build(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$upBtn:Landroid/widget/TextView;

.field final synthetic val$upText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/app/Activity;Landroid/widget/TextView;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 128
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$2;->val$upText:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$2;->val$a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$2;->val$upBtn:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 131
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->lastUpdate()Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_37

    .line 133
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$2;->val$upText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0418\u0437\u0442\u0435\u0433\u043b\u044f\u043d\u0435 "

    const-string v4, "Downloading "

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u2026"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$2;->val$a:Landroid/app/Activity;

    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLicenseSection$2$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/widget/XemsLicenseSection$2$1;-><init>(Lcom/isaigu/gymapp/widget/XemsLicenseSection$2;)V

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->downloadAndInstall(Landroid/content/Context;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;)V

    .line 157
    :goto_36
    return-void

    .line 142
    :cond_37
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$2;->val$upText:Landroid/widget/TextView;

    const-string v1, "\u041f\u0440\u043e\u0432\u0435\u0440\u043a\u0430\u2026"

    const-string v2, "Checking\u2026"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$2;->val$a:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLicenseSection$2$2;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/widget/XemsLicenseSection$2$2;-><init>(Lcom/isaigu/gymapp/widget/XemsLicenseSection$2;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->checkUpdate(Landroid/content/Context;Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;)V

    goto :goto_36
.end method
