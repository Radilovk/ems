.class Lcom/isaigu/gymapp/ai/AiUi$23;
.super Ljava/lang/Object;
.source "AiUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/ai/AiUi;->screenRun(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$e:Lcom/isaigu/gymapp/ai/AiEngine;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AiEngine;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1249
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$23;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$23;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseOn()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->setActivePause(Z)V

    .line 1253
    return-void

    .line 1252
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method
