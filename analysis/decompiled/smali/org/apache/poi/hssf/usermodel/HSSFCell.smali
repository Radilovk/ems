.class public Lorg/apache/poi/hssf/usermodel/HSSFCell;
.super Ljava/lang/Object;
.source "HSSFCell.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Cell;


# static fields
.field public static final ENCODING_COMPRESSED_UNICODE:S = 0x0s

.field public static final ENCODING_UNCHANGED:S = -0x1s

.field public static final ENCODING_UTF_16:S = 0x1s

.field private static final FILE_FORMAT_NAME:Ljava/lang/String; = "BIFF8"

.field private static final LAST_COLUMN_NAME:Ljava/lang/String;

.field public static final LAST_COLUMN_NUMBER:I

.field private static log:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final _book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

.field private _cellType:I

.field private _comment:Lorg/apache/poi/hssf/usermodel/HSSFComment;

.field private _record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

.field private final _sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

.field private _stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->log:Lorg/apache/poi/util/POILogger;

    .line 77
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v0

    sput v0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->LAST_COLUMN_NUMBER:I

    .line 78
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->LAST_COLUMN_NAME:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;IS)V
    .locals 6
    .param p1, "book"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "row"    # I
    .param p4, "col"    # S

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {p4}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->checkBounds(I)V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 111
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 112
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 117
    invoke-virtual {p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0, p4}, Lorg/apache/poi/hssf/model/InternalSheet;->getXFIndexForColAt(S)S

    move-result v5

    .line 118
    .local v5, "xfindex":S
    const/4 v1, 0x3

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(IZISS)V

    .line 119
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;ISI)V
    .locals 6
    .param p1, "book"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "row"    # I
    .param p4, "col"    # S
    .param p5, "type"    # I

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    invoke-static {p4}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->checkBounds(I)V

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 159
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 160
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 162
    invoke-virtual {p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0, p4}, Lorg/apache/poi/hssf/model/InternalSheet;->getXFIndexForColAt(S)S

    move-result v5

    .line 163
    .local v5, "xfindex":S
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p5

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(IZISS)V

    .line 164
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V
    .locals 2
    .param p1, "book"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "cval"    # Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 176
    invoke-static {p3}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->determineType(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 178
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 179
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 180
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    packed-switch v0, :pswitch_data_0

    .line 193
    .end local p3    # "cval":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    :goto_0
    :pswitch_0
    return-void

    .line 183
    .restart local p3    # "cval":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    :pswitch_1
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    check-cast p3, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    .end local p3    # "cval":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    invoke-direct {v0, v1, p3}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Lorg/apache/poi/hssf/model/InternalWorkbook;Lorg/apache/poi/hssf/record/LabelSSTRecord;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    goto :goto_0

    .line 190
    .restart local p3    # "cval":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    :pswitch_2
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    check-cast p3, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .end local p3    # "cval":Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    invoke-virtual {p3}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private applyUserCellStyle(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)S
    .locals 10
    .param p1, "style"    # Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    .prologue
    const/4 v9, 0x0

    .line 1210
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getUserStyleName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    .line 1211
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Expected user-defined style"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1214
    :cond_0
    iget-object v7, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v7}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    .line 1215
    .local v1, "iwb":Lorg/apache/poi/hssf/model/InternalWorkbook;
    const/4 v4, -0x1

    .line 1216
    .local v4, "userXf":S
    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumExFormats()I

    move-result v2

    .line 1217
    .local v2, "numfmt":I
    const/4 v0, 0x0

    .local v0, "i":S
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1218
    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v5

    .line 1219
    .local v5, "xf":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getXFType()S

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getParentIndex()S

    move-result v7

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getIndex()S

    move-result v8

    if-ne v7, v8, :cond_2

    .line 1220
    move v4, v0

    .line 1225
    .end local v5    # "xf":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    :cond_1
    const/4 v7, -0x1

    if-ne v4, v7, :cond_3

    .line 1226
    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createCellXF()Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v6

    .line 1227
    .local v6, "xfr":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getIndex()S

    move-result v7

    invoke-virtual {v1, v7}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->cloneStyleFrom(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;)V

    .line 1228
    invoke-virtual {v6, v9}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1229
    invoke-virtual {v6, v9}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setXFType(S)V

    .line 1230
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getIndex()S

    move-result v7

    invoke-virtual {v6, v7}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setParentIndex(S)V

    .line 1231
    int-to-short v3, v2

    .line 1236
    .end local v6    # "xfr":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    .local v3, "styleIndex":S
    :goto_1
    return v3

    .line 1217
    .end local v3    # "styleIndex":S
    .restart local v5    # "xf":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    :cond_2
    add-int/lit8 v7, v0, 0x1

    int-to-short v0, v7

    goto :goto_0

    .line 1233
    .end local v5    # "xf":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    :cond_3
    move v3, v4

    .restart local v3    # "styleIndex":S
    goto :goto_1
.end method

.method private static checkBounds(I)V
    .locals 3
    .param p0, "cellIndex"    # I

    .prologue
    .line 949
    if-ltz p0, :cond_0

    sget v0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->LAST_COLUMN_NUMBER:I

    if-le p0, v0, :cond_1

    .line 950
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid column index ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").  Allowable column range for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BIFF8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is (0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/apache/poi/hssf/usermodel/HSSFCell;->LAST_COLUMN_NUMBER:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") or (\'A\'..\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/hssf/usermodel/HSSFCell;->LAST_COLUMN_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 954
    :cond_1
    return-void
.end method

.method private static checkFormulaCachedValueType(ILorg/apache/poi/hssf/record/FormulaRecord;)V
    .locals 2
    .param p0, "expectedTypeCode"    # I
    .param p1, "fr"    # Lorg/apache/poi/hssf/record/FormulaRecord;

    .prologue
    .line 651
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedResultType()I

    move-result v0

    .line 652
    .local v0, "cachedValueType":I
    if-eq v0, p0, :cond_0

    .line 653
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->typeMismatch(IIZ)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 655
    :cond_0
    return-void
.end method

.method private convertCellValueToBoolean()Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 792
    iget v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    packed-switch v3, :pswitch_data_0

    .line 813
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected cell type ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 794
    :pswitch_0
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v3, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getBooleanValue()Z

    move-result v3

    .line 811
    :goto_0
    return v3

    .line 796
    :pswitch_1
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v3, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->getSSTIndex()I

    move-result v1

    .line 797
    .local v1, "sstIndex":I
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSSTString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getString()Ljava/lang/String;

    move-result-object v2

    .line 798
    .local v2, "text":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 800
    .end local v1    # "sstIndex":I
    .end local v2    # "text":Ljava/lang/String;
    :pswitch_2
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v3, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/NumberRecord;->getValue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v3, v6, v8

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_0

    .line 804
    :pswitch_3
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v3, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v0

    .line 805
    .local v0, "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->checkFormulaCachedValueType(ILorg/apache/poi/hssf/record/FormulaRecord;)V

    .line 806
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedBooleanValue()Z

    move-result v3

    goto :goto_0

    .end local v0    # "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    :pswitch_4
    move v3, v4

    .line 811
    goto :goto_0

    .line 792
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private convertCellValueToString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 817
    iget v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    packed-switch v3, :pswitch_data_0

    .line 834
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected cell type ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 819
    :pswitch_0
    const-string v3, ""

    .line 846
    :goto_0
    return-object v3

    .line 821
    :pswitch_1
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v3, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getBooleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "TRUE"

    goto :goto_0

    :cond_0
    const-string v3, "FALSE"

    goto :goto_0

    .line 823
    :pswitch_2
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v3, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->getSSTIndex()I

    move-result v2

    .line 824
    .local v2, "sstIndex":I
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSSTString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 826
    .end local v2    # "sstIndex":I
    :pswitch_3
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v3, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/NumberRecord;->getValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/ss/util/NumberToTextConverter;->toText(D)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 828
    :pswitch_4
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v3, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getErrorValue()B

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/hssf/usermodel/HSSFErrorConstants;->getText(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 836
    :pswitch_5
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 837
    .local v1, "fra":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v0

    .line 838
    .local v0, "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedResultType()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 848
    :pswitch_6
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected formula result type ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 840
    :pswitch_7
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedBooleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "TRUE"

    goto :goto_0

    :cond_1
    const-string v3, "FALSE"

    goto :goto_0

    .line 842
    :pswitch_8
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getStringValue()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 844
    :pswitch_9
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/ss/util/NumberToTextConverter;->toText(D)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 846
    :pswitch_a
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedErrorValue()I

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/hssf/usermodel/HSSFErrorConstants;->getText(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 817
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 838
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_a
    .end packed-switch
.end method

.method private static determineType(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)I
    .locals 5
    .param p0, "cval"    # Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .prologue
    .line 200
    instance-of v2, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    if-eqz v2, :cond_0

    .line 201
    const/4 v2, 0x2

    .line 213
    :goto_0
    return v2

    :cond_0
    move-object v1, p0

    .line 204
    check-cast v1, Lorg/apache/poi/hssf/record/Record;

    .line 205
    .local v1, "record":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 217
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad cell value rec ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 207
    :sswitch_0
    const/4 v2, 0x0

    goto :goto_0

    .line 208
    :sswitch_1
    const/4 v2, 0x3

    goto :goto_0

    .line 209
    :sswitch_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    move-object v0, v1

    .line 211
    check-cast v0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    .line 213
    .local v0, "boolErrRecord":Lorg/apache/poi/hssf/record/BoolErrRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->isBoolean()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    goto :goto_0

    .line 205
    :sswitch_data_0
    .sparse-switch
        0xfd -> :sswitch_2
        0x201 -> :sswitch_1
        0x203 -> :sswitch_0
        0x205 -> :sswitch_3
    .end sparse-switch
.end method

.method private static getCellTypeName(I)Ljava/lang/String;
    .locals 2
    .param p0, "cellTypeCode"    # I

    .prologue
    .line 633
    packed-switch p0, :pswitch_data_0

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#unknown cell type ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 634
    :pswitch_0
    const-string v0, "blank"

    goto :goto_0

    .line 635
    :pswitch_1
    const-string v0, "text"

    goto :goto_0

    .line 636
    :pswitch_2
    const-string v0, "boolean"

    goto :goto_0

    .line 637
    :pswitch_3
    const-string v0, "error"

    goto :goto_0

    .line 638
    :pswitch_4
    const-string v0, "numeric"

    goto :goto_0

    .line 639
    :pswitch_5
    const-string v0, "formula"

    goto :goto_0

    .line 633
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private notifyFormulaChanging()V
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    instance-of v0, v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->notifyFormulaChanging()V

    .line 620
    :cond_0
    return-void
.end method

.method private setCellType(IZISS)V
    .locals 14
    .param p1, "cellType"    # I
    .param p2, "setValue"    # Z
    .param p3, "row"    # I
    .param p4, "col"    # S
    .param p5, "styleIndex"    # S

    .prologue
    .line 298
    const/4 v11, 0x5

    if-le p1, v11, :cond_0

    .line 300
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "I have no idea what type that is!"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 302
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 427
    :goto_0
    iget v11, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    if-eq p1, v11, :cond_1

    iget v11, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1

    .line 430
    iget-object v11, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v11}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v11

    iget-object v12, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-virtual {v11, v12}, Lorg/apache/poi/hssf/model/InternalSheet;->replaceValueRecord(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    .line 432
    :cond_1
    iput p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    .line 433
    return-void

    .line 308
    :pswitch_0
    iget v11, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    if-eq p1, v11, :cond_3

    .line 309
    iget-object v11, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v11}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/poi/hssf/model/InternalSheet;->getRowsAggregate()Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    move-result-object v11

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v11, v0, v1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->createFormula(II)Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    move-result-object v5

    .line 315
    .local v5, "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    :goto_1
    if-eqz p2, :cond_2

    .line 317
    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v11

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getNumericCellValue()D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lorg/apache/poi/hssf/record/FormulaRecord;->setValue(D)V

    .line 319
    :cond_2
    move/from16 v0, p5

    invoke-virtual {v5, v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setXFIndex(S)V

    .line 320
    iput-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    goto :goto_0

    .line 311
    .end local v5    # "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    :cond_3
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v5, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 312
    .restart local v5    # "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setRow(I)V

    .line 313
    move/from16 v0, p4

    invoke-virtual {v5, v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setColumn(S)V

    goto :goto_1

    .line 324
    .end local v5    # "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    :pswitch_1
    const/4 v7, 0x0

    .line 326
    .local v7, "nrec":Lorg/apache/poi/hssf/record/NumberRecord;
    iget v11, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    if-eq p1, v11, :cond_5

    .line 328
    new-instance v7, Lorg/apache/poi/hssf/record/NumberRecord;

    .end local v7    # "nrec":Lorg/apache/poi/hssf/record/NumberRecord;
    invoke-direct {v7}, Lorg/apache/poi/hssf/record/NumberRecord;-><init>()V

    .line 334
    .restart local v7    # "nrec":Lorg/apache/poi/hssf/record/NumberRecord;
    :goto_2
    move/from16 v0, p4

    invoke-virtual {v7, v0}, Lorg/apache/poi/hssf/record/NumberRecord;->setColumn(S)V

    .line 335
    if-eqz p2, :cond_4

    .line 337
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getNumericCellValue()D

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Lorg/apache/poi/hssf/record/NumberRecord;->setValue(D)V

    .line 339
    :cond_4
    move/from16 v0, p5

    invoke-virtual {v7, v0}, Lorg/apache/poi/hssf/record/NumberRecord;->setXFIndex(S)V

    .line 340
    move/from16 v0, p3

    invoke-virtual {v7, v0}, Lorg/apache/poi/hssf/record/NumberRecord;->setRow(I)V

    .line 341
    iput-object v7, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    goto :goto_0

    .line 332
    :cond_5
    iget-object v7, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .end local v7    # "nrec":Lorg/apache/poi/hssf/record/NumberRecord;
    check-cast v7, Lorg/apache/poi/hssf/record/NumberRecord;

    .restart local v7    # "nrec":Lorg/apache/poi/hssf/record/NumberRecord;
    goto :goto_2

    .line 347
    .end local v7    # "nrec":Lorg/apache/poi/hssf/record/NumberRecord;
    :pswitch_2
    iget v11, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    if-ne p1, v11, :cond_7

    .line 348
    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v6, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    .line 355
    .local v6, "lrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    :goto_3
    if-eqz p2, :cond_6

    .line 356
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->convertCellValueToString()Ljava/lang/String;

    move-result-object v9

    .line 357
    .local v9, "str":Ljava/lang/String;
    iget-object v11, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v11}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v11

    new-instance v12, Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-direct {v12, v9}, Lorg/apache/poi/hssf/record/common/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lorg/apache/poi/hssf/model/InternalWorkbook;->addSSTString(Lorg/apache/poi/hssf/record/common/UnicodeString;)I

    move-result v8

    .line 358
    .local v8, "sstIndex":I
    invoke-virtual {v6, v8}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->setSSTIndex(I)V

    .line 359
    iget-object v11, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v11}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v11

    invoke-virtual {v11, v8}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSSTString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v10

    .line 360
    .local v10, "us":Lorg/apache/poi/hssf/record/common/UnicodeString;
    new-instance v11, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-direct {v11}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>()V

    iput-object v11, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 361
    iget-object v11, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-virtual {v11, v10}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->setUnicodeString(Lorg/apache/poi/hssf/record/common/UnicodeString;)V

    .line 363
    .end local v8    # "sstIndex":I
    .end local v9    # "str":Ljava/lang/String;
    .end local v10    # "us":Lorg/apache/poi/hssf/record/common/UnicodeString;
    :cond_6
    iput-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    goto/16 :goto_0

    .line 350
    .end local v6    # "lrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    :cond_7
    new-instance v6, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-direct {v6}, Lorg/apache/poi/hssf/record/LabelSSTRecord;-><init>()V

    .line 351
    .restart local v6    # "lrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    move/from16 v0, p4

    invoke-virtual {v6, v0}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->setColumn(S)V

    .line 352
    move/from16 v0, p3

    invoke-virtual {v6, v0}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->setRow(I)V

    .line 353
    move/from16 v0, p5

    invoke-virtual {v6, v0}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->setXFIndex(S)V

    goto :goto_3

    .line 367
    .end local v6    # "lrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    :pswitch_3
    const/4 v3, 0x0

    .line 369
    .local v3, "brec":Lorg/apache/poi/hssf/record/BlankRecord;
    iget v11, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    if-eq p1, v11, :cond_8

    .line 371
    new-instance v3, Lorg/apache/poi/hssf/record/BlankRecord;

    .end local v3    # "brec":Lorg/apache/poi/hssf/record/BlankRecord;
    invoke-direct {v3}, Lorg/apache/poi/hssf/record/BlankRecord;-><init>()V

    .line 377
    .restart local v3    # "brec":Lorg/apache/poi/hssf/record/BlankRecord;
    :goto_4
    move/from16 v0, p4

    invoke-virtual {v3, v0}, Lorg/apache/poi/hssf/record/BlankRecord;->setColumn(S)V

    .line 380
    move/from16 v0, p5

    invoke-virtual {v3, v0}, Lorg/apache/poi/hssf/record/BlankRecord;->setXFIndex(S)V

    .line 381
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lorg/apache/poi/hssf/record/BlankRecord;->setRow(I)V

    .line 382
    iput-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    goto/16 :goto_0

    .line 375
    :cond_8
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .end local v3    # "brec":Lorg/apache/poi/hssf/record/BlankRecord;
    check-cast v3, Lorg/apache/poi/hssf/record/BlankRecord;

    .restart local v3    # "brec":Lorg/apache/poi/hssf/record/BlankRecord;
    goto :goto_4

    .line 386
    .end local v3    # "brec":Lorg/apache/poi/hssf/record/BlankRecord;
    :pswitch_4
    const/4 v2, 0x0

    .line 388
    .local v2, "boolRec":Lorg/apache/poi/hssf/record/BoolErrRecord;
    iget v11, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    if-eq p1, v11, :cond_a

    .line 390
    new-instance v2, Lorg/apache/poi/hssf/record/BoolErrRecord;

    .end local v2    # "boolRec":Lorg/apache/poi/hssf/record/BoolErrRecord;
    invoke-direct {v2}, Lorg/apache/poi/hssf/record/BoolErrRecord;-><init>()V

    .line 396
    .restart local v2    # "boolRec":Lorg/apache/poi/hssf/record/BoolErrRecord;
    :goto_5
    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setColumn(S)V

    .line 397
    if-eqz p2, :cond_9

    .line 399
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->convertCellValueToBoolean()Z

    move-result v11

    invoke-virtual {v2, v11}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setValue(Z)V

    .line 401
    :cond_9
    move/from16 v0, p5

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setXFIndex(S)V

    .line 402
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setRow(I)V

    .line 403
    iput-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    goto/16 :goto_0

    .line 394
    :cond_a
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .end local v2    # "boolRec":Lorg/apache/poi/hssf/record/BoolErrRecord;
    check-cast v2, Lorg/apache/poi/hssf/record/BoolErrRecord;

    .restart local v2    # "boolRec":Lorg/apache/poi/hssf/record/BoolErrRecord;
    goto :goto_5

    .line 407
    .end local v2    # "boolRec":Lorg/apache/poi/hssf/record/BoolErrRecord;
    :pswitch_5
    const/4 v4, 0x0

    .line 409
    .local v4, "errRec":Lorg/apache/poi/hssf/record/BoolErrRecord;
    iget v11, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    if-eq p1, v11, :cond_c

    .line 411
    new-instance v4, Lorg/apache/poi/hssf/record/BoolErrRecord;

    .end local v4    # "errRec":Lorg/apache/poi/hssf/record/BoolErrRecord;
    invoke-direct {v4}, Lorg/apache/poi/hssf/record/BoolErrRecord;-><init>()V

    .line 417
    .restart local v4    # "errRec":Lorg/apache/poi/hssf/record/BoolErrRecord;
    :goto_6
    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setColumn(S)V

    .line 418
    if-eqz p2, :cond_b

    .line 420
    const/16 v11, 0xf

    invoke-virtual {v4, v11}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setValue(B)V

    .line 422
    :cond_b
    move/from16 v0, p5

    invoke-virtual {v4, v0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setXFIndex(S)V

    .line 423
    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setRow(I)V

    .line 424
    iput-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    goto/16 :goto_0

    .line 415
    :cond_c
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .end local v4    # "errRec":Lorg/apache/poi/hssf/record/BoolErrRecord;
    check-cast v4, Lorg/apache/poi/hssf/record/BoolErrRecord;

    .restart local v4    # "errRec":Lorg/apache/poi/hssf/record/BoolErrRecord;
    goto :goto_6

    .line 302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static typeMismatch(IIZ)Ljava/lang/RuntimeException;
    .locals 3
    .param p0, "expectedTypeCode"    # I
    .param p1, "actualTypeCode"    # I
    .param p2, "isFormulaCell"    # Z

    .prologue
    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value from a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string v1, "formula "

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cell"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 648
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 645
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method public getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 4

    .prologue
    .line 1143
    iget v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1144
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v1, p0}, Lorg/apache/poi/ss/util/CellReference;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v0

    .line 1145
    .local v0, "ref":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cell "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not part of an array formula."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1148
    .end local v0    # "ref":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v1

    return-object v1
.end method

.method public getBooleanCellValue()Z
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 857
    iget v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    packed-switch v2, :pswitch_data_0

    .line 863
    iget v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    invoke-static {v3, v2, v1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->typeMismatch(IIZ)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 861
    :pswitch_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v1, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getBooleanValue()Z

    move-result v1

    .line 869
    :goto_0
    :pswitch_1
    return v1

    .line 867
    :pswitch_2
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v0

    .line 868
    .local v0, "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    invoke-static {v3, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->checkFormulaCachedValueType(ILorg/apache/poi/hssf/record/FormulaRecord;)V

    .line 869
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedBooleanValue()Z

    move-result v1

    goto :goto_0

    .line 857
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getBoundWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    return-object v0
.end method

.method public getCachedFormulaResultType()I
    .locals 2

    .prologue
    .line 1124
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1125
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only formula cells have cached results"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1127
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedResultType()I

    move-result v0

    return v0
.end method

.method public getCellComment()Lorg/apache/poi/hssf/usermodel/HSSFComment;
    .locals 3

    .prologue
    .line 1027
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_comment:Lorg/apache/poi/hssf/usermodel/HSSFComment;

    if-nez v0, :cond_0

    .line 1028
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v2}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->findCellComment(II)Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_comment:Lorg/apache/poi/hssf/usermodel/HSSFComment;

    .line 1030
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_comment:Lorg/apache/poi/hssf/usermodel/HSSFComment;

    return-object v0
.end method

.method public bridge synthetic getCellComment()Lorg/apache/poi/ss/usermodel/Comment;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellComment()Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object v0

    return-object v0
.end method

.method public getCellFormula()Ljava/lang/String;
    .locals 3

    .prologue
    .line 623
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    instance-of v0, v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    if-nez v0, :cond_0

    .line 624
    const/4 v0, 0x2

    iget v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->typeMismatch(IIZ)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 626
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->toFormulaString(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellNum()S
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getColumnIndex()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getCellStyle()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    .locals 4

    .prologue
    .line 929
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v2}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v0

    .line 930
    .local v0, "styleIndex":S
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v1

    .line 931
    .local v1, "xf":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v2, v0, v1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;-><init>(SLorg/apache/poi/hssf/record/ExtendedFormatRecord;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    return-object v2
.end method

.method public bridge synthetic getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellStyle()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    move-result-object v0

    return-object v0
.end method

.method public getCellType()I
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    return v0
.end method

.method protected getCellValueRecord()Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    return-object v0
.end method

.method public getColumnIndex()I
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getDateCellValue()Ljava/util/Date;
    .locals 4

    .prologue
    .line 691
    iget v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 692
    const/4 v2, 0x0

    .line 698
    :goto_0
    return-object v2

    .line 694
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getNumericCellValue()D

    move-result-wide v0

    .line 695
    .local v0, "value":D
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->isUsing1904DateWindowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 696
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFDateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object v2

    goto :goto_0

    .line 698
    :cond_1
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFDateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object v2

    goto :goto_0
.end method

.method public getErrorCellValue()B
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 877
    iget v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    packed-switch v1, :pswitch_data_0

    .line 881
    :pswitch_0
    iget v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    const/4 v2, 0x0

    invoke-static {v3, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->typeMismatch(IIZ)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 879
    :pswitch_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v1, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getErrorValue()B

    move-result v1

    .line 887
    :goto_0
    return v1

    .line 885
    :pswitch_2
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v0

    .line 886
    .local v0, "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    invoke-static {v3, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->checkFormulaCachedValueType(ILorg/apache/poi/hssf/record/FormulaRecord;)V

    .line 887
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedErrorValue()I

    move-result v1

    int-to-byte v1, v1

    goto :goto_0

    .line 877
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getHyperlink()Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;
    .locals 5

    .prologue
    .line 1052
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/RecordBase;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1053
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/RecordBase;

    .line 1054
    .local v2, "rec":Lorg/apache/poi/hssf/record/RecordBase;
    instance-of v3, v2, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 1055
    check-cast v1, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    .line 1056
    .local v1, "link":Lorg/apache/poi/hssf/record/HyperlinkRecord;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getFirstColumn()I

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v4}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getFirstRow()I

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v4}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1057
    new-instance v3, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    invoke-direct {v3, v1}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;-><init>(Lorg/apache/poi/hssf/record/HyperlinkRecord;)V

    .line 1061
    .end local v1    # "link":Lorg/apache/poi/hssf/record/HyperlinkRecord;
    .end local v2    # "rec":Lorg/apache/poi/hssf/record/RecordBase;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getHyperlink()Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getHyperlink()Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    move-result-object v0

    return-object v0
.end method

.method public getNumericCellValue()D
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 667
    iget v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    packed-switch v1, :pswitch_data_0

    .line 673
    :pswitch_0
    iget v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    invoke-static {v2, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->typeMismatch(IIZ)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 669
    :pswitch_1
    const-wide/16 v2, 0x0

    .line 679
    :goto_0
    return-wide v2

    .line 671
    :pswitch_2
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v1, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NumberRecord;->getValue()D

    move-result-wide v2

    goto :goto_0

    .line 677
    :pswitch_3
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v0

    .line 678
    .local v0, "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    invoke-static {v2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->checkFormulaCachedValueType(ILorg/apache/poi/hssf/record/FormulaRecord;)V

    .line 679
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getValue()D

    move-result-wide v2

    goto :goto_0

    .line 667
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public getRichStringCellValue()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 719
    iget v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    packed-switch v2, :pswitch_data_0

    .line 725
    iget v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    const/4 v3, 0x0

    invoke-static {v4, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->typeMismatch(IIZ)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 721
    :pswitch_0
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    const-string v3, ""

    invoke-direct {v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    .line 732
    :goto_0
    return-object v2

    .line 723
    :pswitch_1
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    goto :goto_0

    .line 729
    :pswitch_2
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 730
    .local v0, "fra":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v2

    invoke-static {v4, v2}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->checkFormulaCachedValueType(ILorg/apache/poi/hssf/record/FormulaRecord;)V

    .line 731
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getStringValue()Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, "strVal":Ljava/lang/String;
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    if-nez v1, :cond_0

    const-string v1, ""

    .end local v1    # "strVal":Ljava/lang/String;
    :cond_0
    invoke-direct {v2, v1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 719
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getRichStringCellValue()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object v0

    return-object v0
.end method

.method public getRow()Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getRowIndex()I

    move-result v0

    .line 137
    .local v0, "rowIndex":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getRow()Lorg/apache/poi/ss/usermodel/Row;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getRow()Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v0

    return-object v0
.end method

.method public getRowIndex()I
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v0

    return v0
.end method

.method public getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    return-object v0
.end method

.method public bridge synthetic getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getStringCellValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 708
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getRichStringCellValue()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object v0

    .line 709
    .local v0, "str":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isPartOfArrayFormulaGroup()Z
    .locals 2

    .prologue
    .line 1152
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1153
    const/4 v0, 0x0

    .line 1155
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->isPartOfArrayFormula()Z

    move-result v0

    goto :goto_0
.end method

.method notifyArrayFormulaChanging()V
    .locals 4

    .prologue
    .line 1187
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v1, p0}, Lorg/apache/poi/ss/util/CellReference;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    .line 1188
    .local v1, "ref":Lorg/apache/poi/ss/util/CellReference;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cell "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is part of a multi-cell array formula. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "You cannot change part of an array."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1190
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->notifyArrayFormulaChanging(Ljava/lang/String;)V

    .line 1191
    return-void
.end method

.method notifyArrayFormulaChanging(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1164
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    .line 1165
    .local v0, "cra":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getNumberOfCells()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1166
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1169
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getRow()Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->removeArrayFormula(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellRange;

    .line 1170
    return-void
.end method

.method public removeCellComment()V
    .locals 4

    .prologue
    .line 1040
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v2}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v3}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->findCellComment(II)Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object v0

    .line 1041
    .local v0, "comment":Lorg/apache/poi/hssf/usermodel/HSSFComment;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_comment:Lorg/apache/poi/hssf/usermodel/HSSFComment;

    .line 1042
    if-nez v0, :cond_0

    .line 1046
    :goto_0
    return-void

    .line 1045
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->removeShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)Z

    goto :goto_0
.end method

.method public removeHyperlink()V
    .locals 5

    .prologue
    .line 1105
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/RecordBase;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/RecordBase;

    .line 1107
    .local v2, "rec":Lorg/apache/poi/hssf/record/RecordBase;
    instance-of v3, v2, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 1108
    check-cast v1, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    .line 1109
    .local v1, "link":Lorg/apache/poi/hssf/record/HyperlinkRecord;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getFirstColumn()I

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v4}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getFirstRow()I

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v4}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1110
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1115
    .end local v1    # "link":Lorg/apache/poi/hssf/record/HyperlinkRecord;
    .end local v2    # "rec":Lorg/apache/poi/hssf/record/RecordBase;
    :cond_1
    return-void
.end method

.method public setAsActiveCell()V
    .locals 3

    .prologue
    .line 961
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v2}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v1

    .line 962
    .local v1, "row":I
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v2}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v0

    .line 963
    .local v0, "col":S
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->setActiveCellRow(I)V

    .line 964
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/model/InternalSheet;->setActiveCellCol(S)V

    .line 965
    return-void
.end method

.method setCellArrayFormula(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 9
    .param p1, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .prologue
    const/4 v2, 0x0

    .line 1131
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v3

    .line 1132
    .local v3, "row":I
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v4

    .line 1133
    .local v4, "col":S
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v5

    .line 1134
    .local v5, "styleIndex":S
    const/4 v1, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(IZISS)V

    .line 1137
    const/4 v0, 0x1

    new-array v7, v0, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/ExpPtg;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v8

    invoke-direct {v0, v1, v8}, Lorg/apache/poi/ss/formula/ptg/ExpPtg;-><init>(II)V

    aput-object v0, v7, v2

    .line 1138
    .local v7, "ptgsForCell":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v6, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 1139
    .local v6, "agg":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    invoke-virtual {v6, v7}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setParsedExpression([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 1140
    return-void
.end method

.method public setCellComment(Lorg/apache/poi/ss/usermodel/Comment;)V
    .locals 1
    .param p1, "comment"    # Lorg/apache/poi/ss/usermodel/Comment;

    .prologue
    .line 1011
    if-nez p1, :cond_0

    .line 1012
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->removeCellComment()V

    .line 1019
    .end local p1    # "comment":Lorg/apache/poi/ss/usermodel/Comment;
    :goto_0
    return-void

    .line 1016
    .restart local p1    # "comment":Lorg/apache/poi/ss/usermodel/Comment;
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Comment;->setRow(I)V

    .line 1017
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Comment;->setColumn(I)V

    .line 1018
    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    .end local p1    # "comment":Lorg/apache/poi/ss/usermodel/Comment;
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_comment:Lorg/apache/poi/hssf/usermodel/HSSFComment;

    goto :goto_0
.end method

.method public setCellErrorValue(B)V
    .locals 6
    .param p1, "errorCode"    # B

    .prologue
    .line 768
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v3

    .line 769
    .local v3, "row":I
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v4

    .line 770
    .local v4, "col":S
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v5

    .line 771
    .local v5, "styleIndex":S
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    packed-switch v0, :pswitch_data_0

    .line 773
    :pswitch_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(IZISS)V

    .line 775
    :pswitch_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setValue(B)V

    .line 781
    :goto_0
    return-void

    .line 778
    :pswitch_2
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setCachedErrorResult(I)V

    goto :goto_0

    .line 771
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCellFormula(Ljava/lang/String;)V
    .locals 11
    .param p1, "formula"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 585
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->notifyArrayFormulaChanging()V

    .line 589
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v3

    .line 590
    .local v3, "row":I
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v4

    .line 591
    .local v4, "col":S
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v5

    .line 593
    .local v5, "styleIndex":S
    if-nez p1, :cond_1

    .line 594
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->notifyFormulaChanging()V

    .line 595
    const/4 v1, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(IZISS)V

    .line 611
    :goto_0
    return-void

    .line 598
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    iget-object v10, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v9

    .line 599
    .local v9, "sheetIndex":I
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-static {p1, v0, v2, v9}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v8

    .local v8, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    move-object v0, p0

    .line 600
    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(IZISS)V

    .line 601
    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v6, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 602
    .local v6, "agg":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    invoke-virtual {v6}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v7

    .line 603
    .local v7, "frec":Lorg/apache/poi/hssf/record/FormulaRecord;
    invoke-virtual {v7, v1}, Lorg/apache/poi/hssf/record/FormulaRecord;->setOptions(S)V

    .line 604
    const-wide/16 v0, 0x0

    invoke-virtual {v7, v0, v1}, Lorg/apache/poi/hssf/record/FormulaRecord;->setValue(D)V

    .line 607
    invoke-virtual {v6}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getXFIndex()S

    move-result v0

    if-nez v0, :cond_2

    .line 608
    const/16 v0, 0xf

    invoke-virtual {v6, v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setXFIndex(S)V

    .line 610
    :cond_2
    invoke-virtual {v6, v8}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setParsedExpression([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    goto :goto_0
.end method

.method public setCellNum(S)V
    .locals 1
    .param p1, "num"    # S

    .prologue
    .line 240
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0, p1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->setColumn(S)V

    .line 241
    return-void
.end method

.method public setCellStyle(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)V
    .locals 3
    .param p1, "style"    # Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    .prologue
    .line 903
    if-nez p1, :cond_0

    .line 904
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    const/16 v2, 0xf

    invoke-interface {v1, v2}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->setXFIndex(S)V

    .line 920
    :goto_0
    return-void

    .line 909
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->verifyBelongsToWorkbook(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    .line 912
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getUserStyleName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 913
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->applyUserCellStyle(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)S

    move-result v0

    .line 919
    .local v0, "styleIndex":S
    :goto_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1, v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->setXFIndex(S)V

    goto :goto_0

    .line 915
    .end local v0    # "styleIndex":S
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getIndex()S

    move-result v0

    .restart local v0    # "styleIndex":S
    goto :goto_1
.end method

.method public setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 0
    .param p1, "style"    # Lorg/apache/poi/ss/usermodel/CellStyle;

    .prologue
    .line 899
    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    .end local p1    # "style":Lorg/apache/poi/ss/usermodel/CellStyle;
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellStyle(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)V

    .line 900
    return-void
.end method

.method public setCellType(I)V
    .locals 6
    .param p1, "cellType"    # I

    .prologue
    .line 276
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->notifyFormulaChanging()V

    .line 277
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->notifyArrayFormulaChanging()V

    .line 280
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v3

    .line 281
    .local v3, "row":I
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v4

    .line 282
    .local v4, "col":S
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v5

    .line 283
    .local v5, "styleIndex":S
    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(IZISS)V

    .line 284
    return-void
.end method

.method public setCellValue(D)V
    .locals 7
    .param p1, "value"    # D

    .prologue
    const/4 v1, 0x0

    .line 457
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    sget-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->DIV0:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellErrorValue(B)V

    .line 482
    :goto_0
    return-void

    .line 461
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    sget-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->NUM:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellErrorValue(B)V

    goto :goto_0

    .line 466
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v3

    .line 467
    .local v3, "row":I
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v4

    .line 468
    .local v4, "col":S
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v5

    .line 470
    .local v5, "styleIndex":S
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move-object v0, p0

    move v2, v1

    .line 472
    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(IZISS)V

    .line 474
    :pswitch_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/record/NumberRecord;->setValue(D)V

    goto :goto_0

    .line 477
    :pswitch_2
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setCachedDoubleResult(D)V

    goto :goto_0

    .line 470
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setCellValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 526
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 527
    .local v0, "str":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    .line 528
    return-void

    .line 526
    .end local v0    # "str":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCellValue(Ljava/util/Calendar;)V
    .locals 2
    .param p1, "value"    # Ljava/util/Calendar;

    .prologue
    .line 514
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->isUsing1904DateWindowing()Z

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFDateUtil;->getExcelDate(Ljava/util/Calendar;Z)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellValue(D)V

    .line 515
    return-void
.end method

.method public setCellValue(Ljava/util/Date;)V
    .locals 2
    .param p1, "value"    # Ljava/util/Date;

    .prologue
    .line 494
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->isUsing1904DateWindowing()Z

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFDateUtil;->getExcelDate(Ljava/util/Date;Z)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellValue(D)V

    .line 495
    return-void
.end method

.method public setCellValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V
    .locals 11
    .param p1, "value"    # Lorg/apache/poi/ss/usermodel/RichTextString;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 541
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v3

    .line 542
    .local v3, "row":I
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v4

    .line 543
    .local v4, "col":S
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v5

    .line 544
    .local v5, "styleIndex":S
    if-nez p1, :cond_0

    .line 546
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->notifyFormulaChanging()V

    .line 547
    const/4 v1, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(IZISS)V

    .line 582
    :goto_0
    return-void

    .line 551
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/RichTextString;->length()I

    move-result v0

    sget-object v10, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v10}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxTextLength()I

    move-result v10

    if-le v0, v10, :cond_1

    .line 552
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The maximum length of cell contents (text) is 32,767 characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_1
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    const/4 v10, 0x2

    if-ne v0, v10, :cond_2

    .line 558
    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v6, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 559
    .local v6, "fr":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setCachedStringResult(Ljava/lang/String;)V

    .line 561
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    goto :goto_0

    .line 570
    .end local v6    # "fr":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    :cond_2
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    if-eq v0, v1, :cond_3

    move-object v0, p0

    .line 571
    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(IZISS)V

    .line 573
    :cond_3
    const/4 v8, 0x0

    .local v8, "index":I
    move-object v7, p1

    .line 575
    check-cast v7, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 576
    .local v7, "hvalue":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    invoke-virtual {v7}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getUnicodeString()Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v9

    .line 577
    .local v9, "str":Lorg/apache/poi/hssf/record/common/UnicodeString;
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-virtual {v0, v9}, Lorg/apache/poi/hssf/model/InternalWorkbook;->addSSTString(Lorg/apache/poi/hssf/record/common/UnicodeString;)I

    move-result v8

    .line 578
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-virtual {v0, v8}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->setSSTIndex(I)V

    .line 579
    iput-object v7, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 580
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-virtual {v1, v2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->setWorkbookReferences(Lorg/apache/poi/hssf/model/InternalWorkbook;Lorg/apache/poi/hssf/record/LabelSSTRecord;)V

    .line 581
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSSTString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->setUnicodeString(Lorg/apache/poi/hssf/record/common/UnicodeString;)V

    goto :goto_0
.end method

.method public setCellValue(Z)V
    .locals 6
    .param p1, "value"    # Z

    .prologue
    .line 743
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v3

    .line 744
    .local v3, "row":I
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v4

    .line 745
    .local v4, "col":S
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v5

    .line 747
    .local v5, "styleIndex":S
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    packed-switch v0, :pswitch_data_0

    .line 749
    :pswitch_0
    const/4 v1, 0x4

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(IZISS)V

    .line 751
    :pswitch_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setValue(Z)V

    .line 757
    :goto_0
    return-void

    .line 754
    :pswitch_2
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setCachedBooleanResult(Z)V

    goto :goto_0

    .line 747
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setHyperlink(Lorg/apache/poi/ss/usermodel/Hyperlink;)V
    .locals 4
    .param p1, "hyperlink"    # Lorg/apache/poi/ss/usermodel/Hyperlink;

    .prologue
    .line 1071
    if-nez p1, :cond_0

    .line 1072
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->removeHyperlink()V

    .line 1099
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    .line 1076
    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    .line 1078
    .local v1, "link":Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v3}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setFirstRow(I)V

    .line 1079
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v3}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setLastRow(I)V

    .line 1080
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v3}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v3

    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setFirstColumn(I)V

    .line 1081
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v3}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v3

    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setLastColumn(I)V

    .line 1083
    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1096
    :goto_1
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v2

    .line 1097
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/RecordBase;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 1098
    .local v0, "eofLoc":I
    iget-object v3, v1, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 1086
    .end local v0    # "eofLoc":I
    .end local v2    # "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/RecordBase;>;"
    :pswitch_0
    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setLabel(Ljava/lang/String;)V

    goto :goto_1

    .line 1089
    :pswitch_1
    const-string v3, "file"

    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setLabel(Ljava/lang/String;)V

    goto :goto_1

    .line 1092
    :pswitch_2
    const-string v3, "place"

    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setLabel(Ljava/lang/String;)V

    goto :goto_1

    .line 1083
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 980
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 999
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Cell Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 982
    :pswitch_0
    const-string v1, ""

    goto :goto_0

    .line 984
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getBooleanCellValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "TRUE"

    goto :goto_0

    :cond_0
    const-string v1, "FALSE"

    goto :goto_0

    .line 986
    :pswitch_2
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v1, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getErrorValue()B

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getText(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 988
    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellFormula()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 991
    :pswitch_4
    invoke-static {p0}, Lorg/apache/poi/hssf/usermodel/HSSFDateUtil;->isCellDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 992
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MMM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 993
    .local v0, "sdf":Ljava/text/DateFormat;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getDateCellValue()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 995
    .end local v0    # "sdf":Ljava/text/DateFormat;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getNumericCellValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 997
    :pswitch_5
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getStringCellValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 980
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected updateCellNum(S)V
    .locals 1
    .param p1, "num"    # S

    .prologue
    .line 250
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0, p1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->setColumn(S)V

    .line 251
    return-void
.end method
