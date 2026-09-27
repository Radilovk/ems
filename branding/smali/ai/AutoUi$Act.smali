.class final Lcom/isaigu/gymapp/ai/AutoUi$Act;
.super Ljava/lang/Object;
.source "AutoUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnStep;
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnToggle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Act"
.end annotation


# instance fields
.field final arg:I

.field final code:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    .prologue
    .line 1003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1004
    iput p1, p0, Lcom/isaigu/gymapp/ai/AutoUi$Act;->code:I

    .line 1005
    iput p2, p0, Lcom/isaigu/gymapp/ai/AutoUi$Act;->arg:I

    .line 1006
    return-void
.end method

.method private run(I)V
    .registers 4

    .prologue
    .line 1031
    :try_start_0
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoUi$Act;->code:I

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoUi$Act;->arg:I

    invoke-static {v0, v1, p1}, Lcom/isaigu/gymapp/ai/AutoUi;->action(III)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 1035
    :goto_7
    return-void

    .line 1032
    :catch_8
    move-exception v0

    .line 1033
    const-string v1, "AutoUi.action"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1010
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1011
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AutoUi$Act;->run(I)V

    .line 1012
    return-void
.end method

.method public onIndex(I)V
    .registers 2

    .prologue
    .line 1021
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ai/AutoUi$Act;->run(I)V

    .line 1022
    return-void
.end method

.method public onStep(I)V
    .registers 2

    .prologue
    .line 1016
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/ai/AutoUi$Act;->run(I)V

    .line 1017
    return-void
.end method

.method public onToggle(Z)V
    .registers 3

    .prologue
    .line 1026
    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/ai/AutoUi$Act;->run(I)V

    .line 1027
    return-void

    .line 1026
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method
