.class final Lcom/isaigu/gymapp/ai/AiTrain$Retune;
.super Ljava/lang/Object;
.source "AiTrain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiTrain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Retune"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1041
    # getter for: Lcom/isaigu/gymapp/ai/AiTrain;->retuneCtx:Landroid/content/Context;
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiTrain;->retuneNow(Landroid/content/Context;)V

    .line 1042
    return-void
.end method
