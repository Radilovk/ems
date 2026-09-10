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

    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This object is a partially initialised tArray, and cannot be used as a Ptg"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public finishReading(Lorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/ArrayPtg;
    .locals 12
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 252
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUByte()I

    move-result v0

    .line 253
    .local v0, "nColumns":I
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v1

    .line 257
    .local v1, "nRows":S
    add-int/lit8 v0, v0, 0x1

    .line 258
    add-int/lit8 v2, v1, 0x1

    int-to-short v1, v2

    .line 260
    mul-int v9, v1, v0

    .line 261
    .local v9, "totalCount":I
    invoke-static {p1, v9}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->parse(Lorg/apache/poi/util/LittleEndianInput;I)[Ljava/lang/Object;

    move-result-object v10

    .line 263
    .local v10, "arrayValues":[Ljava/lang/Object;
    new-instance v11, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    iget v3, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;->_reserved0:I

    iget v4, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;->_reserved1:I

    iget v5, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;->_reserved2:I

    move-object v2, v11

    move v6, v0

    move v7, v1

    move-object v8, v10

    invoke-direct/range {v2 .. v8}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;-><init>(IIIII[Ljava/lang/Object;)V

    .line 264
    .local v2, "result":Lorg/apache/poi/ss/formula/ptg/ArrayPtg;
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;->getPtgClass()B

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->setClass(B)V

    .line 265
    return-object v2
.end method

.method public getDefaultOperandClass()B
    .locals 1

    .line 232
    invoke-static {}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;->invalid()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getSize()I
    .locals 1

    .line 235
    const/16 v0, 0x8

    return v0
.end method

.method public isBaseToken()Z
    .locals 1

    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 1

    .line 241
    invoke-static {}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;->invalid()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 244
    invoke-static {}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;->invalid()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
