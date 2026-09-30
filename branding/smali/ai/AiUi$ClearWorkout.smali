.class final Lcom/isaigu/gymapp/ai/AiUi$ClearWorkout;
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
    name = "ClearWorkout"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1973
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->useWorkout(Lcom/isaigu/gymapp/ai/Workout;)V

    .line 1974
    # getter for: Lcom/isaigu/gymapp/ai/AiUi;->step:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->access$1900()I

    move-result v0

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->go(I)V
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->access$400(I)V

    .line 1975
    return-void
.end method
