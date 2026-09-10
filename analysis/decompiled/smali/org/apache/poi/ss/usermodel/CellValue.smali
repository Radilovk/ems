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
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x4

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    .line 29
    new-instance v0, Lorg/apache/poi/ss/usermodel/CellValue;

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(IDZLjava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/CellValue;->TRUE:Lorg/apache/poi/ss/usermodel/CellValue;

    .line 30
    new-instance v0, Lorg/apache/poi/ss/usermodel/CellValue;

    move v4, v6

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(IDZLjava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/CellValue;->FALSE:Lorg/apache/poi/ss/usermodel/CellValue;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 7
    .param p1, "numberValue"    # D

    .prologue
    const/4 v1, 0x0

    .line 49
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v2, p1

    move v4, v1

    move v6, v1

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

    .prologue
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

    .prologue
    const/4 v4, 0x0

    .line 55
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v5, p1

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(IDZLjava/lang/String;I)V

    .line 56
    return-void
.end method

.method public static getError(I)Lorg/apache/poi/ss/usermodel/CellValue;
    .locals 7
    .param p0, "errorCode"    # I

    .prologue
    .line 58
    new-instance v0, Lorg/apache/poi/ss/usermodel/CellValue;

    const/4 v1, 0x5

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(IDZLjava/lang/String;I)V

    return-object v0
.end method

.method public static valueOf(Z)Lorg/apache/poi/ss/usermodel/CellValue;
    .locals 1
    .param p0, "booleanValue"    # Z

    .prologue
    .line 52
    if-eqz p0, :cond_0

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellValue;->TRUE:Lorg/apache/poi/ss/usermodel/CellValue;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellValue;->FALSE:Lorg/apache/poi/ss/usermodel/CellValue;

    goto :goto_0
.end method


# virtual methods
.method public formatAsString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x22

    .line 101
    iget v0, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_cellType:I

    packed-switch v0, :pswitch_data_0

    .line 111
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<error unexpected cell type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_cellType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 103
    :pswitch_1
    iget-wide v0, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_numberValue:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 105
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_textValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :pswitch_3
    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_booleanValue:Z

    if-eqz v0, :cond_0

    const-string v0, "TRUE"

    goto :goto_0

    :cond_0
    const-string v0, "FALSE"

    goto :goto_0

    .line 109
    :pswitch_4
    iget v0, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_errorCode:I

    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getText(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getBooleanValue()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_booleanValue:Z

    return v0
.end method

.method public getCellType()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_cellType:I

    return v0
.end method

.method public getErrorValue()B
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_errorCode:I

    int-to-byte v0, v0

    return v0
.end method

.method public getNumberValue()D
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_numberValue:D

    return-wide v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/CellValue;->_textValue:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
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

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

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
