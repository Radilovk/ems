.class final Lcom/isaigu/gymapp/dialog/ManualPresets$Info;
.super Ljava/lang/Object;
.source "ManualPresets.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/ManualPresets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Info"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 130
    :goto_4
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_13

    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_13

    .line 131
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_4

    .line 133
    :cond_13
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_18

    .line 153
    :goto_17
    return-void

    .line 136
    :cond_18
    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u041e\u0441\u043d\u043e\u0432\u0435\u043d"

    const-string v4, "Main"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/dialog/ManualPresets;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v4, "Muscles"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/dialog/ManualPresets;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "\u041a\u0430\u0440\u0434\u0438\u043e"

    const-string v4, "Cardio"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/dialog/ManualPresets;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "\u041c\u0430\u0441\u0430\u0436"

    const-string v4, "Massage"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/dialog/ManualPresets;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 137
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u041b\u0435\u043a"

    const-string v5, "Light"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/dialog/ManualPresets;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    const-string v2, "\u0421\u0442\u0430\u043d\u0434\u0430\u0440\u0442"

    const-string v5, "Standard"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/dialog/ManualPresets;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    const-string v2, "\u0418\u043d\u0442\u0435\u043d\u0437\u0438\u0432\u0435\u043d"

    const-string v5, "Intense"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/dialog/ManualPresets;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v1, "\u0415\u0434\u0438\u043d \u0431\u0443\u0442\u043e\u043d \u043f\u043e\u043f\u044a\u043b\u0432\u0430 \u0447\u0435\u0442\u0438\u0440\u0438\u0442\u0435 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438. \u0421\u0438\u043b\u0430\u0442\u0430 \u0438 \u0437\u043e\u043d\u0438\u0442\u0435 \u043e\u0441\u0442\u0430\u0432\u0430\u0442 \u0442\u0432\u043e\u0438.\n"

    const-string v2, "One tap fills all four programs. Strength and zones stay yours.\n"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/ManualPresets;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    const/4 v1, 0x0

    :goto_79
    sget-object v2, Lcom/isaigu/gymapp/dialog/ManualPresets;->SETS:[[[I

    array-length v2, v2

    if-ge v1, v2, :cond_102

    .line 142
    const/16 v2, 0xa

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v6, v4, v1

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    const/4 v2, 0x0

    :goto_94
    array-length v6, v3

    if-ge v2, v6, :cond_fe

    .line 144
    sget-object v6, Lcom/isaigu/gymapp/dialog/ManualPresets;->SETS:[[[I

    aget-object v6, v6, v1

    aget-object v6, v6, v2

    .line 145
    aget-object v7, v3, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Hz \u00b7 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \u00b5s \u00b7 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget v8, v6, v8

    .line 146
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    aget v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \u0441 \u00b7 "

    const-string v9, " s \u00b7 "

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/dialog/ManualPresets;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x4

    aget v6, v6, v8

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u043c\u0438\u043d"

    const-string v8, " min"

    .line 147
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/dialog/ManualPresets;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_94

    .line 141
    :cond_fe
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_79

    .line 150
    :cond_102
    const-string v1, "\nHz \u2014 \u0438\u043c\u043f\u0443\u043b\u0441\u0438 \u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0430: \u043d\u0438\u0441\u043a\u0438 \u043e\u0442\u043f\u0443\u0441\u043a\u0430\u0442 \u0438 \u0434\u0440\u0435\u043d\u0438\u0440\u0430\u0442, \u0432\u0438\u0441\u043e\u043a\u0438 \u0434\u0430\u0432\u0430\u0442 \u0441\u0438\u043b\u0430. \u00b5s \u2014 \u0434\u044a\u043b\u0436\u0438\u043d\u0430 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430: \u043f\u043e-\u0434\u044a\u043b\u044a\u0433 \u0434\u043e\u0441\u0442\u0438\u0433\u0430 \u043f\u043e-\u0434\u044a\u043b\u0431\u043e\u043a\u043e. \u201e4/4 \u0441\u201c \u2014 \u0441\u0435\u043a\u0443\u043d\u0434\u0438 \u0438\u043c\u043f\u0443\u043b\u0441 / \u043f\u0430\u0443\u0437\u0430."

    const-string v2, "\nHz \u2014 impulses per second: low relax and drain, high build strength. \u00b5s \u2014 impulse length: longer reaches deeper. \u201c4/4 s\u201d \u2014 seconds of impulse / pause."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/ManualPresets;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    check-cast v0, Landroid/app/Activity;

    const-string v1, "\u041f\u0440\u0438\u043c\u0435\u0440\u043d\u0438 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438"

    const-string v2, "Example settings"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/ManualPresets;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/dialog/ModalInfoHelper;->show(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_17
.end method
