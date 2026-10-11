.class final Lcom/isaigu/gymapp/ai/FocusBoard$Step;
.super Ljava/lang/Object;
.source "FocusBoard.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/FocusBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Step"
.end annotation


# instance fields
.field private final what:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 1496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1497
    iput p1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Step;->what:I

    .line 1498
    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 3

    .prologue
    .line 1502
    iget v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Step;->what:I

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->step(II)V

    .line 1503
    return-void
.end method
