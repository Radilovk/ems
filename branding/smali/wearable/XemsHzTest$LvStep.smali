.class final Lcom/isaigu/gymapp/wearable/XemsHzTest$LvStep;
.super Ljava/lang/Object;
.source "XemsHzTest.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/XemsHzTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LvStep"
.end annotation


# instance fields
.field final t:Lcom/isaigu/gymapp/wearable/XemsHzTest;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/XemsHzTest;)V
    .registers 2

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$LvStep;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    .line 294
    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 298
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$LvStep;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    const/16 v3, 0x1e

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$LvStep;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    iget v4, v0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->level:I

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$LvStep;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->level:I

    const/16 v5, 0xa

    if-ge v0, v5, :cond_24

    move v0, v1

    :goto_12
    mul-int/2addr v0, p1

    add-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v2, Lcom/isaigu/gymapp/wearable/XemsHzTest;->level:I

    .line 299
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$LvStep;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/XemsHzTest;->redraw()V

    .line 300
    return-void

    .line 298
    :cond_24
    const/4 v0, 0x2

    goto :goto_12
.end method
