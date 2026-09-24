.class Lcom/isaigu/gymapp/widget/XemsLicenseSection$4;
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
.field final synthetic val$adv:Landroid/widget/TextView;

.field final synthetic val$srv:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/widget/TextView;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 188
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$4;->val$srv:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$4;->val$adv:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 191
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$4;->val$srv:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->setServer(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$4;->val$adv:Landroid/widget/TextView;

    const-string v1, "\u0421\u044a\u0440\u0432\u044a\u0440 \u2713 \u0437\u0430\u043f\u0430\u0437\u0435\u043d"

    const-string v2, "Server \u2713 saved"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    return-void
.end method
