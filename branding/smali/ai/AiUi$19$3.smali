.class Lcom/isaigu/gymapp/ai/AiUi$19$3;
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

.field final synthetic val$d:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/AiUi$19;I)V
    .registers 3

    .line 1093
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$19$3;->this$0:Lcom/isaigu/gymapp/ai/AiUi$19;

    iput p2, p0, Lcom/isaigu/gymapp/ai/AiUi$19$3;->val$d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1096
    iget p1, p0, Lcom/isaigu/gymapp/ai/AiUi$19$3;->val$d:I

    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiSession;->adjustCalibration(I)V

    .line 1097
    return-void
.end method
