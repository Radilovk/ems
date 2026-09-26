.class final Lcom/isaigu/gymapp/wearable/WearableLivePanel$LogListener;
.super Ljava/lang/Object;
.source "WearableLivePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableLivePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LogListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/isaigu/gymapp/wearable/WearableLivePanel$1;)V
    .registers 2

    .line 308
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/WearableLivePanel$LogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableUi;->asActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    .line 312
    if-nez p1, :cond_b

    .line 313
    return-void

    .line 315
    :cond_b
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->getRecentText()Ljava/lang/String;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1f

    .line 317
    :cond_17
    const-string v0, "\u041b\u043e\u0433\u044a\u0442 \u0435 \u043f\u0440\u0430\u0437\u0435\u043d."

    const-string v1, "Log is empty."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    :cond_1f
    const-string v1, "\u0422\u0435\u0445\u043d\u0438\u0447\u0435\u0441\u043a\u0438 \u043b\u043e\u0433"

    const-string v2, "Technical log"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n---\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->getLogFileHint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-static {p1, v1, v0}, Lcom/isaigu/gymapp/dialog/ModalInfoHelper;->show(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 321
    return-void
.end method
