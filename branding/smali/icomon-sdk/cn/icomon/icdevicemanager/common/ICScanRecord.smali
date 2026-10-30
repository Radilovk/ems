.class public Lcn/icomon/icdevicemanager/common/ICScanRecord;
.super Ljava/lang/Object;
.source "ICScanRecord.java"


# instance fields
.field public localName:Ljava/lang/String;

.field public manfactureData:[B

.field public manfactureDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private scanRecord:[B

.field public serviceDatas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field public services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onParse()V
    .registers 8

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICScanRecord;->scanRecord:[B

    .line 39
    invoke-static {v0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->createWithData([B)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    move-result-object v0

    .line 41
    :cond_6
    :goto_6
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    move-result v1

    if-nez v1, :cond_d

    return-void

    .line 45
    :cond_d
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v3, :cond_99

    if-ne v2, v5, :cond_1b

    goto/16 :goto_99

    :cond_1b
    const/16 v3, 0xfe

    if-ne v2, v3, :cond_25

    add-int/lit8 v1, v1, -0x1

    .line 56
    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->Skip(I)V

    goto :goto_6

    :cond_25
    const/16 v3, 0xff

    if-ne v2, v3, :cond_41

    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_6

    .line 61
    new-array v1, v1, [B

    iput-object v1, p0, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    array-length v2, v1

    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->Read([BLjava/lang/Integer;)I

    iget-object v1, p0, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureDatas:Ljava/util/List;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureData:[B

    .line 63
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_41
    const/16 v3, 0x9

    if-ne v2, v3, :cond_61

    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_6

    .line 68
    new-array v2, v1, [B

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->Read([BLjava/lang/Integer;)I

    .line 71
    :try_start_52
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/common/ICScanRecord;->localName:Ljava/lang/String;
    :try_end_5b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_52 .. :try_end_5b} :catch_5c

    goto :goto_6

    :catch_5c
    move-exception v1

    .line 73
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_6

    :cond_61
    const/16 v3, 0x16

    if-ne v2, v3, :cond_92

    add-int/lit8 v2, v1, -0x1

    if-lez v2, :cond_6

    new-array v2, v5, [B

    .line 81
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->Read([BLjava/lang/Integer;)I

    aget-byte v3, v2, v6

    aget-byte v5, v2, v4

    aput-byte v5, v2, v6

    aput-byte v3, v2, v4

    add-int/lit8 v1, v1, -0x3

    if-lez v1, :cond_6

    .line 87
    new-array v3, v1, [B

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->Read([BLjava/lang/Integer;)I

    iget-object v1, p0, Lcn/icomon/icdevicemanager/common/ICScanRecord;->serviceDatas:Ljava/util/Map;

    .line 89
    invoke-static {v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->byte2hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_92
    if-ne v2, v6, :cond_6

    .line 94
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    goto/16 :goto_6

    :cond_99
    :goto_99
    add-int/lit8 v1, v1, -0x1

    .line 48
    div-int/2addr v1, v5

    const/4 v2, 0x0

    :goto_9d
    if-ge v2, v1, :cond_6

    .line 50
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadShort()I

    move-result v3

    new-array v5, v6, [Ljava/lang/Object;

    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v4

    const-string v3, "%08X-0000-1000-8000-00805F9B34FB"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcn/icomon/icdevicemanager/common/ICScanRecord;->services:Ljava/util/List;

    .line 52
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9d
.end method

.method public static parse([B)Lcn/icomon/icdevicemanager/common/ICScanRecord;
    .registers 3

    .line 23
    new-instance v0, Lcn/icomon/icdevicemanager/common/ICScanRecord;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/common/ICScanRecord;-><init>()V

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/common/ICScanRecord;->services:Ljava/util/List;

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/common/ICScanRecord;->manfactureDatas:Ljava/util/List;

    .line 26
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/common/ICScanRecord;->serviceDatas:Ljava/util/Map;

    if-eqz p0, :cond_29

    .line 28
    array-length v1, p0

    if-lez v1, :cond_29

    .line 29
    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    iput-object p0, v0, Lcn/icomon/icdevicemanager/common/ICScanRecord;->scanRecord:[B

    .line 30
    invoke-direct {v0}, Lcn/icomon/icdevicemanager/common/ICScanRecord;->onParse()V

    :cond_29
    return-object v0
.end method
