.class public Lcn/icomon/icdevicemanager/common/ICCommon;
.super Ljava/lang/Object;
.source "ICCommon.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ClearBit(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 3

    .line 266
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    shl-int p1, v0, p1

    not-int p1, p1

    or-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static ConvertIntEndian(I)I
    .registers 3

    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr p0, v1

    .line 63
    invoke-static {v0}, Lcn/icomon/icdevicemanager/common/ICCommon;->ConvertShortEndian(I)I

    move-result v0

    .line 64
    invoke-static {p0}, Lcn/icomon/icdevicemanager/common/ICCommon;->ConvertShortEndian(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    return p0
.end method

.method public static ConvertShortEndian(I)I
    .registers 2

    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method public static GetBit(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 4

    .line 254
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shl-int/2addr v0, v1

    and-int/2addr p0, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    shr-int/2addr p0, p1

    if-gez p0, :cond_13

    neg-int p0, p0

    .line 256
    :cond_13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static SetBit(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 3

    .line 261
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    shl-int p1, v0, p1

    or-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static byte2hex([B)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 173
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 174
    :cond_f
    :goto_f
    array-length v3, p0

    if-ge v2, v3, :cond_34

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 175
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%02X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    .line 176
    rem-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_f

    const-string v3, " "

    .line 177
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f

    .line 180
    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static byteToString([B)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    if-eqz p0, :cond_1f

    .line 622
    array-length v1, p0

    if-nez v1, :cond_8

    goto :goto_1f

    .line 626
    :cond_8
    :try_start_8
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 627
    :goto_b
    array-length v4, p0

    if-ge v3, v4, :cond_17

    .line 628
    aget-byte v4, p0, v3

    if-nez v4, :cond_14

    move v1, v3

    goto :goto_17

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 633
    :cond_17
    :goto_17
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, p0, v2, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1e} :catch_1f

    return-object v3

    :catch_1f
    :cond_1f
    :goto_1f
    return-object v0
.end method

.method public static ceil(D)D
    .registers 4

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double p0, p0, v0

    double-to-int p0, p0

    int-to-double p0, p0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static convertArrayToString(Ljava/util/List;)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_5

    const-string p0, "[]"

    return-object p0

    .line 82
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "["

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 85
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 86
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 89
    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_37

    .line 91
    check-cast v3, Ljava/util/Map;

    invoke-static {v3}, Lcn/icomon/icdevicemanager/common/ICCommon;->convertDictToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    goto :goto_41

    .line 93
    :cond_37
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_41

    .line 95
    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcn/icomon/icdevicemanager/common/ICCommon;->convertArrayToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 97
    :cond_41
    :goto_41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_55

    const-string v3, ","

    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    :cond_55
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_22

    :cond_60
    const-string p0, "]"

    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertDictToString(Ljava/util/Map;)Ljava/lang/String;
    .registers 8

    if-nez p0, :cond_5

    const-string p0, "{}"

    return-object p0

    .line 119
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "{"

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 122
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 123
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 125
    check-cast v4, Ljava/lang/String;

    .line 126
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 127
    instance-of v6, v5, Ljava/util/Map;

    if-eqz v6, :cond_41

    .line 129
    check-cast v5, Ljava/util/Map;

    invoke-static {v5}, Lcn/icomon/icdevicemanager/common/ICCommon;->convertDictToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4b

    .line 131
    :cond_41
    instance-of v6, v5, Ljava/util/List;

    if-eqz v6, :cond_4b

    .line 133
    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcn/icomon/icdevicemanager/common/ICCommon;->convertArrayToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 135
    :cond_4b
    :goto_4b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_73

    const-string v4, ","

    .line 138
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    :cond_73
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_26

    :cond_7e
    const-string p0, "}"

    .line 142
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertHTADC(I)I
    .registers 3

    mul-int/lit8 p0, p0, 0x2

    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xff00

    and-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method public static delete(Ljava/lang/String;)Z
    .registers 3

    .line 544
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 545
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d

    const/4 p0, 0x0

    return p0

    .line 548
    :cond_d
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 549
    invoke-static {p0}, Lcn/icomon/icdevicemanager/common/ICCommon;->deleteFile(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 551
    :cond_18
    invoke-static {p0}, Lcn/icomon/icdevicemanager/common/ICCommon;->deleteDirectory(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static deleteDirectory(Ljava/lang/String;)Z
    .registers 8

    .line 581
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 583
    :cond_19
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_66

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_2c

    goto :goto_66

    .line 590
    :cond_2c
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_61

    .line 592
    array-length v2, p0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_35
    if-ge v4, v2, :cond_5e

    aget-object v5, p0, v4

    .line 594
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 595
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/icomon/icdevicemanager/common/ICCommon;->deleteFile(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5b

    goto :goto_5e

    .line 600
    :cond_4a
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 602
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 601
    invoke-static {v3}, Lcn/icomon/icdevicemanager/common/ICCommon;->deleteDirectory(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5b

    goto :goto_5e

    :cond_5b
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    :cond_5e
    :goto_5e
    if-nez v3, :cond_61

    return v1

    .line 613
    :cond_61
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_66
    :goto_66
    return v1
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .registers 2

    .line 563
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_16

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_16

    .line 566
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static generateUUID()Ljava/lang/String;
    .registers 3

    .line 163
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBFAType(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    .line 452
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCommon;->getDefaultBFAType()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    move-result-object p0

    return-object p0

    .line 309
    :cond_8
    sget-object p0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;->ICBFATypeWLA01:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    return-object p0
.end method

.method public static getDefaultBFAType()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;
    .registers 1

    .line 302
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;->ICBFATypeWLA01:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    return-object v0
.end method

.method public static getTimestamp()J
    .registers 4

    .line 483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static hex2byte(Ljava/lang/String;)[B
    .registers 9

    const-string v0, " "

    const-string v1, ""

    .line 184
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 186
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 187
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_43

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v3, 0x2

    .line 191
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "0x"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-byte v3, v3

    .line 192
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_43
    return-object v1
.end method

.method public static isEqualMac(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const-string v0, ":"

    const-string v1, ""

    .line 29
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_4d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v2, :cond_24

    goto :goto_4d

    .line 35
    :cond_24
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2c

    return v2

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    const/4 v3, 0x6

    if-ge v0, v3, :cond_4c

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v4, v3, 0x2

    .line 42
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    rsub-int/lit8 v4, v0, 0x5

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, v4, 0x2

    .line 43
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_49

    return v1

    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_4c
    return v2

    :cond_4d
    :goto_4d
    return v1
.end method

.method public static json2list(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 229
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 232
    :try_start_c
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 233
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_1b

    .line 234
    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->json2map(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    goto :goto_2b

    .line 236
    :cond_1b
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_2b

    .line 237
    check-cast v2, Lorg/json/JSONArray;

    invoke-static {v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->json2list(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_25} :catch_26

    goto :goto_2b

    :catch_26
    move-exception v2

    .line 243
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v2, 0x0

    :cond_2b
    :goto_2b
    if-eqz v2, :cond_30

    .line 246
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_33
    return-object v0
.end method

.method public static json2map(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_3c

    .line 201
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 202
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 203
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 206
    :try_start_17
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 207
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_26

    .line 208
    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcn/icomon/icdevicemanager/common/ICCommon;->json2map(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    goto :goto_36

    .line 210
    :cond_26
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_36

    .line 211
    check-cast v3, Lorg/json/JSONArray;

    invoke-static {v3}, Lcn/icomon/icdevicemanager/common/ICCommon;->json2list(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_30} :catch_31

    goto :goto_36

    :catch_31
    move-exception v3

    .line 217
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v3, 0x0

    :cond_36
    :goto_36
    if-eqz v3, :cond_b

    .line 220
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_3c
    return-object v0
.end method

.method public static kg2lb(DI)D
    .registers 5

    const-wide v0, 0x4001a31120000000L    # 2.204622507095337

    mul-double p0, p0, v0

    .line 298
    invoke-static {p0, p1, p2}, Lcn/icomon/icdevicemanager/common/ICCommon;->prettyFloatPrecision(DI)D

    move-result-wide p0

    return-wide p0
.end method

.method public static mkdirs(Ljava/lang/String;)Z
    .registers 2

    .line 469
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_10

    .line 473
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x1

    :goto_11
    return p0
.end method

.method public static prettyFloatPrecision(DI)D
    .registers 8

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    int-to-double v2, p2

    .line 271
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int p2, v0

    int-to-double v0, p2

    mul-double p0, p0, v0

    double-to-int p2, p0

    int-to-double v2, p2

    sub-double/2addr p0, v2

    const-wide v2, 0x3fdf5c2900000000L    # 0.49000000953674316

    cmpl-double v4, p0, v2

    if-ltz v4, :cond_19

    add-int/lit8 p2, p2, 0x1

    :cond_19
    int-to-double p0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double v0, v0, v2

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static prettyMacAddr(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    const-string v1, ":"

    .line 148
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 150
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v2, :cond_2d

    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v5, v3, 0x2

    .line 153
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 154
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1a

    .line 157
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static randomString(I)Ljava/lang/String;
    .registers 6

    .line 286
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 287
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_b
    if-ge v2, p0, :cond_1f

    const/16 v3, 0x3e

    .line 289
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const-string v4, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    .line 290
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 292
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unzip(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const-string v0, ".."

    .line 488
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_92

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_92

    .line 491
    :cond_11
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1d

    return v2

    .line 498
    :cond_1d
    :try_start_1d
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    :goto_26
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 501
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 502
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 503
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 504
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 506
    new-instance v4, Ljava/io/File;

    const/16 v5, 0x2f

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_66

    .line 509
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 512
    :cond_66
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_72

    goto :goto_26

    .line 517
    :cond_72
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 520
    :goto_7b
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_85

    .line 522
    invoke-virtual {v4, v3, v2, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_7b

    .line 524
    :cond_85
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 525
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_8b} :catch_8e

    goto :goto_26

    :cond_8c
    const/4 p0, 0x1

    return p0

    :catch_8e
    move-exception p0

    .line 529
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_92
    :goto_92
    return v2
.end method
