.class Lcom/isaigu/gymapp/ai/AiUi$5;
.super Ljava/lang/Object;
.source "AiUi.java"

# interfaces
.implements Lcom/isaigu/gymapp/ai/AiUi$SegmentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/ai/AiUi;->screenProfile(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V
    .registers 2

    .line 556
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$5;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .registers 3

    .line 559
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$5;->val$in:Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    if-nez p1, :cond_7

    sget-object p1, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto :goto_9

    :cond_7
    sget-object p1, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_9
    iput-object p1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 560
    const/4 p1, 0x1

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->go(I)V
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiUi;->access$300(I)V

    .line 561
    return-void
.end method
