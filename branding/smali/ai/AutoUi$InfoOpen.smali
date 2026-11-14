.class final Lcom/isaigu/gymapp/ai/AutoUi$InfoOpen;
.super Ljava/lang/Object;
.source "AutoUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InfoOpen"
.end annotation


# instance fields
.field final p:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)V
    .registers 2

    .prologue
    .line 828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 829
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AutoUi$InfoOpen;->p:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    .line 830
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .prologue
    .line 834
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v2

    .line 835
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoUi$InfoOpen;->p:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoUi;->goalName(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoUi;->goalColor(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)I

    move-result v4

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoUi$InfoOpen;->p:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget v5, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->level:I

    .line 836
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoUi;->levelName(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoUi$InfoOpen;->p:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget v6, v6, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->level:I

    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AutoUi;->levelColor(I)I

    move-result v6

    .line 835
    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/ai/ProgramInfo;->open(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;ILjava/lang/String;I)V

    .line 837
    return-void
.end method
