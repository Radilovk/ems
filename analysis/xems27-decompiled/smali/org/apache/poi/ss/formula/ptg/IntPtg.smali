.class public final Lorg/apache/poi/ss/formula/ptg/IntPtg;
.super Lorg/apache/poi/ss/formula/ptg/ScalarConstantPtg;
.source "IntPtg.java"


# static fields
.field private static final MAX_VALUE:I = 0xffff

.field private static final MIN_VALUE:I = 0x0

.field public static final SIZE:I = 0x3

.field public static final sid:B = 0x1et


# instance fields
.field private final field_1_value:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "value"    # I

    .line 53
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ScalarConstantPtg;-><init>()V

    .line 54
    invoke-static {p1}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->isInRange(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/IntPtg;->field_1_value:I

    .line 58
    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value is out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 50
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/ptg/IntPtg;-><init>(I)V

    .line 51
    return-void
.end method

.method public static isInRange(I)Z
    .locals 1
    .param p0, "i"    # I

    .line 42
    if-ltz p0, :cond_0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 70
    const/4 v0, 0x3

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 61
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/IntPtg;->field_1_value:I

    return v0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 65
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x1e

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 66
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->getValue()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 67
    return-void
.end method
