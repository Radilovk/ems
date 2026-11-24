.class final Lcom/isaigu/gymapp/ai/AiTrain$Health;
.super Ljava/lang/Object;
.source "AiTrain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiTrain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Health"
.end annotation


# instance fields
.field final key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 904
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Health;->key:Ljava/lang/String;

    .line 905
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 909
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 910
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Health;->key:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiCoach;->toggleHealth(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;)V

    .line 911
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->changed()V

    .line 912
    return-void
.end method
