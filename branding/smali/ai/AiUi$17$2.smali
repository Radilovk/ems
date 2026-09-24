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
    .line 787
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$17$2;->this$0:Lcom/isaigu/gymapp/ai/AiUi$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 790
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/ai/AiSession;->buildPlan(IDJ)V

    .line 791
    const/4 v0, 0x4

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->go(I)V
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->access$300(I)V

    .line 792
    return-void
.end method
