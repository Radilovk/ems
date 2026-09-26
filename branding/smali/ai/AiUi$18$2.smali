.class Lcom/isaigu/gymapp/ai/AiUi$18$2;
.super Ljava/lang/Object;
.source "AiUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/ai/AiUi$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/ai/AiUi$18;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AiUi$18;)V
    .registers 2

    .line 815
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$18$2;->this$0:Lcom/isaigu/gymapp/ai/AiUi$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 818
    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiSession;->buildPlan(IDJ)V

    .line 819
    const/4 p1, 0x4

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->go(I)V
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiUi;->access$300(I)V

    .line 820
    return-void
.end method
