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

    .line 41
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static announce()V
    .registers 7

    .line 156
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_4a

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_4a

    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->fingerprint:[B

    if-nez v1, :cond_11

    goto :goto_4a

    .line 160
    :cond_11
    const/4 v1, 0x2

    new-array v2, v1, [[B

    const/4 v3, 0x0

    .line 161
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->basicInfo()[B

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v4

    aput-object v4, v2, v3

    .line 162
    invoke-static {v1, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v1

    aput-object v1, v2, v5

    .line 160
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v1

    .line 163
    const/16 v2, 0x14

    const/4 v3, 0x7

    const/16 v4, 0x16

    const/16 v6, 0x8

    .line 164
    invoke-static {v6, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v1

    invoke-static {v4, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v1

    .line 163
    invoke-static {v2, v3, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->command(II[B)[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->sendCommand([B)V

    .line 165
    sput-boolean v5, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->announced:Z

    .line 166
    const-string v0, "applink"

    const-string v1, "announced connected"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void

    .line 158
    :cond_4a
    :goto_4a
    return-void
.end method

.method private static basicInfo()[B
    .registers 5

    .line 184
    const/4 v0, 0x2

    new-array v1, v0, [[B

    .line 185
    const/4 v2, 0x1

    const-string v3, "com.xems.band"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldString(ILjava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 186
    sget-object v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->fingerprint:[B

    if-eqz v3, :cond_12

    goto :goto_14

    :cond_12
    new-array v3, v4, [B

    :goto_14
    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldBytes(I[B)[B

    move-result-object v0

    aput-object v0, v1, v2

    .line 184
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static fp(Ljava/util/Map;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;)[B"
        }
    .end annotation

    .line 195
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->bytesField(Ljava/util/Map;I)[B

    move-result-object p0

    .line 196
    if-eqz p0, :cond_8

    goto :goto_b

    :cond_8
    const/4 p0, 0x0

    new-array p0, p0, [B

    :goto_b
    return-object p0
.end method

.method public static getLastMessageMs()J
    .registers 2

    .line 59
    sget-wide v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->lastMs:J

    return-wide v0
.end method

.method public static isLinked()Z
    .registers 1

    .line 55
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->fingerprint:[B

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->announced:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static isOurs(Ljava/util/Map;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .line 190
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->bytesField(Ljava/util/Map;I)[B

    move-result-object p0

    .line 191
    if-eqz p0, :cond_17

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p0, "com.xems.band"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method private static onAppList(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 130
    if-eqz p0, :cond_e

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    .line 131
    :goto_f
    const/4 v0, 0x0

    if-eqz p0, :cond_17

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 132
    :goto_18
    nop

    :goto_19
    const-string v2, "applink"

    if-ge v0, v1, :cond_62

    .line 133
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 134
    instance-of v4, v3, [B

    if-nez v4, :cond_26

    .line 135
    goto :goto_33

    .line 137
    :cond_26
    check-cast v3, [B

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoParse([B)Ljava/util/Map;

    move-result-object v3

    .line 138
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->isOurs(Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 139
    nop

    .line 132
    :goto_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 141
    :cond_36
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->fp(Ljava/util/Map;)[B

    move-result-object p0

    sput-object p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->fingerprint:[B

    .line 142
    const/4 p0, 0x3

    invoke-static {v3, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result p0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installed v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Listener;

    .line 145
    if-eqz v0, :cond_5e

    if-lez p0, :cond_5e

    .line 146
    invoke-interface {v0, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Listener;->onAppInstalled(I)V

    .line 148
    :cond_5e
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->announce()V

    .line 149
    return-void

    .line 151
    :cond_62
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not installed ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " apps)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method static onAuthenticated(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;)V
    .registers 3

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
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    const/16 v1, 0x14

    if-eq p0, v1, :cond_6

    .line 82
    return v0

    .line 84
    :cond_6
    const/16 p0, 0x16

    invoke-static {p2, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object p0

    .line 85
    if-nez p0, :cond_f

    .line 86
    return v0

    .line 88
    :cond_f
    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 89
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->onAppList(Ljava/util/Map;)V

    .line 90
    return p2

    .line 92
    :cond_22
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "applink"

    if-eqz v2, :cond_48

    .line 93
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object p0

    .line 94
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->isOurs(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 95
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->fp(Ljava/util/Map;)[B

    move-result-object p0

    sput-object p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->fingerprint:[B

    .line 96
    const-string p0, "app online"

    invoke-static {v3, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->announce()V

    .line 99
    :cond_47
    return p2

    .line 101
    :cond_48
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 102
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object p0

    .line 103
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object p1

    .line 104
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->bytesField(Ljava/util/Map;I)[B

    move-result-object p0

    .line 105
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->isOurs(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_a2

    if-eqz p0, :cond_a2

    .line 106
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->fingerprint:[B

    if-nez v0, :cond_73

    .line 107
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->fp(Ljava/util/Map;)[B

    move-result-object p1

    sput-object p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->fingerprint:[B

    .line 109
    :cond_73
    sget-boolean p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->announced:Z

    if-nez p1, :cond_7a

    .line 110
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->announce()V

    .line 112
    :cond_7a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->lastMs:J

    .line 113
    new-instance p1, Ljava/lang/String;

    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 114
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u2190 "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Listener;

    .line 116
    if-eqz p0, :cond_a2

    .line 117
    invoke-interface {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Listener;->onAppMessage(Ljava/lang/String;)V

    .line 120
    :cond_a2
    return p2

    .line 122
    :cond_a3
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c4

    .line 123
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "app status "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return p2

    .line 126
    :cond_c4
    return v0
.end method

.method static refresh(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;)V
    .registers 3

    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->announced:Z

    .line 76
    const/16 v1, 0x14

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->request(II)[B

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->sendCommand([B)V

    .line 77
    return-void
.end method

.method static reset()V
    .registers 1

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
    .registers 7

    .line 171
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    .line 172
    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->fingerprint:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_4a

    if-eqz p0, :cond_4a

    if-eqz v0, :cond_4a

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->isConnected()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_4a

    .line 175
    :cond_14
    const/4 v1, 0x2

    new-array v3, v1, [[B

    .line 176
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->basicInfo()[B

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v4

    aput-object v4, v3, v2

    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->UTF8:Ljava/nio/charset/Charset;

    .line 177
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldBytes(I[B)[B

    move-result-object p0

    aput-object p0, v3, v5

    .line 175
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object p0

    .line 178
    const/16 v1, 0x14

    const/16 v2, 0x8

    const/16 v3, 0x16

    const/16 v4, 0x9

    .line 179
    invoke-static {v4, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object p0

    invoke-static {v3, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object p0

    .line 178
    invoke-static {v1, v2, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->command(II[B)[B

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->sendCommand([B)V

    .line 180
    return v5

    .line 173
    :cond_4a
    :goto_4a
    return v2
.end method

.method public static setListener(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Listener;)V
    .registers 1

    .line 50
    sput-object p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink$Listener;

    .line 51
    return-void
.end method
