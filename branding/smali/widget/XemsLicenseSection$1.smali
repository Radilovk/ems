.class Lcom/isaigu/gymapp/widget/XemsLicenseSection$1;
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

.field final synthetic val$key:Landroid/widget/EditText;

.field final synthetic val$result:Landroid/widget/TextView;

.field final synthetic val$root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/app/Activity;Landroid/widget/EditText;Landroid/view/View;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 93
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$1;->val$result:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$1;->val$a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$1;->val$key:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$1;->val$root:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 96
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 97
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$1;->val$result:Landroid/widget/TextView;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$1;->val$result:Landroid/widget/TextView;

    const-string v1, "\u041f\u0440\u043e\u0432\u0435\u0440\u043a\u0430\u2026"

    const-string v2, "Checking\u2026"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$1;->val$a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$1;->val$key:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLicenseSection$1$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/widget/XemsLicenseSection$1$1;-><init>(Lcom/isaigu/gymapp/widget/XemsLicenseSection$1;)V

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->activate(Landroid/content/Context;Ljava/lang/String;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Done;)V

    .line 105
    return-void
.end method
