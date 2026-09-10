.class abstract Lorg/apache/poi/ss/formula/ptg/Ref2DPtgBase;
.super Lorg/apache/poi/ss/formula/ptg/RefPtgBase;
.source "Ref2DPtgBase.java"


# static fields
.field private static final SIZE:I = 0x5


# direct methods
.method protected constructor <init>(IIZZ)V
    .locals 0
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "isRowRelative"    # Z
    .param p4, "isColumnRelative"    # Z

    .line 31
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;-><init>()V

    .line 32
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Ref2DPtgBase;->setRow(I)V

    .line 33
    invoke-virtual {p0, p2}, Lorg/apache/poi/ss/formula/ptg/Ref2DPtgBase;->setColumn(I)V

    .line 34
    invoke-virtual {p0, p3}, Lorg/apache/poi/ss/formula/ptg/Ref2DPtgBase;->setRowRelative(Z)V

    .line 35
    invoke-virtual {p0, p4}, Lorg/apache/poi/ss/formula/ptg/Ref2DPtgBase;->setColRelative(Z)V

    .line 36
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/ss/util/CellReference;)V
    .locals 0
    .param p1, "cr"    # Lorg/apache/poi/ss/util/CellReference;

    .line 43
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;-><init>(Lorg/apache/poi/ss/util/CellReference;)V

    .line 44
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 0
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 38
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Ref2DPtgBase;->readCoordinates(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected abstract getSid()B
.end method

.method public final getSize()I
    .locals 1

    .line 61
    const/4 v0, 0x5

    return v0
.end method

.method public final toFormulaString()Ljava/lang/String;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ref2DPtgBase;->formatReferenceAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 67
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ref2DPtgBase;->formatReferenceAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 48
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ref2DPtgBase;->getSid()B

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ref2DPtgBase;->getPtgClass()B

    move-result v1

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 49
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Ref2DPtgBase;->writeCoordinates(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 50
    return-void
.end method
