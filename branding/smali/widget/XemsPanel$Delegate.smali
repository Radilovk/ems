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
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;->root:Landroid/view/View;

    .line 329
    iput p2, p0, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;->id:I

    .line 330
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    const v2, 0x7f09003b

    .line 335
    :try_start_3
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 337
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;->id:I

    if-eq v0, v2, :cond_11

    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;->id:I

    const v1, 0x7f09003c

    if-ne v0, v1, :cond_2d

    :cond_11
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->mainKeysOwned()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 338
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;->id:I

    if-ne v0, v2, :cond_22

    .line 339
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->mainStartPause()V

    .line 343
    :goto_1e
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->refresh()V

    .line 358
    :cond_21
    :goto_21
    return-void

    .line 341
    :cond_22
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->mainStop()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_25} :catch_26

    goto :goto_1e

    .line 355
    :catch_26
    move-exception v0

    .line 356
    const-string v1, "XemsPanel.click"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21

    .line 347
    :cond_2d
    :try_start_2d
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;->id:I

    const v1, 0x7f09003a

    if-ne v0, v1, :cond_42

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->canShowLive()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;->root:Landroid/view/View;

    .line 348
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/LiveParamSheet;->open(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 351
    :cond_42
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;->root:Landroid/view/View;

    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;->id:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 352
    if-eqz v0, :cond_21

    .line 353
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_4f} :catch_26

    goto :goto_21
.end method
