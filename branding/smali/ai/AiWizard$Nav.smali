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
    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiWizard$Nav;->what:I

    .line 699
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 703
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 704
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiWizard$Nav;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 705
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->close()V

    .line 710
    :goto_b
    return-void

    .line 708
    :cond_c
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiWizard;->editClient:Z

    .line 709
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V

    goto :goto_b
.end method
