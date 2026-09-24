.class Lcom/isaigu/gymapp/widget/XemsLicenseSection$2$2;
.super Ljava/lang/Object;
.source "XemsLicenseSection.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLicenseSection$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/XemsLicenseSection$2;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsLicenseSection$2;)V
    .registers 2

    .prologue
    .line 146
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$2$2;->this$0:Lcom/isaigu/gymapp/widget/XemsLicenseSection$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 149
    if-eqz p2, :cond_e

    .line 150
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$2$2;->this$0:Lcom/isaigu/gymapp/widget/XemsLicenseSection$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$2;->val$upText:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->reason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :goto_d
    return-void

    .line 151
    :cond_e
    if-nez p1, :cond_20

    .line 152
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$2$2;->this$0:Lcom/isaigu/gymapp/widget/XemsLicenseSection$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$2;->val$upText:Landroid/widget/TextView;

    const-string v1, "\u0422\u043e\u0432\u0430 \u0435 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0430\u0442\u0430 \u0432\u0435\u0440\u0441\u0438\u044f"

    const-string v2, "This is the latest version"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 154
    :cond_20
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$2$2;->this$0:Lcom/isaigu/gymapp/widget/XemsLicenseSection$2;

    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$2;->val$upText:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041d\u043e\u0432\u0430: "

    const-string v3, "New: "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 155
    iget-object v0, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->notes:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_73

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " \u00b7 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->notes:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$2$2;->this$0:Lcom/isaigu/gymapp/widget/XemsLicenseSection$2;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$2;->val$upBtn:Landroid/widget/TextView;

    const-string v1, "\u0418\u0437\u0442\u0435\u0433\u043b\u0438 \u0438 \u0438\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u0439"

    const-string v2, "Download & install"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 155
    :cond_73
    const-string v0, ""

    goto :goto_58
.end method
