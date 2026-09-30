.class final Lcom/isaigu/gymapp/wearable/CardPublisher;
.super Ljava/lang/Object;
.source "CardPublisher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/CardPublisher$Run;,
        Lcom/isaigu/gymapp/wearable/CardPublisher$Destroy;
    }
.end annotation


# static fields
.field private static final H:Landroid/os/Handler;

.field static final LIFE_MS:J = 0x61a8L

.field static final PREFS:Ljava/lang/String; = "xems_client_cards"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/CardPublisher;->H:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/isaigu/gymapp/wearable/CardPublisher;->H:Landroid/os/Handler;

    return-object v0
.end method

.method static force(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 35
    const-string v0, "xems_client_cards"

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 36
    const-string v0, "xems_session_upload"

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "up_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 38
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/CardPublisher;->publish(Lcom/isaigu/gymapp/bean/TrainUser;)V

    .line 39
    return-void
.end method

.method static publish(Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 5

    .prologue
    .line 26
    if-nez p0, :cond_3

    .line 31
    :goto_2
    return-void

    .line 29
    :cond_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/CardPublisher;->H:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/CardPublisher$Run;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/CardPublisher$Run;-><init>(Lcom/isaigu/gymapp/bean/TrainUser;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SessionUploader;->schedule(Lcom/isaigu/gymapp/bean/TrainUser;)V

    goto :goto_2
.end method

.method static state(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;J)Ljava/lang/String;
    .registers 14

    .prologue
    const-wide/16 v8, 0x0

    .line 43
    const-string v0, "xems_client_cards"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/ReportBridge;->lookupFields(Lcom/isaigu/gymapp/bean/TrainUser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_37

    .line 46
    const-string v0, "\u2717 \u041d\u044f\u043c\u0430 \u0438\u043c\u0435\u0439\u043b \u0438\u043b\u0438 \u0442\u0435\u043b\u0435\u0444\u043e\u043d \u2014 \u043a\u043b\u0438\u0435\u043d\u0442\u044a\u0442 \u043d\u0435 \u043c\u043e\u0436\u0435 \u0434\u0430 \u043d\u0430\u043c\u0435\u0440\u0438 \u0430\u043d\u0430\u043b\u0438\u0437\u0430 \u0441\u0438. \u0414\u043e\u0431\u0430\u0432\u0438 \u0433\u0438 \u0432 \u043a\u0430\u0440\u0442\u043e\u043d\u0430."

    const-string v1, "\u2717 No e-mail or phone \u2014 the client cannot find the analysis. Add them to the client form."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_36
    return-object v0

    .line 49
    :cond_37
    cmp-long v2, p2, v8

    if-gtz v2, :cond_44

    .line 50
    const-string v0, "\u0410\u043d\u0430\u043b\u0438\u0437\u044a\u0442 \u0449\u0435 \u0441\u0435 \u043f\u043e\u044f\u0432\u0438 \u0442\u0430\u043c \u0441\u043b\u0435\u0434 \u043f\u044a\u0440\u0432\u0430\u0442\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430."

    const-string v1, "The analysis appears there after the first training."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_36

    .line 53
    :cond_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "at_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "err_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_86

    cmp-long v1, v2, v8

    if-lez v1, :cond_c9

    cmp-long v1, v2, p2

    if-gez v1, :cond_c9

    .line 56
    :cond_86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u0430\u0442\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u043e\u0449\u0435 \u043d\u0435 \u0435 \u043a\u0430\u0447\u0435\u043d\u0430"

    const-string v3, "The last training is not uploaded yet"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_36

    :cond_c6
    const-string v0, ""

    goto :goto_b6

    .line 59
    :cond_c9
    cmp-long v0, v2, v8

    if-lez v0, :cond_125

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/ClientRow;->day(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/ClientRow;->hm(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    :goto_f2
    iget-wide v2, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsDossier;->cidFor(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_128

    .line 61
    const-string v1, " (\u043f\u043e\u0434\u0440\u043e\u0431\u043d\u0438\u044f\u0442 \u0430\u043d\u0430\u043b\u0438\u0437 \u0447\u0430\u043a\u0430 \u0432\u0440\u044a\u0437\u043a\u0430 \u0441\u044a\u0441 \u0441\u044a\u0440\u0432\u044a\u0440\u0430)"

    const-string v2, " (the detailed analysis waits for the server)"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    :goto_106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2713 \u0410\u043d\u0430\u043b\u0438\u0437\u044a\u0442 \u0435 \u0432 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e"

    const-string v4, "\u2713 The analysis is in the app"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_36

    .line 59
    :cond_125
    const-string v0, ""

    goto :goto_f2

    .line 61
    :cond_128
    const-string v1, ""

    goto :goto_106
.end method
