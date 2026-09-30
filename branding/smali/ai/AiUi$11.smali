.class Lcom/isaigu/gymapp/ai/AiUi$11;
.super Ljava/lang/Object;
.source "AiUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/ai/AiUi;->clientBlock(Landroid/content/Context;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 676
    const/4 v0, 0x1

    # setter for: Lcom/isaigu/gymapp/ai/AiUi;->healthOpen:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->access$602(Z)Z

    .line 677
    # setter for: Lcom/isaigu/gymapp/ai/AiUi;->healthOk:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiUi;->access$702(Z)Z

    .line 678
    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->go(I)V
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiUi;->access$400(I)V

    .line 679
    return-void
.end method
