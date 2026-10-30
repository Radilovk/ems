.class public Lcn/icomon/icdevicemanager/common/ICCrc;
.super Ljava/lang/Object;
.source "ICCrc.java"


# static fields
.field private static final CRC_POLY_16:I = 0xa001

.field private static final CRC_START_MODBUS:I = 0xffff

.field private static ____icdm_g_crc_tab16:[I = null

.field private static ____icdm_g_crc_tab16_init:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x100

    new-array v0, v0, [I

    sput-object v0, Lcn/icomon/icdevicemanager/common/ICCrc;->____icdm_g_crc_tab16:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static crc_modbus([B)I
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_29

    .line 48
    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_29

    .line 54
    :cond_7
    array-length v1, p0

    sget-boolean v2, Lcn/icomon/icdevicemanager/common/ICCrc;->____icdm_g_crc_tab16_init:Z

    if-nez v2, :cond_f

    .line 57
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCrc;->initCrc16Tab()V

    :cond_f
    if-nez p0, :cond_12

    return v0

    :cond_12
    const v2, 0xffff

    :goto_15
    if-ge v0, v1, :cond_28

    .line 67
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v3, v2

    shr-int/lit8 v2, v2, 0x8

    sget-object v4, Lcn/icomon/icdevicemanager/common/ICCrc;->____icdm_g_crc_tab16:[I

    and-int/lit16 v3, v3, 0xff

    .line 69
    aget v3, v4, v3

    xor-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_28
    return v2

    :cond_29
    :goto_29
    return v0
.end method

.method private static initCrc16Tab()V
    .registers 7

    sget-boolean v0, Lcn/icomon/icdevicemanager/common/ICCrc;->____icdm_g_crc_tab16_init:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    const/16 v2, 0x100

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2d

    move v5, v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_f
    const/16 v6, 0x8

    if-ge v2, v6, :cond_26

    xor-int v6, v4, v5

    and-int/2addr v6, v3

    if-lez v6, :cond_1f

    shr-int/lit8 v4, v4, 0x1

    const v6, 0xa001

    xor-int/2addr v4, v6

    goto :goto_21

    :cond_1f
    shr-int/lit8 v4, v4, 0x1

    :goto_21
    shr-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_26
    sget-object v2, Lcn/icomon/icdevicemanager/common/ICCrc;->____icdm_g_crc_tab16:[I

    .line 40
    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2d
    sput-boolean v3, Lcn/icomon/icdevicemanager/common/ICCrc;->____icdm_g_crc_tab16_init:Z

    return-void
.end method
