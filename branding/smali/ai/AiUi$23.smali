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

    .line 1249
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$23;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1252
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$23;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->isActivePauseOn()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiSession;->setActivePause(Z)V

    .line 1253
    return-void
.end method
