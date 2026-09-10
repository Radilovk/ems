.class public Lcom/isaigu/gymapp/train/utils/CommandUtil;
.super Ljava/lang/Object;
.source "CommandUtil.java"


# static fields
.field public static final CMD_BATTERY:B = 0x5t

.field public static final CMD_CHANGE:B = -0x3ft

.field public static final CMD_CLOSE:B = -0x10t

.field public static final CMD_RUN:B = 0x3t

.field public static final CMD_SETTING:B = 0x1t

.field public static final CMD_START:B = -0xft

.field public static final CMD_STOP:B = -0xet

.field public static final RSP_BATTERY:B = 0x6t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPartPduValue([I[ZII)B
    .locals 2
    .param p0, "parts"    # [I
    .param p1, "partsDisabled"    # [Z
    .param p2, "index"    # I
    .param p3, "strenth"    # I

    .line 36
    aget-boolean v0, p1, p2

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x0

    return v0

    .line 39
    :cond_0
    aget v0, p0, p2

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    int-to-float v1, p3

    mul-float v0, v0, v1

    float-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public static getPartsParamsPdu(Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z)[B
    .locals 6
    .param p0, "programDataBean"    # Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .param p1, "partsDisabled"    # [Z

    .line 17
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 18
    .local v0, "parts":[I
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 19
    .local v1, "strenth":I
    const/4 v2, 0x0

    .line 20
    .local v2, "i":I
    const/16 v3, 0xb

    new-array v3, v3, [B

    .line 21
    .local v3, "pdu":[B
    const/4 v4, 0x0

    aput-byte v4, v3, v4

    .line 22
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    invoke-static {v0, p1, v2, v1}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartPduValue([I[ZII)B

    move-result v2

    const/4 v5, 0x1

    aput-byte v2, v3, v5

    .line 23
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "i":I
    .restart local v2    # "i":I
    invoke-static {v0, p1, v4, v1}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartPduValue([I[ZII)B

    move-result v4

    const/4 v5, 0x2

    aput-byte v4, v3, v5

    .line 24
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .restart local v4    # "i":I
    invoke-static {v0, p1, v2, v1}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartPduValue([I[ZII)B

    move-result v2

    const/4 v5, 0x3

    aput-byte v2, v3, v5

    .line 25
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "i":I
    .restart local v2    # "i":I
    invoke-static {v0, p1, v4, v1}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartPduValue([I[ZII)B

    move-result v4

    const/4 v5, 0x4

    aput-byte v4, v3, v5

    .line 26
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .restart local v4    # "i":I
    invoke-static {v0, p1, v2, v1}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartPduValue([I[ZII)B

    move-result v2

    const/4 v5, 0x5

    aput-byte v2, v3, v5

    .line 27
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "i":I
    .restart local v2    # "i":I
    invoke-static {v0, p1, v4, v1}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartPduValue([I[ZII)B

    move-result v4

    const/4 v5, 0x6

    aput-byte v4, v3, v5

    .line 28
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .restart local v4    # "i":I
    invoke-static {v0, p1, v2, v1}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartPduValue([I[ZII)B

    move-result v2

    const/4 v5, 0x7

    aput-byte v2, v3, v5

    .line 29
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "i":I
    .restart local v2    # "i":I
    invoke-static {v0, p1, v4, v1}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartPduValue([I[ZII)B

    move-result v4

    const/16 v5, 0x8

    aput-byte v4, v3, v5

    .line 30
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .restart local v4    # "i":I
    invoke-static {v0, p1, v2, v1}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartPduValue([I[ZII)B

    move-result v2

    const/16 v5, 0x9

    aput-byte v2, v3, v5

    .line 31
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "i":I
    .restart local v2    # "i":I
    invoke-static {v0, p1, v4, v1}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartPduValue([I[ZII)B

    move-result v4

    const/16 v5, 0xa

    aput-byte v4, v3, v5

    .line 32
    return-object v3
.end method

.method public static getWorkParamsPdu(Lcom/isaigu/gymapp/bean/ProgramDataBean;IZ)[B
    .locals 10
    .param p0, "programDataBean"    # Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .param p1, "workLength"    # I
    .param p2, "isStart"    # Z

    .line 43
    const/16 v0, 0xb

    new-array v0, v0, [B

    .line 44
    .local v0, "pdu":[B
    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 45
    const/16 v1, -0x42

    .line 46
    .local v1, "b":B
    int-to-long v2, p1

    .line 47
    .local v2, "workTime":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    const-wide/16 v6, 0x5

    cmp-long v8, v2, v6

    if-gtz v8, :cond_0

    .line 48
    const-wide/16 v2, 0x5

    .line 50
    :cond_0
    const-wide/16 v6, 0x100

    div-long v8, v2, v6

    long-to-int v9, v8

    int-to-byte v8, v9

    const/4 v9, 0x1

    aput-byte v8, v0, v9

    .line 51
    const/4 v8, 0x2

    rem-long v6, v2, v6

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v0, v8

    .line 52
    const/4 v6, 0x3

    iget v7, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 53
    const/4 v6, 0x4

    iget v7, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    div-int/lit8 v7, v7, 0x32

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 54
    const/4 v6, 0x5

    iget v7, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 55
    const/4 v6, 0x6

    cmp-long v7, v2, v4

    if-nez v7, :cond_1

    .line 56
    aput-byte v9, v0, v6

    goto :goto_0

    .line 58
    :cond_1
    iget v4, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    int-to-byte v4, v4

    aput-byte v4, v0, v6

    .line 60
    :goto_0
    const/4 v4, 0x7

    iget v5, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 61
    const/16 v4, 0x8

    iget v5, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 62
    const/16 v4, 0x9

    iget v5, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->massageCycle:I

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 63
    const/16 v4, 0xa

    int-to-byte v5, p2

    aput-byte v5, v0, v4

    .line 64
    return-object v0
.end method
