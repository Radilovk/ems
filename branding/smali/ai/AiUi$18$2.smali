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

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$18$2;->this$0:Lcom/isaigu/gymapp/ai/AiUi$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1047
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stopSoloRamp()V

    .line 1048
    return-void
.end method
