.class final Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;
.super Lorg/apache/poi/ss/formula/ptg/Ptg;
.source "ArrayPtg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/ptg/ArrayPtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Initial"
.end annotation


# instance fields
.field private final _reserved0:I

.field private final _reserved1:I

.field private final _reserved2:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .prologue
    .line 223
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;-><init>()V

    .line 224
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;->_reserved0:I

    .line 225
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;->_reserved1:I

    .line 226
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUByte()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;->_reserved2:I

    .line 227
    return-void
.end method

.method private static invalid()Ljava/lang/RuntimeException;
    .locals 2

    .prologue
    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This object is a partially initialised tArray, and cannot be used as a Ptg"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public finishReading(Lorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/ArrayPtg;
    .locals 8
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .prologue
    .line 252
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUByte()I

    move-result v4

    .line 253
    .local v4, "nColumns":I
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v5

    .line 257
    .local v5, "nRows":S
    add-int/lit8 v4, v4, 0x1

    .line 258
    add-int/lit8 v1, v5, 0x1

    int-to-short v5, v1

    .line 260
    mul-int v7, v5, v4

    .line 261
    .local v7, "totalCount":I
    invoke-static {p1, v7}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->parse(Lorg/apache/poi/util/LittleEndianInput;I)[Ljava/lang/Object;

    move-result-object v6

    .line 263
    .local v6, "arrayValues":[Ljava/lang/Object;
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;->_reserved0:I

    iget v2, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;->_reserved1:I

    iget v3, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;->_reserved2:I

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;-><init>(IIIII[Ljava/lang/Object;)V

    .line 264
    .local v0, "result":Lorg/apache/poi/ss/formula/ptg/ArrayPtg;
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;->getPtgClass()B

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->setClass(B)V

    .line 265
    return-object v0
.end method

.method public getDefaultOperandClass()B
    .locals 1

    .prologue
    .line 232
    invoke-static {}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;->invalid()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 235
    const/16 v0, 0x8

    return v0
.end method

.method public isBaseToken()Z
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    invoke-static {}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;->invalid()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 244
    invoke-static {}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;->invalid()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
