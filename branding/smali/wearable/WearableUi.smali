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
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ageText(J)Ljava/lang/String;
    .registers 4

    .line 154
    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u043f\u0440\u0435\u0434\u0438 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " s ago"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static ageTextShort(J)Ljava/lang/String;
    .registers 8

    .line 160
    const-wide/16 v0, 0x3e7

    add-long/2addr p0, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 161
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-wide/16 v2, 0x3c

    div-long v4, p0, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    rem-long/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const-string p0, "%d:%02d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static asActivity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 2

    .line 229
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_12

    .line 230
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_b

    .line 231
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 233
    :cond_b
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 235
    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method static button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;
    .registers 6

    .line 205
    const/high16 v0, 0x41700000    # 15.0f

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, p3, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 206
    const/16 p3, 0x11

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 207
    const/high16 p3, 0x41800000    # 16.0f

    invoke-static {p0, p3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result p3

    .line 208
    const/high16 v0, 0x41300000    # 11.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 209
    invoke-virtual {p1, p3, v0, p3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 210
    const/high16 p3, 0x41c00000    # 24.0f

    invoke-static {p0, p3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result p0

    int-to-float p0, p0

    invoke-static {p2, p0}, Lcom/isaigu/gymapp/wearable/WearableUi;->rounded(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 212
    return-object p1
.end method

.method static color(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 6

    .line 165
    if-nez p0, :cond_3

    .line 166
    return p2

    .line 169
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 170
    if-eqz p1, :cond_1c

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    return p0

    .line 174
    :cond_1c
    goto :goto_1e

    .line 173
    :catchall_1d
    move-exception p0

    .line 175
    :goto_1e
    return p2
.end method

.method static divider(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 223
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 224
    const p0, 0x22ffffff

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 225
    return-object v0
.end method

.method static dp(Landroid/content/Context;F)I
    .registers 2

    .line 179
    if-nez p0, :cond_4

    .line 180
    float-to-int p0, p1

    return p0

    .line 182
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method static isBulgarian()Z
    .registers 1

    .line 33
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return v0

    .line 34
    :catchall_5
    move-exception v0

    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method static isErrorState(Ljava/lang/String;)Z
    .registers 2

    .line 145
    const-string v0, "auth_fail"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    const-string v0, "bad_auth_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 146
    const-string v0, "bad_mac"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    const-string v0, "no_bluetooth"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 147
    const-string v0, "no_bt_permission"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    const-string v0, "auth_timeout"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 148
    const-string v0, "connect_fail"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    const-string v0, "service_fail"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 149
    const-string v0, "no_fe95"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    const-string v0, "no_chars"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 150
    const-string v0, "send_fail"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_59

    goto :goto_5b

    :cond_59
    const/4 p0, 0x0

    goto :goto_5c

    :cond_5b
    :goto_5b
    const/4 p0, 0x1

    .line 145
    :goto_5c
    return p0
.end method

.method static matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .line 216
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 218
    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 219
    return-object v0
.end method

.method static rounded(IF)Landroid/graphics/drawable/GradientDrawable;
    .registers 3

    .line 197
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 198
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 199
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 200
    return-object v0
.end method

.method static stateText(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 100
    const-string v0, ""

    if-nez p0, :cond_5

    .line 101
    move-object p0, v0

    .line 103
    :cond_5
    const-string v1, "streaming"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 104
    return-object v0

    .line 106
    :cond_e
    const-string v0, "measuring"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 107
    const-string p0, "\u0418\u0437\u043c\u0435\u0440\u0432\u0430\u2026"

    const-string v0, "Measuring\u2026"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 109
    :cond_1f
    const-string v0, "connecting"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10f

    const-string v0, "discovering"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10f

    .line 110
    const-string v0, "auth_start"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10f

    const-string v0, "handshake"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    goto/16 :goto_10f

    .line 113
    :cond_41
    const-string v0, "authenticated"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_106

    const-string v0, "initialized"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_106

    .line 114
    const-string v0, "starting"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    goto/16 :goto_106

    .line 117
    :cond_5b
    const-string v0, "reconnecting"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 118
    const-string p0, "\u0412\u0440\u044a\u0437\u043a\u0430\u0442\u0430 \u043f\u0440\u0435\u043a\u044a\u0441\u043d\u0430 \u2014 \u0441\u0432\u044a\u0440\u0437\u0432\u0430 \u043e\u0442\u043d\u043e\u0432\u043e"

    const-string v0, "Link lost \u2014 reconnecting"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 120
    :cond_6c
    const-string v0, "auth_fail"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fd

    const-string v0, "bad_auth_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    goto/16 :goto_fd

    .line 123
    :cond_7e
    const-string v0, "bad_mac"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 124
    const-string p0, "\u0413\u0440\u0435\u0448\u0435\u043d MAC \u0430\u0434\u0440\u0435\u0441"

    const-string v0, "Wrong MAC address"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 126
    :cond_8f
    const-string v0, "no_bluetooth"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 127
    const-string p0, "\u0412\u043a\u043b\u044e\u0447\u0438 Bluetooth"

    const-string v0, "Turn Bluetooth on"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 129
    :cond_a0
    const-string v0, "no_bt_permission"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 130
    const-string p0, "\u0420\u0430\u0437\u0440\u0435\u0448\u0438 Bluetooth \u0437\u0430 XEMS"

    const-string v0, "Allow Bluetooth for XEMS"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 132
    :cond_b1
    const-string v0, "auth_timeout"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 133
    const-string p0, "\u0413\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0435 \u043e\u0442\u0433\u043e\u0432\u0430\u0440\u044f \u2014 \u0441\u043f\u0440\u0438 Mi Fitness/Notify"

    const-string v0, "Band not answering \u2014 stop Mi Fitness/Notify"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 136
    :cond_c2
    const-string v0, "connect_fail"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f4

    const-string v0, "service_fail"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f4

    .line 137
    const-string v0, "no_fe95"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f4

    const-string v0, "no_chars"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f4

    .line 138
    const-string v0, "send_fail"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_eb

    goto :goto_f4

    .line 141
    :cond_eb
    const-string p0, "\u0418\u0437\u043a\u043b\u044e\u0447\u0435\u043d\u0430"

    const-string v0, "Disconnected"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 139
    :cond_f4
    :goto_f4
    const-string p0, "\u0413\u0440\u0435\u0448\u043a\u0430 \u043f\u0440\u0438 \u0432\u0440\u044a\u0437\u043a\u0430"

    const-string v0, "Connection error"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 121
    :cond_fd
    :goto_fd
    const-string p0, "\u0413\u0440\u0435\u0448\u0435\u043d auth key"

    const-string v0, "Wrong auth key"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 115
    :cond_106
    :goto_106
    const-string p0, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430\u2026"

    const-string v0, "Starting\u2026"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 111
    :cond_10f
    :goto_10f
    const-string p0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043d\u0435\u2026"

    const-string v0, "Connecting\u2026"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    .registers 6

    .line 186
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 187
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    const/4 p0, 0x2

    invoke-virtual {v0, p0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 189
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    if-eqz p4, :cond_19

    .line 191
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 193
    :cond_19
    return-object v0
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 40
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableUi;->isBulgarian()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    move-object p0, p1

    :goto_8
    return-object p0
.end method

.method static zoneColor(I)I
    .registers 2

    .line 65
    const/4 v0, 0x1

    if-eq p0, v0, :cond_23

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x4

    if-eq p0, v0, :cond_17

    const/4 v0, 0x5

    if-eq p0, v0, :cond_13

    .line 77
    const p0, -0x555556

    return p0

    .line 75
    :cond_13
    const p0, -0x1ac6cb

    return p0

    .line 73
    :cond_17
    const p0, -0x47400

    return p0

    .line 71
    :cond_1b
    const p0, -0x227cb

    return p0

    .line 69
    :cond_1f
    const p0, -0xbc5fb9

    return p0

    .line 67
    :cond_23
    const p0, -0x6f5b52

    return p0
.end method

.method static zoneFor(II)I
    .registers 2

    .line 45
    if-lez p0, :cond_2e

    if-gtz p1, :cond_5

    goto :goto_2e

    .line 48
    :cond_5
    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    .line 49
    const p1, 0x3f19999a    # 0.6f

    cmpg-float p1, p0, p1

    if-gez p1, :cond_11

    .line 50
    const/4 p0, 0x1

    return p0

    .line 52
    :cond_11
    const p1, 0x3f333333    # 0.7f

    cmpg-float p1, p0, p1

    if-gez p1, :cond_1a

    .line 53
    const/4 p0, 0x2

    return p0

    .line 55
    :cond_1a
    const p1, 0x3f4ccccd    # 0.8f

    cmpg-float p1, p0, p1

    if-gez p1, :cond_23

    .line 56
    const/4 p0, 0x3

    return p0

    .line 58
    :cond_23
    const p1, 0x3f666666    # 0.9f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_2c

    .line 59
    const/4 p0, 0x4

    return p0

    .line 61
    :cond_2c
    const/4 p0, 0x5

    return p0

    .line 46
    :cond_2e
    :goto_2e
    const/4 p0, 0x0

    return p0
.end method

.method static zoneName(I)Ljava/lang/String;
    .registers 2

    .line 82
    const/4 v0, 0x1

    if-eq p0, v0, :cond_36

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_24

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x5

    if-eq p0, v0, :cond_12

    .line 94
    const-string p0, ""

    return-object p0

    .line 92
    :cond_12
    const-string p0, "\u041c\u0430\u043a\u0441\u0438\u043c\u0443\u043c"

    const-string v0, "Maximum"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 90
    :cond_1b
    const-string p0, "\u0418\u043d\u0442\u0435\u043d\u0437\u0438\u0432\u043d\u0430"

    const-string v0, "Hard"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 88
    :cond_24
    const-string p0, "\u0410\u0435\u0440\u043e\u0431\u043d\u0430"

    const-string v0, "Aerobic"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 86
    :cond_2d
    const-string p0, "\u0417\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    const-string v0, "Warm-up"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 84
    :cond_36
    const-string p0, "\u041b\u0435\u043a\u0430"

    const-string v0, "Easy"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
