.class Lcom/isaigu/gymapp/ai/AiUi$17$2;
.super Ljava/lang/Object;
.source "AiUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/ai/AiUi$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/ai/AiUi$17;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AiUi$17;)V
    .registers 2

    .prologue
    .line 834
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$17$2;->this$0:Lcom/isaigu/gymapp/ai/AiUi$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 837
    # setter for: Lcom/isaigu/gymapp/ai/AiUi;->noBand:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->access$902(Z)Z

    .line 838
    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->go(I)V
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->access$400(I)V

    .line 839
    return-void
.end method
