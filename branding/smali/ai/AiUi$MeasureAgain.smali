.class final Lcom/isaigu/gymapp/ai/AiUi$MeasureAgain;
.super Ljava/lang/Object;
.source "AiUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MeasureAgain"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 937
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/AiUi;->noBand:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->access$902(Z)Z

    .line 938
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->restartRestHr()V

    .line 939
    const/4 v0, 0x1

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->go(I)V
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->access$400(I)V

    .line 940
    return-void
.end method
