.class final Lcom/isaigu/gymapp/ai/AiChatDrawer$Key;
.super Ljava/lang/Object;
.source "AiChatDrawer.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiChatDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Key"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6

    .prologue
    .line 375
    const/4 v0, 0x4

    if-eq p2, v0, :cond_d

    if-eqz p3, :cond_27

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_27

    .line 376
    :cond_d
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1f
    # invokes: Lcom/isaigu/gymapp/ai/AiChatDrawer;->fire(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->access$300(Landroid/content/Context;Ljava/lang/String;)V

    .line 377
    const/4 v0, 0x1

    .line 379
    :goto_23
    return v0

    .line 376
    :cond_24
    const-string v0, ""

    goto :goto_1f

    .line 379
    :cond_27
    const/4 v0, 0x0

    goto :goto_23
.end method
