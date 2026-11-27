.class public final Lcom/isaigu/gymapp/ai/CloudEar;
.super Ljava/lang/Object;
.source "CloudEar.java"


# static fields
.field static final MAX:I = 0x1d4c0

.field static final PER_MIN:I = 0xa

.field static final RATE:I = 0x3e80

.field private static final RECENT:[J

.field private static volatile offUntil:J

.field private static recentAt:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const/16 v0, 0xa

    new-array v0, v0, [J

    sput-object v0, Lcom/isaigu/gymapp/ai/CloudEar;->RECENT:[J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hear([SI)Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 68
    const/4 v3, 0x0

    .line 70
    :try_start_7
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->token()Ljava/lang/String;

    move-result-object v6

    .line 71
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->server()Ljava/lang/String;

    move-result-object v2

    .line 72
    if-eqz v6, :cond_1f

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1f

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_1c} :catch_238
    .catchall {:try_start_7 .. :try_end_1c} :catchall_216

    move-result v7

    if-nez v7, :cond_26

    .line 125
    :cond_1f
    if-eqz v1, :cond_24

    .line 127
    :try_start_21
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_24} :catch_21f

    :cond_24
    :goto_24
    move-object v0, v1

    .line 123
    :goto_25
    return-object v0

    .line 75
    :cond_26
    :goto_26
    :try_start_26
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 76
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_26

    .line 78
    :cond_3a
    const v3, 0x1d4c0

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 79
    mul-int/lit8 v7, v3, 0x2

    new-array v7, v7, [B

    .line 80
    :goto_45
    if-ge v0, v3, :cond_5c

    .line 81
    mul-int/lit8 v8, v0, 0x2

    aget-short v9, p0, v0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 82
    mul-int/lit8 v8, v0, 0x2

    add-int/lit8 v8, v8, 0x1

    aget-short v9, p0, v0

    shr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 84
    :cond_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "{\"device_id\":"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->deviceId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ",\"token\":"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ",\"audio\":\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v6, 0x2

    invoke-static {v7, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\"}"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 86
    new-instance v0, Ljava/net/URL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "/v1/stt"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_b8
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_b8} :catch_238
    .catchall {:try_start_26 .. :try_end_b8} :catchall_216

    .line 87
    :try_start_b8
    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 88
    const/16 v2, 0xbb8

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 89
    const/16 v2, 0x1770

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 90
    const-string v2, "User-Agent"

    const-string v7, "XEMS-Android"

    invoke-virtual {v0, v2, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v2, "Content-Type"

    const-string v7, "application/json; charset=utf-8"

    invoke-virtual {v0, v2, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 93
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 94
    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/OutputStream;->write([B)V

    .line 95
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 96
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 97
    const/16 v2, 0x190

    if-ge v6, v2, :cond_11a

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    :goto_f5
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/CloudEar;->read(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 98
    const/16 v7, 0x1ad

    if-ne v6, v7, :cond_11f

    const-string v7, "stt_quota"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_11f

    .line 99
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudEar;->nextMonth()J

    move-result-wide v2

    sput-wide v2, Lcom/isaigu/gymapp/ai/CloudEar;->offUntil:J

    .line 100
    const-string v2, "wake"

    const-string v3, "cloud ear: the month\'s free audio is used up \u2014 the spotter alone"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_112
    .catch Ljava/lang/Throwable; {:try_start_b8 .. :try_end_112} :catch_181
    .catchall {:try_start_b8 .. :try_end_112} :catchall_231

    .line 125
    if-eqz v0, :cond_117

    .line 127
    :try_start_114
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_117
    .catch Ljava/lang/Throwable; {:try_start_114 .. :try_end_117} :catch_222

    :cond_117
    :goto_117
    move-object v0, v1

    .line 101
    goto/16 :goto_25

    .line 97
    :cond_11a
    :try_start_11a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_f5

    .line 103
    :cond_11f
    const/16 v7, 0xc8

    if-eq v6, v7, :cond_1ad

    .line 104
    const/16 v3, 0x194

    if-ne v6, v3, :cond_16a

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v8, 0x1499700

    add-long/2addr v4, v8

    sput-wide v4, Lcom/isaigu/gymapp/ai/CloudEar;->offUntil:J

    .line 109
    :cond_131
    :goto_131
    const-string v3, "wake"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cloud ear: HTTP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x50

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_162
    .catch Ljava/lang/Throwable; {:try_start_11a .. :try_end_162} :catch_181
    .catchall {:try_start_11a .. :try_end_162} :catchall_231

    .line 125
    if-eqz v0, :cond_167

    .line 127
    :try_start_164
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_167
    .catch Ljava/lang/Throwable; {:try_start_164 .. :try_end_167} :catch_225

    :cond_167
    :goto_167
    move-object v0, v1

    .line 110
    goto/16 :goto_25

    .line 106
    :cond_16a
    const/16 v3, 0x1f7

    if-eq v6, v3, :cond_176

    const/16 v3, 0x191

    if-eq v6, v3, :cond_176

    const/16 v3, 0x193

    if-ne v6, v3, :cond_131

    .line 107
    :cond_176
    :try_start_176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v8, 0x927c0

    add-long/2addr v4, v8

    sput-wide v4, Lcom/isaigu/gymapp/ai/CloudEar;->offUntil:J
    :try_end_180
    .catch Ljava/lang/Throwable; {:try_start_176 .. :try_end_180} :catch_181
    .catchall {:try_start_176 .. :try_end_180} :catchall_231

    goto :goto_131

    .line 120
    :catch_181
    move-exception v2

    move-object v3, v0

    .line 121
    :goto_183
    :try_start_183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x1d4c0

    add-long/2addr v4, v6

    sput-wide v4, Lcom/isaigu/gymapp/ai/CloudEar;->offUntil:J

    .line 122
    const-string v0, "wake"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cloud ear: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a5
    .catchall {:try_start_183 .. :try_end_1a5} :catchall_235

    .line 125
    if-eqz v3, :cond_1aa

    .line 127
    :try_start_1a7
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1aa
    .catch Ljava/lang/Throwable; {:try_start_1a7 .. :try_end_1aa} :catch_22c

    :cond_1aa
    :goto_1aa
    move-object v0, v1

    .line 123
    goto/16 :goto_25

    .line 112
    :cond_1ad
    :try_start_1ad
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 113
    const-string v2, "ok"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
    :try_end_1b7
    .catch Ljava/lang/Throwable; {:try_start_1ad .. :try_end_1b7} :catch_181
    .catchall {:try_start_1ad .. :try_end_1b7} :catchall_231

    move-result v2

    if-nez v2, :cond_1c2

    .line 125
    if-eqz v0, :cond_1bf

    .line 127
    :try_start_1bc
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1bf
    .catch Ljava/lang/Throwable; {:try_start_1bc .. :try_end_1bf} :catch_228

    :cond_1bf
    :goto_1bf
    move-object v0, v1

    .line 114
    goto/16 :goto_25

    .line 116
    :cond_1c2
    :try_start_1c2
    const-string v2, "text"

    const-string v7, ""

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 117
    const-string v6, "wake"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cloud ear "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    mul-int/lit8 v3, v3, 0xa

    div-int/lit16 v3, v3, 0x3e80

    int-to-float v3, v3

    const/high16 v8, 0x41200000    # 10.0f

    div-float/2addr v3, v8

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " s \u2192 \""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\" in "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-static {v6, v3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20e
    .catch Ljava/lang/Throwable; {:try_start_1c2 .. :try_end_20e} :catch_181
    .catchall {:try_start_1c2 .. :try_end_20e} :catchall_231

    .line 125
    if-eqz v0, :cond_213

    .line 127
    :try_start_210
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_213
    .catch Ljava/lang/Throwable; {:try_start_210 .. :try_end_213} :catch_22a

    :cond_213
    :goto_213
    move-object v0, v2

    .line 119
    goto/16 :goto_25

    .line 125
    :catchall_216
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    :goto_219
    if-eqz v3, :cond_21e

    .line 127
    :try_start_21b
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_21e
    .catch Ljava/lang/Throwable; {:try_start_21b .. :try_end_21e} :catch_22f

    .line 131
    :cond_21e
    :goto_21e
    throw v2

    .line 128
    :catch_21f
    move-exception v0

    goto/16 :goto_24

    :catch_222
    move-exception v0

    goto/16 :goto_117

    :catch_225
    move-exception v0

    goto/16 :goto_167

    :catch_228
    move-exception v0

    goto :goto_1bf

    :catch_22a
    move-exception v0

    goto :goto_213

    :catch_22c
    move-exception v0

    goto/16 :goto_1aa

    :catch_22f
    move-exception v0

    goto :goto_21e

    .line 125
    :catchall_231
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    goto :goto_219

    :catchall_235
    move-exception v0

    move-object v2, v0

    goto :goto_219

    .line 120
    :catch_238
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    goto/16 :goto_183
.end method

.method static nextMonth()J
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 149
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 150
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 151
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 152
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 153
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->add(II)V

    .line 154
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static read(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 135
    if-nez p0, :cond_5

    .line 136
    const-string v0, ""

    .line 145
    :goto_4
    return-object v0

    .line 138
    :cond_5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 139
    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 141
    :goto_e
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_19

    .line 142
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_e

    .line 144
    :cond_19
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 145
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method static declared-synchronized take()Z
    .registers 8

    .prologue
    .line 53
    const-class v1, Lcom/isaigu/gymapp/ai/CloudEar;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 54
    sget-object v0, Lcom/isaigu/gymapp/ai/CloudEar;->RECENT:[J

    sget v4, Lcom/isaigu/gymapp/ai/CloudEar;->recentAt:I

    aget-wide v4, v0, v4
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_29

    sub-long v4, v2, v4

    const-wide/32 v6, 0xea60

    cmp-long v0, v4, v6

    if-gez v0, :cond_19

    .line 55
    const/4 v0, 0x0

    .line 59
    :goto_17
    monitor-exit v1

    return v0

    .line 57
    :cond_19
    :try_start_19
    sget-object v0, Lcom/isaigu/gymapp/ai/CloudEar;->RECENT:[J

    sget v4, Lcom/isaigu/gymapp/ai/CloudEar;->recentAt:I

    aput-wide v2, v0, v4

    .line 58
    sget v0, Lcom/isaigu/gymapp/ai/CloudEar;->recentAt:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    sput v0, Lcom/isaigu/gymapp/ai/CloudEar;->recentAt:I
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_29

    .line 59
    const/4 v0, 0x1

    goto :goto_17

    .line 53
    :catchall_29
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static usable(Landroid/content/Context;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/isaigu/gymapp/ai/CloudEar;->offUntil:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_c

    .line 47
    :cond_b
    :goto_b
    return v0

    .line 44
    :cond_c
    :try_start_c
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->token()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->serverConfigured()Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_1b} :catch_20

    move-result v1

    if-lez v1, :cond_b

    const/4 v0, 0x1

    goto :goto_b

    .line 46
    :catch_20
    move-exception v1

    goto :goto_b
.end method
