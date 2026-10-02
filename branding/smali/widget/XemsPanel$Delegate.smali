.class final Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;
.super Ljava/lang/Object;
.source "XemsPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Delegate"
.end annotation


# instance fields
.field private final id:I

.field private final root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;->root:Landroid/view/View;

    .line 288
    iput p2, p0, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;->id:I

    .line 289
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    const v2, 0x7f09003b

    .line 294
    :try_start_3
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 296
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;->id:I

    if-eq v0, v2, :cond_11

    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;->id:I

    const v1, 0x7f09003c

    if-ne v0, v1, :cond_2d

    :cond_11
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->mainKeysOwned()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 297
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;->id:I

    if-ne v0, v2, :cond_22

    .line 298
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->mainStartPause()V

    .line 302
    :goto_1e
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->refresh()V

    .line 312
    :cond_21
    :goto_21
    return-void

    .line 300
    :cond_22
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->mainStop()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_25} :catch_26

    goto :goto_1e

    .line 309
    :catch_26
    move-exception v0

    .line 310
    const-string v1, "XemsPanel.click"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21

    .line 305
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;->root:Landroid/view/View;

    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;->id:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_21

    .line 307
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_3a} :catch_26

    goto :goto_21
.end method
