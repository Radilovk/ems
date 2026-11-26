.class final Lcom/isaigu/gymapp/widget/XemsModuleInfo$Toggle;
.super Ljava/lang/Object;
.source "XemsModuleInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsModuleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Toggle"
.end annotation


# instance fields
.field final target:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Toggle;->target:Landroid/view/View;

    .line 413
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 417
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 418
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Toggle;->target:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    .line 419
    :goto_d
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsModuleInfo$Toggle;->target:Landroid/view/View;

    if-eqz v0, :cond_2a

    :goto_11
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 420
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_27

    .line 421
    check-cast p1, Landroid/widget/TextView;

    if-eqz v0, :cond_2d

    const-string v0, "\u0421\u043a\u0440\u0438\u0439  \u25b4"

    const-string v1, "Hide  \u25b4"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_24
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    :cond_27
    return-void

    :cond_28
    move v0, v1

    .line 418
    goto :goto_d

    .line 419
    :cond_2a
    const/16 v1, 0x8

    goto :goto_11

    .line 421
    :cond_2d
    const-string v0, "\u041f\u0440\u043e\u0447\u0435\u0442\u0438 \u043e\u0449\u0435  \u25be"

    const-string v1, "Read more  \u25be"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24
.end method
