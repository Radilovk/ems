.class Lcom/isaigu/gymapp/ai/AiUi$11$2;
.super Ljava/lang/Object;
.source "AiUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/ai/AiUi$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/ai/AiUi$11;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AiUi$11;)V
    .registers 2

    .prologue
    .line 822
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$11$2;->this$0:Lcom/isaigu/gymapp/ai/AiUi$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 825
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getRestHr()Lcom/isaigu/gymapp/ai/AiRestHr;

    move-result-object v0

    .line 826
    if-eqz v0, :cond_9

    .line 827
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->acceptUnstable()V

    .line 829
    :cond_9
    return-void
.end method
