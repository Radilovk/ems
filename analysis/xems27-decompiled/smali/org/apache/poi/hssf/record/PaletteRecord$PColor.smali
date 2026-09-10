.class final Lorg/apache/poi/hssf/record/PaletteRecord$PColor;
.super Ljava/lang/Object;
.source "PaletteRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/PaletteRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PColor"
.end annotation


# static fields
.field public static final ENCODED_SIZE:S = 0x4s


# instance fields
.field private _blue:I

.field private _green:I

.field private _red:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput p1, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_red:I

    .line 204
    iput p2, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_green:I

    .line 205
    iput p3, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_blue:I

    .line 206
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_red:I

    .line 214
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_green:I

    .line 215
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_blue:I

    .line 216
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    .line 217
    return-void
.end method


# virtual methods
.method public getTriplet()[B
    .locals 3

    .line 209
    const/4 v0, 0x3

    new-array v0, v0, [B

    iget v1, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_red:I

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    iget v1, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_green:I

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    iget v1, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_blue:I

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 220
    iget v0, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_red:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 221
    iget v0, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_green:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 222
    iget v0, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_blue:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 223
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 224
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 227
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 228
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "  red   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_red:I

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 229
    const-string v2, "  green = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_green:I

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 230
    const-string v2, "  blue  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;->_blue:I

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
