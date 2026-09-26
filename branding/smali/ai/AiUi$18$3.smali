.class Lcom/isaigu/gymapp/ai/AiUi$18$3;
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

    .line 829
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$18$3;->this$0:Lcom/isaigu/gymapp/ai/AiUi$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 832
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getRestHr()Lcom/isaigu/gymapp/ai/AiRestHr;

    move-result-object p1

    .line 833
    if-eqz p1, :cond_9

    .line 834
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiRestHr;->acceptUnstable()V

    .line 836
    :cond_9
    return-void
.end method
