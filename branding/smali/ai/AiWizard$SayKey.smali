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
    .line 939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 942
    const/4 v0, 0x4

    if-eq p2, v0, :cond_f

    if-eqz p3, :cond_47

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x42

    if-ne v0, v3, :cond_47

    .line 943
    :cond_f
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 944
    :goto_21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_45

    .line 945
    sget v3, Lcom/isaigu/gymapp/ai/AiWizard;->page:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_3a

    .line 946
    sput-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    .line 947
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiTrain;->create(Landroid/content/Context;)V

    move v0, v2

    .line 955
    :goto_36
    return v0

    .line 943
    :cond_37
    const-string v0, ""

    goto :goto_21

    .line 950
    :cond_3a
    const-string v3, ""

    sput-object v3, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    .line 951
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/isaigu/gymapp/ai/AiTrain;->say(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_45
    move v0, v2

    .line 953
    goto :goto_36

    :cond_47
    move v0, v1

    .line 955
    goto :goto_36
.end method
