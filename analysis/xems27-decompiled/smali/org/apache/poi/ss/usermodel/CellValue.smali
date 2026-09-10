.class public final Lorg/apache/poi/ss/usermodel/CellValue;
.super Ljava/lang/Object;
.source "CellValue.java"


# static fields
.field public static final FALSE:Lorg/apache/poi/ss/usermodel/CellValue;

.field public static final TRUE:Lorg/apache/poi/ss/usermodel/CellValue;


# instance fields
.field private final _booleanValue:Z

.field private final _cellType:I

.field private final _errorCode:I

.field private final _numberValue:D

.field private final _textValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 29
    new-instance v7, Lorg/apache/poi/ss/usermodel/CellValue;

    const/4 v1, 0x4

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(IDZLjava/lang/String;I)V

    sput-object v7, Lorg/apache/poi/ss/usermodel/CellValue;->TRUE:Lorg/apache/poi/ss/usermodel/CellValue;

    .line 30
    new-instance v0, Lorg/apache/poi/ss/usermodel/CellValue;

    const/4 v9, 0x4

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(IDZLjava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/CellValue;->FALSE:Lorg/apache/poi/ss/usermodel/CellValue;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 7
    .param p1, "numberValue"    # D

    .line 49
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(IDZLjava/lang/String;I)V

    .line 50
    return-void
.end method

.method private constructor <init>(IDZLjava/lang/String;I)V
    .locals 0
    .param p1, "cellType"    # I
    .param p2, "numberValue"    # D
    .param p4, "booleanValue"    # Z
    .param p5, "textValue"    # Ljava/lang/String;
    .param p6, "errorCode"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_cellType:I

    .line 41
    iput-wide p2, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_numberValue:D

    .line 42
    iput-boolean p4, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_booleanValue:Z

    .line 43
    iput-object p5, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_textValue:Ljava/lang/String;

    .line 44
    iput p6, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_errorCode:I

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "stringValue"    # Ljava/lang/String;

    .line 55
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(IDZLjava/lang/String;I)V

    .line 56
    return-void
.end method

.method public static getError(I)Lorg/apache/poi/ss/usermodel/CellValue;
    .locals 8
    .param p0, "errorCode"    # I

    .line 58
    new-instance v7, Lorg/apache/poi/ss/usermodel/CellValue;

    const/4 v1, 0x5

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move v6, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(IDZLjava/lang/String;I)V

    return-object v7
.end method

.method public static valueOf(Z)Lorg/apache/poi/ss/usermodel/CellValue;
    .locals 1
    .param p0, "booleanValue"    # Z

    .line 52
    if-eqz p0, :cond_0

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellValue;->TRUE:Lorg/apache/poi/ss/usermodel/CellValue;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellValue;->FALSE:Lorg/apache/poi/ss/usermodel/CellValue;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public formatAsString()Ljava/lang/String;
    .locals 3

    .line 101
    iget v0, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_cellType:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<error unexpected cell type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_cellType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 109
    :cond_0
    iget v0, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_errorCode:I

    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 107
    :cond_1
    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_booleanValue:Z

    if-eqz v0, :cond_2

    const-string v0, "TRUE"

    goto :goto_0

    :cond_2
    const-string v0, "FALSE"

    :goto_0
    return-object v0

    .line 105
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_textValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 103
    :cond_4
    iget-wide v0, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_numberValue:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBooleanValue()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_booleanValue:Z

    return v0
.end method

.method public getCellType()I
    .locals 1

    .line 84
    iget v0, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_cellType:I

    return v0
.end method

.method public getErrorValue()B
    .locals 1

    .line 90
    iget v0, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_errorCode:I

    int-to-byte v0, v0

    return v0
.end method

.method public getNumberValue()D
    .locals 2

    .line 72
    iget-wide v0, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_numberValue:D

    return-wide v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_textValue:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 94
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/CellValue;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
