.class final Lcom/isaigu/gymapp/ai/AiWizard$SayKey;
.super Ljava/lang/Object;
.source "AiWizard.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SayKey"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 751
    const/4 v0, 0x4

    if-eq p2, v0, :cond_e

    if-eqz p3, :cond_36

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x42

    if-ne v0, v2, :cond_36

    .line 752
    :cond_e
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 753
    :goto_20
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_31

    .line 754
    const-string v2, ""

    sput-object v2, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    .line 755
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/isaigu/gymapp/ai/AiTrain;->say(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 757
    :cond_31
    const/4 v0, 0x1

    .line 759
    :goto_32
    return v0

    .line 752
    :cond_33
    const-string v0, ""

    goto :goto_20

    :cond_36
    move v0, v1

    .line 759
    goto :goto_32
.end method
