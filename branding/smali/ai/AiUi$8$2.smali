.class Lcom/isaigu/gymapp/ai/AiUi$8$2;
.super Ljava/lang/Object;
.source "AiUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/ai/AiUi$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/ai/AiUi$8;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AiUi$8;)V
    .registers 2

    .prologue
    .line 999
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$8$2;->this$0:Lcom/isaigu/gymapp/ai/AiUi$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1002
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stopSoloRamp()V

    .line 1003
    return-void
.end method
