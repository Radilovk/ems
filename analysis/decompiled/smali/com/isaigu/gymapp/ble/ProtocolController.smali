.class public Lcom/isaigu/gymapp/ble/ProtocolController;
.super Ljava/lang/Object;
.source "ProtocolController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bleWrite(Ljava/lang/String;[B)V
    .locals 6
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    const/4 v5, 0x0

    .line 9
    array-length v3, p1

    add-int/lit8 v3, v3, 0x3

    new-array v0, v3, [B

    .line 10
    .local v0, "d":[B
    const/16 v3, 0x53

    aput-byte v3, v0, v5

    .line 11
    const/4 v3, 0x1

    array-length v4, v0

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 12
    const/4 v3, 0x2

    array-length v4, p1

    invoke-static {p1, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    const/4 v2, 0x0

    .line 14
    .local v2, "sum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    .line 15
    aget-byte v3, v0, v1

    add-int/2addr v2, v3

    .line 14
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_0
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    int-to-byte v4, v2

    aput-byte v4, v0, v3

    .line 19
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ble/BleController;->writeData(Ljava/lang/String;[B)V

    .line 20
    return-void
.end method

.method public static request_get_battery(Ljava/lang/String;)V
    .locals 2
    .param p0, "uuid"    # Ljava/lang/String;

    .prologue
    .line 127
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ble/ProtocolController;->write(Ljava/lang/String;B[B)V

    .line 128
    return-void
.end method

.method public static request_get_default_mode_other_parameter(Ljava/lang/String;)V
    .locals 2
    .param p0, "uuid"    # Ljava/lang/String;

    .prologue
    .line 163
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ble/ProtocolController;->write(Ljava/lang/String;B[B)V

    .line 164
    return-void
.end method

.method public static request_get_firmware_version(Ljava/lang/String;)V
    .locals 2
    .param p0, "uuid"    # Ljava/lang/String;

    .prologue
    .line 134
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ble/ProtocolController;->write(Ljava/lang/String;B[B)V

    .line 135
    return-void
.end method

.method public static request_get_hardware_version(Ljava/lang/String;)V
    .locals 2
    .param p0, "uuid"    # Ljava/lang/String;

    .prologue
    .line 142
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ble/ProtocolController;->write(Ljava/lang/String;B[B)V

    .line 143
    return-void
.end method

.method public static request_get_mode_10_part_parameter(Ljava/lang/String;I)V
    .locals 3
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "mode"    # I

    .prologue
    .line 153
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 154
    .local v0, "data":[B
    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 155
    const/16 v1, 0xb

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/ble/ProtocolController;->write(Ljava/lang/String;B[B)V

    .line 156
    return-void
.end method

.method public static request_get_other_mode_other_parameter(Ljava/lang/String;I)V
    .locals 3
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "mode"    # I

    .prologue
    .line 172
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 173
    .local v0, "data":[B
    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 174
    const/16 v1, 0xf

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/ble/ProtocolController;->write(Ljava/lang/String;B[B)V

    .line 175
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

    .prologue
    const/4 v3, 0x1

    .line 68
    const/16 v1, 0xb

    new-array v0, v1, [B

    .line 69
    .local v0, "data":[B
    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 70
    int-to-byte v1, p2

    aput-byte v1, v0, v3

    .line 71
    const/4 v1, 0x2

    int-to-byte v2, p3

    aput-byte v2, v0, v1

    .line 72
    const/4 v1, 0x3

    int-to-byte v2, p4

    aput-byte v2, v0, v1

    .line 73
    const/4 v1, 0x4

    int-to-byte v2, p5

    aput-byte v2, v0, v1

    .line 74
    const/4 v1, 0x5

    int-to-byte v2, p6

    aput-byte v2, v0, v1

    .line 75
    const/4 v1, 0x6

    int-to-byte v2, p7

    aput-byte v2, v0, v1

    .line 76
    const/4 v1, 0x7

    int-to-byte v2, p8

    aput-byte v2, v0, v1

    .line 77
    const/16 v1, 0x8

    int-to-byte v2, p9

    aput-byte v2, v0, v1

    .line 78
    const/16 v1, 0x9

    int-to-byte v2, p10

    aput-byte v2, v0, v1

    .line 79
    const/16 v1, 0xa

    int-to-byte v2, p11

    aput-byte v2, v0, v1

    .line 80
    invoke-static {p0, v3, v0}, Lcom/isaigu/gymapp/ble/ProtocolController;->write(Ljava/lang/String;B[B)V

    .line 81
    return-void
.end method

.method public static request_set_mode_other_parameter(Ljava/lang/String;IIIIIIIIIZ)V
    .locals 3
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

    .prologue
    .line 106
    const/16 v1, 0xb

    new-array v0, v1, [B

    .line 107
    .local v0, "data":[B
    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 108
    int-to-short v1, p2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/message/ByteUtil;->shortToBytes([BSI)V

    .line 109
    const/4 v1, 0x3

    int-to-byte v2, p3

    aput-byte v2, v0, v1

    .line 110
    const/4 v1, 0x4

    div-int/lit8 v2, p4, 0x32

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 111
    const/4 v1, 0x5

    int-to-byte v2, p5

    aput-byte v2, v0, v1

    .line 112
    const/4 v1, 0x6

    int-to-byte v2, p6

    aput-byte v2, v0, v1

    .line 113
    const/4 v1, 0x7

    int-to-byte v2, p7

    aput-byte v2, v0, v1

    .line 114
    const/16 v1, 0x8

    int-to-byte v2, p8

    aput-byte v2, v0, v1

    .line 115
    const/16 v1, 0x9

    int-to-byte v2, p9

    aput-byte v2, v0, v1

    .line 116
    const/16 v2, 0xa

    if-eqz p10, :cond_0

    const/4 v1, 0x1

    :goto_0
    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 118
    const/4 v1, 0x3

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/ble/ProtocolController;->write(Ljava/lang/String;B[B)V

    .line 119
    return-void

    .line 116
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static write(Ljava/lang/String;B[B)V
    .locals 4
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "protocol"    # B
    .param p2, "data"    # [B

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "d":[B
    if-eqz p2, :cond_0

    array-length v1, p2

    if-nez v1, :cond_1

    .line 26
    :cond_0
    new-array v0, v3, [B

    .line 27
    aput-byte p1, v0, v2

    .line 34
    :goto_0
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ble/ProtocolController;->bleWrite(Ljava/lang/String;[B)V

    .line 35
    return-void

    .line 29
    :cond_1
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [B

    .line 30
    aput-byte p1, v0, v2

    .line 31
    array-length v1, p2

    invoke-static {p2, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
