.class Lorg/apache/poi/hpsf/GUID;
.super Ljava/lang/Object;
.source "GUID.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field static final SIZE:I = 0x10


# instance fields
.field private _data1:I

.field private _data2:S

.field private _data3:S

.field private _data4:J


# direct methods
.method constructor <init>([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    add-int/lit8 v0, p2, 0x0

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hpsf/GUID;->_data1:I

    .line 35
    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hpsf/GUID;->_data2:S

    .line 36
    add-int/lit8 v0, p2, 0x6

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hpsf/GUID;->_data3:S

    .line 37
    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hpsf/GUID;->_data4:J

    .line 38
    return-void
.end method
