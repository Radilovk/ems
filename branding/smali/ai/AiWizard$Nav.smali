.class final Lcom/isaigu/gymapp/ai/AiWizard$Nav;
.super Ljava/lang/Object;
.source "AiWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Nav"
.end annotation


# instance fields
.field final what:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiWizard$Nav;->what:I

    .line 488
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 492
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 493
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiWizard$Nav;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 494
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->close()V

    .line 511
    :goto_d
    return-void

    .line 497
    :cond_e
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiWizard$Nav;->what:I

    if-nez v0, :cond_2a

    .line 498
    sget v0, Lcom/isaigu/gymapp/ai/AiWizard;->step:I

    if-ne v0, v3, :cond_1f

    .line 499
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/ai/AiTrain;->view:I

    .line 500
    sput v2, Lcom/isaigu/gymapp/ai/AiWizard;->step:I

    .line 510
    :cond_1b
    :goto_1b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBoard;->rebuild()V

    goto :goto_d

    .line 501
    :cond_1f
    sget v0, Lcom/isaigu/gymapp/ai/AiWizard;->step:I

    if-lez v0, :cond_1b

    .line 502
    sget v0, Lcom/isaigu/gymapp/ai/AiWizard;->step:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/AiWizard;->step:I

    goto :goto_1b

    .line 504
    :cond_2a
    sget v0, Lcom/isaigu/gymapp/ai/AiWizard;->step:I

    if-ne v0, v2, :cond_38

    .line 505
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiTrain;->tune(Landroid/content/Context;)V

    .line 506
    sput v3, Lcom/isaigu/gymapp/ai/AiWizard;->step:I

    goto :goto_1b

    .line 507
    :cond_38
    sget v0, Lcom/isaigu/gymapp/ai/AiWizard;->step:I

    if-ge v0, v2, :cond_1b

    .line 508
    sget v0, Lcom/isaigu/gymapp/ai/AiWizard;->step:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/ai/AiWizard;->step:I

    goto :goto_1b
.end method
