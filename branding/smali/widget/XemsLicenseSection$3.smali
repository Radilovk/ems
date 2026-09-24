.class Lcom/isaigu/gymapp/widget/XemsLicenseSection$3;
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

.field final synthetic val$srvRow:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 173
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$3;->val$srvRow:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$3;->val$adv:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 176
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$3;->val$srvRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    .line 177
    :goto_a
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$3;->val$srvRow:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_23

    :goto_e
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 178
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseSection$3;->val$adv:Landroid/widget/TextView;

    if-eqz v0, :cond_26

    const-string v0, "\u0421\u044a\u0440\u0432\u044a\u0440 \u2304"

    const-string v2, "Server \u2304"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1d
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    return-void

    :cond_21
    move v0, v1

    .line 176
    goto :goto_a

    .line 177
    :cond_23
    const/16 v1, 0x8

    goto :goto_e

    .line 178
    :cond_26
    const-string v0, "\u0421\u044a\u0440\u0432\u044a\u0440 \u203a"

    const-string v2, "Server \u203a"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d
.end method
