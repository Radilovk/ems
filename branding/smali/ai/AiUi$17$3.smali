.class Lcom/isaigu/gymapp/ai/AiUi$17$3;
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

.field final synthetic val$d:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AiUi$17;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$17$3;->this$0:Lcom/isaigu/gymapp/ai/AiUi$17;

    iput p2, p0, Lcom/isaigu/gymapp/ai/AiUi$17$3;->val$d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1023
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiUi$17$3;->val$d:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->adjustCalibration(I)V

    .line 1024
    return-void
.end method
