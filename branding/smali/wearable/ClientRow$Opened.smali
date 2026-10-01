.class final Lcom/isaigu/gymapp/wearable/ClientRow$Opened;
.super Ljava/lang/Object;
.source "ClientRow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/ClientRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Opened"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final button:Landroid/view/View;

.field private final u:Lcom/isaigu/gymapp/bean/TrainUser;

.field private final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;Ljava/lang/String;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/ClientRow$Opened;->a:Landroid/app/Activity;

    .line 364
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/ClientRow$Opened;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 365
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/ClientRow$Opened;->url:Ljava/lang/String;

    .line 366
    iput-object p4, p0, Lcom/isaigu/gymapp/wearable/ClientRow$Opened;->button:Landroid/view/View;

    .line 367
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 371
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ClientRow$Opened;->button:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_15

    .line 372
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ClientRow$Opened;->button:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u041a\u0430\u0440\u0442\u043e\u043d \u0438 \u0432\u0441\u0438\u0447\u043a\u0438 \u043e\u0442\u0447\u0435\u0442\u0438  \u2197"

    const-string v2, "Card and all reports  \u2197"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    :cond_15
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ClientRow$Opened;->url:Ljava/lang/String;

    if-nez v0, :cond_2c

    .line 375
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ClientRow$Opened;->a:Landroid/app/Activity;

    const-string v1, "\u041d\u0430 \u0441\u044a\u0440\u0432\u044a\u0440\u0430 \u043d\u044f\u043c\u0430 \u043a\u0430\u0440\u0442\u043e\u043d \u0437\u0430 \u0442\u043e\u0437\u0438 \u0438\u043c\u0435\u0439\u043b / \u0442\u0435\u043b\u0435\u0444\u043e\u043d (\u0438\u043b\u0438 \u043d\u044f\u043c\u0430 \u0432\u0440\u044a\u0437\u043a\u0430)."

    const-string v2, "No card on the server for this e-mail / phone (or no connection)."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 380
    :goto_2b
    return-void

    .line 379
    :cond_2c
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ClientRow$Opened;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ClientRow$Opened;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ClientRow$Opened;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    :goto_38
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ClientRow$Opened;->url:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/widget/XemsExercisePage;->openUrl(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    :cond_3e
    const-string v0, "\u041a\u0430\u0440\u0442\u043e\u043d"

    const-string v2, "Card"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/ClientRow;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_38
.end method
