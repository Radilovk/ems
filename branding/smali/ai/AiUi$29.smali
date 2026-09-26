.class Lcom/isaigu/gymapp/ai/AiUi$29;
.super Ljava/lang/Object;
.source "AiUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/ai/AiUi;->screenReport(Landroid/content/Context;)V
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

    .line 1534
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$29;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1537
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$29;->val$e:Lcom/isaigu/gymapp/ai/AiEngine;

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->shareReport(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/AiEngine;)V
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/ai/AiUi;->access$900(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/AiEngine;)V

    .line 1538
    return-void
.end method
