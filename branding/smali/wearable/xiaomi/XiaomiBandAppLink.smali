.class public final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;
.super Ljava/lang/Object;
.source "XiaomiBandAppLink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Listener;
    }
.end annotation


# static fields
.field static final APP_LIST:I = 0x0

.field static final APP_MESSAGE_TO_WEAR:I = 0x8

.field static final APP_STATUS_SYNC:I = 0x7

.field public static final PACKAGE:Ljava/lang/String; = "com.xems.band"

.field static final STATUS_CONNECTED:I = 0x1

.field static final T_APP:I = 0x14

.field private static final UTF8:Ljava/nio/charset/Charset;

.field private static announced:Z

.field private static fingerprint:[B

.field private static lastMs:J

.field private static volatile listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Listener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static announce()V
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    .line 156
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_12

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->fingerprint:[B

    if-nez v1, :cond_13

    .line 167
    :cond_12
    :goto_12
    return-void

    .line 160
    :cond_13
    new-array v1, v4, [[B

    const/4 v2, 0x0

    .line 161
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->basicInfo()[B

    move-result-object v3

    invoke-static {v6, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v3

    aput-object v3, v1, v2

    .line 162
    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v2

    aput-object v2, v1, v6

    .line 160
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v1

    .line 163
    const/16 v2, 0x14

    const/4 v3, 0x7

    const/16 v4, 0x16

    const/16 v5, 0x8

    .line 164
    invoke-static {v5, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v1

    invoke-static {v4, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v1

    .line 163
    invoke-static {v2, v3, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->command(II[B)[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->sendCommand([B)V

    .line 165
    sput-boolean v6, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->announced:Z

    .line 166
    const-string v0, "applink"

    const-string v1, "announced connected"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method private static basicInfo()[B
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 184
    new-array v1, v4, [[B

    const-string v0, "com.xems.band"

    .line 185
    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldString(ILjava/lang/String;)[B

    move-result-object v0

    aput-object v0, v1, v2

    .line 186
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->fingerprint:[B

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->fingerprint:[B

    :goto_13
    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldBytes(I[B)[B

    move-result-object v0

    aput-object v0, v1, v3

    .line 184
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    return-object v0

    .line 186
    :cond_1e
    new-array v0, v2, [B

    goto :goto_13
.end method

.method private static fp(Ljava/util/Map;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;)[B"
        }
    .end annotation

    .prologue
    .line 195
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->bytesField(Ljava/util/Map;I)[B

    move-result-object v0

    .line 196
    if-eqz v0, :cond_8

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_7
.end method

.method public static getLastMessageMs()J
    .registers 2

    .prologue
    .line 59
    sget-wide v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->lastMs:J

    return-wide v0
.end method

.method public static isLinked()Z
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->fingerprint:[B

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->announced:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isOurs(Ljava/util/Map;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 190
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->bytesField(Ljava/util/Map;I)[B

    move-result-object v1

    .line 191
    if-eqz v1, :cond_17

    const-string v2, "com.xems.band"

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private static onAppList(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 130
    if-eqz p0, :cond_23

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v3, v0

    .line 131
    :goto_f
    if-eqz v3, :cond_26

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    .line 132
    :goto_16
    if-ge v2, v1, :cond_64

    .line 133
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 134
    instance-of v4, v0, [B

    if-nez v4, :cond_28

    .line 132
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 130
    :cond_23
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_f

    :cond_26
    move v1, v2

    .line 131
    goto :goto_16

    .line 137
    :cond_28
    check-cast v0, [B

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object v0

    .line 138
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->isOurs(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 141
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->fp(Ljava/util/Map;)[B

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->fingerprint:[B

    .line 142
    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    .line 143
    const-string v1, "applink"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installed v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Listener;

    .line 145
    if-eqz v1, :cond_60

    if-lez v0, :cond_60

    .line 146
    invoke-interface {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Listener;->onAppInstalled(I)V

    .line 148
    :cond_60
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->announce()V

    .line 152
    :goto_63
    return-void

    .line 151
    :cond_64
    const-string v0, "applink"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not installed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " apps)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63
.end method

.method static onAuthenticated(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;)V
    .registers 3

    .prologue
    .line 69
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->reset()V

    .line 70
    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->sendCommand([B)V

    .line 71
    return-void
.end method

.method static onCommand(IILjava/util/Map;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 81
    const/16 v2, 0x14

    if-eq p0, v2, :cond_a

    .line 126
    :cond_9
    :goto_9
    return v0

    .line 84
    :cond_a
    const/16 v2, 0x16

    invoke-static {p2, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v2

    .line 85
    if-eqz v2, :cond_9

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 89
    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->onAppList(Ljava/util/Map;)V

    move v0, v1

    .line 90
    goto :goto_9

    .line 92
    :cond_25
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 93
    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v0

    .line 94
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->isOurs(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 95
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->fp(Ljava/util/Map;)[B

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->fingerprint:[B

    .line 96
    const-string v0, "applink"

    const-string v2, "app online"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->announce()V

    :cond_49
    move v0, v1

    .line 99
    goto :goto_9

    .line 101
    :cond_4b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 102
    invoke-static {v2, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v0

    .line 103
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v2

    .line 104
    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->bytesField(Ljava/util/Map;I)[B

    move-result-object v0

    .line 105
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->isOurs(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_a7

    if-eqz v0, :cond_a7

    .line 106
    sget-object v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->fingerprint:[B

    if-nez v3, :cond_74

    .line 107
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->fp(Ljava/util/Map;)[B

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->fingerprint:[B

    .line 109
    :cond_74
    sget-boolean v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->announced:Z

    if-nez v2, :cond_7b

    .line 110
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->announce()V

    .line 112
    :cond_7b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->lastMs:J

    .line 113
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 114
    const-string v0, "applink"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2190 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Listener;

    .line 116
    if-eqz v0, :cond_a7

    .line 117
    invoke-interface {v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Listener;->onAppMessage(Ljava/lang/String;)V

    :cond_a7
    move v0, v1

    .line 120
    goto/16 :goto_9

    .line 122
    :cond_aa
    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 123
    const-string v0, "applink"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 124
    goto/16 :goto_9
.end method

.method static refresh(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;)V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 75
    sput-boolean v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->announced:Z

    .line 76
    const/16 v0, 0x14

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->sendCommand([B)V

    .line 77
    return-void
.end method

.method static reset()V
    .registers 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->fingerprint:[B

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->announced:Z

    .line 65
    return-void
.end method

.method public static send(Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 171
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v2

    .line 172
    sget-object v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->fingerprint:[B

    if-eqz v3, :cond_15

    if-eqz p0, :cond_15

    if-eqz v2, :cond_15

    invoke-interface {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->isConnected()Z

    move-result v3

    if-nez v3, :cond_17

    :cond_15
    move v0, v1

    .line 180
    :goto_16
    return v0

    .line 175
    :cond_17
    new-array v3, v5, [[B

    .line 176
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->basicInfo()[B

    move-result-object v4

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v4

    aput-object v4, v3, v1

    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->UTF8:Ljava/nio/charset/Charset;

    .line 177
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v5, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldBytes(I[B)[B

    move-result-object v1

    aput-object v1, v3, v0

    .line 175
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v1

    .line 178
    const/16 v3, 0x14

    const/16 v4, 0x8

    const/16 v5, 0x16

    const/16 v6, 0x9

    .line 179
    invoke-static {v6, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v1

    invoke-static {v5, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v1

    .line 178
    invoke-static {v3, v4, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->command(II[B)[B

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->sendCommand([B)V

    goto :goto_16
.end method

.method public static setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Listener;)V
    .registers 1

    .prologue
    .line 50
    sput-object p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Listener;

    .line 51
    return-void
.end method
