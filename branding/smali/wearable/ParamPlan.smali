.class public final Lcom/isaigu/gymapp/wearable/ParamPlan;
.super Ljava/lang/Object;
.source "ParamPlan.java"


# static fields
.field static final KEEP:I = 0x3c

.field static final P:I = 0x7

.field static final PARAM_BG:[Ljava/lang/String;

.field static final PARAM_EN:[Ljava/lang/String;

.field static final PREFS:Ljava/lang/String; = "xems_param_log"

.field static final SAVED:Ljava/lang/String; = "xems_client_programs"

.field private static app:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 256
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Hz"

    aput-object v1, v0, v3

    const-string v1, "\u00b5s"

    aput-object v1, v0, v4

    const-string v1, "s \u0438\u043c\u043f\u0443\u043b\u0441"

    aput-object v1, v0, v5

    const-string v1, "s \u043f\u0430\u0443\u0437\u0430"

    aput-object v1, v0, v6

    const-string v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Hz 2-\u0440\u0438"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "% 2-\u0440\u0438"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/ParamPlan;->PARAM_BG:[Ljava/lang/String;

    .line 257
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Hz"

    aput-object v1, v0, v3

    const-string v1, "\u00b5s"

    aput-object v1, v0, v4

    const-string v1, "s impulse"

    aput-object v1, v0, v5

    const-string v1, "s pause"

    aput-object v1, v0, v6

    const-string v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Hz 2nd"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "% 2nd"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/ParamPlan;->PARAM_EN:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static causes(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .registers 14

    .prologue
    .line 212
    if-nez p0, :cond_d

    .line 213
    const-string v0, "\u041f\u044a\u0440\u0432\u043e \u0438\u0437\u0447\u0438\u0441\u043b\u0435\u043d\u0438\u0435"

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 214
    const-string v0, "First calculation"

    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 254
    :cond_c
    :goto_c
    return-void

    .line 217
    :cond_d
    const-string v0, "kg"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-string v2, "kg"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 218
    sub-double v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_60

    .line 219
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "\u0422\u0435\u0433\u043b\u043e %.1f \u2192 %.1f kg"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 220
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Weight %.1f \u2192 %.1f kg"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 222
    :cond_60
    const-string v0, "fat"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v0, "fat"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 223
    sub-double v0, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v0, v6

    if-gez v0, :cond_89

    const-string v0, "fm"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "fm"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eq v0, v1, :cond_cc

    .line 224
    :cond_89
    const-string v0, "fm"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e4

    const-string v0, " (\u043a\u0430\u043d\u0442\u0430\u0440)"

    .line 225
    :goto_93
    const-wide/16 v6, 0x0

    cmpg-double v1, v2, v6

    if-gez v1, :cond_1e8

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438 %.1f %%%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-static {v1, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_ae
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 227
    const-wide/16 v0, 0x0

    cmpg-double v0, v2, v0

    if-gez v0, :cond_206

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Fat %.1f%%"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_c9
    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 230
    :cond_cc
    const-string v0, "goal"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "goal"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e8

    .line 231
    const-string v0, "\u041d\u043e\u0432\u0430 \u0446\u0435\u043b"

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 232
    const-string v0, "New goal"

    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 234
    :cond_e8
    const-string v0, "fit"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fit"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_104

    .line 235
    const-string v0, "\u041d\u043e\u0432\u0430 \u0444\u043e\u0440\u043c\u0430"

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 236
    const-string v0, "New fitness"

    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 238
    :cond_104
    const-string v0, "age"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "age"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_14a

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0412\u044a\u0437\u0440\u0430\u0441\u0442 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "age"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Age "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "age"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 242
    :cond_14a
    const-string v0, "off"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "off"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_166

    const-string v0, "sens"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "sens"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eq v0, v1, :cond_170

    .line 243
    :cond_166
    const-string v0, "\u0421\u044a\u0441\u0442\u043e\u044f\u043d\u0438\u0435"

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 244
    const-string v0, "State"

    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 246
    :cond_170
    const-string v0, "ml"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ml"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eq v0, v1, :cond_198

    .line 247
    const-string v0, "ml"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_221

    const-string v0, "\u041c\u0430\u043b\u043a\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430"

    :goto_188
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 248
    const-string v0, "ml"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_225

    const-string v0, "Low muscle mass"

    :goto_195
    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 250
    :cond_198
    const-string v0, "n"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "n"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_c

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "n"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Training "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "n"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_c

    .line 224
    :cond_1e4
    const-string v0, ""

    goto/16 :goto_93

    .line 226
    :cond_1e8
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438 %.1f \u2192 %.1f %%%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v0, v7, v8

    invoke-static {v1, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_ae

    .line 228
    :cond_206
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Fat %.1f \u2192 %.1f%%"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v0, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c9

    .line 247
    :cond_221
    const-string v0, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430\u0442\u0430 \u043c\u0430\u0441\u0430 \u0435 \u0432 \u043d\u043e\u0440\u043c\u0430"

    goto/16 :goto_188

    .line 248
    :cond_225
    const-string v0, "Muscle mass normal"

    goto/16 :goto_195
.end method

.method static ctx(Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 46
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/isaigu/gymapp/wearable/ParamPlan;->app:Landroid/content/Context;

    goto :goto_6
.end method

.method static diff(Lorg/json/JSONArray;[[ILorg/json/JSONArray;Lorg/json/JSONArray;)V
    .registers 14

    .prologue
    .line 261
    if-nez p0, :cond_3

    .line 290
    :cond_2
    return-void

    .line 264
    :cond_3
    const/4 v0, 0x0

    move v3, v0

    :goto_5
    const/4 v0, 0x4

    if-ge v3, v0, :cond_2

    .line 265
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    .line 266
    if-nez v4, :cond_12

    .line 264
    :cond_e
    :goto_e
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    .line 269
    :cond_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    const/4 v0, 0x0

    move v2, v0

    :goto_1e
    const/4 v0, 0x7

    if-ge v2, v0, :cond_9d

    .line 272
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v7

    aget-object v0, p1, v3

    aget v8, v0, v2

    .line 273
    if-ne v7, v8, :cond_2f

    .line 271
    :goto_2b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1e

    .line 276
    :cond_2f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_54

    const-string v0, ", "

    move-object v1, v0

    .line 277
    :goto_38
    const/4 v0, 0x4

    if-ne v2, v0, :cond_5e

    .line 278
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v0, 0x1

    if-ne v8, v0, :cond_58

    const-string v0, "2-\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441 \u0432\u043a\u043b."

    :goto_44
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v0, 0x1

    if-ne v8, v0, :cond_5b

    const-string v0, "2nd impulse on"

    :goto_50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b

    .line 276
    :cond_54
    const-string v0, ""

    move-object v1, v0

    goto :goto_38

    .line 278
    :cond_58
    const-string v0, "2-\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441 \u0438\u0437\u043a\u043b."

    goto :goto_44

    .line 279
    :cond_5b
    const-string v0, "2nd impulse off"

    goto :goto_50

    .line 281
    :cond_5e
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " \u2192 "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v9, 0x20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v9, Lcom/isaigu/gymapp/wearable/ParamPlan;->PARAM_BG:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2192 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/wearable/ParamPlan;->PARAM_EN:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b

    .line 285
    :cond_9d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/ai/ParamFormula;->modeName(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/ai/ParamFormula;->modeName(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_e
.end method

.method static fromJson(Ljava/lang/String;)[[I
    .registers 12

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x7

    const/4 v9, 0x4

    const/4 v3, 0x0

    .line 398
    if-nez p0, :cond_8

    move-object v0, v1

    .line 412
    :cond_7
    :goto_7
    return-object v0

    .line 402
    :cond_8
    :try_start_8
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 403
    const/4 v0, 0x4

    const/4 v2, 0x7

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v4, v3

    .line 404
    :goto_1c
    if-ge v4, v9, :cond_7

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v4, v2, :cond_7

    .line 405
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v6

    move v2, v3

    .line 406
    :goto_29
    if-ge v2, v10, :cond_3c

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_3c

    .line 407
    aget-object v7, v0, v4

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    aput v8, v7, v2
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_39} :catch_40

    .line 406
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 404
    :cond_3c
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1c

    .line 411
    :catch_40
    move-exception v0

    move-object v0, v1

    .line 412
    goto :goto_7
.end method

.method static inJson(Lcom/isaigu/gymapp/ai/ParamFormula$In;Lcom/isaigu/gymapp/ai/ParamFormula$Out;)Lorg/json/JSONObject;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 149
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 150
    const-string v3, "kg"

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->weightKg:Ljava/lang/Double;

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->weightKg:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v4

    :goto_1a
    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 151
    const-string v3, "fat"

    iget-wide v0, p1, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->fatPct:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_80

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_29
    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 152
    const-string v0, "fm"

    iget-boolean v1, p1, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->fatMeasured:Z

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 153
    const-string v1, "age"

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->age:Ljava/lang/Integer;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->age:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_3f
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 154
    const-string v1, "fit"

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->name()Ljava/lang/String;

    move-result-object v0

    :goto_4e
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string v1, "goal"

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->name()Ljava/lang/String;

    move-result-object v0

    :goto_5d
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string v0, "n"

    iget v1, p0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->sessions:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 157
    const-string v0, "off"

    iget v1, p0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->offS:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 158
    const-string v0, "sens"

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->sensitive:Z

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 159
    const-string v0, "ml"

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/ParamFormula$In;->muscleLow:Z

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 160
    return-object v2

    .line 150
    :cond_7d
    const-wide/16 v0, 0x0

    goto :goto_1a

    .line 151
    :cond_80
    iget-wide v0, p1, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->fatPct:D

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v4

    goto :goto_29

    .line 153
    :cond_8a
    const/4 v0, 0x0

    goto :goto_3f

    .line 154
    :cond_8c
    const-string v0, ""

    goto :goto_4e

    .line 155
    :cond_8f
    const-string v0, ""

    goto :goto_5d
.end method

.method static init(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 40
    if-eqz p0, :cond_8

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/ParamPlan;->app:Landroid/content/Context;

    .line 43
    :cond_8
    return-void
.end method

.method static input(Lcom/isaigu/gymapp/ai/AiProfile;I)Lcom/isaigu/gymapp/ai/ParamFormula$In;
    .registers 5

    .prologue
    .line 113
    new-instance v1, Lcom/isaigu/gymapp/ai/ParamFormula$In;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/ParamFormula$In;-><init>()V

    .line 114
    iput p1, v1, Lcom/isaigu/gymapp/ai/ParamFormula$In;->sessions:I

    .line 115
    if-nez p0, :cond_b

    move-object v0, v1

    .line 131
    :goto_a
    return-object v0

    .line 118
    :cond_b
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/ParamFormula$In;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 119
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/ParamFormula$In;->age:Ljava/lang/Integer;

    .line 120
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->heightCm:I

    iput v0, v1, Lcom/isaigu/gymapp/ai/ParamFormula$In;->heightCm:I

    .line 121
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/ParamFormula$In;->weightKg:Ljava/lang/Double;

    .line 122
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->fatPct:Ljava/lang/Double;

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/ParamFormula$In;->fatPct:Ljava/lang/Double;

    .line 123
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->muscleLow:Z

    iput-boolean v0, v1, Lcom/isaigu/gymapp/ai/ParamFormula$In;->muscleLow:Z

    .line 124
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/ParamFormula$In;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 125
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/ParamFormula$In;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 126
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiProfile;->personal()Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_3c

    .line 128
    iget v2, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    iput v2, v1, Lcom/isaigu/gymapp/ai/ParamFormula$In;->offS:I

    .line 129
    iget v0, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    if-lez v0, :cond_3e

    const/4 v0, 0x1

    :goto_3a
    iput-boolean v0, v1, Lcom/isaigu/gymapp/ai/ParamFormula$In;->sensitive:Z

    :cond_3c
    move-object v0, v1

    .line 131
    goto :goto_a

    .line 129
    :cond_3e
    const/4 v0, 0x0

    goto :goto_3a
.end method

.method static json(Landroid/content/Context;J)Ljava/lang/String;
    .registers 4

    .prologue
    .line 418
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/ParamPlan;->list(Landroid/content/Context;J)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static list(Landroid/content/Context;J)Lorg/json/JSONArray;
    .registers 8

    .prologue
    .line 141
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/ParamPlan;->ctx(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 142
    new-instance v0, Lorg/json/JSONArray;

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/ParamPlan;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[]"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_26} :catch_27

    .line 144
    :goto_26
    return-object v0

    .line 143
    :catch_27
    move-exception v0

    .line 144
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_26
.end method

.method static log(Landroid/content/Context;JLcom/isaigu/gymapp/ai/ParamFormula$In;Lcom/isaigu/gymapp/ai/ParamFormula$Out;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/ParamPlan;->list(Landroid/content/Context;J)Lorg/json/JSONArray;

    move-result-object v3

    .line 166
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_33

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 167
    :goto_14
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 168
    const/4 v1, 0x0

    move v2, v1

    :goto_1b
    const/4 v1, 0x4

    if-ge v2, v1, :cond_3c

    .line 169
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 170
    const/4 v1, 0x0

    :goto_24
    const/4 v6, 0x7

    if-ge v1, v6, :cond_35

    .line 171
    iget-object v6, p4, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->v:[[I

    aget-object v6, v6, v2

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 166
    :cond_33
    const/4 v0, 0x0

    goto :goto_14

    .line 173
    :cond_35
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 168
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1b

    .line 175
    :cond_3c
    if-eqz v0, :cond_53

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 208
    :goto_52
    return-void

    .line 178
    :cond_53
    invoke-static {p3, p4}, Lcom/isaigu/gymapp/wearable/ParamPlan;->inJson(Lcom/isaigu/gymapp/ai/ParamFormula$In;Lcom/isaigu/gymapp/ai/ParamFormula$Out;)Lorg/json/JSONObject;

    move-result-object v2

    .line 179
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 180
    const-string v1, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 181
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 182
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 183
    if-eqz v0, :cond_11e

    const-string v1, "in"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    :goto_77
    invoke-static {v1, v2, v6, v7}, Lcom/isaigu/gymapp/wearable/ParamPlan;->causes(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    .line 184
    const-string v1, "trig"

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_87

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p5

    :cond_87
    invoke-virtual {v5, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string v1, "trigEn"

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_97

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p6

    :cond_97
    invoke-virtual {v5, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string v1, "cause"

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string v1, "causeEn"

    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    const-string v1, "var"

    iget-object v6, p4, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->variantBg:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    const-string v1, "varEn"

    iget-object v6, p4, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->variantEn:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    const-string v1, "vi"

    iget v6, p4, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->variant:I

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 191
    const-string v1, "v"

    invoke-virtual {v5, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    const-string v1, "in"

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 194
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 195
    if-eqz v0, :cond_121

    const-string v4, "v"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :goto_d5
    iget-object v4, p4, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->v:[[I

    invoke-static {v0, v4, v1, v2}, Lcom/isaigu/gymapp/wearable/ParamPlan;->diff(Lorg/json/JSONArray;[[ILorg/json/JSONArray;Lorg/json/JSONArray;)V

    .line 196
    const-string v0, "diff"

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string v0, "diffEn"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string v0, "why"

    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p4, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->whyBg:Ljava/util/List;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v0, "whyEn"

    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p4, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->whyEn:Ljava/util/List;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 201
    const/4 v0, 0x0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3c

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_10e
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_123

    .line 202
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_10e

    .line 183
    :cond_11e
    const/4 v1, 0x0

    goto/16 :goto_77

    .line 195
    :cond_121
    const/4 v0, 0x0

    goto :goto_d5

    .line 204
    :cond_123
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 205
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/ParamPlan;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 206
    const-string v0, "param"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p4, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->variantEn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " main "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p4, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->v:[[I

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    .line 207
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/ParamFormula;->line([IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_52
.end method

.method public static onProfile(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 5

    .prologue
    .line 53
    const-string v0, "\u041f\u0440\u043e\u0444\u0438\u043b\u044a\u0442 \u0435 \u043f\u0440\u043e\u043c\u0435\u043d\u0435\u043d"

    const-string v1, "Profile changed"

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/ParamPlan;->refresh(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/ai/ParamFormula$Out;

    .line 54
    return-void
.end method

.method static onSaved(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 353
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/ParamPlan;->ctx(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 354
    if-eqz v0, :cond_9

    if-nez p1, :cond_a

    .line 361
    :cond_9
    :goto_9
    return-void

    .line 357
    :cond_a
    const-string v1, "\u0417\u0430\u043f\u0438\u0441\u0430\u043d\u043e \u0437\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430"

    const-string v2, "Saved for the client"

    invoke-static {v0, p1, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/ParamPlan;->refresh(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/ai/ParamFormula$Out;

    move-result-object v1

    .line 358
    if-eqz v1, :cond_9

    .line 359
    const-string v2, "xems_client_programs"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->v:[[I

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/ParamPlan;->toJson([[I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_9
.end method

.method public static onScale(Landroid/content/Context;J)V
    .registers 8

    .prologue
    .line 58
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/ParamPlan;->user(J)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v0

    const-string v1, "\u041d\u043e\u0432\u043e \u0438\u0437\u043c\u0435\u0440\u0432\u0430\u043d\u0435 \u043d\u0430 \u043a\u0430\u043d\u0442\u0430\u0440\u0430"

    const-string v2, "New scale measurement"

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/ParamPlan;->refresh(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/ai/ParamFormula$Out;

    .line 59
    return-void
.end method

.method static onSession(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;J)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 63
    const/4 v2, 0x1

    .line 65
    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/ParamPlan;->ctx(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_2a

    iget-wide v4, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    :goto_a
    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/wearable/NextPlan;->history(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v4

    move v3, v1

    .line 66
    :goto_f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2e

    .line 67
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v5, "start"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_20} :catch_2d

    move-result-wide v6

    cmp-long v0, v6, p2

    if-nez v0, :cond_36

    move v0, v1

    .line 66
    :goto_26
    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_f

    .line 65
    :cond_2a
    const-wide/16 v4, -0x1

    goto :goto_a

    .line 71
    :catch_2d
    move-exception v0

    .line 73
    :cond_2e
    const-string v0, "\u0421\u043b\u0435\u0434 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v1, "After a training"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/ParamPlan;->refresh(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/ai/ParamFormula$Out;

    .line 74
    return-void

    :cond_36
    move v0, v2

    goto :goto_26
.end method

.method static overlay(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/bean/TrainUser;[[I)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 299
    const-string v1, "\u0421\u043b\u0435\u0434\u0432\u0430\u0449\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v2, "Next training"

    invoke-static {p0, p2, v1, v2, v0}, Lcom/isaigu/gymapp/wearable/ParamPlan;->refresh(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/ai/ParamFormula$Out;

    move-result-object v2

    .line 300
    if-eqz v2, :cond_d

    if-nez p1, :cond_e

    .line 309
    :cond_d
    :goto_d
    return v0

    :cond_e
    move v1, v0

    .line 303
    :goto_f
    const/4 v0, 0x4

    if-ge v1, v0, :cond_29

    .line 304
    invoke-static {p1, v1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 305
    if-eqz v3, :cond_23

    .line 306
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->v:[[I

    aget-object v4, v0, v1

    if-eqz p3, :cond_27

    aget-object v0, p3, v1

    :goto_20
    invoke-static {v3, v1, v4, v0}, Lcom/isaigu/gymapp/wearable/ParamPlan;->put(Lcom/isaigu/gymapp/bean/ProgramDataBean;I[I[I)V

    .line 303
    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    .line 306
    :cond_27
    const/4 v0, 0x0

    goto :goto_20

    .line 309
    :cond_29
    const/4 v0, 0x1

    goto :goto_d
.end method

.method static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 135
    const-string v0, "xems_param_log"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static put(Lcom/isaigu/gymapp/bean/ProgramDataBean;I[I[I)V
    .registers 14

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v1, 0x0

    const/4 v7, 0x4

    const/4 v2, 0x1

    .line 314
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/ParamPlan;->values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v4

    .line 315
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 316
    if-eqz p3, :cond_53

    move v3, v1

    .line 317
    :goto_12
    const/4 v5, 0x7

    if-ge v3, v5, :cond_53

    .line 318
    if-ne v3, v7, :cond_24

    .line 319
    aget v5, v4, v3

    aget v6, p3, v3

    if-eq v5, v6, :cond_21

    .line 320
    aget v5, v4, v3

    aput v5, v0, v3

    .line 317
    :cond_21
    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 322
    :cond_24
    if-eq v3, v8, :cond_28

    if-ne v3, v9, :cond_48

    .line 323
    :cond_28
    aget v5, p3, v7

    if-ne v5, v2, :cond_3b

    aget v5, v4, v7

    if-ne v5, v2, :cond_3b

    .line 324
    aget v5, p2, v3

    aget v6, v4, v3

    add-int/2addr v5, v6

    aget v6, p3, v3

    sub-int/2addr v5, v6

    aput v5, v0, v3

    goto :goto_21

    .line 325
    :cond_3b
    aget v5, p3, v7

    if-nez v5, :cond_21

    aget v5, v4, v7

    if-ne v5, v2, :cond_21

    .line 326
    aget v5, v4, v3

    aput v5, v0, v3

    goto :goto_21

    .line 329
    :cond_48
    aget v5, p2, v3

    aget v6, v4, v3

    add-int/2addr v5, v6

    aget v6, p3, v3

    sub-int/2addr v5, v6

    aput v5, v0, v3

    goto :goto_21

    .line 333
    :cond_53
    aget v3, v0, v1

    const/16 v4, 0x78

    invoke-static {v3, v2, v4}, Lcom/isaigu/gymapp/wearable/ProgramFit;->clamp(III)I

    move-result v3

    iput v3, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 334
    aget v3, v0, v2

    const/16 v4, 0x32

    const/16 v5, 0x190

    invoke-static {v3, v4, v5}, Lcom/isaigu/gymapp/wearable/ProgramFit;->clamp(III)I

    move-result v3

    iput v3, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 335
    const/4 v3, 0x2

    aget v3, v0, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 336
    const/4 v3, 0x3

    aget v3, v0, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 337
    aget v3, v0, v7

    if-ne v3, v2, :cond_82

    if-eq p1, v2, :cond_82

    move v1, v2

    :cond_82
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 338
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v1, :cond_a6

    .line 339
    aget v1, v0, v8

    const/16 v3, 0x78

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/ProgramFit;->clamp(III)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 340
    aget v0, v0, v9

    int-to-float v0, v0

    const/high16 v1, 0x40a00000    # 5.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    const/16 v1, 0x64

    invoke-static {v0, v8, v1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 342
    :cond_a6
    return-void
.end method

.method public static refresh(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/ai/ParamFormula$Out;
    .registers 13

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/ParamPlan;->ctx(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 95
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/ParamPlan;->init(Landroid/content/Context;)V

    .line 96
    if-eqz v1, :cond_12

    if-eqz p1, :cond_12

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->enabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_14

    :cond_12
    move-object v5, v0

    .line 108
    :goto_13
    return-object v5

    .line 100
    :cond_14
    :try_start_14
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v2

    .line 101
    iget-wide v4, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v1, v4, v5}, Lcom/isaigu/gymapp/wearable/NextPlan;->history(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, p4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 102
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/ParamPlan;->input(Lcom/isaigu/gymapp/ai/AiProfile;I)Lcom/isaigu/gymapp/ai/ParamFormula$In;

    move-result-object v4

    .line 103
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/ParamFormula;->compute(Lcom/isaigu/gymapp/ai/ParamFormula$In;)Lcom/isaigu/gymapp/ai/ParamFormula$Out;

    move-result-object v5

    .line 104
    iget-wide v2, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Lcom/isaigu/gymapp/wearable/ParamPlan;->log(Landroid/content/Context;JLcom/isaigu/gymapp/ai/ParamFormula$In;Lcom/isaigu/gymapp/ai/ParamFormula$Out;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_37} :catch_38

    goto :goto_13

    .line 106
    :catch_38
    move-exception v1

    .line 107
    const-string v2, "ParamPlan.refresh"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v0

    .line 108
    goto :goto_13
.end method

.method static savedAt(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;Ljava/lang/String;)[[I
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 368
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/ParamPlan;->ctx(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 369
    if-eqz v2, :cond_a

    if-nez p1, :cond_c

    :cond_a
    move-object v0, v1

    .line 382
    :cond_b
    :goto_b
    return-object v0

    .line 372
    :cond_c
    const-string v0, "xems_client_programs"

    invoke-virtual {v2, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/ParamPlan;->fromJson(Ljava/lang/String;)[[I

    move-result-object v0

    .line 374
    if-nez v0, :cond_b

    .line 375
    const-string v0, "\u0421\u043b\u0435\u0434\u0432\u0430\u0449\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v4, "Next training"

    invoke-static {v2, p1, v0, v4, v5}, Lcom/isaigu/gymapp/wearable/ParamPlan;->refresh(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/ai/ParamFormula$Out;

    move-result-object v0

    .line 376
    if-nez v0, :cond_3b

    move-object v0, v1

    .line 377
    goto :goto_b

    .line 379
    :cond_3b
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/ParamFormula$Out;->v:[[I

    .line 380
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/ParamPlan;->toJson([[I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_b
.end method

.method static toJson([[I)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 386
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    .line 387
    :goto_7
    array-length v2, p0

    if-ge v0, v2, :cond_25

    .line 388
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move v2, v1

    .line 389
    :goto_10
    aget-object v5, p0, v0

    array-length v5, v5

    if-ge v2, v5, :cond_1f

    .line 390
    aget-object v5, p0, v0

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 389
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 392
    :cond_1f
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 394
    :cond_25
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static user(J)Lcom/isaigu/gymapp/bean/TrainUser;
    .registers 8

    .prologue
    .line 78
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v2, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 79
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-eqz v2, :cond_24

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_24

    .line 80
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 81
    if-eqz v0, :cond_1f

    iget-wide v4, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1a} :catch_23

    cmp-long v3, v4, p0

    if-nez v3, :cond_1f

    .line 87
    :goto_1e
    return-object v0

    .line 79
    :cond_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 85
    :catch_23
    move-exception v0

    .line 87
    :cond_24
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method static values(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 345
    const/4 v2, 0x7

    new-array v2, v2, [I

    iget v3, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    aput v3, v2, v1

    iget v3, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    aput v3, v2, v0

    const/4 v3, 0x2

    iget v4, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    aput v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    aput v4, v2, v3

    const/4 v3, 0x4

    iget-boolean v4, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v4, :cond_29

    :goto_1c
    aput v0, v2, v3

    const/4 v0, 0x5

    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    aput v1, v2, v0

    const/4 v0, 0x6

    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    aput v1, v2, v0

    return-object v2

    :cond_29
    move v0, v1

    goto :goto_1c
.end method
