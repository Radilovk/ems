.class final Lcom/isaigu/gymapp/ai/AiBriefUi$Pick;
.super Ljava/lang/Object;
.source "AiBriefUi.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiBriefUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Pick"
.end annotation


# instance fields
.field final which:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Pick;->which:I

    .line 263
    return-void
.end method


# virtual methods
.method public onIndex(I)V
    .registers 6

    .prologue
    .line 267
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v1

    .line 268
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Pick;->which:I

    if-nez v0, :cond_18

    move v0, p1

    .line 269
    :goto_9
    iget v2, p0, Lcom/isaigu/gymapp/ai/AiBriefUi$Pick;->which:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 270
    :goto_e
    invoke-static {v1, v0, p1}, Lcom/isaigu/gymapp/ai/AiBrief;->guest(Lcom/isaigu/gymapp/ai/AutoModel$Input;II)V

    .line 271
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->syncLeaderInput()V

    .line 272
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->rerender()V

    .line 273
    return-void

    .line 268
    :cond_18
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiBrief;->guestExperience(Lcom/isaigu/gymapp/ai/AutoModel$Input;)I

    move-result v0

    goto :goto_9

    .line 269
    :cond_1d
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiBrief;->guestAgeBand(Lcom/isaigu/gymapp/ai/AutoModel$Input;)I

    move-result p1

    goto :goto_e
.end method
