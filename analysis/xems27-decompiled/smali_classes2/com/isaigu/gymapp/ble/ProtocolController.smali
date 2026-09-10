.class public Lcom/isaigu/gymapp/ble/ProtocolController;
.super Ljava/lang/Object;
.source "ProtocolController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized bleWrite(Ljava/lang/String;[B)V
    .locals 6
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "data"    # [B

    const-class v0, Lcom/isaigu/gymapp/ble/ProtocolController;

    monitor-enter v0

    .line 11
    :try_start_0
    array-length v1, p1

    add-int/lit8 v1, v1, 0x3

    new-array v1, v1, [B

    .line 12
    .local v1, "d":[B
    const/16 v2, 0x53

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 13
    array-length v2, v1

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    .line 14
    const/4 v2, 0x2

    array-length v5, p1

    invoke-static {p1, v3, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    const/4 v2, 0x0

    .line 16
    .local v2, "sum":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v1

    sub-int/2addr v5, v4

    if-ge v3, v5, :cond_0

    .line 17
    aget-byte v5, v1, v3

    add-int/2addr v2, v5

    .line 16
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 20
    .end local v3    # "i":I
    :cond_0
    array-length v3, v1

    sub-int/2addr v3, v4

    int-to-byte v4, v2

    aput-byte v4, v1, v3

    .line 21
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ble/BleController;->writeData(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    const-wide/16 v3, 0x64

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    goto :goto_1

    .line 25
    :catch_0
    move-exception v3

    .line 26
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_1
    monitor-exit v0

    return-void

    .line 10
    .end local v1    # "d":[B
    .end local v2    # "sum":I
    .end local p0    # "uuid":Ljava/lang/String;
    .end local p1    # "data":[B
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static request_get_battery(Ljava/lang/String;)V
    .locals 2
    .param p0, "uuid"    # Ljava/lang/String;

    .line 152
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ble/ProtocolController;->write(Ljava/lang/String;B[B)V

    .line 153
    return-void
.end method

.method public static request_get_default_mode_other_parameter(Ljava/lang/String;)V
    .locals 2
    .param p0, "uuid"    # Ljava/lang/String;

    .line 188
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ble/ProtocolController;->write(Ljava/lang/String;B[B)V

    .line 189
    return-void
.end method

.method public static request_get_firmware_version(Ljava/lang/String;)V
    .locals 2
    .param p0, "uuid"    # Ljava/lang/String;

    .line 159
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ble/ProtocolController;->write(Ljava/lang/String;B[B)V

    .line 160
    return-void
.end method

.method public static request_get_hardware_version(Ljava/lang/String;)V
    .locals 2
    .param p0, "uuid"    # Ljava/lang/String;

    .line 167
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ble/ProtocolController;->write(Ljava/lang/String;B[B)V

    .line 168
    return-void
.end method

.method public static request_get_mode_10_part_parameter(Ljava/lang/String;I)V
    .locals 3
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "mode"    # I

    .line 178
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 179
    .local v0, "data":[B
    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 180
    const/16 v1, 0xb

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/ble/ProtocolController;->write(Ljava/lang/String;B[B)V

    .line 181
    return-void
.end method

.method public static request_get_other_mode_other_parameter(Ljava/lang/String;I)V
    .locals 3
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "mode"    # I

    .line 197
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 198
    .local v0, "data":[B
    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 199
    const/16 v1, 0xf

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/ble/ProtocolController;->write(Ljava/lang/String;B[B)V

    .line 200
    return-void
.end method

.method public static request_set_mode_10_part_parameter(Ljava/lang/String;IIIIIIIIIII)V
    .locals 4
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "part1"    # I
    .param p3, "part2"    # I
    .param p4, "part3"    # I
    .param p5, "part4"    # I
    .param p6, "part5"    # I
    .param p7, "part6"    # I
    .param p8, "part7"    # I
    .param p9, "part8"    # I
    .param p10, "part9"    # I
    .param p11, "part10"    # I

    .line 93
    const/16 v0, 0xb

    new-array v0, v0, [B

    .line 94
    .local v0, "data":[B
    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 95
    int-to-byte v1, p2

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 96
    int-to-byte v1, p3

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    .line 97
    int-to-byte v1, p4

    const/4 v3, 0x3

    aput-byte v1, v0, v3

    .line 98
    int-to-byte v1, p5

    const/4 v3, 0x4

    aput-byte v1, v0, v3

    .line 99
    int-to-byte v1, p6

    const/4 v3, 0x5

    aput-byte v1, v0, v3

    .line 100
    int-to-byte v1, p7

    const/4 v3, 0x6

    aput-byte v1, v0, v3

    .line 101
    int-to-byte v1, p8

    const/4 v3, 0x7

    aput-byte v1, v0, v3

    .line 102
    int-to-byte v1, p9

    const/16 v3, 0x8

    aput-byte v1, v0, v3

    .line 103
    int-to-byte v1, p10

    const/16 v3, 0x9

    aput-byte v1, v0, v3

    .line 104
    int-to-byte v1, p11

    const/16 v3, 0xa

    aput-byte v1, v0, v3

    .line 105
    invoke-static {p0, v2, v0}, Lcom/isaigu/gymapp/ble/ProtocolController;->write(Ljava/lang/String;B[B)V

    .line 106
    return-void
.end method

.method public static request_set_mode_other_parameter(Ljava/lang/String;IIIIIIIIIZ)V
    .locals 4
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "worklength"    # I
    .param p3, "hz"    # I
    .param p4, "paulseWidth"    # I
    .param p5, "paulseContinue"    # I
    .param p6, "paulsePaulse"    # I
    .param p7, "inputRamp"    # I
    .param p8, "outputRamp"    # I
    .param p9, "anmocycle"    # I
    .param p10, "start"    # Z

    .line 131
    const/16 v0, 0xb

    new-array v0, v0, [B

    .line 132
    .local v0, "data":[B
    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 133
    int-to-short v1, p2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/message/ByteUtil;->shortToBytes([BSI)V

    .line 134
    int-to-byte v1, p3

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 135
    div-int/lit8 v1, p4, 0x32

    int-to-byte v1, v1

    const/4 v3, 0x4

    aput-byte v1, v0, v3

    .line 136
    int-to-byte v1, p5

    const/4 v3, 0x5

    aput-byte v1, v0, v3

    .line 137
    int-to-byte v1, p6

    const/4 v3, 0x6

    aput-byte v1, v0, v3

    .line 138
    int-to-byte v1, p7

    const/4 v3, 0x7

    aput-byte v1, v0, v3

    .line 139
    int-to-byte v1, p8

    const/16 v3, 0x8

    aput-byte v1, v0, v3

    .line 140
    int-to-byte v1, p9

    const/16 v3, 0x9

    aput-byte v1, v0, v3

    .line 141
    int-to-byte v1, p10

    const/16 v3, 0xa

    aput-byte v1, v0, v3

    .line 143
    invoke-static {p0, v2, v0}, Lcom/isaigu/gymapp/ble/ProtocolController;->write(Ljava/lang/String;B[B)V

    .line 144
    return-void
.end method

.method public static request_set_start(Ljava/lang/String;)V
    .locals 2
    .param p0, "uuid"    # Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5199\u547d\u4ee4\u524d\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "www"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 53
    .local v0, "data":[B
    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 54
    const/16 v1, -0xf

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/ble/ProtocolController;->write(Ljava/lang/String;B[B)V

    .line 55
    return-void
.end method

.method public static request_set_stop(Ljava/lang/String;)V
    .locals 2
    .param p0, "uuid"    # Ljava/lang/String;

    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 59
    .local v0, "data":[B
    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 60
    const/16 v1, -0xe

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/ble/ProtocolController;->write(Ljava/lang/String;B[B)V

    .line 61
    return-void
.end method

.method private static write(Ljava/lang/String;B[B)V
    .locals 8
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "protocol"    # B
    .param p2, "data"    # [B

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5199\u547d\u4ee4\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "www"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "d":[B
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    array-length v4, p2

    if-nez v4, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    array-length v4, p2

    add-int/2addr v4, v3

    new-array v0, v4, [B

    .line 39
    aput-byte p1, v0, v2

    .line 40
    array-length v4, p2

    invoke-static {p2, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    new-array v0, v3, [B

    .line 36
    aput-byte p1, v0, v2

    .line 42
    :goto_1
    const-string v3, ""

    .line 43
    .local v3, "s":Ljava/lang/String;
    array-length v4, v0

    :goto_2
    if-ge v2, v4, :cond_2

    aget-byte v5, v0, v2

    .line 44
    .local v5, "b":B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 43
    .end local v5    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 46
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u547d\u4ee4\u4e3b\u5185\u5bb9\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ble/ProtocolController;->bleWrite(Ljava/lang/String;[B)V

    .line 48
    return-void
.end method
