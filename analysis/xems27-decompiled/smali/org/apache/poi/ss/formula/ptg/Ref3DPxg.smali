.class public final Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;
.super Lorg/apache/poi/ss/formula/ptg/RefPtgBase;
.source "Ref3DPxg.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/ptg/Pxg3D;


# instance fields
.field private externalWorkbookNumber:I

.field private firstSheetName:Ljava/lang/String;

.field private lastSheetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILorg/apache/poi/ss/formula/SheetIdentifier;Ljava/lang/String;)V
    .locals 1
    .param p1, "externalWorkbookNumber"    # I
    .param p2, "sheetName"    # Lorg/apache/poi/ss/formula/SheetIdentifier;
    .param p3, "cellref"    # Ljava/lang/String;

    .line 40
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v0, p3}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;-><init>(ILorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/util/CellReference;)V

    .line 41
    return-void
.end method

.method public constructor <init>(ILorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/util/CellReference;)V
    .locals 1
    .param p1, "externalWorkbookNumber"    # I
    .param p2, "sheetName"    # Lorg/apache/poi/ss/formula/SheetIdentifier;
    .param p3, "c"    # Lorg/apache/poi/ss/util/CellReference;

    .line 43
    invoke-direct {p0, p3}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;-><init>(Lorg/apache/poi/ss/util/CellReference;)V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->externalWorkbookNumber:I

    .line 44
    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->externalWorkbookNumber:I

    .line 46
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/SheetIdentifier;->getSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/NameIdentifier;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->firstSheetName:Ljava/lang/String;

    .line 47
    instance-of v0, p2, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;

    if-eqz v0, :cond_0

    .line 48
    move-object v0, p2

    check-cast v0, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;->getLastSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/NameIdentifier;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->lastSheetName:Ljava/lang/String;

    goto :goto_0

    .line 50
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->lastSheetName:Ljava/lang/String;

    .line 52
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/SheetIdentifier;Ljava/lang/String;)V
    .locals 1
    .param p1, "sheetName"    # Lorg/apache/poi/ss/formula/SheetIdentifier;
    .param p2, "cellref"    # Ljava/lang/String;

    .line 55
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v0, p2}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;-><init>(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/util/CellReference;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/util/CellReference;)V
    .locals 1
    .param p1, "sheetName"    # Lorg/apache/poi/ss/formula/SheetIdentifier;
    .param p2, "c"    # Lorg/apache/poi/ss/util/CellReference;

    .line 58
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;-><init>(ILorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/util/CellReference;)V

    .line 59
    return-void
.end method


# virtual methods
.method public format2DRefAsString()Ljava/lang/String;
    .locals 1

    .line 99
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->formatReferenceAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalWorkbookNumber()I
    .locals 1

    .line 82
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->externalWorkbookNumber:I

    return v0
.end method

.method public getLastSheetName()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->lastSheetName:Ljava/lang/String;

    return-object v0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->firstSheetName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public setLastSheetName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sheetName"    # Ljava/lang/String;

    .line 95
    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->lastSheetName:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setSheetName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sheetName"    # Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->firstSheetName:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 104
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->externalWorkbookNumber:I

    if-ltz v1, :cond_0

    .line 105
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 106
    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->externalWorkbookNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 107
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 109
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->firstSheetName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 110
    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 112
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->lastSheetName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 113
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 114
    iget-object v1, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->lastSheetName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 116
    :cond_2
    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 117
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->formatReferenceAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 62
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    iget v2, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->externalWorkbookNumber:I

    if-ltz v2, :cond_0

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const-string v1, "workbook="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getExternalWorkbookNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 68
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    :cond_0
    const-string v1, "sheet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->firstSheetName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    iget-object v2, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->lastSheetName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 72
    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->lastSheetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    :cond_1
    const-string v1, " ! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->formatReferenceAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "XSSF-only Ptg, should not be serialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
