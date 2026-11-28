.class final Lcom/isaigu/gymapp/ai/LiveParamSheet$Step;
.super Ljava/lang/Object;
.source "LiveParamSheet.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/LiveParamSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Step"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 7

    .prologue
    .line 156
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->widthRange()[I

    move-result-object v0

    .line 157
    if-nez v0, :cond_7

    .line 163
    :goto_6
    return-void

    .line 160
    :cond_7
    const/4 v1, 0x1

    aget v1, v0, v1

    const/4 v2, 0x2

    aget v2, v0, v2

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v0, v0, v4

    mul-int/2addr v0, p1

    add-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 161
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoSession;->setLiveWidth(I)I

    .line 162
    # invokes: Lcom/isaigu/gymapp/ai/LiveParamSheet;->update()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/LiveParamSheet;->access$300()V

    goto :goto_6
.end method
