.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleShare;
.super Ljava/lang/Object;
.source "ScaleShare.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bar(Ljava/lang/String;Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;)Ljava/lang/String;
    .registers 16

    .prologue
    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->sector()I

    move-result v3

    .line 95
    const-string v0, "<div class=nb><div class=nt><span>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</span><b style=\"color:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 96
    if-ltz v3, :cond_9b

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->colors:[I

    aget v0, v0, v3

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->hex(I)Ljava/lang/String;

    move-result-object v0

    :goto_27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->value:D

    iget v1, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->decimals:I

    invoke-static {v4, v5, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->num(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->unit:Ljava/lang/String;

    .line 97
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ltz v3, :cond_9e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " \u00b7 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->names:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</b></div><div class=bar>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const/4 v0, 0x0

    move v1, v0

    :goto_6f
    const/4 v0, 0x5

    if-ge v1, v0, :cond_a4

    .line 99
    const-string v0, "<i style=\"background:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->colors:[I

    aget v4, v4, v1

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->hex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";opacity:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v1, v3, :cond_a1

    const-string v0, "1"

    :goto_8e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\"></i>"

    .line 100
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6f

    .line 96
    :cond_9b
    const-string v0, "#999"

    goto :goto_27

    .line 97
    :cond_9e
    const-string v0, ""

    goto :goto_64

    .line 99
    :cond_a1
    const-string v0, ".3"

    goto :goto_8e

    .line 102
    :cond_a4
    iget-wide v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_11e

    .line 103
    iget-object v4, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->edges:[D

    .line 104
    const/4 v0, 0x0

    aget-wide v0, v4, v0

    const/4 v5, 0x5

    aget-wide v6, v4, v5

    iget-wide v8, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->value:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 105
    const/4 v0, 0x4

    .line 106
    const/4 v1, 0x1

    :goto_c0
    const/4 v5, 0x6

    if-ge v1, v5, :cond_cb

    .line 107
    aget-wide v8, v4, v1

    cmpg-double v5, v6, v8

    if-gez v5, :cond_151

    .line 108
    add-int/lit8 v0, v1, -0x1

    .line 112
    :cond_cb
    int-to-double v8, v0

    aget-wide v10, v4, v0

    sub-double/2addr v6, v10

    const-wide v10, 0x3e112e0be826d695L    # 1.0E-9

    add-int/lit8 v1, v0, 0x1

    aget-wide v12, v4, v1

    aget-wide v0, v4, v0

    sub-double v0, v12, v0

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    div-double v0, v6, v0

    add-double/2addr v0, v8

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    div-double/2addr v0, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v4

    .line 113
    const-string v4, "<em style=\"left:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.1f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%;background:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 114
    if-ltz v3, :cond_155

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->colors:[I

    aget v0, v0, v3

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->hex(I)Ljava/lang/String;

    move-result-object v0

    :goto_115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"></em>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_11e
    const-string v0, "</div><div class=nl>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const/4 v0, 0x0

    move v1, v0

    :goto_125
    const/4 v0, 0x5

    if-ge v1, v0, :cond_15b

    .line 118
    const-string v0, "<span"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v1, v3, :cond_158

    const-string v0, " class=on"

    :goto_132
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->names:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "</span>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_125

    .line 106
    :cond_151
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_c0

    .line 114
    :cond_155
    const-string v0, "#999"

    goto :goto_115

    .line 118
    :cond_158
    const-string v0, ""

    goto :goto_132

    .line 120
    :cond_15b
    const-string v0, "</div></div>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static esc(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 80
    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method static file(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 74
    if-eqz p0, :cond_4c

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4c

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[\\\\/:*?\"<>|\\s]+"

    const-string v3, "_"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 76
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    return-object v0

    .line 74
    :cond_4c
    const-string v0, "XEMS"

    goto :goto_10
.end method

.method static hex(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 84
    const-string v0, "#%06X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0xffffff

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static html(Landroid/app/Activity;Ljava/lang/String;Lorg/json/JSONArray;IZIILandroid/graphics/Bitmap;)V
    .registers 13

    .prologue
    .line 66
    :try_start_0
    invoke-static/range {p1 .. p7}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->page(Ljava/lang/String;Lorg/json/JSONArray;IZIILandroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string v1, "html"

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->file(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v3, "\u0410\u043d\u0430\u043b\u0438\u0437 \u043d\u0430 \u0442\u044f\u043b\u043e\u0442\u043e"

    const-string v4, "Body analysis"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v2, v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->send(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 71
    :goto_1d
    return-void

    .line 68
    :catch_1e
    move-exception v0

    .line 69
    const-string v1, "ScaleShare.html"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d
.end method

.method public static image(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 43
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 44
    if-lez v0, :cond_c

    if-gtz v1, :cond_d

    .line 58
    :cond_c
    :goto_c
    return-void

    .line 47
    :cond_d
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 48
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 49
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 50
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 51
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 52
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 53
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 54
    const-string v0, "png"

    invoke-static {p2, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->file(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "image/png"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v3, "\u0410\u043d\u0430\u043b\u0438\u0437 \u043d\u0430 \u0442\u044f\u043b\u043e\u0442\u043e"

    const-string v4, "Body analysis"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v2, v1, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->send(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_46} :catch_47

    goto :goto_c

    .line 55
    :catch_47
    move-exception v0

    .line 56
    const-string v1, "ScaleShare.image"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c
.end method

.method static mini(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;)Ljava/lang/String;
    .registers 15

    .prologue
    const/4 v8, 0x5

    const/4 v2, 0x0

    .line 370
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "<div class=mn>"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->sector()I

    move-result v4

    move v1, v2

    .line 372
    :goto_e
    if-ge v1, v8, :cond_36

    .line 373
    const-string v0, "<i style=\"background:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->colors:[I

    aget v5, v5, v1

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->hex(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ne v1, v4, :cond_33

    const-string v0, ""

    :goto_26
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\"></i>"

    .line 374
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 373
    :cond_33
    const-string v0, ";opacity:.28"

    goto :goto_26

    .line 376
    :cond_36
    if-ltz v4, :cond_98

    .line 377
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->edges:[D

    .line 378
    aget-wide v6, v0, v2

    aget-wide v8, v0, v8

    iget-wide v10, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->value:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 379
    int-to-double v8, v4

    aget-wide v10, v0, v4

    sub-double/2addr v6, v10

    const-wide v10, 0x3e112e0be826d695L    # 1.0E-9

    add-int/lit8 v1, v4, 0x1

    aget-wide v12, v0, v1

    aget-wide v0, v0, v4

    sub-double v0, v12, v0

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    div-double v0, v6, v0

    add-double/2addr v0, v8

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    div-double/2addr v0, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v6

    .line 380
    const-string v5, "<em style=\"left:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%.1f"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v8, v2

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%;background:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->colors:[I

    aget v1, v1, v4

    .line 381
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->hex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"></em>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :cond_98
    const-string v0, "</div>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static num(DI)Ljava/lang/String;
    .registers 9

    .prologue
    .line 88
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "\u2014"

    :goto_8
    return-object v0

    :cond_9
    if-nez p2, :cond_14

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_14
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method static page(Ljava/lang/String;Lorg/json/JSONArray;IZIILandroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 27

    .prologue
    .line 125
    const-string v4, "\u0431"

    const-string v5, "e"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u0431"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 126
    invoke-virtual/range {p1 .. p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 127
    move/from16 v0, p3

    move/from16 v1, p5

    invoke-static {v8, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v9

    .line 128
    new-instance v10, Ljava/lang/StringBuilder;

    const v4, 0x8000

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 129
    const-string v4, "<!doctype html><html lang="

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v7, :cond_437

    const-string v4, "bg"

    :goto_2c
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "><head><meta charset=utf-8>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<meta name=viewport content=\"width=device-width,initial-scale=1\"><title>"

    .line 130
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u0410\u043d\u0430\u043b\u0438\u0437 \u043d\u0430 \u0442\u044f\u043b\u043e\u0442\u043e"

    const-string v6, "Body analysis"

    .line 131
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u00b7 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</title><style>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":root{--bg:#121212;--card:#1e1e1e;--t:#e8e8e8;--m:#9ca3af;--s:#2a2a2a}"

    .line 132
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@media (prefers-color-scheme:light){:root{--bg:#f4f5f7;--card:#fff;--t:#111827;--m:#6b7280;--s:#eef0f3}}"

    .line 133
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*{box-sizing:border-box}body{margin:0;background:var(--bg);color:var(--t);font:15px/1.45 system-ui,"

    .line 134
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-apple-system,Roboto,sans-serif}main{max-width:980px;margin:0 auto;padding:16px}"

    .line 135
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".card{background:var(--card);border-radius:18px;padding:16px;margin:12px 0}"

    .line 136
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "h1{font-size:22px;margin:4px 0}h2{font-size:12px;letter-spacing:.06em;text-transform:uppercase;"

    .line 137
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "color:var(--m);margin:0 0 8px}.chip{display:inline-block;padding:7px 14px;border-radius:16px;"

    .line 138
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "font-weight:700;margin:6px 0}.grid{display:grid;grid-template-columns:1fr;gap:12px}"

    .line 139
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@media(min-width:760px){.grid{grid-template-columns:300px 1fr}}.fig{max-height:380px;max-width:100%;"

    .line 140
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "display:block;margin:auto}.age{font-size:44px;font-weight:800;line-height:1}"

    .line 141
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".nb{margin:14px 0 6px}.nt{display:flex;justify-content:space-between;color:var(--m)}"

    .line 142
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".nt b{font-size:16px}.bar{position:relative;display:flex;gap:3px;margin:8px 0 4px}"

    .line 143
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".bar i{flex:1;height:12px;border-radius:6px}.bar em{position:absolute;top:-5px;width:22px;"

    .line 144
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "height:22px;margin-left:-11px;border-radius:50%;border:4px solid var(--t)}"

    .line 145
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".nl{display:flex;font-size:10px;color:var(--m);gap:3px}.nl span{flex:1;text-align:center;overflow-wrap:anywhere}"

    .line 146
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".nl .on{color:var(--t);font-weight:700}.ad{display:flex;gap:10px;background:var(--s);"

    .line 147
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "border-radius:14px;padding:12px 14px;margin:10px 0}.ad i{width:5px;border-radius:3px;flex:none}"

    .line 148
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".k{font-size:11px;font-weight:800}.ad b{display:block;font-size:16px;margin:2px 0}"

    .line 149
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".ad span{color:var(--m)}.d{display:flex;gap:16px;flex-wrap:wrap;font-size:20px;font-weight:800}"

    .line 150
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".cb{display:flex;gap:3px;height:30px;margin:6px 0 8px}.cb i{border-radius:9px;min-width:6px}"

    .line 151
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".cl{display:flex;gap:3px}.cl span{min-width:92px}.cl b{display:block;font-size:17px}.cl em{font-style:normal;"

    .line 152
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "font-size:12px;font-weight:700}.tg{display:grid;grid-template-columns:repeat(auto-fit,minmax(96px,1fr));gap:10px}"

    .line 153
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".gg{display:grid;grid-template-columns:1fr;gap:12px;margin:12px 0}.gg .card{margin:0}"

    .line 154
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@media(min-width:760px){.gg{grid-template-columns:1fr 1fr}}"

    .line 155
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tl{background:var(--s);border-radius:14px;padding:10px 12px;border:1px solid transparent}"

    .line 156
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tl[open]{border-color:#22C55E;grid-column:1/-1}.tl summary{list-style:none;cursor:pointer;display:block}"

    .line 157
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tl summary::-webkit-details-marker{display:none}.tn{display:block;color:var(--m);font-size:12px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis}"

    .line 158
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tv{display:block;font-size:22px;font-weight:800;white-space:nowrap}.tv small{font-size:12px;color:var(--m);margin-left:2px}"

    .line 159
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".ts{display:block;font-size:12px;font-weight:700}.mn{position:relative;display:flex;gap:2px;margin:8px 4px 2px}"

    .line 160
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".mn i{flex:1;height:6px;border-radius:3px}.mn em{position:absolute;top:-4px;width:14px;height:14px;"

    .line 161
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "margin-left:-7px;border-radius:50%;border:3px solid var(--t)}.tl p{margin:10px 0 2px;color:var(--m)}"

    .line 162
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".zt{width:100%;border-collapse:collapse}.src{padding:10px 0;border-top:1px solid var(--s)}"

    .line 163
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".src em{font-style:normal;font-size:11px;font-weight:700;border:1px solid;border-radius:10px;"

    .line 164
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "padding:1px 8px;margin-left:6px}.src p{margin:4px 0}.src i{color:var(--m);font-size:13px}"

    .line 165
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".src small{color:var(--m)}.src a{color:#38BDF8;font-size:12px}summary{cursor:pointer}"

    .line 166
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".zt th{color:var(--m);font-size:12px;text-align:left;padding:6px}.zt td{padding:8px 6px;"

    .line 167
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "border-top:1px solid var(--s);font-weight:700}"

    .line 168
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "footer{color:var(--m);font-size:12px;text-align:center;margin:18px 0}</style></head><body><main>"

    .line 169
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v4, "<h1>"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</h1><div style=\"color:var(--m)\">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    if-eqz p3, :cond_43b

    const-string v4, "\u041c\u044a\u0436"

    const-string v11, "Male"

    invoke-static {v4, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_166
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " \u00b7 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " \u0433."

    const-string v11, " y"

    invoke-static {v6, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " \u00b7 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " \u0441\u043c"

    const-string v11, " cm"

    .line 173
    invoke-static {v6, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " \u00b7 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "w"

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    const/4 v6, 0x1

    invoke-static {v12, v13, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->num(DI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " \u043a\u0433"

    const-string v11, " kg"

    invoke-static {v6, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " \u00b7 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v11, "d.MM.yyyy"

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v11, Ljava/util/Date;

    const-string v12, "t"

    .line 174
    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</div>"

    .line 175
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v4, "<div class=grid><div class=card>"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    if-eqz p6, :cond_21b

    .line 179
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 180
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    move-object/from16 v0, p6

    invoke-virtual {v0, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 181
    const-string v5, "<img class=fig alt=\"\" src=\"data:image/png;base64,"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 182
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_21b
    const-string v4, "</div><div class=card><h2>"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u041f\u0440\u043e\u0444\u0438\u043b"

    const-string v6, "Profile"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</h2>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-static {v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->typeName(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;)[Ljava/lang/String;

    move-result-object v4

    .line 186
    const-string v5, "<span class=chip style=\"color:"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";background:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "22\">"

    .line 187
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</span>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-wide v4, v9, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_2c5

    .line 189
    const-string v4, "<div style=\"margin-top:10px\"><span class=age style=\"color:"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 190
    iget-wide v12, v9, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    add-int/lit8 v4, p4, -0x3

    int-to-double v14, v4

    cmpg-double v4, v12, v14

    if-gtz v4, :cond_445

    const-string v4, "#22C55E"

    :goto_283
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\">"

    .line 191
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v12, v9, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</span> <span style=\"color:var(--m)\">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0444\u0438\u0437\u0438\u0447\u0435\u0441\u043a\u0430 \u0432\u044a\u0437\u0440\u0430\u0441\u0442 \u00b7 \u043f\u0430\u0441\u043f\u043e\u0440\u0442 "

    const-string v11, "physical age \u00b7 passport "

    .line 192
    invoke-static {v6, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</span></div>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_2c5
    if-eqz v7, :cond_456

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "\u043c\u043d\u043e\u0433\u043e \u043d\u0438\u0441\u043a\u0438"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "\u0441\u0442\u0435\u0433\u043d\u0430\u0442\u043e"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "\u043d\u043e\u0440\u043c\u0430"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "\u043d\u0430\u0434\u043d\u043e\u0440\u043c\u0435\u043d\u043e"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "\u0437\u0430\u0442\u043b\u044a\u0441\u0442\u044f\u0432\u0430\u043d\u0435"

    aput-object v6, v4, v5

    move-object v6, v4

    .line 197
    :goto_2e4
    if-eqz v7, :cond_475

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v11, "\u043c\u043d\u043e\u0433\u043e \u043d\u0438\u0441\u043a\u043e"

    aput-object v11, v4, v5

    const/4 v5, 0x1

    const-string v11, "\u043d\u0438\u0441\u043a\u043e"

    aput-object v11, v4, v5

    const/4 v5, 0x2

    const-string v11, "\u043d\u043e\u0440\u043c\u0430"

    aput-object v11, v4, v5

    const/4 v5, 0x3

    const-string v11, "\u0432\u0438\u0441\u043e\u043a\u043e"

    aput-object v11, v4, v5

    const/4 v5, 0x4

    const-string v11, "\u043c\u043d\u043e\u0433\u043e \u0432\u0438\u0441\u043e\u043a\u043e"

    aput-object v11, v4, v5

    move-object v5, v4

    .line 199
    :goto_303
    if-eqz v7, :cond_494

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "\u043c\u043d\u043e\u0433\u043e \u043c\u0430\u043b\u043a\u043e"

    aput-object v12, v4, v11

    const/4 v11, 0x1

    const-string v12, "\u043c\u0430\u043b\u043a\u043e"

    aput-object v12, v4, v11

    const/4 v11, 0x2

    const-string v12, "\u043d\u043e\u0440\u043c\u0430"

    aput-object v12, v4, v11

    const/4 v11, 0x3

    const-string v12, "\u0430\u0442\u043b\u0435\u0442\u0438\u0447\u043d\u043e"

    aput-object v12, v4, v11

    const/4 v11, 0x4

    const-string v12, "\u043c\u043d\u043e\u0433\u043e"

    aput-object v12, v4, v11

    .line 201
    :goto_321
    const-string v11, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v12, "Body fat"

    invoke-static {v11, v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "fat"

    const-wide/high16 v14, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v8, v12, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v12, v13, v0, v1, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->fatNorm(DZI[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->bar(Ljava/lang/String;Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v6, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v11, "Muscle"

    invoke-static {v6, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-wide v12, v9, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    move/from16 v0, p3

    invoke-static {v12, v13, v0, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->muscleNorm(DZ[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->bar(Ljava/lang/String;Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v4, "\u0412\u043e\u0434\u0430"

    const-string v6, "Water"

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "water"

    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v8, v6, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    move/from16 v0, p3

    invoke-static {v12, v13, v0, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->waterNorm(DZ[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->bar(Ljava/lang/String;Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v4, "\u0412\u0438\u0441\u0446\u0435\u0440\u0430\u043b\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v6, "Visceral fat"

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "visc"

    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v8, v6, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    invoke-static {v12, v13, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->visceralNorm(D[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->bar(Ljava/lang/String;Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string v4, "</div></div>"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string v4, "w"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    const-string v4, "fatKg"

    const-wide/high16 v14, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v8, v4, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    const-string v6, "lean"

    const-wide/high16 v14, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v8, v6, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    .line 209
    const-string v6, "water"

    const-wide/high16 v16, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v0, v16

    invoke-virtual {v8, v6, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v16

    mul-double v16, v16, v12

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    div-double v16, v16, v18

    const-string v6, "bone"

    const-wide/high16 v18, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v0, v18

    invoke-virtual {v8, v6, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v18

    .line 210
    const/4 v6, 0x4

    new-array v9, v6, [D

    const/4 v6, 0x0

    aput-wide v4, v9, v6

    const/4 v4, 0x1

    aput-wide v16, v9, v4

    const/4 v4, 0x2

    sub-double v14, v14, v16

    sub-double v14, v14, v18

    aput-wide v14, v9, v4

    const/4 v4, 0x3

    aput-wide v18, v9, v4

    .line 211
    const/4 v4, 0x4

    new-array v11, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v6, "Fat"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v4

    const/4 v4, 0x1

    const-string v5, "\u0412\u043e\u0434\u0430"

    const-string v6, "Water"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v4

    const/4 v4, 0x2

    const-string v5, "\u0411\u0435\u043b\u0442\u044a\u043a"

    const-string v6, "Protein"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v4

    const/4 v4, 0x3

    const-string v5, "\u041c\u0438\u043d\u0435\u0440\u0430\u043b\u0438"

    const-string v6, "Minerals"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v4

    .line 212
    const/4 v4, 0x4

    new-array v14, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "#F59E0B"

    aput-object v5, v14, v4

    const/4 v4, 0x1

    const-string v5, "#38BDF8"

    aput-object v5, v14, v4

    const/4 v4, 0x2

    const-string v5, "#22C55E"

    aput-object v5, v14, v4

    const/4 v4, 0x3

    const-string v5, "#A78BFA"

    aput-object v5, v14, v4

    .line 213
    const/4 v6, 0x1

    .line 214
    array-length v15, v9

    const/4 v4, 0x0

    move v5, v4

    :goto_421
    if-ge v5, v15, :cond_4b5

    aget-wide v16, v9, v5

    .line 215
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_4b2

    const-wide/16 v18, 0x0

    cmpl-double v4, v16, v18

    if-ltz v4, :cond_4b2

    const/4 v4, 0x1

    :goto_432
    and-int/2addr v6, v4

    .line 214
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_421

    .line 129
    :cond_437
    const-string v4, "en"

    goto/16 :goto_2c

    .line 172
    :cond_43b
    const-string v4, "\u0416\u0435\u043d\u0430"

    const-string v11, "Female"

    invoke-static {v4, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_166

    .line 190
    :cond_445
    iget-wide v12, v9, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    add-int/lit8 v4, p4, 0x3

    int-to-double v14, v4

    cmpl-double v4, v12, v14

    if-ltz v4, :cond_452

    const-string v4, "#F59E0B"

    goto/16 :goto_283

    :cond_452
    const-string v4, "inherit"

    goto/16 :goto_283

    .line 196
    :cond_456
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "very low"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "lean"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "normal"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "overweight"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "obese"

    aput-object v6, v4, v5

    move-object v6, v4

    goto/16 :goto_2e4

    .line 198
    :cond_475
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v11, "very low"

    aput-object v11, v4, v5

    const/4 v5, 0x1

    const-string v11, "low"

    aput-object v11, v4, v5

    const/4 v5, 0x2

    const-string v11, "normal"

    aput-object v11, v4, v5

    const/4 v5, 0x3

    const-string v11, "high"

    aput-object v11, v4, v5

    const/4 v5, 0x4

    const-string v11, "very high"

    aput-object v11, v4, v5

    move-object v5, v4

    goto/16 :goto_303

    .line 200
    :cond_494
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "very low"

    aput-object v12, v4, v11

    const/4 v11, 0x1

    const-string v12, "low"

    aput-object v12, v4, v11

    const/4 v11, 0x2

    const-string v12, "normal"

    aput-object v12, v4, v11

    const/4 v11, 0x3

    const-string v12, "athletic"

    aput-object v12, v4, v11

    const/4 v11, 0x4

    const-string v12, "very high"

    aput-object v12, v4, v11

    goto/16 :goto_321

    .line 215
    :cond_4b2
    const/4 v4, 0x0

    goto/16 :goto_432

    .line 217
    :cond_4b5
    const-string v4, "<div class=card><h2>"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u041e\u0442 \u043a\u0430\u043a\u0432\u043e \u0435 \u0442\u0435\u0433\u043b\u043e\u0442\u043e"

    const-string v15, "What the weight is made of"

    invoke-static {v5, v15}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</h2>"

    .line 218
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    if-eqz v6, :cond_582

    .line 220
    const-string v4, "<div class=cb>"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const/4 v4, 0x0

    :goto_4d8
    const/4 v5, 0x4

    if-ge v4, v5, :cond_502

    .line 222
    const-string v5, "<i style=\"flex:"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v16, v9, v4

    const/4 v6, 0x2

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->num(DI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";background:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v14, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"></i>"

    .line 223
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    add-int/lit8 v4, v4, 0x1

    goto :goto_4d8

    .line 225
    :cond_502
    const-string v4, "</div><div class=cl>"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const/4 v4, 0x0

    :goto_508
    const/4 v5, 0x4

    if-ge v4, v5, :cond_57d

    .line 227
    const-string v5, "<span style=\"flex:"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v16, v9, v4

    const/4 v6, 0x2

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->num(DI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"><b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v16, v9, v4

    const/4 v6, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->num(DI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u043a\u0433"

    const-string v15, " kg"

    invoke-static {v6, v15}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</b><em style=\"color:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v14, v4

    .line 228
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v11, v4

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u00b7 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v16, v9, v4

    div-double v16, v16, v12

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " %</em></span>"

    .line 229
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    add-int/lit8 v4, v4, 0x1

    goto :goto_508

    .line 231
    :cond_57d
    const-string v4, "</div>"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_582
    const-string v4, "</div>"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v8, v0, v1, v2, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->metrics(Lorg/json/JSONObject;ZIIZ)Ljava/util/List;

    move-result-object v9

    .line 235
    const-string v4, "<div class=gg>"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const/4 v4, 0x0

    move v6, v4

    :goto_598
    const/4 v4, 0x4

    if-ge v6, v4, :cond_69e

    .line 237
    const-string v4, "<div class=card><h2>"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v7, :cond_675

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->groupBg(I)Ljava/lang/String;

    move-result-object v4

    :goto_5a7
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</h2><div class=tg>"

    .line 238
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5b8
    :goto_5b8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_694

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;

    .line 240
    iget v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->group:I

    if-ne v5, v6, :cond_5b8

    .line 243
    iget v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->status:I

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->statusColor(I)I

    move-result v5

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->hex(I)Ljava/lang/String;

    move-result-object v12

    .line 244
    const-string v5, "<details class=tl><summary><span class=tn>"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v7, :cond_67b

    iget-object v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->bg:Ljava/lang/String;

    :goto_5dc
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, "</span><span class=tv>"

    .line 245
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->text()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, "<small>"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v13, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->unit:Ljava/lang/String;

    invoke-static {v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, "</small></span><span class=ts style=\"color:"

    .line 246
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "\">"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 247
    iget v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->status:I

    if-ltz v5, :cond_686

    if-eqz v7, :cond_67f

    iget v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->status:I

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->statusBg(I)Ljava/lang/String;

    move-result-object v5

    :goto_622
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "</span>"

    .line 248
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget-object v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->norm:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    if-eqz v5, :cond_63c

    .line 250
    iget-object v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->norm:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->mini(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_63c
    const-string v5, "</summary><p>"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    if-eqz v7, :cond_68e

    iget-object v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->subBg:Ljava/lang/String;

    .line 254
    :goto_645
    iget v12, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->status:I

    if-ltz v12, :cond_662

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_662

    .line 255
    const-string v12, "<b>"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "</b> \u00b7 "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_662
    if-eqz v7, :cond_691

    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatBg:Ljava/lang/String;

    :goto_666
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</p></details>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5b8

    .line 237
    :cond_675
    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->groupEn(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5a7

    .line 244
    :cond_67b
    iget-object v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->en:Ljava/lang/String;

    goto/16 :goto_5dc

    .line 247
    :cond_67f
    iget v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->status:I

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->statusEn(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_622

    .line 248
    :cond_686
    if-eqz v7, :cond_68b

    iget-object v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->subBg:Ljava/lang/String;

    goto :goto_622

    :cond_68b
    iget-object v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->subEn:Ljava/lang/String;

    goto :goto_622

    .line 253
    :cond_68e
    iget-object v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->subEn:Ljava/lang/String;

    goto :goto_645

    .line 257
    :cond_691
    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatEn:Ljava/lang/String;

    goto :goto_666

    .line 259
    :cond_694
    const-string v4, "</div></div>"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto/16 :goto_598

    .line 261
    :cond_69e
    const-string v4, "</div>"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v4, "<div class=card><h2>"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u0417\u043e\u043d\u0438 \u00b7 \u043c\u0430\u0437\u043d\u0438\u043d\u0438 80\u2013160 % \u00b7 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 90\u2013110 %"

    const-string v6, "Zones \u00b7 fat 80\u2013160 % \u00b7 muscle 90\u2013110 %"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</h2><table class=zt><tr><th></th><th>"

    .line 263
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v6, "Fat"

    .line 264
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</th><th>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v6, "Muscle"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</th></tr>"

    .line 265
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    move/from16 v0, p3

    move/from16 v1, p5

    invoke-static {v8, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->zones(Lorg/json/JSONObject;ZI)[Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;

    move-result-object v6

    .line 267
    sget-object v9, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->ORDER:[I

    array-length v11, v9

    const/4 v4, 0x0

    move v5, v4

    :goto_6f7
    if-ge v5, v11, :cond_749

    aget v4, v9, v5

    .line 268
    aget-object v12, v6, v4

    .line 269
    const-string v13, "<tr><td>"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v7, :cond_744

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->zoneBg(I)Ljava/lang/String;

    move-result-object v4

    :goto_709
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "</td>"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v14, v12, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->fatKg:D

    iget-wide v0, v12, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->fatPct:D

    move-wide/from16 v16, v0

    iget v13, v12, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->fatStatus:I

    .line 270
    move-wide/from16 v0, v16

    invoke-static {v14, v15, v0, v1, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->zoneTd(DDI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v14, v12, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musKg:D

    iget-wide v0, v12, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musPct:D

    move-wide/from16 v16, v0

    iget v12, v12, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musStatus:I

    move-wide/from16 v0, v16

    invoke-static {v14, v15, v0, v1, v12}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->zoneTd(DDI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, "</tr>"

    .line 271
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_6f7

    .line 269
    :cond_744
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->zoneEn(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_709

    .line 273
    :cond_749
    const-string v4, "</table>"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v8, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->control(Lorg/json/JSONObject;ZII)Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;

    move-result-object v4

    .line 275
    iget-wide v12, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->target:D

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_801

    .line 276
    const-string v5, "<h2 style=\"margin-top:16px\">"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u041a\u043e\u043d\u0442\u0440\u043e\u043b \u043d\u0430 \u0442\u0435\u0433\u043b\u043e\u0442\u043e"

    const-string v9, "Weight control"

    invoke-static {v6, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</h2><div class=d><span>"

    .line 277
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v12, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->target:D

    const/4 v6, 0x1

    invoke-static {v12, v13, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->num(DI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u043a\u0433 \u0437\u0434\u0440\u0430\u0432\u043e\u0441\u043b\u043e\u0432\u043d\u043e"

    const-string v9, " kg healthy"

    invoke-static {v6, v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</span><span style=\"color:var(--m)\">"

    .line 278
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u0442\u0435\u0433\u043b\u043e "

    const-string v11, "weight "

    .line 279
    invoke-static {v9, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v12, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->total:D

    invoke-static {v12, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->signed(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " \u00b7 "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "\u043c\u0430\u0437\u043d\u0438\u043d\u0438 "

    const-string v11, "fat "

    invoke-static {v9, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v12, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->fat:D

    .line 280
    invoke-static {v12, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->signed(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " \u00b7 "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "\u043c\u0443\u0441\u043a\u0443\u043b\u0438 "

    const-string v11, "muscle "

    invoke-static {v9, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v12, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->muscle:D

    invoke-static {v12, v13}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->signed(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 279
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</span></div>"

    .line 281
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_801
    const-string v4, "</div>"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    if-lez p2, :cond_9bb

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 286
    :goto_80f
    if-eqz v4, :cond_907

    const-string v5, "muscle"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_907

    .line 287
    const-string v5, "muscle"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    const-string v5, "muscle"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v14

    sub-double/2addr v12, v14

    .line 288
    const-string v5, "fatKg"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-string v5, "fatKg"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v16

    sub-double v14, v14, v16

    .line 289
    const-string v5, "t"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v5, "t"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long v4, v8, v4

    long-to-double v4, v4

    const-wide v8, 0x4194997000000000L    # 8.64E7

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 290
    const-string v6, "<div class=card><h2>"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u041e\u0442 \u043f\u044a\u0440\u0432\u043e\u0442\u043e \u043c\u0435\u0440\u0435\u043d\u0435 \u00b7 "

    const-string v11, "Since the first \u00b7 "

    invoke-static {v9, v11}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u0434\u043d\u0438"

    const-string v8, " days"

    .line 291
    invoke-static {v5, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 290
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</h2><div class=d><span style=\"color:"

    .line 291
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 292
    const-wide/16 v8, 0x0

    cmpl-double v4, v12, v8

    if-ltz v4, :cond_9be

    const-string v4, "#22C55E"

    :goto_88e
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v8, 0x0

    cmpl-double v4, v12, v8

    if-ltz v4, :cond_9c2

    const-string v4, "+"

    :goto_8a0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 293
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const/4 v5, 0x1

    invoke-static {v8, v9, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->num(DI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u043a\u0433 \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v6, " kg muscle"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</span><span style=\"color:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 294
    const-wide/16 v8, 0x0

    cmpg-double v4, v14, v8

    if-gtz v4, :cond_9c6

    const-string v4, "#22C55E"

    :goto_8cf
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v8, 0x0

    cmpl-double v4, v14, v8

    if-ltz v4, :cond_9ca

    const-string v4, "+"

    :goto_8e1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 295
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const/4 v5, 0x1

    invoke-static {v8, v9, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->num(DI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u043a\u0433 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v6, " kg fat"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</span></div></div>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_907
    const-string v4, "<div class=card><h2>"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u041f\u0440\u0435\u043f\u043e\u0440\u044a\u043a\u0438"

    const-string v6, "Recommendations"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</h2>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    if-eqz v7, :cond_9ce

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "\u0414\u041d\u0415\u0421"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "EMS"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "\u0422\u042f\u041b\u041e"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "\u041d\u0410\u0412\u0418\u041a"

    aput-object v6, v4, v5

    move-object v5, v4

    .line 300
    :goto_93c
    const/4 v4, 0x4

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "#22C55E"

    aput-object v6, v8, v4

    const/4 v4, 0x1

    const-string v6, "#38BDF8"

    aput-object v6, v8, v4

    const/4 v4, 0x2

    const-string v6, "#F59E0B"

    aput-object v6, v8, v4

    const/4 v4, 0x3

    const-string v6, "#EF4444"

    aput-object v6, v8, v4

    .line 301
    invoke-static/range {p1 .. p5}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->advice(Lorg/json/JSONArray;IZII)Ljava/util/List;

    move-result-object v4

    .line 302
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_95b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9ee

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;

    .line 303
    const-string v6, "<div class=ad><i style=\"background:"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v11, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->tone:I

    aget-object v11, v8, v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, "\"></i><div><div class=k style=\"color:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v11, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->tone:I

    aget-object v11, v8, v11

    .line 304
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, "\">"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v11, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->kind:I

    aget-object v11, v5, v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, "</div><b>"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 305
    if-eqz v7, :cond_9e8

    iget-object v6, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->titleBg:Ljava/lang/String;

    :goto_99b
    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, "</b><span>"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v7, :cond_9eb

    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->textBg:Ljava/lang/String;

    :goto_9ad
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "</span></div></div>"

    .line 306
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_95b

    .line 285
    :cond_9bb
    const/4 v4, 0x0

    goto/16 :goto_80f

    .line 292
    :cond_9be
    const-string v4, "#F59E0B"

    goto/16 :goto_88e

    :cond_9c2
    const-string v4, "\u2212"

    goto/16 :goto_8a0

    .line 294
    :cond_9c6
    const-string v4, "#F59E0B"

    goto/16 :goto_8cf

    :cond_9ca
    const-string v4, "\u2212"

    goto/16 :goto_8e1

    .line 299
    :cond_9ce
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "TODAY"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "EMS"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "BODY"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "HABIT"

    aput-object v6, v4, v5

    move-object v5, v4

    goto/16 :goto_93c

    .line 305
    :cond_9e8
    iget-object v6, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->titleEn:Ljava/lang/String;

    goto :goto_99b

    :cond_9eb
    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Advice;->textEn:Ljava/lang/String;

    goto :goto_9ad

    .line 308
    :cond_9ee
    const-string v4, "</div>"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-static {}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->counts()[I

    move-result-object v4

    .line 311
    const-string v5, "<details class=card><summary><h2 style=\"display:inline\">"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u041d\u0430\u0443\u0447\u043d\u0430 \u043e\u0441\u043d\u043e\u0432\u0430"

    const-string v8, "Scientific basis"

    invoke-static {v6, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</h2> <span style=\"color:var(--m)\">\u00b7 "

    .line 312
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u0440\u0435\u0446\u0435\u043d\u0437\u0438\u0440\u0430\u043d\u0438 \u043f\u0440\u043e\u0443\u0447\u0432\u0430\u043d\u0438\u044f, \u043d\u0430\u0434 "

    const-string v8, " peer-reviewed studies, over "

    .line 313
    invoke-static {v6, v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v4, v4, v6

    div-int/lit16 v4, v4, 0x3e8

    .line 314
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " 000 \u0434\u0443\u0448\u0438 \u2014 \u0434\u043e\u043a\u043e\u0441\u043d\u0438"

    const-string v6, ",000 people \u2014 tap"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</span></summary>"

    .line 315
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-static {}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->all()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a50
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b2c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;

    .line 317
    iget v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->tier:I

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->tierColor(I)I

    move-result v5

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->hex(I)Ljava/lang/String;

    move-result-object v8

    .line 318
    const-string v5, "<div class=src><b>"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v7, :cond_b1a

    iget-object v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->topicBg:Ljava/lang/String;

    :goto_a70
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "</b> <em style=\"color:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 319
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ";border-color:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\">"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 320
    if-eqz v7, :cond_b1e

    iget v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->tier:I

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->tierBg(I)Ljava/lang/String;

    move-result-object v5

    :goto_a9a
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "</em><p>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 321
    if-eqz v7, :cond_b26

    iget-object v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->useBg:Ljava/lang/String;

    :goto_aac
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "</p><i>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->cite:Ljava/lang/String;

    invoke-static {v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "</i>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    if-eqz v7, :cond_b29

    iget-object v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->whoBg:Ljava/lang/String;

    .line 323
    :goto_acd
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_ae6

    .line 324
    const-string v8, "<small> \u00b7 "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "</small>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_ae6
    iget-object v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->doi:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_b13

    .line 327
    const-string v5, " <a href=\"https://doi.org/"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->doi:Ljava/lang/String;

    invoke-static {v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\">DOI "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->doi:Ljava/lang/String;

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</a>"

    .line 328
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    :cond_b13
    const-string v4, "</div>"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a50

    .line 318
    :cond_b1a
    iget-object v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->topicEn:Ljava/lang/String;

    goto/16 :goto_a70

    .line 320
    :cond_b1e
    iget v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->tier:I

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleSources;->tierEn(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_a9a

    .line 321
    :cond_b26
    iget-object v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->useEn:Ljava/lang/String;

    goto :goto_aac

    .line 322
    :cond_b29
    iget-object v5, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleSources$Source;->whoEn:Ljava/lang/String;

    goto :goto_acd

    .line 332
    :cond_b2c
    const-string v4, "<p style=\"color:var(--m)\">"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u041a\u0430\u043d\u0442\u0430\u0440\u044a\u0442 \u0441 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438 \u0435 \u043e\u0440\u0438\u0435\u043d\u0442\u0438\u0440, \u043d\u0435 \u043c\u0435\u0434\u0438\u0446\u0438\u043d\u0441\u043a\u043e \u0438\u0437\u0441\u043b\u0435\u0434\u0432\u0430\u043d\u0435: \u0437\u0430 \u043e\u0442\u0434\u0435\u043b\u0435\u043d \u0447\u043e\u0432\u0435\u043a \u043c\u0430\u0437\u043d\u0438\u043d\u0438\u0442\u0435 \u043e\u0431\u0438\u043a\u043d\u043e\u0432\u0435\u043d\u043e \u0441\u0435 \u043e\u0442\u043a\u043b\u043e\u043d\u044f\u0432\u0430\u0442 \u0441 \u043d\u044f\u043a\u043e\u043b\u043a\u043e \u043f\u0440\u043e\u0446\u0435\u043d\u0442\u043d\u0438 \u043f\u0443\u043d\u043a\u0442\u0430 \u043e\u0442 DXA. \u0417\u0430\u0442\u043e\u0432\u0430 \u043c\u0435\u0440\u0438\u043c \u043f\u043e\u0432\u0442\u043e\u0440\u043d\u043e \u043f\u0440\u0438 \u0441\u044a\u043c\u043d\u0435\u043d\u0438\u0435, \u0438\u0437\u0433\u043b\u0430\u0436\u0434\u0430\u043c\u0435 \u043c\u0435\u0436\u0434\u0443 \u043c\u0435\u0440\u0435\u043d\u0438\u044f \u0438 \u0433\u043b\u0435\u0434\u0430\u043c\u0435 \u0442\u0435\u043d\u0434\u0435\u043d\u0446\u0438\u044f\u0442\u0430."

    const-string v6, "An electrode scale is a guide, not a medical test: for one person fat is usually a few percentage points off DXA. So we measure again when in doubt, smooth between weigh-ins and read the trend."

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</p></details>"

    .line 337
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const-string v4, "<script type=\"application/json\" id=xems-raw>["

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const/4 v4, 0x0

    add-int/lit8 v5, p2, -0x9

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v5, v6

    .line 341
    :goto_b54
    move/from16 v0, p2

    if-gt v5, v0, :cond_bef

    .line 342
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 343
    if-nez v4, :cond_b64

    .line 341
    :goto_b60
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_b54

    .line 346
    :cond_b64
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 348
    :try_start_b69
    const-string v8, "t"

    const-string v9, "t"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v7, v8, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 349
    const-string v8, "w"

    const-string v9, "w"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-virtual {v7, v8, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 350
    const-string v8, "z20"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b9d

    .line 351
    const-string v8, "z20"

    const-string v9, "z20"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    const-string v8, "z100"

    const-string v9, "z100"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    :cond_b9d
    const-string v8, "sfat"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_bb0

    .line 355
    const-string v8, "sfat"

    const-string v9, "sfat"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-virtual {v7, v8, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 357
    :cond_bb0
    const-string v8, "male"

    move/from16 v0, p3

    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "age"

    move/from16 v0, p4

    invoke-virtual {v8, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "h"

    move/from16 v0, p5

    invoke-virtual {v8, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "v"

    const-string v11, "v"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v8, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_bd3
    .catch Ljava/lang/Exception; {:try_start_b69 .. :try_end_bd3} :catch_c14

    .line 360
    :goto_bd3
    if-le v5, v6, :cond_bec

    const-string v4, ","

    :goto_bd7
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "</"

    const-string v9, "<\\/"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b60

    :cond_bec
    const-string v4, ""

    goto :goto_bd7

    .line 362
    :cond_bef
    const-string v4, "]</script>"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const-string v4, "<footer>XEMS \u00b7 "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u043a\u0430\u043d\u0442\u0430\u0440 \u0441 8 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0430 \u00b7 \u043e\u0440\u0438\u0435\u043d\u0442\u0438\u0440, \u043d\u0435 \u043c\u0435\u0434\u0438\u0446\u0438\u043d\u0441\u043a\u043e \u0438\u0437\u0441\u043b\u0435\u0434\u0432\u0430\u043d\u0435"

    const-string v6, "8-electrode scale \u00b7 a guide, not a medical test"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</footer></main></body></html>"

    .line 364
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 358
    :catch_c14
    move-exception v4

    goto :goto_bd3
.end method

.method static send(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .registers 15

    .prologue
    .line 422
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "xems_share"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 423
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_14

    .line 424
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 426
    :cond_14
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 427
    if-eqz v2, :cond_36

    .line 428
    array-length v3, v2

    const/4 v0, 0x0

    :goto_1c
    if-ge v0, v3, :cond_36

    aget-object v4, v2, v0

    .line 429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x5265c00

    cmp-long v5, v6, v8

    if-lez v5, :cond_33

    .line 430
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 428
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 434
    :cond_36
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 435
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_40} :catch_b7

    .line 437
    :try_start_40
    invoke-virtual {v1, p3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_b2

    .line 439
    :try_start_43
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 442
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 445
    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 447
    const-string v0, "\u0421\u043f\u043e\u0434\u0435\u043b\u0438"

    const-string v2, "Share"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 448
    const-string v0, "scale"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "share "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " B"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :goto_b1
    return-void

    .line 439
    :catchall_b2
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 440
    throw v0
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_b7} :catch_b7

    .line 449
    :catch_b7
    move-exception v0

    .line 450
    const-string v1, "ScaleShare.send"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b1
.end method

.method static signed(D)Ljava/lang/String;
    .registers 6

    .prologue
    .line 393
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "\u2014"

    :goto_8
    return-object v0

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x0

    cmpl-double v0, p0, v2

    if-ltz v0, :cond_38

    const-string v0, "+"

    :goto_16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const/4 v1, 0x1

    invoke-static {v2, v3, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->num(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043a\u0433"

    const-string v2, " kg"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_38
    const-string v0, "\u2212"

    goto :goto_16
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static typeName(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;)[Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 397
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->type:I

    packed-switch v0, :pswitch_data_a2

    .line 414
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "\u2014"

    aput-object v1, v0, v3

    const-string v1, "#9CA3AF"

    aput-object v1, v0, v4

    :goto_12
    return-object v0

    .line 399
    :pswitch_13
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "\u0410\u0442\u043b\u0435\u0442\u0438\u0447\u0435\u043d \u00b7 \u0442\u0435\u0433\u043b\u043e\u0442\u043e \u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v2, "Athletic \u00b7 the weight is muscle"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "#22C55E"

    aput-object v1, v0, v4

    goto :goto_12

    .line 401
    :pswitch_24
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "\u0411\u0430\u043b\u0430\u043d\u0441\u0438\u0440\u0430\u043d"

    const-string v2, "Balanced"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "#22C55E"

    aput-object v1, v0, v4

    goto :goto_12

    .line 403
    :pswitch_35
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "\u0421\u0438\u043b\u0435\u043d \u00b7 \u0441 \u0438\u0437\u043b\u0438\u0448\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v2, "Strong \u00b7 with excess fat"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "#F59E0B"

    aput-object v1, v0, v4

    goto :goto_12

    .line 405
    :pswitch_46
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fatCls:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_5c

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "\u0417\u0430\u0442\u043b\u044a\u0441\u0442\u044f\u0432\u0430\u043d\u0435"

    const-string v2, "Obese"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "#EF4444"

    aput-object v1, v0, v4

    goto :goto_12

    .line 406
    :cond_5c
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "\u0418\u0437\u043b\u0438\u0448\u043d\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v2, "Excess fat"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "#F59E0B"

    aput-object v1, v0, v4

    goto :goto_12

    .line 408
    :pswitch_6d
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "\u041c\u0430\u0437\u043d\u0438\u043d\u0438 \u043f\u0440\u0438 \u043c\u0430\u043b\u043a\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v2, "Fat with little muscle"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "#EF4444"

    aput-object v1, v0, v4

    goto :goto_12

    .line 410
    :pswitch_7e
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "\u0421\u043b\u0430\u0431 \u00b7 \u043c\u0430\u043b\u043a\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v2, "Slim \u00b7 little muscle"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "#F59E0B"

    aput-object v1, v0, v4

    goto :goto_12

    .line 412
    :pswitch_8f
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "\u041c\u043d\u043e\u0433\u043e \u043d\u0438\u0441\u043a\u0438 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v2, "Very low fat"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "#38BDF8"

    aput-object v1, v0, v4

    goto/16 :goto_12

    .line 397
    nop

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_13
        :pswitch_24
        :pswitch_35
        :pswitch_46
        :pswitch_6d
        :pswitch_7e
        :pswitch_8f
    .end packed-switch
.end method

.method static zoneTd(DDI)Ljava/lang/String;
    .registers 9

    .prologue
    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<td>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "\u2014"

    :goto_13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_51

    const-string v0, ""

    .line 388
    :goto_1f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</td>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    return-object v0

    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-static {p0, p1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->num(DI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u043a\u0433"

    const-string v3, " kg"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 388
    :cond_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " <span style=\"color:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4}, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;->statusColor(I)I

    move-result v2

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->hex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " %</span>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f
.end method
