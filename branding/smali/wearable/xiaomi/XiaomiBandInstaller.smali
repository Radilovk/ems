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

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static finish(ZLjava/lang/String;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 174
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller$Listener;

    .line 175
    if-eqz p0, :cond_e

    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    if-eqz v1, :cond_e

    .line 176
    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink;->refresh(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;)V

    .line 178
    :cond_e
    sput-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->file:[B

    .line 179
    sput-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->pkg:Ljava/lang/String;

    .line 180
    sput-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller$Listener;

    .line 181
    const/4 v1, 0x0

    sput-boolean v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->uploading:Z

    .line 182
    if-eqz v0, :cond_1c

    .line 183
    invoke-interface {v0, p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller$Listener;->onDone(ZLjava/lang/String;)V

    .line 185
    :cond_1c
    return-void
.end method

.method public static install([BLjava/lang/String;ILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller$Listener;)Z
    .registers 11

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    .line 54
    instance-of v3, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    if-eqz v3, :cond_12

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 55
    :cond_12
    if-eqz p3, :cond_19

    .line 56
    const-string v0, "not_connected"

    invoke-interface {p3, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller$Listener;->onDone(ZLjava/lang/String;)V

    :cond_19
    move v0, v2

    .line 78
    :goto_1a
    return v0

    .line 60
    :cond_1b
    sget-object v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->file:[B

    if-nez v3, :cond_24

    if-eqz p0, :cond_24

    array-length v3, p0

    if-nez v3, :cond_26

    :cond_24
    move v0, v2

    .line 61
    goto :goto_1a

    .line 63
    :cond_26
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
    new-array v0, v5, [[B

    .line 70
    invoke-static {v1, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldString(ILjava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v2

    .line 71
    invoke-static {v4, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v3

    aput-object v3, v0, v1

    array-length v3, p0

    .line 72
    invoke-static {v5, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v3

    aput-object v3, v0, v4

    .line 69
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    .line 73
    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 74
    sget-object v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    const-string v4, "install"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " v"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->version:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "B"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v3, "request"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->progress(ILjava/lang/String;)V

    .line 76
    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    const/16 v3, 0x14

    const/16 v4, 0x16

    .line 77
    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 76
    invoke-static {v3, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->command(II[B)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->sendCommand([B)V

    move v0, v1

    .line 78
    goto/16 :goto_1a
.end method

.method public static isBusy()Z
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->file:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static md5([B)[B
    .registers 2

    .prologue
    .line 196
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 198
    :goto_a
    return-object v0

    .line 197
    :catch_b
    move-exception v0

    .line 198
    const/16 v0, 0x10

    new-array v0, v0, [B

    goto :goto_a
.end method

.method static onCommand(IILjava/util/Map;)Z
    .registers 12
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
    const/4 v4, 0x4

    const/16 v3, 0x16

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 83
    const/16 v0, 0x14

    if-ne p0, v0, :cond_b0

    .line 84
    if-ne p1, v1, :cond_5d

    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->file:[B

    if-eqz v0, :cond_5d

    sget-boolean v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->uploading:Z

    if-nez v0, :cond_5d

    .line 85
    invoke-static {p2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v0

    .line 86
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    .line 87
    sget-object v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    const-string v4, "install"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    if-eqz v0, :cond_58

    const/4 v3, -0x1

    if-eq v0, v3, :cond_58

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rejected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->finish(ZLjava/lang/String;)V

    move v0, v1

    .line 120
    :goto_57
    return v0

    .line 92
    :cond_58
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->requestUpload()V

    move v0, v1

    .line 93
    goto :goto_57

    .line 95
    :cond_5d
    if-ne p1, v7, :cond_ae

    .line 98
    invoke-static {p2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v0

    .line 97
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    .line 99
    sget-object v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    const-string v4, "install"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "band reports result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    sget-object v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->file:[B

    if-eqz v3, :cond_93

    .line 101
    if-gtz v0, :cond_8c

    move v2, v1

    :cond_8c
    if-gtz v0, :cond_95

    const-string v0, "installed"

    :goto_90
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->finish(ZLjava/lang/String;)V

    :cond_93
    move v0, v1

    .line 103
    goto :goto_57

    .line 101
    :cond_95
    if-ne v0, v7, :cond_9a

    const-string v0, "verify failed"

    goto :goto_90

    :cond_9a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_90

    :cond_ae
    move v0, v2

    .line 105
    goto :goto_57

    .line 107
    :cond_b0
    if-ne p0, v3, :cond_129

    if-nez p1, :cond_129

    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->file:[B

    if-eqz v0, :cond_129

    .line 108
    const/16 v0, 0x18

    invoke-static {p2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->sub(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v0

    .line 109
    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v3

    .line 110
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 111
    const/4 v5, 0x5

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->intField(Ljava/util/Map;I)I

    move-result v0

    .line 112
    sget-object v5, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    const-string v6, "install"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "upload ack status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " resume="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " chunk="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    if-lez v3, :cond_11c

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upload refused "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->finish(ZLjava/lang/String;)V

    move v0, v1

    .line 115
    goto/16 :goto_57

    .line 117
    :cond_11c
    const/16 v2, 0x10

    if-le v0, v2, :cond_126

    :goto_120
    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->upload(II)V

    move v0, v1

    .line 118
    goto/16 :goto_57

    .line 117
    :cond_126
    const/16 v0, 0x800

    goto :goto_120

    :cond_129
    move v0, v2

    .line 120
    goto/16 :goto_57
.end method

.method static onDisconnected()V
    .registers 2

    .prologue
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

    .prologue
    .line 168
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller$Listener;

    if-eqz v0, :cond_9

    .line 169
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->listener:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller$Listener;

    invoke-interface {v0, p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller$Listener;->onProgress(ILjava/lang/String;)V

    .line 171
    :cond_9
    return-void
.end method

.method private static putU32([BII)V
    .registers 5

    .prologue
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
    add-int/lit8 v0, p1, 0x3

    ushr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 207
    return-void
.end method

.method private static requestUpload()V
    .registers 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x3

    const/4 v4, 0x1

    .line 124
    sput-boolean v4, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->uploading:Z

    .line 125
    new-array v0, v2, [[B

    const/16 v1, 0x40

    .line 126
    invoke-static {v4, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->file:[B

    .line 127
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->md5([B)[B

    move-result-object v1

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldBytes(I[B)[B

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->file:[B

    array-length v1, v1

    .line 128
    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v1

    aput-object v1, v0, v3

    .line 125
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    .line 129
    const-string v1, "upload_request"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->progress(ILjava/lang/String;)V

    .line 130
    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    const/16 v2, 0x16

    const/16 v3, 0x18

    .line 131
    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldMessage(I[B)[B

    move-result-object v0

    .line 130
    invoke-static {v2, v5, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages;->command(II[B)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->sendCommand([B)V

    .line 132
    return-void
.end method

.method private static upload(II)V
    .registers 14

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 135
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->file:[B

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->md5([B)[B

    move-result-object v0

    .line 136
    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->file:[B

    array-length v2, v2

    sget-object v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->file:[B

    array-length v3, v3

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v2, v3

    .line 137
    add-int/lit8 v3, v2, 0x16

    new-array v3, v3, [B

    .line 138
    aput-byte v1, v3, v1

    .line 139
    const/16 v4, 0x40

    aput-byte v4, v3, v10

    .line 140
    const/16 v4, 0x10

    invoke-static {v0, v1, v3, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    const/16 v0, 0x12

    sget-object v4, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->file:[B

    array-length v4, v4

    invoke-static {v3, v0, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->putU32([BII)V

    .line 142
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->file:[B

    sget-object v4, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->file:[B

    array-length v4, v4

    sub-int/2addr v4, v2

    const/16 v5, 0x16

    invoke-static {v0, v4, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 144
    array-length v2, v3

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 145
    array-length v2, v3

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    .line 146
    array-length v4, v3

    invoke-static {v3, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    array-length v3, v3

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-static {v2, v3, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->putU32([BII)V

    .line 149
    add-int/lit8 v3, p1, -0x4

    .line 150
    array-length v0, v2

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    div-int v4, v0, v3

    move v0, v1

    .line 151
    :goto_5a
    if-ge v0, v4, :cond_99

    .line 152
    mul-int v5, v0, v3

    .line 153
    array-length v6, v2

    sub-int/2addr v6, v5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 154
    add-int/lit8 v7, v6, 0x4

    new-array v7, v7, [B

    .line 155
    int-to-byte v8, v4

    aput-byte v8, v7, v1

    .line 156
    ushr-int/lit8 v8, v4, 0x8

    int-to-byte v8, v8

    aput-byte v8, v7, v10

    .line 157
    add-int/lit8 v8, v0, 0x1

    int-to-byte v8, v8

    aput-byte v8, v7, v11

    .line 158
    const/4 v8, 0x3

    add-int/lit8 v9, v0, 0x1

    ushr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 159
    const/4 v8, 0x4

    invoke-static {v2, v5, v7, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    sget-object v5, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    invoke-virtual {v5, v7}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->sendData([B)V

    .line 161
    const-wide/16 v6, 0x5a

    add-int/lit8 v5, v0, 0x1

    int-to-long v8, v5

    mul-long/2addr v6, v8

    int-to-long v8, v4

    div-long/2addr v6, v8

    long-to-int v5, v6

    add-int/lit8 v5, v5, 0x5

    const-string v6, "upload"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->progress(ILjava/lang/String;)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 163
    :cond_99
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    const-string v1, "install"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " parts of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/16 v0, 0x60

    const-string v1, "installing"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->progress(ILjava/lang/String;)V

    .line 165
    return-void
.end method
