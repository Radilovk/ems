.class public Lcom/isaigu/gymapp/ble/ProtocolParser;
.super Ljava/lang/Object;
.source "ProtocolParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;[B)V
    .locals 11
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 13
    if-eqz p1, :cond_0

    array-length v6, p1

    if-nez v6, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    const-string v6, "get: "

    invoke-static {v6, p1}, Lcom/isaigu/gymapp/utils/Utils;->printByteArray(Ljava/lang/String;[B)V

    .line 23
    array-length v6, p1

    aget-byte v7, p1, v9

    add-int/lit8 v7, v7, 0x2

    if-ne v6, v7, :cond_2

    array-length v6, p1

    add-int/lit8 v6, v6, -0x2

    aget-byte v6, p1, v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_2

    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    aget-byte v6, p1, v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_2

    .line 24
    array-length v6, p1

    add-int/lit8 v6, v6, -0x2

    new-array v3, v6, [B

    .line 25
    .local v3, "newData":[B
    array-length v6, v3

    invoke-static {p1, v8, v3, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    move-object p1, v3

    .line 29
    .end local v3    # "newData":[B
    :cond_2
    array-length v6, p1

    aget-byte v7, p1, v9

    if-eq v6, v7, :cond_3

    .line 30
    const-string/jumbo v6, "\u534f\u8bae\u6570\u636e\u957f\u5ea6\u4e0d\u4e00\u81f4"

    invoke-static {v6}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_3
    const/4 v5, 0x0

    .line 35
    .local v5, "sum":B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_4

    .line 36
    aget-byte v6, p1, v2

    add-int/2addr v6, v5

    int-to-byte v5, v6

    .line 35
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 39
    :cond_4
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    aget-byte v6, p1, v6

    if-eq v6, v5, :cond_5

    .line 40
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u6821\u9a8c\u548c\u9519\u8bef \uff1a "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, p1, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_5
    aget-byte v4, p1, v10

    .line 44
    .local v4, "protocol":B
    array-length v6, p1

    add-int/lit8 v6, v6, -0x4

    new-array v1, v6, [B

    .line 45
    .local v1, "dataPack":[B
    const/4 v6, 0x3

    array-length v7, v1

    invoke-static {p1, v6, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    new-instance v0, Lcom/isaigu/gymapp/message/DataBundle;

    invoke-direct {v0}, Lcom/isaigu/gymapp/message/DataBundle;-><init>()V

    .line 47
    .local v0, "dataBundle":Lcom/isaigu/gymapp/message/DataBundle;
    int-to-short v6, v4

    invoke-virtual {v0, v6}, Lcom/isaigu/gymapp/message/DataBundle;->setEvent(S)V

    .line 48
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/message/DataBundle;->setContent(Ljava/lang/Object;)V

    .line 49
    const-string v6, "address"

    invoke-virtual {v0, v6, p0}, Lcom/isaigu/gymapp/message/DataBundle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ble/BleController;->protocolResponse(Ljava/lang/String;I)V

    .line 53
    invoke-static {v0}, Lcom/isaigu/gymapp/message/MessageDispatcher;->dispatchEventMessage(Lcom/isaigu/gymapp/message/DataBundle;)V

    goto/16 :goto_0
.end method
