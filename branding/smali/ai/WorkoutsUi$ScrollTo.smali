.class final Lcom/isaigu/gymapp/ai/WorkoutsUi$ScrollTo;
.super Ljava/lang/Object;
.source "WorkoutsUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/WorkoutsUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScrollTo"
.end annotation


# instance fields
.field private final y:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 1567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1568
    iput p1, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$ScrollTo;->y:I

    .line 1569
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1573
    # getter for: Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->access$000()Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1574
    # getter for: Lcom/isaigu/gymapp/ai/WorkoutsUi;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutsUi;->access$000()Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/isaigu/gymapp/ai/WorkoutsUi$ScrollTo;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1576
    :cond_12
    return-void
.end method
