.class Lorg/apache/poi/hpsf/Decimal;
.super Ljava/lang/Object;
.source "Decimal.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field static final SIZE:I = 0x10


# instance fields
.field private field_1_wReserved:S

.field private field_2_scale:B

.field private field_3_sign:B

.field private field_4_hi32:I

.field private field_5_lo64:J


# direct methods
.method constructor <init>([BI)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "startOffset"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    move v0, p2

    .line 37
    .local v0, "offset":I
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v1

    iput-short v1, p0, Lorg/apache/poi/hpsf/Decimal;->field_1_wReserved:S

    .line 38
    add-int/lit8 v0, v0, 0x2

    .line 40
    aget-byte v1, p1, v0

    iput-byte v1, p0, Lorg/apache/poi/hpsf/Decimal;->field_2_scale:B

    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 43
    aget-byte v1, p1, v0

    iput-byte v1, p0, Lorg/apache/poi/hpsf/Decimal;->field_3_sign:B

    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 46
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hpsf/Decimal;->field_4_hi32:I

    .line 47
    add-int/lit8 v0, v0, 0x4

    .line 49
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getLong([BI)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/poi/hpsf/Decimal;->field_5_lo64:J

    .line 50
    add-int/lit8 v0, v0, 0x8

    .line 51
    return-void
.end method
