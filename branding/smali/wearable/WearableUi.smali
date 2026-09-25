.class final Lcom/isaigu/gymapp/wearable/WearableUi;
.super Ljava/lang/Object;
.source "WearableUi.java"


# static fields
.field static final COLOR_ERROR:I = -0x10acb0

.field static final COLOR_MUTED:I = -0x555556

.field static final COLOR_OK:I = -0x994496

.field static final COLOR_WAIT:I = -0x339a

.field static final COLOR_ZONE1:I = -0x6f5b52

.field static final COLOR_ZONE2:I = -0xbc5fb9

.field static final COLOR_ZONE3:I = -0x227cb

.field static final COLOR_ZONE4:I = -0x47400

.field static final COLOR_ZONE5:I = -0x1ac6cb

.field static final STALE_MS:J = 0x2710L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ageText(J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 157
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x3e8

    div-long v2, p0, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u043f\u0440\u0435\u0434\u0438 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s ago"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static ageTextShort(J)Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x3c

    .line 163
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x3e7

    add-long/2addr v2, p0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 164
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    div-long v6, v0, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    rem-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static asActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2

    .prologue
    .line 232
    move-object v0, p0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 233
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 234
    check-cast v0, Landroid/app/Activity;

    .line 238
    :goto_1
    return-object v0

    .line 236
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 238
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 208
    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {p0, p1, v0, p3, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 209
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 210
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 211
    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 212
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 213
    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->rounded(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 215
    return-object v0
.end method

.method static color(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 168
    if-nez p0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return p2

    .line 172
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 173
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static divider(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .prologue
    .line 226
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 227
    const v1, 0x22ffffff

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 228
    return-object v0
.end method

.method static dp(Landroid/content/Context;F)I
    .locals 2

    .prologue
    .line 182
    if-nez p0, :cond_0

    .line 183
    float-to-int v0, p1

    .line 185
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method static isBulgarian()Z
    .locals 1

    .prologue
    .line 33
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 35
    :goto_0
    return v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static isErrorState(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 148
    const-string v0, "auth_fail"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bad_auth_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bad_mac"

    .line 149
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "no_bluetooth"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "no_bt_permission"

    .line 150
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "auth_timeout"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "connect_fail"

    .line 151
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "service_fail"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "no_fe95"

    .line 152
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "no_chars"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "send_fail"

    .line 153
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 148
    :goto_0
    return v0

    .line 153
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 219
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 221
    int-to-float v1, p1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 222
    return-object v0
.end method

.method static rounded(IF)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .prologue
    .line 200
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 201
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 202
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 203
    return-object v0
.end method

.method static stateText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    if-nez p0, :cond_0

    .line 101
    const-string p0, ""

    .line 103
    :cond_0
    const-string v0, "streaming"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const-string v0, ""

    .line 144
    :goto_0
    return-object v0

    .line 106
    :cond_1
    const-string v0, "measuring"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    const-string v0, "\u0418\u0437\u043c\u0435\u0440\u0432\u0430\u2026"

    const-string v1, "Measuring\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_2
    const-string v0, "connecting"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "discovering"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "auth_start"

    .line 110
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "handshake"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    :cond_3
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043d\u0435\u2026"

    const-string v1, "Connecting\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_4
    const-string v0, "linked"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 114
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0430\u043d\u0430 \u00b7 \u043f\u0443\u043b\u0441 \u0438\u0437\u043a\u043b."

    const-string v1, "Linked \u00b7 HR off"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_5
    const-string v0, "authenticated"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "initialized"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "starting"

    .line 117
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 118
    :cond_6
    const-string v0, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430\u2026"

    const-string v1, "Starting\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_7
    const-string v0, "reconnecting"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 121
    const-string v0, "\u0412\u0440\u044a\u0437\u043a\u0430\u0442\u0430 \u043f\u0440\u0435\u043a\u044a\u0441\u043d\u0430 \u2014 \u0441\u0432\u044a\u0440\u0437\u0432\u0430 \u043e\u0442\u043d\u043e\u0432\u043e"

    const-string v1, "Link lost \u2014 reconnecting"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_8
    const-string v0, "auth_fail"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "bad_auth_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 124
    :cond_9
    const-string v0, "\u0413\u0440\u0435\u0448\u0435\u043d auth key"

    const-string v1, "Wrong auth key"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 126
    :cond_a
    const-string v0, "bad_mac"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 127
    const-string v0, "\u0413\u0440\u0435\u0448\u0435\u043d MAC \u0430\u0434\u0440\u0435\u0441"

    const-string v1, "Wrong MAC address"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 129
    :cond_b
    const-string v0, "no_bluetooth"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 130
    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0438 Bluetooth"

    const-string v1, "Turn Bluetooth on"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 132
    :cond_c
    const-string v0, "no_bt_permission"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 133
    const-string v0, "\u0420\u0430\u0437\u0440\u0435\u0448\u0438 Bluetooth \u0437\u0430 XEMS"

    const-string v1, "Allow Bluetooth for XEMS"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 135
    :cond_d
    const-string v0, "auth_timeout"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 136
    const-string v0, "\u0413\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0435 \u043e\u0442\u0433\u043e\u0432\u0430\u0440\u044f \u2014 \u0441\u043f\u0440\u0438 Mi Fitness/Notify"

    const-string v1, "Band not answering \u2014 stop Mi Fitness/Notify"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 139
    :cond_e
    const-string v0, "connect_fail"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "service_fail"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "no_fe95"

    .line 140
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "no_chars"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "send_fail"

    .line 141
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 142
    :cond_f
    const-string v0, "\u0413\u0440\u0435\u0448\u043a\u0430 \u043f\u0440\u0438 \u0432\u0440\u044a\u0437\u043a\u0430"

    const-string v1, "Connection error"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 144
    :cond_10
    const-string v0, "\u0418\u0437\u043a\u043b\u044e\u0447\u0435\u043d\u0430"

    const-string v1, "Disconnected"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 189
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 190
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 192
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    if-eqz p4, :cond_0

    .line 194
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 196
    :cond_0
    return-object v0
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableUi;->isBulgarian()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method static zoneColor(I)I
    .locals 1

    .prologue
    .line 65
    packed-switch p0, :pswitch_data_0

    .line 77
    const v0, -0x555556

    :goto_0
    return v0

    .line 67
    :pswitch_0
    const v0, -0x6f5b52

    goto :goto_0

    .line 69
    :pswitch_1
    const v0, -0xbc5fb9

    goto :goto_0

    .line 71
    :pswitch_2
    const v0, -0x227cb

    goto :goto_0

    .line 73
    :pswitch_3
    const v0, -0x47400

    goto :goto_0

    .line 75
    :pswitch_4
    const v0, -0x1ac6cb

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static zoneFor(II)I
    .locals 2

    .prologue
    .line 45
    if-lez p0, :cond_0

    if-gtz p1, :cond_1

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 61
    :goto_0
    return v0

    .line 48
    :cond_1
    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 49
    const v1, 0x3f19999a    # 0.6f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 50
    const/4 v0, 0x1

    goto :goto_0

    .line 52
    :cond_2
    const v1, 0x3f333333    # 0.7f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    .line 53
    const/4 v0, 0x2

    goto :goto_0

    .line 55
    :cond_3
    const v1, 0x3f4ccccd    # 0.8f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_4

    .line 56
    const/4 v0, 0x3

    goto :goto_0

    .line 58
    :cond_4
    const v1, 0x3f666666    # 0.9f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 59
    const/4 v0, 0x4

    goto :goto_0

    .line 61
    :cond_5
    const/4 v0, 0x5

    goto :goto_0
.end method

.method static zoneName(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    packed-switch p0, :pswitch_data_0

    .line 94
    const-string v0, ""

    :goto_0
    return-object v0

    .line 84
    :pswitch_0
    const-string v0, "\u041b\u0435\u043a\u0430"

    const-string v1, "Easy"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 86
    :pswitch_1
    const-string v0, "\u0417\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    const-string v1, "Warm-up"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 88
    :pswitch_2
    const-string v0, "\u0410\u0435\u0440\u043e\u0431\u043d\u0430"

    const-string v1, "Aerobic"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :pswitch_3
    const-string v0, "\u0418\u043d\u0442\u0435\u043d\u0437\u0438\u0432\u043d\u0430"

    const-string v1, "Hard"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 92
    :pswitch_4
    const-string v0, "\u041c\u0430\u043a\u0441\u0438\u043c\u0443\u043c"

    const-string v1, "Maximum"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
