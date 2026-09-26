.class Lcom/isaigu/gymapp/ai/AiUi$19$1;
.super Ljava/lang/Object;
.source "AiUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/ai/AiUi$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/ai/AiUi$19;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AiUi$19;)V
    .registers 2

    .line 1069
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$19$1;->this$0:Lcom/isaigu/gymapp/ai/AiUi$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1072
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiSession;->startCalibrationStim(Landroid/content/Context;)V

    .line 1073
    return-void
.end method
