.class public final Lorg/apache/poi/ss/formula/ptg/NumberPtg;
.super Lorg/apache/poi/ss/formula/ptg/ScalarConstantPtg;
.source "NumberPtg.java"


# static fields
.field public static final SIZE:I = 0x9

.field public static final sid:B = 0x1ft


# instance fields
.field private final field_1_value:D


# direct methods
.method public constructor <init>(D)V
    .locals 0
    .param p1, "value"    # D

    .line 51
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ScalarConstantPtg;-><init>()V

    .line 52
    iput-wide p1, p0, Lorg/apache/poi/ss/formula/ptg/NumberPtg;->field_1_value:D

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 48
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(D)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 2
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 37
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readDouble()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(D)V

    .line 38
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 65
    const/16 v0, 0x9

    return v0
.end method

.method public getValue()D
    .locals 2

    .line 56
    iget-wide v0, p0, Lorg/apache/poi/ss/formula/ptg/NumberPtg;->field_1_value:D

    return-wide v0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 2

    .line 69
    iget-wide v0, p0, Lorg/apache/poi/ss/formula/ptg/NumberPtg;->field_1_value:D

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/NumberToTextConverter;->toText(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 60
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 61
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;->getValue()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    .line 62
    return-void
.end method
