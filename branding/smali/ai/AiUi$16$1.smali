.class Lcom/isaigu/gymapp/ai/AiUi$16$1;
.super Ljava/lang/Object;
.source "AiUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/ai/AiUi$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/ai/AiUi$16;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AiUi$16;)V
    .registers 2

    .prologue
    .line 751
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$16$1;->this$0:Lcom/isaigu/gymapp/ai/AiUi$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 754
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->requestConnect(Landroid/app/Activity;)V

    .line 755
    return-void
.end method
