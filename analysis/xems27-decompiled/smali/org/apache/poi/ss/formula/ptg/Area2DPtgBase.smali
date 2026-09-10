.class public abstract Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;
.super Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;
.source "Area2DPtgBase.java"


# static fields
.field private static final SIZE:I = 0x9


# direct methods
.method protected constructor <init>(IIIIZZZZ)V
    .locals 0
    .param p1, "firstRow"    # I
    .param p2, "lastRow"    # I
    .param p3, "firstColumn"    # I
    .param p4, "lastColumn"    # I
    .param p5, "firstRowRelative"    # Z
    .param p6, "lastRowRelative"    # Z
    .param p7, "firstColRelative"    # Z
    .param p8, "lastColRelative"    # Z

    .line 31
    invoke-direct/range {p0 .. p8}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;-><init>(IIIIZZZZ)V

    .line 32
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/ss/util/AreaReference;)V
    .locals 0
    .param p1, "ar"    # Lorg/apache/poi/ss/util/AreaReference;

    .line 34
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;-><init>(Lorg/apache/poi/ss/util/AreaReference;)V

    .line 35
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 0
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 37
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;-><init>()V

    .line 38
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;->readCoordinates(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected abstract getSid()B
.end method

.method public final getSize()I
    .locals 1

    .line 49
    const/16 v0, 0x9

    return v0
.end method

.method public final toFormulaString()Ljava/lang/String;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;->formatReferenceAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;->formatReferenceAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 44
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;->getSid()B

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;->getPtgClass()B

    move-result v1

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 45
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;->writeCoordinates(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 46
    return-void
.end method
