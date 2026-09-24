.class Lcom/isaigu/gymapp/widget/XemsLicenseSection$2$1;
.super Ljava/lang/Object;
.source "XemsLicenseSection.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;


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
    .line 130
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$2$1;->this$0:Lcom/isaigu/gymapp/widget/XemsLicenseSection$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(ZLjava/lang/String;)V
    .registers 6

    .prologue
    .line 133
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$2$1;->this$0:Lcom/isaigu/gymapp/widget/XemsLicenseSection$2;

    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$2;->val$upText:Landroid/widget/TextView;

    if-eqz p1, :cond_12

    const-string v0, "\u0418\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u043d\u0435\u2026"

    const-string v2, "Installing\u2026"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    return-void

    .line 133
    :cond_12
    invoke-static {p2}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->reason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method
