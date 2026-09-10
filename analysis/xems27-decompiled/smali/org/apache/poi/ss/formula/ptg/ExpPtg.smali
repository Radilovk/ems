.class public final Lorg/apache/poi/ss/formula/ptg/ExpPtg;
.super Lorg/apache/poi/ss/formula/ptg/ControlPtg;
.source "ExpPtg.java"


# static fields
.field private static final SIZE:I = 0x5

.field public static final sid:S = 0x1s


# instance fields
.field private final field_1_first_row:I

.field private final field_2_first_col:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "firstRow"    # I
    .param p2, "firstCol"    # I

    .line 40
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ControlPtg;-><init>()V

    .line 41
    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/ExpPtg;->field_1_first_row:I

    .line 42
    iput p2, p0, Lorg/apache/poi/ss/formula/ptg/ExpPtg;->field_2_first_col:I

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 35
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ControlPtg;-><init>()V

    .line 36
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/ExpPtg;->field_1_first_row:I

    .line 37
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/ExpPtg;->field_2_first_col:I

    .line 38
    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    .line 62
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ExpPtg;->field_2_first_col:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 58
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ExpPtg;->field_1_first_row:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 54
    const/4 v0, 0x5

    return v0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Coding Error: Expected ExpPtg to be converted from Shared to Non-Shared Formula by ValueRecordsAggregate, but it wasn\'t"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[Array Formula or Shared Formula]\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "row = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ExpPtg;->getRow()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v2, "col = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ExpPtg;->getColumn()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 47
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ExpPtg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 48
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ExpPtg;->field_1_first_row:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 49
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ExpPtg;->field_2_first_col:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 50
    return-void
.end method
