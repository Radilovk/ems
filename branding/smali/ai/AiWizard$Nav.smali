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
    .line 872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 873
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiWizard$Nav;->what:I

    .line 874
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 878
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 879
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiWizard$Nav;->what:I

    if-ne v0, v3, :cond_d

    .line 880
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->close()V

    .line 896
    :goto_c
    return-void

    .line 883
    :cond_d
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiWizard$Nav;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_20

    .line 884
    sget v0, Lcom/isaigu/gymapp/ai/AiWizard;->page:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiWizard;->page:I

    .line 895
    :goto_1c
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->rebuild()V

    goto :goto_c

    .line 885
    :cond_20
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiWizard$Nav;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_30

    .line 886
    sget v0, Lcom/isaigu/gymapp/ai/AiWizard;->page:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiWizard;->page:I

    goto :goto_1c

    .line 887
    :cond_30
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiWizard$Nav;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3d

    .line 888
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiTrain;->create(Landroid/content/Context;)V

    goto :goto_c

    .line 890
    :cond_3d
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiWizard$Nav;->what:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_45

    .line 891
    sput v2, Lcom/isaigu/gymapp/ai/AiWizard;->page:I

    goto :goto_1c

    .line 893
    :cond_45
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiWizard;->editClient:Z

    goto :goto_1c
.end method
