.class public final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;
.super Ljava/lang/Object;
.source "XiaomiBandAppLink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Listener;,
        Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;
    }
.end annotation


# static fields
.field private static final UTF8:Ljava/nio/charset/Charset;

.field private static lastMs:J

.field private static volatile listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Listener;

.field private static path:[I

.field private static template:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static asJson([B)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 230
    array-length v0, p0

    const/4 v2, 0x7

    if-lt v0, v2, :cond_c

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/16 v2, 0x7b

    if-eq v0, v2, :cond_e

    :cond_c
    move-object v0, v1

    .line 234
    :cond_d
    :goto_d
    return-object v0

    .line 233
    :cond_e
    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 234
    const-string v2, "\"t\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_25
    move-object v0, v1

    goto :goto_d
.end method

.method private static encode(Ljava/util/List;[II[B)[B
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;",
            ">;[II[B)[B"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x2

    const/4 v2, 0x0

    .line 239
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v1, v2

    .line 240
    :goto_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6a

    .line 241
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;

    .line 242
    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;->bytes:[B

    .line 243
    array-length v6, p1

    if-ge p2, v6, :cond_28

    aget v6, p1, p2

    if-ne v1, v6, :cond_28

    iget v6, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;->wire:I

    if-ne v6, v10, :cond_28

    .line 244
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ne p2, v3, :cond_41

    move-object v3, p3

    .line 257
    :cond_28
    iget v6, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;->num:I

    int-to-long v6, v6

    const/4 v8, 0x3

    shl-long/2addr v6, v8

    iget v8, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;->wire:I

    int-to-long v8, v8

    or-long/2addr v6, v8

    invoke-static {v5, v6, v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->writeVarint(Ljava/io/ByteArrayOutputStream;J)V

    .line 258
    iget v6, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;->wire:I

    if-nez v6, :cond_57

    .line 259
    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;->varint:J

    invoke-static {v5, v6, v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->writeVarint(Ljava/io/ByteArrayOutputStream;J)V

    .line 240
    :goto_3d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 247
    :cond_41
    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;->bytes:[B

    add-int/lit8 v6, p2, 0x1

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->parse([BI)Ljava/util/List;

    move-result-object v3

    .line 248
    if-nez v3, :cond_4d

    move-object v0, v4

    .line 267
    :goto_4c
    return-object v0

    .line 251
    :cond_4d
    add-int/lit8 v6, p2, 0x1

    invoke-static {v3, p1, v6, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->encode(Ljava/util/List;[II[B)[B

    move-result-object v3

    .line 252
    if-nez v3, :cond_28

    move-object v0, v4

    .line 253
    goto :goto_4c

    .line 260
    :cond_57
    iget v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;->wire:I

    if-ne v0, v10, :cond_65

    .line 261
    array-length v0, v3

    int-to-long v6, v0

    invoke-static {v5, v6, v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->writeVarint(Ljava/io/ByteArrayOutputStream;J)V

    .line 262
    array-length v0, v3

    invoke-virtual {v5, v3, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3d

    .line 264
    :cond_65
    array-length v0, v3

    invoke-virtual {v5, v3, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3d

    .line 267
    :cond_6a
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_4c
.end method

.method private static find(Ljava/util/List;Ljava/util/List;I)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 206
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_55

    .line 207
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;

    .line 208
    iget v2, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;->wire:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_17

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;->bytes:[B

    if-nez v2, :cond_1b

    .line 206
    :cond_17
    :goto_17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 211
    :cond_1b
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;->bytes:[B

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->asJson([B)Ljava/lang/String;

    move-result-object v2

    .line 212
    if-eqz v2, :cond_2c

    .line 213
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    .line 226
    :cond_2b
    :goto_2b
    return-object v0

    .line 216
    :cond_2c
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;->bytes:[B

    add-int/lit8 v2, p2, 0x1

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->parse([BI)Ljava/util/List;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    .line 218
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    add-int/lit8 v2, p2, 0x1

    invoke-static {v0, p1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->find(Ljava/util/List;Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    .line 220
    if-nez v0, :cond_2b

    .line 223
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_17

    .line 226
    :cond_55
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public static getLastMessageMs()J
    .registers 2

    .prologue
    .line 42
    sget-wide v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->lastMs:J

    return-wide v0
.end method

.method public static isLinked()Z
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->template:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static onCommand(II[B)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-static {p2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->parse([BI)Ljava/util/List;

    move-result-object v1

    .line 53
    if-nez v1, :cond_8

    .line 72
    :cond_7
    :goto_7
    return v0

    .line 56
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->find(Ljava/util/List;Ljava/util/List;I)Ljava/lang/String;

    move-result-object v3

    .line 58
    if-eqz v3, :cond_7

    .line 61
    sput-object p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->template:[B

    .line 62
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    sput-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->path:[I

    move v1, v0

    .line 63
    :goto_1e
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->path:[I

    array-length v0, v0

    if-ge v1, v0, :cond_35

    .line 64
    sget-object v4, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->path:[I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v4, v1

    .line 63
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e

    .line 66
    :cond_35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->lastMs:J

    .line 67
    const-string v0, "applink"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->pathText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Listener;

    .line 69
    if-eqz v0, :cond_7c

    .line 70
    invoke-interface {v0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Listener;->onAppMessage(Ljava/lang/String;)V

    .line 72
    :cond_7c
    const/4 v0, 0x1

    goto :goto_7
.end method

.method static parse([BI)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x5

    const/16 v11, 0x80

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 118
    if-eqz p0, :cond_9

    if-le p1, v12, :cond_a

    .line 201
    :cond_9
    :goto_9
    return-object v0

    .line 121
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v8, v3

    .line 124
    :goto_10
    :try_start_10
    array-length v2, p0

    if-ge v8, v2, :cond_c7

    .line 125
    const-wide/16 v4, 0x0

    move v2, v3

    move-wide v6, v4

    .line 128
    :goto_17
    add-int/lit8 v5, v8, 0x1

    aget-byte v4, p0, v8

    and-int/lit16 v4, v4, 0xff

    .line 129
    and-int/lit8 v8, v4, 0x7f

    int-to-long v8, v8

    shl-long/2addr v8, v2

    or-long/2addr v6, v8

    .line 130
    add-int/lit8 v2, v2, 0x7

    .line 131
    if-ge v4, v11, :cond_59

    .line 138
    new-instance v10, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;

    invoke-direct {v10}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;-><init>()V

    .line 139
    const/4 v2, 0x3

    ushr-long v8, v6, v2

    long-to-int v2, v8

    iput v2, v10, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;->num:I

    .line 140
    const-wide/16 v8, 0x7

    and-long/2addr v6, v8

    long-to-int v2, v6

    iput v2, v10, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;->wire:I

    .line 141
    iget v2, v10, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;->num:I

    if-lez v2, :cond_9

    .line 144
    iget v2, v10, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;->wire:I

    if-nez v2, :cond_66

    .line 145
    const-wide/16 v6, 0x0

    move v8, v3

    move v9, v5

    .line 148
    :goto_43
    add-int/lit8 v2, v9, 0x1

    aget-byte v4, p0, v9

    and-int/lit16 v9, v4, 0xff

    .line 149
    and-int/lit8 v4, v9, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v8

    or-long/2addr v4, v6

    .line 150
    add-int/lit8 v8, v8, 0x7

    .line 151
    if-ge v9, v11, :cond_5f

    .line 158
    iput-wide v4, v10, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;->varint:J

    .line 196
    :goto_54
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v2

    .line 197
    goto :goto_10

    .line 134
    :cond_59
    const/16 v4, 0x23

    if-gt v2, v4, :cond_9

    move v8, v5

    .line 137
    goto :goto_17

    .line 154
    :cond_5f
    const/16 v6, 0x3f

    if-gt v8, v6, :cond_9

    move-wide v6, v4

    move v9, v2

    .line 157
    goto :goto_43

    .line 159
    :cond_66
    iget v2, v10, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;->wire:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_94

    move v2, v3

    move v4, v3

    .line 163
    :goto_6d
    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    .line 164
    and-int/lit8 v7, v5, 0x7f

    shl-int/2addr v7, v4

    or-int/2addr v2, v7

    .line 165
    add-int/lit8 v4, v4, 0x7

    .line 166
    if-ge v5, v11, :cond_8e

    .line 173
    if-ltz v2, :cond_9

    add-int v4, v6, v2

    array-length v5, p0

    if-gt v4, v5, :cond_9

    .line 176
    new-array v4, v2, [B

    iput-object v4, v10, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;->bytes:[B

    .line 177
    iget-object v4, v10, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;->bytes:[B

    const/4 v5, 0x0

    invoke-static {p0, v6, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    add-int/2addr v2, v6

    .line 179
    goto :goto_54

    .line 169
    :cond_8e
    const/16 v5, 0x1c

    if-gt v4, v5, :cond_9

    move v5, v6

    .line 172
    goto :goto_6d

    .line 179
    :cond_94
    iget v2, v10, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;->wire:I

    if-ne v2, v12, :cond_ac

    .line 180
    add-int/lit8 v2, v5, 0x4

    array-length v4, p0

    if-gt v2, v4, :cond_9

    .line 183
    const/4 v2, 0x4

    new-array v2, v2, [B

    iput-object v2, v10, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;->bytes:[B

    .line 184
    iget-object v2, v10, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;->bytes:[B

    const/4 v4, 0x0

    const/4 v6, 0x4

    invoke-static {p0, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    add-int/lit8 v2, v5, 0x4

    goto :goto_54

    .line 186
    :cond_ac
    iget v2, v10, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;->wire:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_9

    .line 187
    add-int/lit8 v2, v5, 0x8

    array-length v4, p0

    if-gt v2, v4, :cond_9

    .line 190
    const/16 v2, 0x8

    new-array v2, v2, [B

    iput-object v2, v10, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;->bytes:[B

    .line 191
    iget-object v2, v10, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Field;->bytes:[B

    const/4 v4, 0x0

    const/16 v6, 0x8

    invoke-static {p0, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_c4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_10 .. :try_end_c4} :catch_ca

    .line 192
    add-int/lit8 v2, v5, 0x8

    goto :goto_54

    :cond_c7
    move-object v0, v1

    .line 201
    goto/16 :goto_9

    .line 198
    :catch_ca
    move-exception v1

    goto/16 :goto_9
.end method

.method private static pathText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    const/4 v0, 0x0

    :goto_6
    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->path:[I

    if-eqz v1, :cond_24

    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->path:[I

    array-length v1, v1

    if-ge v0, v1, :cond_24

    .line 101
    if-nez v0, :cond_21

    const-string v1, ""

    :goto_13
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->path:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 101
    :cond_21
    const-string v1, "."

    goto :goto_13

    .line 103
    :cond_24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static reset()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 46
    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->template:[B

    .line 47
    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->path:[I

    .line 48
    return-void
.end method

.method public static send(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 77
    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->template:[B

    .line 78
    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->path:[I

    .line 79
    if-eqz v1, :cond_b

    if-eqz v2, :cond_b

    if-nez p0, :cond_c

    .line 95
    :cond_b
    :goto_b
    return v0

    .line 82
    :cond_c
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->parse([BI)Ljava/util/List;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_b

    .line 86
    sget-object v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->encode(Ljava/util/List;[II[B)[B

    move-result-object v1

    .line 87
    if-eqz v1, :cond_b

    .line 90
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v2

    .line 91
    if-eqz v2, :cond_b

    invoke-interface {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 94
    invoke-interface {v2, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->sendCommand([B)V

    .line 95
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Listener;)V
    .registers 1

    .prologue
    .line 33
    sput-object p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Listener;

    .line 34
    return-void
.end method

.method private static writeVarint(Ljava/io/ByteArrayOutputStream;J)V
    .registers 8

    .prologue
    .line 272
    :goto_0
    const-wide/16 v0, 0x7f

    and-long/2addr v0, p1

    long-to-int v0, v0

    .line 273
    const/4 v1, 0x7

    ushr-long/2addr p1, v1

    .line 274
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-eqz v1, :cond_12

    .line 275
    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 277
    :cond_12
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 278
    return-void
.end method
