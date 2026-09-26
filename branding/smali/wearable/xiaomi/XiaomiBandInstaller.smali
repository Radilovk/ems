.class public final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;
.super Ljava/lang/Object;
.source "XiaomiBandInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller$Listener;
    }
.end annotation


# static fields
.field static final DEFAULT_CHUNK:I = 0x800

.field static final RPK_INSTALL:I = 0x1

.field static final RPK_INSTALLED:I = 0x2

.field static final RPK_LIST:I = 0x0

.field static final T_RPK:I = 0x14

.field static final T_UPLOAD:I = 0x16

.field static final UPLOAD_START:I = 0x0

.field static final UPLOAD_TYPE_APP:I = 0x40

.field private static client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

.field private static file:[B

.field private static listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller$Listener;

.field private static pkg:Ljava/lang/String;

.field private static uploading:Z

.field private static version:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static finish(ZLjava/lang/String;)V
    .registers 4

    .line 174
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller$Listener;

    .line 175
    if-eqz p0, :cond_b

    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    if-eqz v1, :cond_b

    .line 176
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->refresh(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;)V

    .line 178
    :cond_b
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->file:[B

    .line 179
    sput-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->pkg:Ljava/lang/String;

    .line 180
    sput-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller$Listener;

    .line 181
    const/4 v1, 0x0

    sput-boolean v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->uploading:Z

    .line 182
    if-eqz v0, :cond_1a

    .line 183
    invoke-interface {v0, p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller$Listener;->onDone(ZLjava/lang/String;)V

    .line 185
    :cond_1a
    return-void
.end method

.method public static install([BLjava/lang/String;ILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller$Listener;)Z
    .registers 7

    .line 53
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    .line 54
    instance-of v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    const/4 v2, 0x0

    if-eqz v1, :cond_8e

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->isConnected()Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_8e

    .line 60
    :cond_11
    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->file:[B

    if-nez v1, :cond_8d

    if-eqz p0, :cond_8d

    array-length v1, p0

    if-nez v1, :cond_1b

    goto :goto_8d

    .line 63
    :cond_1b
    check-cast v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    .line 64
    sput-object p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->file:[B

    .line 65
    sput-object p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->pkg:Ljava/lang/String;

    .line 66
    sput p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->version:I

    .line 67
    sput-object p3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller$Listener;

    .line 68
    sput-boolean v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->uploading:Z

    .line 69
    const/4 p3, 0x3

    new-array v0, p3, [[B

    .line 70
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldString(ILjava/lang/String;)[B

    move-result-object p1

    aput-object p1, v0, v2

    .line 71
    const/4 p1, 0x2

    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object p2

    aput-object p2, v0, v1

    array-length p2, p0

    .line 72
    invoke-static {p3, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object p2

    aput-object p2, v0, p1

    .line 69
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object p2

    .line 73
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object p1

    .line 74
    sget-object p2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->pkg:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " v"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->version:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "B"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "install"

    invoke-virtual {p2, p3, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string p0, "request"

    invoke-static {v2, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->progress(ILjava/lang/String;)V

    .line 76
    sget-object p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    const/16 p2, 0x14

    const/16 p3, 0x16

    .line 77
    invoke-static {p3, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object p1

    .line 76
    invoke-static {p2, v1, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->command(II[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->sendCommand([B)V

    .line 78
    return v1

    .line 61
    :cond_8d
    :goto_8d
    return v2

    .line 55
    :cond_8e
    :goto_8e
    if-eqz p3, :cond_95

    .line 56
    const-string p0, "not_connected"

    invoke-interface {p3, v2, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller$Listener;->onDone(ZLjava/lang/String;)V

    .line 58
    :cond_95
    return v2
.end method

.method public static isBusy()Z
    .registers 1

    .line 48
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->file:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static md5([B)[B
    .registers 2

    .line 196
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    .line 197
    :catch_b
    move-exception p0

    .line 198
    const/16 p0, 0x10

    new-array p0, p0, [B

    return-object p0
.end method

.method static onCommand(IILjava/util/Map;)Z
    .registers 10
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

    .line 83
    const/4 v0, 0x4

    const-string v1, "install"

    const/16 v2, 0x16

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x14

    if-ne p0, v6, :cond_a3

    .line 84
    if-ne p1, v5, :cond_57

    sget-object p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->file:[B

    if-eqz p0, :cond_57

    sget-boolean p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->uploading:Z

    if-nez p0, :cond_57

    .line 85
    invoke-static {p2, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object p0

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object p0

    .line 86
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result p0

    .line 87
    sget-object p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "start status="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    if-eqz p0, :cond_53

    const/4 p1, -0x1

    if-eq p0, p1, :cond_53

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "rejected "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->finish(ZLjava/lang/String;)V

    .line 90
    return v5

    .line 92
    :cond_53
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->requestUpload()V

    .line 93
    return v5

    .line 95
    :cond_57
    if-ne p1, v3, :cond_a2

    .line 97
    nop

    .line 98
    invoke-static {p2, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object p0

    .line 97
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result p0

    .line 99
    sget-object p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "band reports result "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    sget-object p1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->file:[B

    if-eqz p1, :cond_a1

    .line 101
    if-gtz p0, :cond_83

    const/4 v4, 0x1

    :cond_83
    if-gtz p0, :cond_88

    const-string p0, "installed"

    goto :goto_9e

    :cond_88
    if-ne p0, v3, :cond_8d

    const-string p0, "verify failed"

    goto :goto_9e

    :cond_8d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "failed "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_9e
    invoke-static {v4, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->finish(ZLjava/lang/String;)V

    .line 103
    :cond_a1
    return v5

    .line 105
    :cond_a2
    return v4

    .line 107
    :cond_a3
    if-ne p0, v2, :cond_10e

    if-nez p1, :cond_10e

    sget-object p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->file:[B

    if-eqz p0, :cond_10e

    .line 108
    const/16 p0, 0x18

    invoke-static {p2, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object p0

    .line 109
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result p1

    .line 110
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result p2

    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 111
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result p0

    .line 112
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload ack status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " resume="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " chunk="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    if-lez p1, :cond_103

    .line 114
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "upload refused "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->finish(ZLjava/lang/String;)V

    .line 115
    return v5

    .line 117
    :cond_103
    const/16 p1, 0x10

    if-le p0, p1, :cond_108

    goto :goto_10a

    :cond_108
    const/16 p0, 0x800

    :goto_10a
    invoke-static {p2, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->upload(II)V

    .line 118
    return v5

    .line 120
    :cond_10e
    return v4
.end method

.method static onDisconnected()V
    .registers 2

    .line 189
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->file:[B

    if-eqz v0, :cond_a

    .line 190
    const/4 v0, 0x0

    const-string v1, "disconnected"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->finish(ZLjava/lang/String;)V

    .line 192
    :cond_a
    return-void
.end method

.method private static progress(ILjava/lang/String;)V
    .registers 3

    .line 168
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller$Listener;

    if-eqz v0, :cond_7

    .line 169
    invoke-interface {v0, p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller$Listener;->onProgress(ILjava/lang/String;)V

    .line 171
    :cond_7
    return-void
.end method

.method private static putU32([BII)V
    .registers 5

    .line 203
    int-to-byte v0, p2

    aput-byte v0, p0, p1

    .line 204
    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 205
    add-int/lit8 v0, p1, 0x2

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 206
    add-int/lit8 p1, p1, 0x3

    ushr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    .line 207
    return-void
.end method

.method private static requestUpload()V
    .registers 6

    .line 124
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->uploading:Z

    .line 125
    const/4 v1, 0x3

    new-array v2, v1, [[B

    .line 126
    const/16 v3, 0x40

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->file:[B

    .line 127
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->md5([B)[B

    move-result-object v3

    const/4 v5, 0x2

    invoke-static {v5, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldBytes(I[B)[B

    move-result-object v3

    aput-object v3, v2, v0

    sget-object v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->file:[B

    array-length v3, v3

    .line 128
    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v3

    aput-object v3, v2, v5

    .line 125
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v2

    .line 129
    const-string v3, "upload_request"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->progress(ILjava/lang/String;)V

    .line 130
    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    .line 131
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    const/16 v2, 0x18

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 130
    const/16 v2, 0x16

    invoke-static {v2, v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->command(II[B)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->sendCommand([B)V

    .line 132
    return-void
.end method

.method private static upload(II)V
    .registers 14

    .line 135
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->file:[B

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->md5([B)[B

    move-result-object v0

    .line 136
    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->file:[B

    array-length v2, v1

    array-length v1, v1

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    sub-int/2addr v2, p0

    .line 137
    add-int/lit8 p0, v2, 0x16

    new-array v1, p0, [B

    .line 138
    const/4 v3, 0x0

    aput-byte v3, v1, v3

    .line 139
    const/16 v4, 0x40

    const/4 v5, 0x1

    aput-byte v4, v1, v5

    .line 140
    const/4 v4, 0x2

    const/16 v6, 0x10

    invoke-static {v0, v3, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->file:[B

    array-length v0, v0

    const/16 v6, 0x12

    invoke-static {v1, v6, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->putU32([BII)V

    .line 142
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->file:[B

    array-length v6, v0

    sub-int/2addr v6, v2

    const/16 v7, 0x16

    invoke-static {v0, v6, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 144
    invoke-virtual {v0, v1, v3, p0}, Ljava/util/zip/CRC32;->update([BII)V

    .line 145
    add-int/lit8 v2, p0, 0x4

    new-array v6, v2, [B

    .line 146
    invoke-static {v1, v3, v6, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {v6, p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->putU32([BII)V

    .line 149
    add-int/lit8 p0, p1, -0x4

    .line 150
    add-int v0, v2, p0

    sub-int/2addr v0, v5

    div-int/2addr v0, p0

    .line 151
    const/4 v1, 0x0

    :goto_50
    if-ge v1, v0, :cond_8a

    .line 152
    mul-int v7, v1, p0

    .line 153
    sub-int v8, v2, v7

    invoke-static {p0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 154
    add-int/lit8 v9, v8, 0x4

    new-array v9, v9, [B

    .line 155
    int-to-byte v10, v0

    aput-byte v10, v9, v3

    .line 156
    ushr-int/lit8 v10, v0, 0x8

    int-to-byte v10, v10

    aput-byte v10, v9, v5

    .line 157
    add-int/lit8 v1, v1, 0x1

    int-to-byte v10, v1

    aput-byte v10, v9, v4

    .line 158
    const/4 v10, 0x3

    ushr-int/lit8 v11, v1, 0x8

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 159
    const/4 v10, 0x4

    invoke-static {v6, v7, v9, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    sget-object v7, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    invoke-virtual {v7, v9}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->sendData([B)V

    .line 161
    const-wide/16 v7, 0x5a

    int-to-long v9, v1

    mul-long v9, v9, v7

    int-to-long v7, v0

    div-long/2addr v9, v7

    long-to-int v7, v9

    add-int/lit8 v7, v7, 0x5

    const-string v8, "upload"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->progress(ILjava/lang/String;)V

    .line 151
    goto :goto_50

    .line 163
    :cond_8a
    sget-object p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " parts of "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "install"

    invoke-virtual {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/16 p0, 0x60

    const-string p1, "installing"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->progress(ILjava/lang/String;)V

    .line 165
    return-void
.end method
