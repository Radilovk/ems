.class public Lcom/isaigu/gymapp/ble/ProtocolParser;
.super Ljava/lang/Object;
.source "ProtocolParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;[B)V
    .locals 6
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .line 13
    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 21
    :cond_0
    const-string v0, "get: "

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/utils/Utils;->printByteArray(Ljava/lang/String;[B)V

    .line 23
    array-length v0, p1

    const/4 v1, 0x1

    aget-byte v2, p1, v1

    const/4 v3, 0x2

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    array-length v0, p1

    sub-int/2addr v0, v3

    aget-byte v0, p1, v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    array-length v0, p1

    sub-int/2addr v0, v1

    aget-byte v0, p1, v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 24
    array-length v0, p1

    sub-int/2addr v0, v3

    new-array v0, v0, [B

    .line 25
    .local v0, "newData":[B
    array-length v2, v0

    invoke-static {p1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    move-object p1, v0

    .line 29
    .end local v0    # "newData":[B
    :cond_1
    array-length v0, p1

    aget-byte v2, p1, v1

    if-eq v0, v2, :cond_2

    .line 30
    const-string v0, "\u534f\u8bae\u6570\u636e\u957f\u5ea6\u4e0d\u4e00\u81f4"

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 31
    return-void

    .line 34
    :cond_2
    const/4 v0, 0x0

    .line 35
    .local v0, "sum":B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p1

    sub-int/2addr v5, v1

    if-ge v2, v5, :cond_3

    .line 36
    aget-byte v5, p1, v2

    add-int/2addr v5, v0

    int-to-byte v0, v5

    .line 35
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    .end local v2    # "i":I
    :cond_3
    array-length v2, p1

    sub-int/2addr v2, v1

    aget-byte v1, p1, v2

    if-eq v1, v0, :cond_4

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6821\u9a8c\u548c\u9519\u8bef \uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 41
    return-void

    .line 43
    :cond_4
    aget-byte v1, p1, v3

    .line 44
    .local v1, "protocol":B
    array-length v2, p1

    add-int/lit8 v2, v2, -0x4

    new-array v2, v2, [B

    .line 45
    .local v2, "dataPack":[B
    const/4 v3, 0x3

    array-length v5, v2

    invoke-static {p1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    new-instance v3, Lcom/isaigu/gymapp/message/DataBundle;

    invoke-direct {v3}, Lcom/isaigu/gymapp/message/DataBundle;-><init>()V

    .line 47
    .local v3, "dataBundle":Lcom/isaigu/gymapp/message/DataBundle;
    int-to-short v4, v1

    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/message/DataBundle;->setEvent(S)V

    .line 48
    invoke-virtual {v3, v2}, Lcom/isaigu/gymapp/message/DataBundle;->setContent(Ljava/lang/Object;)V

    .line 49
    const-string v4, "address"

    invoke-virtual {v3, v4, p0}, Lcom/isaigu/gymapp/message/DataBundle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ble/BleController;->protocolResponse(Ljava/lang/String;I)V

    .line 53
    invoke-static {v3}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(Lcom/isaigu/gymapp/message/DataBundle;)V

    .line 54
    return-void

    .line 14
    .end local v0    # "sum":B
    .end local v1    # "protocol":B
    .end local v2    # "dataPack":[B
    .end local v3    # "dataBundle":Lcom/isaigu/gymapp/message/DataBundle;
    :cond_5
    :goto_1
    return-void
.end method
