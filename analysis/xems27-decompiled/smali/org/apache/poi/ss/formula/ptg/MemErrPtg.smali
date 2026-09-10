.class public final Lorg/apache/poi/ss/formula/ptg/MemErrPtg;
.super Lorg/apache/poi/ss/formula/ptg/OperandPtg;
.source "MemErrPtg.java"


# static fields
.field private static final SIZE:I = 0x7

.field public static final sid:S = 0x27s


# instance fields
.field private field_1_reserved:I

.field private field_2_subex_len:S


# direct methods
.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 35
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    .line 36
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;->field_1_reserved:I

    .line 37
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;->field_2_subex_len:S

    .line 38
    return-void
.end method


# virtual methods
.method public getDefaultOperandClass()B
    .locals 1

    .line 55
    const/16 v0, 0x20

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 47
    const/4 v0, 0x7

    return v0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "ERR#"

    return-object v0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 41
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x27

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 42
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;->field_1_reserved:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 43
    iget-short v0, p0, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;->field_2_subex_len:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 44
    return-void
.end method
