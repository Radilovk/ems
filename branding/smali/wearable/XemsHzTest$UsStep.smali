.class final Lcom/isaigu/gymapp/wearable/XemsHzTest$UsStep;
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
    name = "UsStep"
.end annotation


# instance fields
.field final t:Lcom/isaigu/gymapp/wearable/XemsHzTest;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/XemsHzTest;)V
    .registers 2

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$UsStep;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    .line 280
    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 7

    .prologue
    .line 284
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$UsStep;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    const/16 v1, 0x32

    const/16 v2, 0x190

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$UsStep;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/XemsHzTest;->us:I

    mul-int/lit8 v4, p1, 0x32

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->us:I

    .line 285
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest$UsStep;->t:Lcom/isaigu/gymapp/wearable/XemsHzTest;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/XemsHzTest;->redraw()V

    .line 286
    return-void
.end method
