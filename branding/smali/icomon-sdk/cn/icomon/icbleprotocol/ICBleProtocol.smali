.class public Lcn/icomon/icbleprotocol/ICBleProtocol;
.super Ljava/lang/Object;
.source "ICBleProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;
    }
.end annotation


# static fields
.field static isLoaded:Z

.field static final lock:Ljava/lang/Integer;


# instance fields
.field _dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field _protocolVer:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

.field public mtu:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    .line 152
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcn/icomon/icbleprotocol/ICBleProtocol;->lock:Ljava/lang/Integer;

    sput-boolean v0, Lcn/icomon/icbleprotocol/ICBleProtocol;->isLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcn/icomon/icbleprotocol/ICBleProtocol;->mtu:I

    return-void
.end method

.method public static create(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)Lcn/icomon/icbleprotocol/ICBleProtocol;
    .registers 2

    .line 162
    new-instance v0, Lcn/icomon/icbleprotocol/ICBleProtocol;

    invoke-direct {v0}, Lcn/icomon/icbleprotocol/ICBleProtocol;-><init>()V

    .line 163
    invoke-direct {v0, p0}, Lcn/icomon/icbleprotocol/ICBleProtocol;->initWithProtocolVer(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)V

    return-object v0
.end method

.method private native decode([BIILjava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end method

.method private native encode(Ljava/util/Map;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;II)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end method

.method private native getProtocolData(Ljava/util/List;[BLjava/lang/Object;I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;[B",
            "Ljava/lang/Object;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private initWithProtocolVer(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)V
    .registers 3

    iput-object p1, p0, Lcn/icomon/icbleprotocol/ICBleProtocol;->_protocolVer:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    .line 171
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/icomon/icbleprotocol/ICBleProtocol;->_dataList:Ljava/util/ArrayList;

    sget-object p1, Lcn/icomon/icbleprotocol/ICBleProtocol;->lock:Ljava/lang/Integer;

    .line 172
    monitor-enter p1

    :try_start_c
    sget-boolean v0, Lcn/icomon/icbleprotocol/ICBleProtocol;->isLoaded:Z

    if-nez v0, :cond_18

    const-string v0, "ICBleProtocol"

    .line 175
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcn/icomon/icbleprotocol/ICBleProtocol;->isLoaded:Z

    .line 178
    :cond_18
    monitor-exit p1

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p1
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private static native procotolVersion()Ljava/lang/String;
.end method


# virtual methods
.method public addData([B)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;
    .registers 3

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcn/icomon/icbleprotocol/ICBleProtocol;->addData([BLjava/util/Map;)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;

    move-result-object p1

    return-object p1
.end method

.method public addData([BLjava/util/Map;)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;"
        }
    .end annotation

    iget-object v0, p0, Lcn/icomon/icbleprotocol/ICBleProtocol;->_dataList:Ljava/util/ArrayList;

    .line 199
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x800

    new-array p1, p1, [B

    if-nez p2, :cond_10

    .line 204
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_10
    iget v0, p0, Lcn/icomon/icbleprotocol/ICBleProtocol;->mtu:I

    .line 206
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "MTU"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/icomon/icbleprotocol/ICBleProtocol;->_dataList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/icomon/icbleprotocol/ICBleProtocol;->_protocolVer:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    .line 208
    invoke-virtual {v1}, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->getValue()I

    move-result v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->getProtocolData(Ljava/util/List;[BLjava/lang/Object;I)Ljava/util/Map;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_2b

    return-object v0

    :cond_2b
    const-string v1, "code"

    .line 213
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 214
    new-instance v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;

    invoke-direct {v2}, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;-><init>()V

    if-nez v1, :cond_4a

    .line 216
    sget-object p1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    iput-object p1, v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    .line 217
    iput-object v0, v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    iget-object p1, p0, Lcn/icomon/icbleprotocol/ICBleProtocol;->_dataList:Ljava/util/ArrayList;

    .line 218
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_81

    :cond_4a
    const/4 v3, 0x1

    if-ne v1, v3, :cond_69

    .line 220
    sget-object v0, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusPerfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    iput-object v0, v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    const-string v0, "size"

    .line 221
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 222
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    iget-object p1, p0, Lcn/icomon/icbleprotocol/ICBleProtocol;->_dataList:Ljava/util/ArrayList;

    .line 223
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_81

    :cond_69
    const/4 p1, 0x2

    if-ne v1, p1, :cond_73

    .line 225
    sget-object p1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusImperfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    iput-object p1, v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    .line 226
    iput-object v0, v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    goto :goto_81

    :cond_73
    const/4 p1, 0x3

    if-ne v1, p1, :cond_81

    .line 230
    sget-object p1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusVerifyError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    iput-object p1, v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    .line 231
    iput-object v0, v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    iget-object p1, p0, Lcn/icomon/icbleprotocol/ICBleProtocol;->_dataList:Ljava/util/ArrayList;

    .line 232
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_81
    :goto_81
    return-object v2
.end method

.method public decodeData([BLjava/lang/Integer;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_19

    .line 249
    array-length v0, p1

    if-lez v0, :cond_19

    .line 250
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lcn/icomon/icbleprotocol/ICBleProtocol;->_protocolVer:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-virtual {v0}, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->getValue()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->decode([BIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 253
    :cond_19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public decodeData([BLjava/lang/Integer;Ljava/util/Map;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-nez p3, :cond_7

    .line 259
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_7
    iget v0, p0, Lcn/icomon/icbleprotocol/ICBleProtocol;->mtu:I

    .line 261
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "MTU"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_26

    .line 263
    array-length v0, p1

    if-lez v0, :cond_26

    .line 264
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lcn/icomon/icbleprotocol/ICBleProtocol;->_protocolVer:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-virtual {v0}, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->getValue()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcn/icomon/icbleprotocol/ICBleProtocol;->decode([BIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 267
    :cond_26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    if-nez p1, :cond_7

    .line 279
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_7
    iget v0, p0, Lcn/icomon/icbleprotocol/ICBleProtocol;->mtu:I

    .line 281
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "MTU"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lcn/icomon/icbleprotocol/ICBleProtocol;->_protocolVer:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-virtual {v0}, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->getValue()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encode(Ljava/util/Map;II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMtu()I
    .registers 2

    iget v0, p0, Lcn/icomon/icbleprotocol/ICBleProtocol;->mtu:I

    return v0
.end method

.method public setMtu(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icbleprotocol/ICBleProtocol;->mtu:I

    return-void
.end method

.method public version()Ljava/lang/String;
    .registers 2

    .line 304
    invoke-static {}, Lcn/icomon/icbleprotocol/ICBleProtocol;->procotolVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
