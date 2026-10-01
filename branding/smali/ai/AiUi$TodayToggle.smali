.class final Lcom/isaigu/gymapp/ai/AiUi$TodayToggle;
.super Ljava/lang/Object;
.source "AiUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TodayToggle"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final today:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$TodayToggle;->today:Ljava/util/Set;

    .line 720
    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiUi$TodayToggle;->key:Ljava/lang/String;

    .line 721
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 725
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$TodayToggle;->today:Ljava/util/Set;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$TodayToggle;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 726
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiUi$TodayToggle;->today:Ljava/util/Set;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$TodayToggle;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 728
    :cond_11
    const/4 v0, 0x0

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->go(I)V
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->access$400(I)V

    .line 729
    return-void
.end method
