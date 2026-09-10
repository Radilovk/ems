.class public Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;
.super Ljava/lang/Object;
.source "LbsDataSubRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/LbsDataSubRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LbsDropData"
.end annotation


# static fields
.field public static final STYLE_COMBO_DROPDOWN:I = 0x0

.field public static final STYLE_COMBO_EDIT_DROPDOWN:I = 0x1

.field public static final STYLE_COMBO_SIMPLE_DROPDOWN:I = 0x2


# instance fields
.field private _cLine:I

.field private _dxMin:I

.field private _str:Ljava/lang/String;

.field private _unused:Ljava/lang/Byte;

.field private _wStyle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_str:Ljava/lang/String;

    .line 342
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_unused:Ljava/lang/Byte;

    .line 343
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_wStyle:I

    .line 347
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_cLine:I

    .line 348
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_dxMin:I

    .line 349
    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->readUnicodeString(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_str:Ljava/lang/String;

    .line 350
    invoke-static {v0}, Lorg/apache/poi/util/StringUtil;->getEncodedSize(Ljava/lang/String;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 351
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_unused:Ljava/lang/Byte;

    .line 353
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;I)I
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;
    .param p1, "x1"    # I

    .line 300
    iput p1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_wStyle:I

    return p1
.end method

.method static synthetic access$102(Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;I)I
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;
    .param p1, "x1"    # I

    .line 300
    iput p1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_cLine:I

    return p1
.end method


# virtual methods
.method public getDataSize()I
    .locals 2

    .line 385
    const/4 v0, 0x6

    .line 386
    .local v0, "size":I
    iget-object v1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_str:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/poi/util/StringUtil;->getEncodedSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 387
    iget-object v1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_unused:Ljava/lang/Byte;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 388
    :cond_0
    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 377
    iget v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_wStyle:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 378
    iget v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_cLine:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 379
    iget v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_dxMin:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 380
    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_str:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->writeUnicodeString(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_unused:Ljava/lang/Byte;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 382
    :cond_0
    return-void
.end method

.method public setNumLines(I)V
    .locals 0
    .param p1, "num"    # I

    .line 373
    iput p1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_cLine:I

    .line 374
    return-void
.end method

.method public setStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .line 366
    iput p1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_wStyle:I

    .line 367
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 393
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 394
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "[LbsDropData]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    const-string v1, "  ._wStyle:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_wStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 396
    const-string v2, "  ._cLine:  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_cLine:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 397
    const-string v2, "  ._dxMin:  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_dxMin:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 398
    const-string v2, "  ._str:  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_str:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 399
    iget-object v2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_unused:Ljava/lang/Byte;

    if-eqz v2, :cond_0

    const-string v2, "  ._unused:  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->_unused:Ljava/lang/Byte;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 400
    :cond_0
    const-string v1, "[/LbsDropData]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 402
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
