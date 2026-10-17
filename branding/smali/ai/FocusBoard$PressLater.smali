.class final Lcom/isaigu/gymapp/ai/FocusBoard$PressLater;
.super Ljava/lang/Object;
.source "FocusBoard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/FocusBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PressLater"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$PressLater;->id:Ljava/lang/String;

    .line 358
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 362
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$PressLater;->id:Ljava/lang/String;

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->inRow(Ljava/lang/String;)Landroid/view/View;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$000(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 363
    if-nez v0, :cond_14

    .line 364
    const-string v0, "\u0420\u0435\u0434\u044a\u0442 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u043e\u0449\u0435 \u0441\u0435 \u0437\u0430\u0440\u0435\u0436\u0434\u0430 \u2014 \u043e\u043f\u0438\u0442\u0430\u0439 \u043f\u0430\u043a."

    const-string v1, "The client\'s row is loading \u2014 try again."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->hint(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$100(Ljava/lang/String;)V

    .line 369
    :goto_13
    return-void

    .line 367
    :cond_14
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 368
    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->later()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$200()V

    goto :goto_13
.end method
