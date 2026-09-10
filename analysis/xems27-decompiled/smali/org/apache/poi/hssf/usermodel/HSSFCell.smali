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
    .locals 7
    .param p1, "book"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "row"    # I
    .param p4, "col"    # S

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

    move-result v0

    .line 118
    .local v0, "xfindex":S
    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object v1, p0

    move v4, p3

    move v5, p4

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(IZISS)V

    .line 119
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;ISI)V
    .locals 7
    .param p1, "book"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "row"    # I
    .param p4, "col"    # S
    .param p5, "type"    # I

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

    move-result v0

    .line 163
    .local v0, "xfindex":S
    const/4 v3, 0x0

    move-object v1, p0

    move v2, p5

    move v4, p3

    move v5, p4

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(IZISS)V

    .line 164
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V
    .locals 3
    .param p1, "book"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p2, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p3, "cval"    # Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 176
    invoke-static {p3}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->determineType(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    .line 177
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 178
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 179
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 180
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-object v1, p3

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    goto :goto_0

    .line 183
    :cond_1
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    move-object v2, p3

    check-cast v2, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Lorg/apache/poi/hssf/model/InternalWorkbook;Lorg/apache/poi/hssf/record/LabelSSTRecord;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 184
    nop

    .line 193
    :goto_0
    return-void
.end method

.method private applyUserCellStyle(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)S
    .locals 7
    .param p1, "style"    # Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    .line 1210
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getUserStyleName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1214
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    .line 1215
    .local v0, "iwb":Lorg/apache/poi/hssf/model/InternalWorkbook;
    const/4 v1, -0x1

    .line 1216
    .local v1, "userXf":S
    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumExFormats()I

    move-result v2

    .line 1217
    .local v2, "numfmt":I
    const/4 v3, 0x0

    .local v3, "i":S
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1218
    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v4

    .line 1219
    .local v4, "xf":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getXFType()S

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getParentIndex()S

    move-result v5

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getIndex()S

    move-result v6

    if-ne v5, v6, :cond_0

    .line 1220
    move v1, v3

    .line 1221
    goto :goto_1

    .line 1217
    .end local v4    # "xf":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    :cond_0
    add-int/lit8 v4, v3, 0x1

    int-to-short v3, v4

    goto :goto_0

    .line 1225
    .end local v3    # "i":S
    :cond_1
    :goto_1
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 1226
    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createCellXF()Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v3

    .line 1227
    .local v3, "xfr":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getIndex()S

    move-result v4

    invoke-virtual {v0, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->cloneStyleFrom(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;)V

    .line 1228
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setIndentionOptions(S)V

    .line 1229
    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setXFType(S)V

    .line 1230
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getIndex()S

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setParentIndex(S)V

    .line 1231
    int-to-short v3, v2

    .line 1232
    .local v3, "styleIndex":S
    goto :goto_2

    .line 1233
    .end local v3    # "styleIndex":S
    :cond_2
    move v3, v1

    .line 1236
    .restart local v3    # "styleIndex":S
    :goto_2
    return v3

    .line 1211
    .end local v0    # "iwb":Lorg/apache/poi/hssf/model/InternalWorkbook;
    .end local v1    # "userXf":S
    .end local v2    # "numfmt":I
    .end local v3    # "styleIndex":S
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected user-defined style"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkBounds(I)V
    .locals 3
    .param p0, "cellIndex"    # I

    .line 949
    if-ltz p0, :cond_0

    sget v0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->LAST_COLUMN_NUMBER:I

    if-gt p0, v0, :cond_0

    .line 954
    return-void

    .line 950
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid column index ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ").  Allowable column range for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "BIFF8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is (0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/apache/poi/hssf/usermodel/HSSFCell;->LAST_COLUMN_NUMBER:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") or (\'A\'..\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/apache/poi/hssf/usermodel/HSSFCell;->LAST_COLUMN_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkFormulaCachedValueType(ILorg/apache/poi/hssf/record/FormulaRecord;)V
    .locals 2
    .param p0, "expectedTypeCode"    # I
    .param p1, "fr"    # Lorg/apache/poi/hssf/record/FormulaRecord;

    .line 651
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedResultType()I

    move-result v0

    .line 652
    .local v0, "cachedValueType":I
    if-ne v0, p0, :cond_0

    .line 655
    return-void

    .line 653
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->typeMismatch(IIZ)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private convertCellValueToBoolean()Z
    .locals 9

    .line 792
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    const/4 v4, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    if-eq v0, v4, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 813
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected cell type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 794
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getBooleanValue()Z

    move-result v0

    return v0

    .line 792
    :cond_2
    :goto_0
    move-object v0, v2

    .local v0, "text":Ljava/lang/String;
    move v1, v3

    .line 811
    .local v1, "sstIndex":I
    .local v2, "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    return v3

    .line 792
    .end local v0    # "text":Ljava/lang/String;
    .end local v1    # "sstIndex":I
    .end local v2    # "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    :cond_3
    move-object v0, v2

    .restart local v0    # "text":Ljava/lang/String;
    move v1, v3

    .line 804
    .restart local v1    # "sstIndex":I
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v2, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v2

    .line 805
    .restart local v2    # "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    invoke-static {v4, v2}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->checkFormulaCachedValueType(ILorg/apache/poi/hssf/record/FormulaRecord;)V

    .line 806
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedBooleanValue()Z

    move-result v3

    return v3

    .line 796
    .end local v0    # "text":Ljava/lang/String;
    .end local v1    # "sstIndex":I
    .end local v2    # "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    :cond_4
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->getSSTIndex()I

    move-result v0

    .line 797
    .local v0, "sstIndex":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSSTString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getString()Ljava/lang/String;

    move-result-object v1

    .line 798
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 792
    .end local v0    # "sstIndex":I
    .end local v1    # "text":Ljava/lang/String;
    :cond_5
    move-object v0, v2

    .local v0, "text":Ljava/lang/String;
    move v2, v3

    .line 800
    .local v2, "sstIndex":I
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v4, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/NumberRecord;->getValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private convertCellValueToString()Ljava/lang/String;
    .locals 9

    .line 817
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const/4 v2, 0x1

    if-eq v0, v2, :cond_a

    const/4 v3, 0x2

    const-string v4, "TRUE"

    const-string v5, "FALSE"

    const-string v6, ")"

    const/4 v7, 0x5

    const/4 v8, 0x4

    if-eq v0, v3, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    if-eq v0, v8, :cond_1

    if-ne v0, v7, :cond_0

    move v0, v1

    .line 828
    .local v0, "sstIndex":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v1, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getErrorValue()B

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/hssf/usermodel/HSSFErrorConstants;->getText(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 817
    .end local v0    # "sstIndex":I
    :cond_0
    move v0, v1

    .line 834
    .restart local v0    # "sstIndex":I
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected cell type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 821
    .end local v0    # "sstIndex":I
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getBooleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v4, v5

    :goto_0
    return-object v4

    .line 819
    :cond_3
    const-string v0, ""

    return-object v0

    .line 817
    :cond_4
    move v0, v1

    .line 832
    .restart local v0    # "sstIndex":I
    nop

    .line 836
    .end local v0    # "sstIndex":I
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 837
    .local v0, "fra":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v1

    .line 838
    .local v1, "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedResultType()I

    move-result v3

    if-eqz v3, :cond_9

    if-eq v3, v2, :cond_8

    if-eq v3, v8, :cond_6

    if-ne v3, v7, :cond_5

    .line 846
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedErrorValue()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/hssf/usermodel/HSSFErrorConstants;->getText(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 848
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected formula result type ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 840
    :cond_6
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedBooleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    move-object v4, v5

    :goto_1
    return-object v4

    .line 842
    :cond_8
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getStringValue()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 844
    :cond_9
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/ss/util/NumberToTextConverter;->toText(D)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 823
    .end local v0    # "fra":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    .end local v1    # "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    :cond_a
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->getSSTIndex()I

    move-result v0

    .line 824
    .local v0, "sstIndex":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSSTString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 817
    .end local v0    # "sstIndex":I
    :cond_b
    move v0, v1

    .line 826
    .restart local v0    # "sstIndex":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v1, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NumberRecord;->getValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/NumberToTextConverter;->toText(D)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static determineType(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)I
    .locals 4
    .param p0, "cval"    # Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 200
    instance-of v0, p0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x2

    return v0

    .line 204
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/hssf/record/Record;

    .line 205
    .local v0, "record":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v1

    const/16 v2, 0xfd

    if-eq v1, v2, :cond_5

    const/16 v2, 0x201

    if-eq v1, v2, :cond_4

    const/16 v2, 0x203

    if-eq v1, v2, :cond_3

    const/16 v2, 0x205

    if-ne v1, v2, :cond_2

    .line 211
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/hssf/record/BoolErrRecord;

    .line 213
    .local v1, "boolErrRecord":Lorg/apache/poi/hssf/record/BoolErrRecord;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/BoolErrRecord;->isBoolean()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    :goto_0
    return v2

    .line 217
    .end local v1    # "boolErrRecord":Lorg/apache/poi/hssf/record/BoolErrRecord;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad cell value rec ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_3
    const/4 v1, 0x0

    return v1

    .line 208
    :cond_4
    const/4 v1, 0x3

    return v1

    .line 209
    :cond_5
    const/4 v1, 0x1

    return v1
.end method

.method private static getCellTypeName(I)Ljava/lang/String;
    .locals 2
    .param p0, "cellTypeCode"    # I

    .line 633
    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#unknown cell type ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 637
    :cond_0
    const-string v0, "error"

    return-object v0

    .line 636
    :cond_1
    const-string v0, "boolean"

    return-object v0

    .line 634
    :cond_2
    const-string v0, "blank"

    return-object v0

    .line 639
    :cond_3
    const-string v0, "formula"

    return-object v0

    .line 635
    :cond_4
    const-string v0, "text"

    return-object v0

    .line 638
    :cond_5
    const-string v0, "numeric"

    return-object v0
.end method

.method private notifyFormulaChanging()V
    .locals 2

    .line 617
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    instance-of v1, v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    if-eqz v1, :cond_0

    .line 618
    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->notifyFormulaChanging()V

    .line 620
    :cond_0
    return-void
.end method

.method private setCellType(IZISS)V
    .locals 7
    .param p1, "cellType"    # I
    .param p2, "setValue"    # Z
    .param p3, "row"    # I
    .param p4, "col"    # S
    .param p5, "styleIndex"    # S

    .line 298
    const/4 v0, 0x5

    if-gt p1, v0, :cond_12

    .line 302
    const/4 v1, 0x0

    if-eqz p1, :cond_e

    const/4 v2, 0x1

    if-eq p1, v2, :cond_b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/4 v2, 0x3

    if-eq p1, v2, :cond_6

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    if-eq p1, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    move-object v0, v1

    .local v0, "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    move-object v2, v1

    .local v2, "lrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    move-object v3, v1

    .local v3, "brec":Lorg/apache/poi/hssf/record/BlankRecord;
    move-object v4, v1

    .line 407
    .local v1, "nrec":Lorg/apache/poi/hssf/record/NumberRecord;
    .local v4, "boolRec":Lorg/apache/poi/hssf/record/BoolErrRecord;
    const/4 v5, 0x0

    .line 409
    .local v5, "errRec":Lorg/apache/poi/hssf/record/BoolErrRecord;
    iget v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    if-eq p1, v6, :cond_1

    .line 411
    new-instance v6, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-direct {v6}, Lorg/apache/poi/hssf/record/BoolErrRecord;-><init>()V

    move-object v5, v6

    goto :goto_0

    .line 415
    :cond_1
    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-object v5, v6

    check-cast v5, Lorg/apache/poi/hssf/record/BoolErrRecord;

    .line 417
    :goto_0
    invoke-virtual {v5, p4}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setColumn(S)V

    .line 418
    if-eqz p2, :cond_2

    .line 420
    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setValue(B)V

    .line 422
    :cond_2
    invoke-virtual {v5, p5}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setXFIndex(S)V

    .line 423
    invoke-virtual {v5, p3}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setRow(I)V

    .line 424
    iput-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    goto/16 :goto_6

    .line 302
    .end local v0    # "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    .end local v1    # "nrec":Lorg/apache/poi/hssf/record/NumberRecord;
    .end local v2    # "lrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    .end local v3    # "brec":Lorg/apache/poi/hssf/record/BlankRecord;
    .end local v4    # "boolRec":Lorg/apache/poi/hssf/record/BoolErrRecord;
    .end local v5    # "errRec":Lorg/apache/poi/hssf/record/BoolErrRecord;
    :cond_3
    move-object v0, v1

    .restart local v0    # "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    move-object v2, v1

    .restart local v2    # "lrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    move-object v3, v1

    .line 386
    .restart local v1    # "nrec":Lorg/apache/poi/hssf/record/NumberRecord;
    .restart local v3    # "brec":Lorg/apache/poi/hssf/record/BlankRecord;
    const/4 v4, 0x0

    .line 388
    .restart local v4    # "boolRec":Lorg/apache/poi/hssf/record/BoolErrRecord;
    iget v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    if-eq p1, v5, :cond_4

    .line 390
    new-instance v5, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-direct {v5}, Lorg/apache/poi/hssf/record/BoolErrRecord;-><init>()V

    move-object v4, v5

    goto :goto_1

    .line 394
    :cond_4
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-object v4, v5

    check-cast v4, Lorg/apache/poi/hssf/record/BoolErrRecord;

    .line 396
    :goto_1
    invoke-virtual {v4, p4}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setColumn(S)V

    .line 397
    if-eqz p2, :cond_5

    .line 399
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->convertCellValueToBoolean()Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setValue(Z)V

    .line 401
    :cond_5
    invoke-virtual {v4, p5}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setXFIndex(S)V

    .line 402
    invoke-virtual {v4, p3}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setRow(I)V

    .line 403
    iput-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 404
    goto/16 :goto_6

    .line 302
    .end local v0    # "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    .end local v1    # "nrec":Lorg/apache/poi/hssf/record/NumberRecord;
    .end local v2    # "lrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    .end local v3    # "brec":Lorg/apache/poi/hssf/record/BlankRecord;
    .end local v4    # "boolRec":Lorg/apache/poi/hssf/record/BoolErrRecord;
    :cond_6
    move-object v0, v1

    .restart local v0    # "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    move-object v2, v1

    .line 367
    .restart local v1    # "nrec":Lorg/apache/poi/hssf/record/NumberRecord;
    .restart local v2    # "lrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    const/4 v3, 0x0

    .line 369
    .restart local v3    # "brec":Lorg/apache/poi/hssf/record/BlankRecord;
    iget v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    if-eq p1, v4, :cond_7

    .line 371
    new-instance v4, Lorg/apache/poi/hssf/record/BlankRecord;

    invoke-direct {v4}, Lorg/apache/poi/hssf/record/BlankRecord;-><init>()V

    move-object v3, v4

    goto :goto_2

    .line 375
    :cond_7
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-object v3, v4

    check-cast v3, Lorg/apache/poi/hssf/record/BlankRecord;

    .line 377
    :goto_2
    invoke-virtual {v3, p4}, Lorg/apache/poi/hssf/record/BlankRecord;->setColumn(S)V

    .line 380
    invoke-virtual {v3, p5}, Lorg/apache/poi/hssf/record/BlankRecord;->setXFIndex(S)V

    .line 381
    invoke-virtual {v3, p3}, Lorg/apache/poi/hssf/record/BlankRecord;->setRow(I)V

    .line 382
    iput-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 383
    goto/16 :goto_6

    .line 308
    .end local v0    # "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    .end local v1    # "nrec":Lorg/apache/poi/hssf/record/NumberRecord;
    .end local v2    # "lrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    .end local v3    # "brec":Lorg/apache/poi/hssf/record/BlankRecord;
    :cond_8
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    if-eq p1, v0, :cond_9

    .line 309
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getRowsAggregate()Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->createFormula(II)Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    move-result-object v0

    .restart local v0    # "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    goto :goto_3

    .line 311
    .end local v0    # "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    :cond_9
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 312
    .restart local v0    # "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    invoke-virtual {v0, p3}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setRow(I)V

    .line 313
    invoke-virtual {v0, p4}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setColumn(S)V

    .line 315
    :goto_3
    if-eqz p2, :cond_a

    .line 317
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getNumericCellValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/hssf/record/FormulaRecord;->setValue(D)V

    .line 319
    :cond_a
    invoke-virtual {v0, p5}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setXFIndex(S)V

    .line 320
    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 321
    goto/16 :goto_6

    .line 302
    .end local v0    # "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    :cond_b
    move-object v0, v1

    .line 347
    .restart local v0    # "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    .restart local v1    # "nrec":Lorg/apache/poi/hssf/record/NumberRecord;
    iget v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    if-ne p1, v2, :cond_c

    .line 348
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v2, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    .restart local v2    # "lrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    goto :goto_4

    .line 350
    .end local v2    # "lrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    :cond_c
    new-instance v2, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/LabelSSTRecord;-><init>()V

    .line 351
    .restart local v2    # "lrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    invoke-virtual {v2, p4}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->setColumn(S)V

    .line 352
    invoke-virtual {v2, p3}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->setRow(I)V

    .line 353
    invoke-virtual {v2, p5}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->setXFIndex(S)V

    .line 355
    :goto_4
    if-eqz p2, :cond_d

    .line 356
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->convertCellValueToString()Ljava/lang/String;

    move-result-object v3

    .line 357
    .local v3, "str":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v4

    new-instance v5, Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-direct {v5, v3}, Lorg/apache/poi/hssf/record/common/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/model/InternalWorkbook;->addSSTString(Lorg/apache/poi/hssf/record/common/UnicodeString;)I

    move-result v4

    .line 358
    .local v4, "sstIndex":I
    invoke-virtual {v2, v4}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->setSSTIndex(I)V

    .line 359
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSSTString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v5

    .line 360
    .local v5, "us":Lorg/apache/poi/hssf/record/common/UnicodeString;
    new-instance v6, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-direct {v6}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>()V

    iput-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 361
    invoke-virtual {v6, v5}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->setUnicodeString(Lorg/apache/poi/hssf/record/common/UnicodeString;)V

    .line 363
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "sstIndex":I
    .end local v5    # "us":Lorg/apache/poi/hssf/record/common/UnicodeString;
    :cond_d
    iput-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 364
    goto :goto_6

    .line 302
    .end local v0    # "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    .end local v1    # "nrec":Lorg/apache/poi/hssf/record/NumberRecord;
    .end local v2    # "lrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    :cond_e
    move-object v0, v1

    .line 324
    .restart local v0    # "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    const/4 v1, 0x0

    .line 326
    .restart local v1    # "nrec":Lorg/apache/poi/hssf/record/NumberRecord;
    iget v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    if-eq p1, v2, :cond_f

    .line 328
    new-instance v2, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/NumberRecord;-><init>()V

    move-object v1, v2

    goto :goto_5

    .line 332
    :cond_f
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-object v1, v2

    check-cast v1, Lorg/apache/poi/hssf/record/NumberRecord;

    .line 334
    :goto_5
    invoke-virtual {v1, p4}, Lorg/apache/poi/hssf/record/NumberRecord;->setColumn(S)V

    .line 335
    if-eqz p2, :cond_10

    .line 337
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getNumericCellValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/hssf/record/NumberRecord;->setValue(D)V

    .line 339
    :cond_10
    invoke-virtual {v1, p5}, Lorg/apache/poi/hssf/record/NumberRecord;->setXFIndex(S)V

    .line 340
    invoke-virtual {v1, p3}, Lorg/apache/poi/hssf/record/NumberRecord;->setRow(I)V

    .line 341
    iput-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 342
    nop

    .line 427
    .end local v0    # "frec":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    .end local v1    # "nrec":Lorg/apache/poi/hssf/record/NumberRecord;
    :goto_6
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    if-eq p1, v0, :cond_11

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    .line 430
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->replaceValueRecord(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    .line 432
    :cond_11
    iput p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    .line 433
    return-void

    .line 300
    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "I have no idea what type that is!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static typeMismatch(IIZ)Ljava/lang/RuntimeException;
    .locals 2
    .param p0, "expectedTypeCode"    # I
    .param p1, "actualTypeCode"    # I
    .param p2, "isFormulaCell"    # Z

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value from a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, "formula "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cell"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 648
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 4

    .line 1143
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1148
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0

    .line 1144
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/util/CellReference;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v0

    .line 1145
    .local v0, "ref":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cell "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not part of an array formula."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBooleanCellValue()Z
    .locals 4

    .line 857
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    .line 861
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getBooleanValue()Z

    move-result v0

    return v0

    .line 863
    :cond_0
    invoke-static {v2, v0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->typeMismatch(IIZ)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 859
    :cond_1
    return v3

    .line 867
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v0

    .line 868
    .local v0, "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    invoke-static {v2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->checkFormulaCachedValueType(ILorg/apache/poi/hssf/record/FormulaRecord;)V

    .line 869
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedBooleanValue()Z

    move-result v1

    return v1
.end method

.method protected getBoundWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    return-object v0
.end method

.method public getCachedFormulaResultType()I
    .locals 2

    .line 1124
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1127
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedResultType()I

    move-result v0

    return v0

    .line 1125
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only formula cells have cached results"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCellComment()Lorg/apache/poi/hssf/usermodel/HSSFComment;
    .locals 3

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

    .line 70
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellComment()Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object v0

    return-object v0
.end method

.method public getCellFormula()Ljava/lang/String;
    .locals 3

    .line 623
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    instance-of v1, v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    if-eqz v1, :cond_0

    .line 626
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->toFormulaString(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 624
    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->typeMismatch(IIZ)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getCellNum()S
    .locals 1

    .line 257
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getColumnIndex()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getCellStyle()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    .locals 4

    .line 929
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v0

    .line 930
    .local v0, "styleIndex":S
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

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

    .line 70
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellStyle()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    move-result-object v0

    return-object v0
.end method

.method public getCellType()I
    .locals 1

    .line 446
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    return v0
.end method

.method protected getCellValueRecord()Lorg/apache/poi/hssf/record/CellValueRecordInterface;
    .locals 1

    .line 942
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    return-object v0
.end method

.method public getColumnIndex()I
    .locals 2

    .line 261
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getDateCellValue()Ljava/util/Date;
    .locals 3

    .line 691
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 692
    const/4 v0, 0x0

    return-object v0

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

    return-object v2

    .line 698
    :cond_1
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFDateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public getErrorCellValue()B
    .locals 3

    .line 877
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    const/4 v1, 0x2

    const/4 v2, 0x5

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    .line 879
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getErrorValue()B

    move-result v0

    return v0

    .line 881
    :cond_0
    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->typeMismatch(IIZ)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 885
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v0

    .line 886
    .local v0, "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    invoke-static {v2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->checkFormulaCachedValueType(ILorg/apache/poi/hssf/record/FormulaRecord;)V

    .line 887
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedErrorValue()I

    move-result v1

    int-to-byte v1, v1

    return v1
.end method

.method public getHyperlink()Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;
    .locals 5

    .line 1052
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/RecordBase;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1053
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/RecordBase;

    .line 1054
    .local v1, "rec":Lorg/apache/poi/hssf/record/RecordBase;
    instance-of v2, v1, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    if-eqz v2, :cond_0

    .line 1055
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    .line 1056
    .local v2, "link":Lorg/apache/poi/hssf/record/HyperlinkRecord;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getFirstColumn()I

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v4}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getFirstRow()I

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v4}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1057
    new-instance v3, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    invoke-direct {v3, v2}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;-><init>(Lorg/apache/poi/hssf/record/HyperlinkRecord;)V

    return-object v3

    .line 1060
    .end local v1    # "rec":Lorg/apache/poi/hssf/record/RecordBase;
    .end local v2    # "link":Lorg/apache/poi/hssf/record/HyperlinkRecord;
    :cond_0
    goto :goto_0

    .line 1061
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/RecordBase;>;"
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getHyperlink()Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getHyperlink()Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    move-result-object v0

    return-object v0
.end method

.method public getNumericCellValue()D
    .locals 3

    .line 667
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 669
    const-wide/16 v0, 0x0

    return-wide v0

    .line 673
    :cond_0
    invoke-static {v2, v0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->typeMismatch(IIZ)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 677
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v0

    .line 678
    .local v0, "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    invoke-static {v2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->checkFormulaCachedValueType(ILorg/apache/poi/hssf/record/FormulaRecord;)V

    .line 679
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getValue()D

    move-result-wide v1

    return-wide v1

    .line 671
    .end local v0    # "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NumberRecord;->getValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getRichStringCellValue()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    .locals 4

    .line 719
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    const-string v3, ""

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 721
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-direct {v0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 725
    :cond_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->typeMismatch(IIZ)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 729
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 730
    .local v0, "fra":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->checkFormulaCachedValueType(ILorg/apache/poi/hssf/record/FormulaRecord;)V

    .line 731
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getStringValue()Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, "strVal":Ljava/lang/String;
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    invoke-direct {v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 723
    .end local v0    # "fra":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    return-object v0
.end method

.method public bridge synthetic getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getRichStringCellValue()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object v0

    return-object v0
.end method

.method public getRow()Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .locals 2

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

    .line 70
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getRow()Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v0

    return-object v0
.end method

.method public getRowIndex()I
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v0

    return v0
.end method

.method public getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    return-object v0
.end method

.method public bridge synthetic getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getStringCellValue()Ljava/lang/String;
    .locals 2

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

    .line 1152
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1153
    const/4 v0, 0x0

    return v0

    .line 1155
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->isPartOfArrayFormula()Z

    move-result v0

    return v0
.end method

.method notifyArrayFormulaChanging()V
    .locals 3

    .line 1187
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/util/CellReference;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    .line 1188
    .local v0, "ref":Lorg/apache/poi/ss/util/CellReference;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cell "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is part of a multi-cell array formula. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "You cannot change part of an array."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1190
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->notifyArrayFormulaChanging(Ljava/lang/String;)V

    .line 1191
    return-void
.end method

.method notifyArrayFormulaChanging(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1164
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    .line 1165
    .local v0, "cra":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getNumberOfCells()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 1169
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getRow()Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->removeArrayFormula(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellRange;

    .line 1170
    return-void

    .line 1166
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeCellComment()V
    .locals 3

    .line 1040
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v2}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->findCellComment(II)Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object v0

    .line 1041
    .local v0, "comment":Lorg/apache/poi/hssf/usermodel/HSSFComment;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_comment:Lorg/apache/poi/hssf/usermodel/HSSFComment;

    .line 1042
    if-nez v0, :cond_0

    .line 1043
    return-void

    .line 1045
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->removeShape(Lorg/apache/poi/hssf/usermodel/HSSFShape;)Z

    .line 1046
    return-void
.end method

.method public removeHyperlink()V
    .locals 5

    .line 1105
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/RecordBase;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/RecordBase;

    .line 1107
    .local v1, "rec":Lorg/apache/poi/hssf/record/RecordBase;
    instance-of v2, v1, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    if-eqz v2, :cond_0

    .line 1108
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    .line 1109
    .local v2, "link":Lorg/apache/poi/hssf/record/HyperlinkRecord;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getFirstColumn()I

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v4}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getFirstRow()I

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v4}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1110
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1111
    return-void

    .line 1114
    .end local v1    # "rec":Lorg/apache/poi/hssf/record/RecordBase;
    .end local v2    # "link":Lorg/apache/poi/hssf/record/HyperlinkRecord;
    :cond_0
    goto :goto_0

    .line 1115
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/RecordBase;>;"
    :cond_1
    return-void
.end method

.method public setAsActiveCell()V
    .locals 3

    .line 961
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v0

    .line 962
    .local v0, "row":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v1

    .line 963
    .local v1, "col":S
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/model/InternalSheet;->setActiveCellRow(I)V

    .line 964
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->setActiveCellCol(S)V

    .line 965
    return-void
.end method

.method setCellArrayFormula(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 9
    .param p1, "range"    # Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 1131
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v0

    .line 1132
    .local v0, "row":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v7

    .line 1133
    .local v7, "col":S
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v8

    .line 1134
    .local v8, "styleIndex":S
    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object v1, p0

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(IZISS)V

    .line 1137
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    new-instance v2, Lorg/apache/poi/ss/formula/ptg/ExpPtg;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/ss/formula/ptg/ExpPtg;-><init>(II)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1138
    .local v1, "ptgsForCell":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v2, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 1139
    .local v2, "agg":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setParsedExpression([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 1140
    return-void
.end method

.method public setCellComment(Lorg/apache/poi/ss/usermodel/Comment;)V
    .locals 1
    .param p1, "comment"    # Lorg/apache/poi/ss/usermodel/Comment;

    .line 1011
    if-nez p1, :cond_0

    .line 1012
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->removeCellComment()V

    .line 1013
    return-void

    .line 1016
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
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_comment:Lorg/apache/poi/hssf/usermodel/HSSFComment;

    .line 1019
    return-void
.end method

.method public setCellErrorValue(B)V
    .locals 9
    .param p1, "errorCode"    # B

    .line 768
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v0

    .line 769
    .local v0, "row":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v7

    .line 770
    .local v7, "col":S
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v8

    .line 771
    .local v8, "styleIndex":S
    iget v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 773
    const/4 v2, 0x5

    const/4 v3, 0x0

    move-object v1, p0

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(IZISS)V

    .line 775
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v1, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setValue(B)V

    .line 776
    goto :goto_0

    .line 778
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setCachedErrorResult(I)V

    .line 781
    :goto_0
    return-void
.end method

.method public setCellFormula(Ljava/lang/String;)V
    .locals 11
    .param p1, "formula"    # Ljava/lang/String;

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

    move-result v0

    .line 590
    .local v0, "row":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v7

    .line 591
    .local v7, "col":S
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v8

    .line 593
    .local v8, "styleIndex":S
    if-nez p1, :cond_1

    .line 594
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->notifyFormulaChanging()V

    .line 595
    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object v1, p0

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(IZISS)V

    .line 596
    return-void

    .line 598
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v9

    .line 599
    .local v9, "sheetIndex":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v9}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v10

    .line 600
    .local v10, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object v1, p0

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(IZISS)V

    .line 601
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 602
    .local v1, "agg":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaRecord()Lorg/apache/poi/hssf/record/FormulaRecord;

    move-result-object v2

    .line 603
    .local v2, "frec":Lorg/apache/poi/hssf/record/FormulaRecord;
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/FormulaRecord;->setOptions(S)V

    .line 604
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/hssf/record/FormulaRecord;->setValue(D)V

    .line 607
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getXFIndex()S

    move-result v3

    if-nez v3, :cond_2

    .line 608
    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setXFIndex(S)V

    .line 610
    :cond_2
    invoke-virtual {v1, v10}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setParsedExpression([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 611
    return-void
.end method

.method public setCellNum(S)V
    .locals 1
    .param p1, "num"    # S

    .line 240
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0, p1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->setColumn(S)V

    .line 241
    return-void
.end method

.method public setCellStyle(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)V
    .locals 2
    .param p1, "style"    # Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    .line 903
    if-nez p1, :cond_0

    .line 904
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->setXFIndex(S)V

    .line 905
    return-void

    .line 909
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->verifyBelongsToWorkbook(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    .line 912
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getUserStyleName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 913
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->applyUserCellStyle(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)S

    move-result v0

    .local v0, "styleIndex":S
    goto :goto_0

    .line 915
    .end local v0    # "styleIndex":S
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getIndex()S

    move-result v0

    .line 919
    .restart local v0    # "styleIndex":S
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1, v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->setXFIndex(S)V

    .line 920
    return-void
.end method

.method public setCellStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 1
    .param p1, "style"    # Lorg/apache/poi/ss/usermodel/CellStyle;

    .line 899
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellStyle(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)V

    .line 900
    return-void
.end method

.method public setCellType(I)V
    .locals 9
    .param p1, "cellType"    # I

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

    move-result v0

    .line 281
    .local v0, "row":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v7

    .line 282
    .local v7, "col":S
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v8

    .line 283
    .local v8, "styleIndex":S
    const/4 v3, 0x1

    move-object v1, p0

    move v2, p1

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(IZISS)V

    .line 284
    return-void
.end method

.method public setCellValue(D)V
    .locals 9
    .param p1, "value"    # D

    .line 457
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    sget-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->DIV0:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellErrorValue(B)V

    goto :goto_1

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

    goto :goto_1

    .line 466
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v0

    .line 467
    .local v0, "row":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v7

    .line 468
    .local v7, "col":S
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v8

    .line 470
    .local v8, "styleIndex":S
    iget v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 472
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(IZISS)V

    goto :goto_0

    .line 477
    :cond_2
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setCachedDoubleResult(D)V

    goto :goto_1

    .line 474
    :cond_3
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v1, Lorg/apache/poi/hssf/record/NumberRecord;

    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/hssf/record/NumberRecord;->setValue(D)V

    .line 475
    nop

    .line 482
    .end local v0    # "row":I
    .end local v7    # "col":S
    .end local v8    # "styleIndex":S
    :goto_1
    return-void
.end method

.method public setCellValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 526
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    .line 527
    .local v0, "str":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    .line 528
    return-void
.end method

.method public setCellValue(Ljava/util/Calendar;)V
    .locals 2
    .param p1, "value"    # Ljava/util/Calendar;

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
    .locals 9
    .param p1, "value"    # Lorg/apache/poi/ss/usermodel/RichTextString;

    .line 541
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v0

    .line 542
    .local v0, "row":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v7

    .line 543
    .local v7, "col":S
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v8

    .line 544
    .local v8, "styleIndex":S
    if-nez p1, :cond_0

    .line 546
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->notifyFormulaChanging()V

    .line 547
    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object v1, p0

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(IZISS)V

    .line 548
    return-void

    .line 551
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/RichTextString;->length()I

    move-result v1

    sget-object v2, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v2}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxTextLength()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 555
    iget v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 558
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 559
    .local v1, "fr":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setCachedStringResult(Ljava/lang/String;)V

    .line 561
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 564
    return-void

    .line 570
    .end local v1    # "fr":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    :cond_1
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 571
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(IZISS)V

    .line 573
    :cond_2
    const/4 v1, 0x0

    .line 575
    .local v1, "index":I
    move-object v2, p1

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 576
    .local v2, "hvalue":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getUnicodeString()Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v3

    .line 577
    .local v3, "str":Lorg/apache/poi/hssf/record/common/UnicodeString;
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->addSSTString(Lorg/apache/poi/hssf/record/common/UnicodeString;)I

    move-result v1

    .line 578
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v4, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-virtual {v4, v1}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->setSSTIndex(I)V

    .line 579
    iput-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 580
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v5, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-virtual {v2, v4, v5}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->setWorkbookReferences(Lorg/apache/poi/hssf/model/InternalWorkbook;Lorg/apache/poi/hssf/record/LabelSSTRecord;)V

    .line 581
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_stringValue:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSSTString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->setUnicodeString(Lorg/apache/poi/hssf/record/common/UnicodeString;)V

    .line 582
    return-void

    .line 552
    .end local v1    # "index":I
    .end local v2    # "hvalue":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    .end local v3    # "str":Lorg/apache/poi/hssf/record/common/UnicodeString;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The maximum length of cell contents (text) is 32,767 characters"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setCellValue(Z)V
    .locals 9
    .param p1, "value"    # Z

    .line 743
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v0

    .line 744
    .local v0, "row":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v7

    .line 745
    .local v7, "col":S
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v8

    .line 747
    .local v8, "styleIndex":S
    iget v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_cellType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 749
    const/4 v2, 0x4

    const/4 v3, 0x0

    move-object v1, p0

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellType(IZISS)V

    .line 751
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v1, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setValue(Z)V

    .line 752
    goto :goto_0

    .line 754
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setCachedBooleanResult(Z)V

    .line 757
    :goto_0
    return-void
.end method

.method public setHyperlink(Lorg/apache/poi/ss/usermodel/Hyperlink;)V
    .locals 4
    .param p1, "hyperlink"    # Lorg/apache/poi/ss/usermodel/Hyperlink;

    .line 1071
    if-nez p1, :cond_0

    .line 1072
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->removeHyperlink()V

    .line 1073
    return-void

    .line 1076
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    .line 1078
    .local v0, "link":Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setFirstRow(I)V

    .line 1079
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setLastRow(I)V

    .line 1080
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setFirstColumn(I)V

    .line 1081
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setLastColumn(I)V

    .line 1083
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 1089
    :cond_1
    const-string v1, "file"

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setLabel(Ljava/lang/String;)V

    .line 1090
    goto :goto_0

    .line 1092
    :cond_2
    const-string v1, "place"

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 1086
    :cond_3
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setLabel(Ljava/lang/String;)V

    .line 1087
    nop

    .line 1096
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v1

    .line 1097
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/RecordBase;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .line 1098
    .local v3, "eofLoc":I
    iget-object v2, v0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1099
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 980
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellType()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Cell Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 986
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    check-cast v0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getErrorValue()B

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 984
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getBooleanCellValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "TRUE"

    goto :goto_0

    :cond_2
    const-string v0, "FALSE"

    :goto_0
    return-object v0

    .line 982
    :cond_3
    const-string v0, ""

    return-object v0

    .line 988
    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellFormula()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 997
    :cond_5
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getStringCellValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 991
    :cond_6
    invoke-static {p0}, Lorg/apache/poi/hssf/usermodel/HSSFDateUtil;->isCellDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;)Z

    move-result v0

    if-eqz v0, :cond_7

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

    return-object v1

    .line 995
    .end local v0    # "sdf":Ljava/text/DateFormat;
    :cond_7
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getNumericCellValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateCellNum(S)V
    .locals 1
    .param p1, "num"    # S

    .line 250
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCell;->_record:Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-interface {v0, p1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->setColumn(S)V

    .line 251
    return-void
.end method
