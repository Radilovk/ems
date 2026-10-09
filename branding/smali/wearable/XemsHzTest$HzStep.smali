.class final Lcom/isaigu/gymapp/wearable/XemsHzTest$HzStep;
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
    name = "HzStep"
.end annotation


# instance fields
.field final t:Lcom/isaigu/gymapp/wearable/XemsHzTest;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/XemsHzTest;)V
    .registers 2

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$HzStep;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    .line 265
    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 269
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$HzStep;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->hz:I

    const/16 v2, 0x28

    if-ge v0, v2, :cond_24

    move v0, v1

    .line 270
    :goto_a
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$HzStep;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    const/16 v3, 0xff

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$HzStep;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    iget v4, v4, Lcom/isaigu/gymapp/wearable/XemsHzTest;->hz:I

    mul-int/2addr v0, p1

    add-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v2, Lcom/isaigu/gymapp/wearable/XemsHzTest;->hz:I

    .line 271
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$HzStep;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/XemsHzTest;->redraw()V

    .line 272
    return-void

    .line 269
    :cond_24
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$HzStep;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->hz:I

    const/16 v2, 0x82

    if-ge v0, v2, :cond_2e

    const/4 v0, 0x5

    goto :goto_a

    :cond_2e
    const/16 v0, 0xa

    goto :goto_a
.end method
