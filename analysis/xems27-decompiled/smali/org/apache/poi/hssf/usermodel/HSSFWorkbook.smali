.class public final Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
.super Lorg/apache/poi/POIDocument;
.source "HSSFWorkbook.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Workbook;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;
    }
.end annotation


# static fields
.field private static final COMMA_PATTERN:Ljava/util/regex/Pattern;

.field private static final DEBUG:I = 0x1

.field public static final INITIAL_CAPACITY:I

.field private static final MAX_STYLES:I = 0xfbe

.field private static final WORKBOOK_DIR_ENTRY_NAMES:[Ljava/lang/String;

.field private static log:Lorg/apache/poi/util/POILogger;


# instance fields
.field protected _sheets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFSheet;",
            ">;"
        }
    .end annotation
.end field

.field private _udfFinder:Lorg/apache/poi/ss/formula/udf/UDFFinder;

.field private fonts:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Short;",
            "Lorg/apache/poi/hssf/usermodel/HSSFFont;",
            ">;"
        }
    .end annotation
.end field

.field private formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

.field private missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

.field private names:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/hssf/usermodel/HSSFName;",
            ">;"
        }
    .end annotation
.end field

.field private preserveNodes:Z

.field private workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 102
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    .line 123
    const-string v0, "HSSFWorkbook.SheetInitialCapacity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/apache/poi/util/Configurator;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->INITIAL_CAPACITY:I

    .line 170
    const-class v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->log:Lorg/apache/poi/util/POILogger;

    .line 231
    const-string v0, "Workbook"

    const-string v1, "WORKBOOK"

    const-string v2, "BOOK"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->WORKBOOK_DIR_ENTRY_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 186
    invoke-static {}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    .line 187
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Ljava/io/InputStream;Z)V

    .line 365
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1
    .param p1, "s"    # Ljava/io/InputStream;
    .param p2, "preserveNodes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Z)V

    .line 383
    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/hssf/model/InternalWorkbook;)V
    .locals 4
    .param p1, "book"    # Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 190
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-direct {p0, v0}, Lorg/apache/poi/POIDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 168
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->RETURN_NULL_AND_BLANK:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    .line 176
    new-instance v0, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/poi/ss/formula/udf/UDFFinder;

    sget-object v2, Lorg/apache/poi/ss/formula/udf/UDFFinder;->DEFAULT:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;-><init>([Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_udfFinder:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .line 191
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->INITIAL_CAPACITY:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->INITIAL_CAPACITY:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    .line 194
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Z)V
    .locals 0
    .param p1, "directory"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .param p2, "fs"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .param p3, "preserveNodes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    invoke-direct {p0, p1, p3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Z)V

    .line 290
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Z)V
    .locals 10
    .param p1, "directory"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .param p2, "preserveNodes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    invoke-direct {p0, p1}, Lorg/apache/poi/POIDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 168
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->RETURN_NULL_AND_BLANK:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    .line 176
    new-instance v0, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/poi/ss/formula/udf/UDFFinder;

    sget-object v2, Lorg/apache/poi/ss/formula/udf/UDFFinder;->DEFAULT:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;-><init>([Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_udfFinder:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .line 309
    invoke-static {p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbookDirEntryName(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "workbookName":Ljava/lang/String;
    iput-boolean p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->preserveNodes:Z

    .line 315
    if-nez p2, :cond_0

    .line 316
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 319
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    sget v2, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->INITIAL_CAPACITY:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    .line 320
    new-instance v1, Ljava/util/ArrayList;

    sget v2, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->INITIAL_CAPACITY:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    .line 324
    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v1

    .line 326
    .local v1, "stream":Ljava/io/InputStream;
    invoke-static {v1}, Lorg/apache/poi/hssf/record/RecordFactory;->createRecords(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v2

    .line 328
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    invoke-static {v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createWorkbook(Ljava/util/List;)Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 329
    invoke-direct {p0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setPropertiesFromWorkbook(Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    .line 330
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumRecords()I

    move-result v3

    .line 333
    .local v3, "recOffset":I
    invoke-direct {p0, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->convertLabelRecords(Ljava/util/List;I)V

    .line 334
    new-instance v4, Lorg/apache/poi/hssf/model/RecordStream;

    invoke-direct {v4, v2, v3}, Lorg/apache/poi/hssf/model/RecordStream;-><init>(Ljava/util/List;I)V

    .line 335
    .local v4, "rs":Lorg/apache/poi/hssf/model/RecordStream;
    :goto_0
    invoke-virtual {v4}, Lorg/apache/poi/hssf/model/RecordStream;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 337
    :try_start_0
    invoke-static {v4}, Lorg/apache/poi/hssf/model/InternalSheet;->createSheet(Lorg/apache/poi/hssf/model/RecordStream;)Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v5

    .line 338
    .local v5, "sheet":Lorg/apache/poi/hssf/model/InternalSheet;
    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    new-instance v7, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v7, p0, v5}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/model/InternalSheet;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/poi/hssf/model/InternalSheet$UnsupportedBOFType; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    nop

    .end local v5    # "sheet":Lorg/apache/poi/hssf/model/InternalSheet;
    goto :goto_0

    .line 339
    :catch_0
    move-exception v5

    .line 341
    .local v5, "eb":Lorg/apache/poi/hssf/model/InternalSheet$UnsupportedBOFType;
    sget-object v6, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->log:Lorg/apache/poi/util/POILogger;

    const/4 v7, 0x5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported BOF found of type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/apache/poi/hssf/model/InternalSheet$UnsupportedBOFType;->getType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 342
    .end local v5    # "eb":Lorg/apache/poi/hssf/model/InternalSheet$UnsupportedBOFType;
    goto :goto_0

    .line 345
    :cond_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v6}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumNames()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 346
    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v6, v5}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v6

    .line 347
    .local v6, "nameRecord":Lorg/apache/poi/hssf/record/NameRecord;
    new-instance v7, Lorg/apache/poi/hssf/usermodel/HSSFName;

    iget-object v8, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v8, v6}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameCommentRecord(Lorg/apache/poi/hssf/record/NameRecord;)Lorg/apache/poi/hssf/record/NameCommentRecord;

    move-result-object v8

    invoke-direct {v7, p0, v6, v8}, Lorg/apache/poi/hssf/usermodel/HSSFName;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/NameRecord;Lorg/apache/poi/hssf/record/NameCommentRecord;)V

    .line 348
    .local v7, "name":Lorg/apache/poi/hssf/usermodel/HSSFName;
    iget-object v8, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    .end local v6    # "nameRecord":Lorg/apache/poi/hssf/record/NameRecord;
    .end local v7    # "name":Lorg/apache/poi/hssf/usermodel/HSSFName;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 350
    .end local v5    # "i":I
    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Z)V

    .line 208
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Z)V
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .param p2, "preserveNodes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Z)V

    .line 225
    return-void
.end method

.method private convertLabelRecords(Ljava/util/List;I)V
    .locals 8
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;I)V"
        }
    .end annotation

    .line 415
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->log:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->log:Lorg/apache/poi/util/POILogger;

    const-string v2, "convertLabelRecords called"

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 417
    :cond_0
    move v0, p2

    .local v0, "k":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 419
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/Record;

    .line 421
    .local v2, "rec":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v3

    const/16 v4, 0x204

    if-ne v3, v4, :cond_1

    .line 423
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/hssf/record/LabelRecord;

    .line 425
    .local v3, "oldrec":Lorg/apache/poi/hssf/record/LabelRecord;
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 426
    new-instance v4, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-direct {v4}, Lorg/apache/poi/hssf/record/LabelSSTRecord;-><init>()V

    .line 427
    .local v4, "newrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    new-instance v6, Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/LabelRecord;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/poi/hssf/record/common/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lorg/apache/poi/hssf/model/InternalWorkbook;->addSSTString(Lorg/apache/poi/hssf/record/common/UnicodeString;)I

    move-result v5

    .line 430
    .local v5, "stringid":I
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/LabelRecord;->getRow()I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->setRow(I)V

    .line 431
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/LabelRecord;->getColumn()S

    move-result v6

    invoke-virtual {v4, v6}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->setColumn(S)V

    .line 432
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/LabelRecord;->getXFIndex()S

    move-result v6

    invoke-virtual {v4, v6}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->setXFIndex(S)V

    .line 433
    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->setSSTIndex(I)V

    .line 434
    invoke-interface {p1, v0, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 417
    .end local v2    # "rec":Lorg/apache/poi/hssf/record/Record;
    .end local v3    # "oldrec":Lorg/apache/poi/hssf/record/LabelRecord;
    .end local v4    # "newrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    .end local v5    # "stringid":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 437
    .end local v0    # "k":I
    :cond_2
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 438
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->log:Lorg/apache/poi/util/POILogger;

    const-string v2, "convertLabelRecords exit"

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 439
    :cond_3
    return-void
.end method

.method public static create(Lorg/apache/poi/hssf/model/InternalWorkbook;)Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .locals 1
    .param p0, "book"    # Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 179
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    return-object v0
.end method

.method private getAllEmbeddedObjects(Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;Ljava/util/List;)V
    .locals 3
    .param p1, "parent"    # Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFObjectData;",
            ">;)V"
        }
    .end annotation

    .line 1949
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/usermodel/HSSFObjectData;>;"
    invoke-interface {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFShape;

    .line 1950
    .local v1, "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    instance-of v2, v1, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;

    if-eqz v2, :cond_0

    .line 1951
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFObjectData;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1952
    :cond_0
    instance-of v2, v1, Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;

    if-eqz v2, :cond_1

    .line 1953
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;

    invoke-direct {p0, v2, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getAllEmbeddedObjects(Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;Ljava/util/List;)V

    .line 1955
    .end local v1    # "shape":Lorg/apache/poi/hssf/usermodel/HSSFShape;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1956
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private getAllEmbeddedObjects(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Ljava/util/List;)V
    .locals 1
    .param p1, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hssf/usermodel/HSSFSheet;",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFObjectData;",
            ">;)V"
        }
    .end annotation

    .line 1935
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/usermodel/HSSFObjectData;>;"
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    .line 1936
    .local v0, "patriarch":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    if-nez v0, :cond_0

    .line 1937
    return-void

    .line 1939
    :cond_0
    invoke-direct {p0, v0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getAllEmbeddedObjects(Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;Ljava/util/List;)V

    .line 1940
    return-void
.end method

.method protected static getOleMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/hpsf/ClassID;",
            ">;"
        }
    .end annotation

    .line 1818
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1819
    .local v0, "olemap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/hpsf/ClassID;>;"
    sget-object v1, Lorg/apache/poi/hpsf/ClassID;->PPT_SHOW:Lorg/apache/poi/hpsf/ClassID;

    const-string v2, "PowerPoint Document"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1820
    sget-object v1, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->WORKBOOK_DIR_ENTRY_NAMES:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 1821
    .local v4, "str":Ljava/lang/String;
    sget-object v5, Lorg/apache/poi/hpsf/ClassID;->XLS_WORKBOOK:Lorg/apache/poi/hpsf/ClassID;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1820
    .end local v4    # "str":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1824
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    return-object v0
.end method

.method private getSheets()[Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 2

    .line 901
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 902
    .local v0, "result":[Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 903
    return-object v0
.end method

.method private getUniqueSheetName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "srcName"    # Ljava/lang/String;

    .line 788
    const/4 v0, 0x2

    .line 789
    .local v0, "uniqueIndex":I
    move-object v1, p1

    .line 790
    .local v1, "baseName":Ljava/lang/String;
    const/16 v2, 0x28

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 791
    .local v2, "bracketPos":I
    const/4 v3, 0x0

    const-string v4, ")"

    if-lez v2, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 792
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 794
    .local v5, "suffix":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v0, v6

    .line 795
    add-int/lit8 v0, v0, 0x1

    .line 796
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v6

    .line 799
    goto :goto_0

    .line 797
    :catch_0
    move-exception v6

    .line 803
    .end local v5    # "suffix":Ljava/lang/String;
    :cond_0
    :goto_0
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "uniqueIndex":I
    .local v5, "uniqueIndex":I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 805
    .local v0, "index":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x2

    const/16 v7, 0x1f

    if-ge v6, v7, :cond_1

    .line 806
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "name":Ljava/lang/String;
    goto :goto_1

    .line 808
    .end local v6    # "name":Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 812
    .restart local v6    # "name":Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v7, v6}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 813
    return-object v6

    .line 815
    .end local v0    # "index":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    :cond_2
    move v0, v5

    goto :goto_0
.end method

.method public static getWorkbookDirEntryName(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/lang/String;
    .locals 3
    .param p0, "directory"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 240
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->WORKBOOK_DIR_ENTRY_NAMES:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 241
    aget-object v1, v1, v0

    .line 243
    .local v1, "wbName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    return-object v1

    .line 245
    :catch_0
    move-exception v2

    .line 240
    .end local v1    # "wbName":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    .end local v0    # "i":I
    :cond_0
    :try_start_1
    const-string v0, "EncryptedPackage"

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    .line 253
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "The supplied spreadsheet seems to be an Encrypted .xlsx file. It must be decrypted before use by XSSF, it cannot be used by HSSF"

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "directory":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    throw v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 255
    .restart local p0    # "directory":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    :catch_1
    move-exception v0

    .line 261
    :try_start_2
    const-string v0, "Book"

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    .line 262
    new-instance v0, Lorg/apache/poi/hssf/OldExcelFormatException;

    const-string v1, "The supplied spreadsheet seems to be Excel 5.0/7.0 (BIFF5) format. POI only supports BIFF8 format (from Excel versions 97/2000/XP/2003)"

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/OldExcelFormatException;-><init>(Ljava/lang/String;)V

    .end local p0    # "directory":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    throw v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 264
    .restart local p0    # "directory":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    :catch_2
    move-exception v0

    .line 268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The supplied POIFSFileSystem does not contain a BIFF8 \'Workbook\' entry. Is it really an excel file?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private searchForPictures(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFPictureData;",
            ">;)V"
        }
    .end annotation

    .line 1796
    .local p1, "escherRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherRecord;>;"
    .local p2, "pictures":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/usermodel/HSSFPictureData;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherRecord;

    .line 1798
    .local v1, "escherRecord":Lorg/apache/poi/ddf/EscherRecord;
    instance-of v2, v1, Lorg/apache/poi/ddf/EscherBSERecord;

    if-eqz v2, :cond_0

    .line 1800
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/ddf/EscherBSERecord;

    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherBSERecord;->getBlipRecord()Lorg/apache/poi/ddf/EscherBlipRecord;

    move-result-object v2

    .line 1801
    .local v2, "blip":Lorg/apache/poi/ddf/EscherBlipRecord;
    if-eqz v2, :cond_0

    .line 1804
    new-instance v3, Lorg/apache/poi/hssf/usermodel/HSSFPictureData;

    invoke-direct {v3, v2}, Lorg/apache/poi/hssf/usermodel/HSSFPictureData;-><init>(Lorg/apache/poi/ddf/EscherBlipRecord;)V

    .line 1805
    .local v3, "picture":Lorg/apache/poi/hssf/usermodel/HSSFPictureData;
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1812
    .end local v2    # "blip":Lorg/apache/poi/ddf/EscherBlipRecord;
    .end local v3    # "picture":Lorg/apache/poi/hssf/usermodel/HSSFPictureData;
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherRecord;->getChildRecords()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->searchForPictures(Ljava/util/List;Ljava/util/List;)V

    .line 1813
    .end local v1    # "escherRecord":Lorg/apache/poi/ddf/EscherRecord;
    goto :goto_0

    .line 1815
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private setPropertiesFromWorkbook(Lorg/apache/poi/hssf/model/InternalWorkbook;)V
    .locals 0
    .param p1, "book"    # Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 391
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 394
    return-void
.end method

.method private validateSheetIndex(I)V
    .locals 5
    .param p1, "index"    # I

    .line 502
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 503
    .local v0, "lastSheetIx":I
    if-ltz p1, :cond_1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 511
    :cond_0
    return-void

    .line 504
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, "range":Ljava/lang/String;
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 506
    const-string v1, "(no sheets)"

    .line 508
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sheet index ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") is out of range "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public addOlePackage(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "poiData"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1829
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    .line 1830
    .local v0, "root":Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    invoke-static {}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getOleMap()Ljava/util/Map;

    move-result-object v1

    .line 1831
    .local v1, "olemap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/hpsf/ClassID;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1832
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/poi/hpsf/ClassID;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1833
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {v0, v4}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    .line 1834
    goto :goto_1

    .line 1836
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/poi/hpsf/ClassID;>;"
    :cond_0
    goto :goto_0

    .line 1838
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1839
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1, v2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V

    .line 1840
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3, p4}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->addOlePackage([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public addOlePackage([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "oleData"    # [B
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1846
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1847
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>()V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 1848
    iput-boolean v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->preserveNodes:Z

    .line 1852
    :cond_0
    const/4 v0, 0x0

    .line 1853
    .local v0, "storageId":I
    const/4 v2, 0x0

    .line 1855
    .local v2, "oleDir":Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MBD"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-static {v0}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1856
    .local v3, "storageStr":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v4, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1857
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v4, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDirectory(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v2

    .line 1858
    sget-object v4, Lorg/apache/poi/hpsf/ClassID;->OLE10_PACKAGE:Lorg/apache/poi/hpsf/ClassID;

    invoke-interface {v2, v4}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    .line 1860
    .end local v3    # "storageStr":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    .line 1865
    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    .line 1866
    .local v1, "oleBytes":[B
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v4, "\u0001Ole"

    invoke-interface {v2, v4, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 1868
    new-instance v3, Lorg/apache/poi/poifs/filesystem/Ole10Native;

    invoke-direct {v3, p2, p3, p4, p1}, Lorg/apache/poi/poifs/filesystem/Ole10Native;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 1869
    .local v3, "oleNative":Lorg/apache/poi/poifs/filesystem/Ole10Native;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1870
    .local v4, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v3, v4}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->writeOut(Ljava/io/OutputStream;)V

    .line 1871
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v6, "\u0001Ole10Native"

    invoke-interface {v2, v6, v5}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 1873
    return v0

    .line 1860
    .end local v1    # "oleBytes":[B
    .end local v3    # "oleNative":Lorg/apache/poi/poifs/filesystem/Ole10Native;
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_2
    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public addPicture([BI)I
    .locals 9
    .param p1, "pictureData"    # [B
    .param p2, "format"    # I

    .line 1690
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->initDrawings()V

    .line 1692
    invoke-static {p1}, Lorg/apache/commons/codec/digest/DigestUtils;->md5([B)[B

    move-result-object v0

    .line 1696
    .local v0, "uid":[B
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p2, v1, :cond_1

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    move v3, v2

    .local v3, "escherTag":S
    const/4 v4, 0x0

    move-object v5, v4

    .local v4, "blipRecordMeta":Lorg/apache/poi/ddf/EscherMetafileBlip;
    .local v5, "blipRecord":Lorg/apache/poi/ddf/EscherBlipRecord;
    move v6, v2

    .line 1717
    .local v6, "blipSize":I
    new-instance v7, Lorg/apache/poi/ddf/EscherBitmapBlip;

    invoke-direct {v7}, Lorg/apache/poi/ddf/EscherBitmapBlip;-><init>()V

    .line 1718
    .local v7, "blipRecordBitmap":Lorg/apache/poi/ddf/EscherBitmapBlip;
    move-object v5, v7

    .line 1719
    invoke-virtual {v7, v0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->setUID([B)V

    .line 1720
    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lorg/apache/poi/ddf/EscherBitmapBlip;->setMarker(B)V

    .line 1721
    invoke-virtual {v7, p1}, Lorg/apache/poi/ddf/EscherBitmapBlip;->setPictureData([B)V

    .line 1722
    array-length v8, p1

    add-int/lit8 v8, v8, 0x19

    .line 1723
    .end local v6    # "blipSize":I
    .local v8, "blipSize":I
    const/16 v3, 0xff

    goto :goto_0

    .line 1700
    .end local v3    # "escherTag":S
    .end local v4    # "blipRecordMeta":Lorg/apache/poi/ddf/EscherMetafileBlip;
    .end local v5    # "blipRecord":Lorg/apache/poi/ddf/EscherBlipRecord;
    .end local v7    # "blipRecordBitmap":Lorg/apache/poi/ddf/EscherBitmapBlip;
    .end local v8    # "blipSize":I
    :cond_0
    invoke-static {p1}, Lorg/apache/poi/util/LittleEndian;->getInt([B)I

    move-result v3

    const v4, -0x65393229

    if-ne v3, v4, :cond_1

    .line 1701
    array-length v3, p1

    const/16 v4, 0x16

    sub-int/2addr v3, v4

    new-array v3, v3, [B

    .line 1702
    .local v3, "picDataNoHeader":[B
    array-length v5, p1

    sub-int/2addr v5, v4

    invoke-static {p1, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1703
    move-object p1, v3

    .line 1707
    .end local v3    # "picDataNoHeader":[B
    :cond_1
    new-instance v3, Lorg/apache/poi/ddf/EscherMetafileBlip;

    invoke-direct {v3}, Lorg/apache/poi/ddf/EscherMetafileBlip;-><init>()V

    .line 1708
    .local v3, "blipRecordMeta":Lorg/apache/poi/ddf/EscherMetafileBlip;
    move-object v5, v3

    .line 1709
    .restart local v5    # "blipRecord":Lorg/apache/poi/ddf/EscherBlipRecord;
    invoke-virtual {v3, v0}, Lorg/apache/poi/ddf/EscherMetafileBlip;->setUID([B)V

    .line 1710
    invoke-virtual {v3, p1}, Lorg/apache/poi/ddf/EscherMetafileBlip;->setPictureData([B)V

    .line 1712
    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Lorg/apache/poi/ddf/EscherMetafileBlip;->setFilter(B)V

    .line 1713
    invoke-virtual {v3}, Lorg/apache/poi/ddf/EscherMetafileBlip;->getCompressedSize()I

    move-result v4

    add-int/lit8 v8, v4, 0x3a

    .line 1714
    .restart local v8    # "blipSize":I
    const/4 v4, 0x0

    .line 1715
    .local v4, "escherTag":S
    move v3, v4

    .line 1727
    .end local v4    # "escherTag":S
    .local v3, "escherTag":S
    :goto_0
    add-int/lit16 v4, p2, -0xfe8

    int-to-short v4, v4

    invoke-virtual {v5, v4}, Lorg/apache/poi/ddf/EscherBlipRecord;->setRecordId(S)V

    .line 1728
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 1746
    :pswitch_0
    const/16 v4, 0x7a80

    invoke-virtual {v5, v4}, Lorg/apache/poi/ddf/EscherBlipRecord;->setOptions(S)V

    goto :goto_1

    .line 1740
    :pswitch_1
    const/16 v4, 0x6e00

    invoke-virtual {v5, v4}, Lorg/apache/poi/ddf/EscherBlipRecord;->setOptions(S)V

    .line 1741
    goto :goto_1

    .line 1743
    :pswitch_2
    const/16 v4, 0x46a0

    invoke-virtual {v5, v4}, Lorg/apache/poi/ddf/EscherBlipRecord;->setOptions(S)V

    .line 1744
    goto :goto_1

    .line 1737
    :pswitch_3
    const/16 v4, 0x5420

    invoke-virtual {v5, v4}, Lorg/apache/poi/ddf/EscherBlipRecord;->setOptions(S)V

    .line 1738
    goto :goto_1

    .line 1734
    :pswitch_4
    const/16 v4, 0x2160

    invoke-virtual {v5, v4}, Lorg/apache/poi/ddf/EscherBlipRecord;->setOptions(S)V

    .line 1735
    goto :goto_1

    .line 1731
    :pswitch_5
    const/16 v4, 0x3d40

    invoke-virtual {v5, v4}, Lorg/apache/poi/ddf/EscherBlipRecord;->setOptions(S)V

    .line 1732
    nop

    .line 1750
    :goto_1
    new-instance v4, Lorg/apache/poi/ddf/EscherBSERecord;

    invoke-direct {v4}, Lorg/apache/poi/ddf/EscherBSERecord;-><init>()V

    .line 1751
    .local v4, "r":Lorg/apache/poi/ddf/EscherBSERecord;
    const/16 v6, -0xff9

    invoke-virtual {v4, v6}, Lorg/apache/poi/ddf/EscherBSERecord;->setRecordId(S)V

    .line 1752
    shl-int/lit8 v6, p2, 0x4

    or-int/2addr v1, v6

    int-to-short v1, v1

    invoke-virtual {v4, v1}, Lorg/apache/poi/ddf/EscherBSERecord;->setOptions(S)V

    .line 1753
    int-to-byte v1, p2

    invoke-virtual {v4, v1}, Lorg/apache/poi/ddf/EscherBSERecord;->setBlipTypeMacOS(B)V

    .line 1754
    int-to-byte v1, p2

    invoke-virtual {v4, v1}, Lorg/apache/poi/ddf/EscherBSERecord;->setBlipTypeWin32(B)V

    .line 1755
    invoke-virtual {v4, v0}, Lorg/apache/poi/ddf/EscherBSERecord;->setUid([B)V

    .line 1756
    invoke-virtual {v4, v3}, Lorg/apache/poi/ddf/EscherBSERecord;->setTag(S)V

    .line 1757
    invoke-virtual {v4, v8}, Lorg/apache/poi/ddf/EscherBSERecord;->setSize(I)V

    .line 1758
    invoke-virtual {v4, v2}, Lorg/apache/poi/ddf/EscherBSERecord;->setRef(I)V

    .line 1759
    invoke-virtual {v4, v2}, Lorg/apache/poi/ddf/EscherBSERecord;->setOffset(I)V

    .line 1760
    invoke-virtual {v4, v5}, Lorg/apache/poi/ddf/EscherBSERecord;->setBlipRecord(Lorg/apache/poi/ddf/EscherBlipRecord;)V

    .line 1762
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->addBSERecord(Lorg/apache/poi/ddf/EscherBSERecord;)I

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addSSTString(Ljava/lang/String;)I
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1406
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    new-instance v1, Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/record/common/UnicodeString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->addSSTString(Lorg/apache/poi/hssf/record/common/UnicodeString;)I

    move-result v0

    return v0
.end method

.method public addToolPack(Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 1
    .param p1, "toopack"    # Lorg/apache/poi/ss/formula/udf/UDFFinder;

    .line 1978
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_udfFinder:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    check-cast v0, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;

    .line 1979
    .local v0, "udfs":Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;
    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->add(Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    .line 1980
    return-void
.end method

.method public changeExternalReference(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "oldUrl"    # Ljava/lang/String;
    .param p2, "newUrl"    # Ljava/lang/String;

    .line 2026
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->changeExternalReference(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public cloneSheet(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 9
    .param p1, "sheetIndex"    # I

    .line 762
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    .line 763
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 764
    .local v0, "srcSheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v1

    .line 765
    .local v1, "srcName":Ljava/lang/String;
    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->cloneSheet(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v2

    .line 766
    .local v2, "clonedSheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setSelected(Z)V

    .line 767
    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setActive(Z)V

    .line 769
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getUniqueSheetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 770
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 771
    .local v4, "newSheetIndex":I
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v5, v4, v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->setSheetName(ILjava/lang/String;)V

    .line 775
    const/16 v5, 0xd

    invoke-virtual {p0, p1, v5}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->findExistingBuiltinNameRecordIdx(IB)I

    move-result v5

    .line 776
    .local v5, "filterDbNameIndex":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 777
    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v6, v5, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->cloneFilter(II)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v6

    .line 778
    .local v6, "newNameRecord":Lorg/apache/poi/hssf/record/NameRecord;
    new-instance v7, Lorg/apache/poi/hssf/usermodel/HSSFName;

    invoke-direct {v7, p0, v6}, Lorg/apache/poi/hssf/usermodel/HSSFName;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/NameRecord;)V

    .line 779
    .local v7, "newName":Lorg/apache/poi/hssf/usermodel/HSSFName;
    iget-object v8, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    .end local v6    # "newNameRecord":Lorg/apache/poi/hssf/record/NameRecord;
    .end local v7    # "newName":Lorg/apache/poi/hssf/usermodel/HSSFName;
    :cond_0
    return-object v2
.end method

.method public bridge synthetic cloneSheet(I)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1
    .param p1, "x0"    # I

    .line 101
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->cloneSheet(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1257
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-eqz v0, :cond_0

    .line 1258
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getNFileSystem()Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1259
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getNFileSystem()Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    .line 1260
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 1263
    :cond_0
    return-void
.end method

.method createBuiltInName(BI)Lorg/apache/poi/hssf/usermodel/HSSFName;
    .locals 3
    .param p1, "builtinCode"    # B
    .param p2, "sheetIndex"    # I

    .line 1093
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createBuiltInName(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    .line 1095
    .local v0, "nameRecord":Lorg/apache/poi/hssf/record/NameRecord;
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFName;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFName;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/NameRecord;Lorg/apache/poi/hssf/record/NameCommentRecord;)V

    .line 1096
    .local v1, "newName":Lorg/apache/poi/hssf/usermodel/HSSFName;
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1097
    return-object v1
.end method

.method public createCellStyle()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    .locals 3

    .line 1215
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumExFormats()I

    move-result v0

    const/16 v1, 0xfbe

    if-eq v0, v1, :cond_0

    .line 1219
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createCellXF()Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v0

    .line 1220
    .local v0, "xfr":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumCellStyles()S

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-short v1, v1

    .line 1221
    .local v1, "index":S
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    invoke-direct {v2, v1, v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;-><init>(SLorg/apache/poi/hssf/record/ExtendedFormatRecord;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    .line 1223
    .local v2, "style":Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    return-object v2

    .line 1216
    .end local v0    # "xfr":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    .end local v1    # "index":S
    .end local v2    # "style":Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The maximum number of cell styles was exceeded. You can define up to 4000 styles in a .xls workbook"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic createCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createCellStyle()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    move-result-object v0

    return-object v0
.end method

.method public createDataFormat()Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;
    .locals 2

    .line 1593
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    if-nez v0, :cond_0

    .line 1594
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;-><init>(Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    .line 1595
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    return-object v0
.end method

.method public bridge synthetic createDataFormat()Lorg/apache/poi/ss/usermodel/DataFormat;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createDataFormat()Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    move-result-object v0

    return-object v0
.end method

.method public createFont()Lorg/apache/poi/hssf/usermodel/HSSFFont;
    .locals 3

    .line 1118
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createNewFont()Lorg/apache/poi/hssf/record/FontRecord;

    .line 1119
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfFonts()S

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    .line 1121
    .local v0, "fontindex":S
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 1123
    add-int/lit8 v1, v0, 0x1

    int-to-short v0, v1

    .line 1125
    :cond_0
    const/16 v1, 0x7fff

    if-eq v0, v1, :cond_1

    .line 1131
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getFontAt(S)Lorg/apache/poi/hssf/usermodel/HSSFFont;

    move-result-object v1

    return-object v1

    .line 1126
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Maximum number of fonts was exceeded"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic createFont()Lorg/apache/poi/ss/usermodel/Font;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createFont()Lorg/apache/poi/hssf/usermodel/HSSFFont;

    move-result-object v0

    return-object v0
.end method

.method public createName()Lorg/apache/poi/hssf/usermodel/HSSFName;
    .locals 3

    .line 1540
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createName()Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    .line 1542
    .local v0, "nameRecord":Lorg/apache/poi/hssf/record/NameRecord;
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFName;

    invoke-direct {v1, p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFName;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/NameRecord;)V

    .line 1544
    .local v1, "newName":Lorg/apache/poi/hssf/usermodel/HSSFName;
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1546
    return-object v1
.end method

.method public bridge synthetic createName()Lorg/apache/poi/ss/usermodel/Name;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createName()Lorg/apache/poi/hssf/usermodel/HSSFName;

    move-result-object v0

    return-object v0
.end method

.method public createSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 6

    .line 745
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    .line 747
    .local v0, "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sheet"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->setSheetName(ILjava/lang/String;)V

    .line 749
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v1, v3

    .line 750
    .local v1, "isOnlySheet":Z
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setSelected(Z)V

    .line 751
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setActive(Z)V

    .line 752
    return-object v0
.end method

.method public createSheet(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 3
    .param p1, "sheetname"    # Ljava/lang/String;

    .line 863
    if-eqz p1, :cond_2

    .line 867
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->doesContainsSheetName(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 870
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    .line 872
    .local v0, "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->setSheetName(ILjava/lang/String;)V

    .line 873
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 874
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 875
    .local v1, "isOnlySheet":Z
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setSelected(Z)V

    .line 876
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setActive(Z)V

    .line 877
    return-object v0

    .line 868
    .end local v0    # "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .end local v1    # "isOnlySheet":Z
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The workbook already contains a sheet of this name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 864
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sheetName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic createSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createSheet(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public dumpDrawingGroupRecords(Z)V
    .locals 7
    .param p1, "fat"    # Z

    .line 1654
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    const/16 v1, 0xeb

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    .line 1655
    .local v0, "r":Lorg/apache/poi/hssf/record/DrawingGroupRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->decode()V

    .line 1656
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->getEscherRecords()Ljava/util/List;

    move-result-object v1

    .line 1657
    .local v1, "escherRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherRecord;>;"
    new-instance v2, Ljava/io/PrintWriter;

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1658
    .local v2, "w":Ljava/io/PrintWriter;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1660
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ddf/EscherRecord;

    .line 1661
    .local v4, "escherRecord":Lorg/apache/poi/ddf/EscherRecord;
    if-eqz p1, :cond_0

    .line 1662
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1664
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lorg/apache/poi/ddf/EscherRecord;->display(Ljava/io/PrintWriter;I)V

    .line 1665
    .end local v4    # "escherRecord":Lorg/apache/poi/ddf/EscherRecord;
    :goto_1
    goto :goto_0

    .line 1666
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherRecord;>;"
    :cond_1
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 1667
    return-void
.end method

.method findExistingBuiltinNameRecordIdx(IB)I
    .locals 4
    .param p1, "sheetIndex"    # I
    .param p2, "builtinCode"    # B

    .line 1076
    const/4 v0, 0x0

    .local v0, "defNameIndex":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1077
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v1

    .line 1078
    .local v1, "r":Lorg/apache/poi/hssf/record/NameRecord;
    if-eqz v1, :cond_2

    .line 1081
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->isBuiltInName()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->getBuiltInName()B

    move-result v2

    if-eq v2, p2, :cond_0

    .line 1082
    goto :goto_1

    .line 1084
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v2, p1, :cond_1

    .line 1085
    return v0

    .line 1076
    .end local v1    # "r":Lorg/apache/poi/hssf/record/NameRecord;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1079
    .restart local v1    # "r":Lorg/apache/poi/hssf/record/NameRecord;
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to find all defined names to iterate over"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1088
    .end local v0    # "defNameIndex":I
    .end local v1    # "r":Lorg/apache/poi/hssf/record/NameRecord;
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public findFont(SSSLjava/lang/String;ZZSB)Lorg/apache/poi/hssf/usermodel/HSSFFont;
    .locals 3
    .param p1, "boldWeight"    # S
    .param p2, "color"    # S
    .param p3, "fontHeight"    # S
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "italic"    # Z
    .param p6, "strikeout"    # Z
    .param p7, "typeOffset"    # S
    .param p8, "underline"    # B

    .line 1141
    const/4 v0, 0x0

    .local v0, "i":S
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfFonts()S

    move-result v1

    if-gt v0, v1, :cond_2

    .line 1143
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 1145
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getFontAt(S)Lorg/apache/poi/hssf/usermodel/HSSFFont;

    move-result-object v1

    .line 1146
    .local v1, "hssfFont":Lorg/apache/poi/hssf/usermodel/HSSFFont;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getBoldweight()S

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getColor()S

    move-result v2

    if-ne v2, p2, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getFontHeight()S

    move-result v2

    if-ne v2, p3, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getFontName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getItalic()Z

    move-result v2

    if-ne v2, p5, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getStrikeout()Z

    move-result v2

    if-ne v2, p6, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getTypeOffset()S

    move-result v2

    if-ne v2, p7, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getUnderline()B

    move-result v2

    if-ne v2, p8, :cond_1

    .line 1155
    return-object v1

    .line 1141
    .end local v1    # "hssfFont":Lorg/apache/poi/hssf/usermodel/HSSFFont;
    :cond_1
    :goto_1
    add-int/lit8 v1, v0, 0x1

    int-to-short v0, v1

    goto :goto_0

    .line 1159
    .end local v0    # "i":S
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic findFont(SSSLjava/lang/String;ZZSB)Lorg/apache/poi/ss/usermodel/Font;
    .locals 1
    .param p1, "x0"    # S
    .param p2, "x1"    # S
    .param p3, "x2"    # S
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Z
    .param p6, "x5"    # Z
    .param p7, "x6"    # S
    .param p8, "x7"    # B

    .line 101
    invoke-virtual/range {p0 .. p8}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->findFont(SSSLjava/lang/String;ZZSB)Lorg/apache/poi/hssf/usermodel/HSSFFont;

    move-result-object v0

    return-object v0
.end method

.method public findSheetNameFromExternSheet(I)Ljava/lang/String;
    .locals 1
    .param p1, "externSheetIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 720
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findSheetFirstNameFromExternSheet(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveSheetIndex()I
    .locals 1

    .line 576
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getActiveSheetIndex()I

    move-result v0

    return v0
.end method

.method public getAllEmbeddedObjects()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFObjectData;",
            ">;"
        }
    .end annotation

    .line 1919
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1920
    .local v0, "objects":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/usermodel/HSSFObjectData;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1922
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getAllEmbeddedObjects(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Ljava/util/List;)V

    .line 1920
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1924
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public getAllPictures()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFPictureData;",
            ">;"
        }
    .end annotation

    .line 1773
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1774
    .local v0, "pictures":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/usermodel/HSSFPictureData;>;"
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1775
    .local v1, "recordIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/Record;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1777
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/Record;

    .line 1778
    .local v2, "r":Lorg/apache/poi/hssf/record/Record;
    instance-of v3, v2, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;

    if-eqz v3, :cond_0

    .line 1780
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->decode()V

    .line 1781
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getEscherRecords()Ljava/util/List;

    move-result-object v3

    .line 1782
    .local v3, "escherRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherRecord;>;"
    invoke-direct {p0, v3, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->searchForPictures(Ljava/util/List;Ljava/util/List;)V

    .line 1784
    .end local v2    # "r":Lorg/apache/poi/hssf/record/Record;
    .end local v3    # "escherRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherRecord;>;"
    :cond_0
    goto :goto_0

    .line 1785
    :cond_1
    return-object v0
.end method

.method public getBackupFlag()Z
    .locals 2

    .line 1019
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBackupRecord()Lorg/apache/poi/hssf/record/BackupRecord;

    move-result-object v0

    .line 1021
    .local v0, "backupRecord":Lorg/apache/poi/hssf/record/BackupRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BackupRecord;->getBackup()S

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method getBuiltInName(BI)Lorg/apache/poi/hssf/usermodel/HSSFName;
    .locals 2
    .param p1, "builtinCode"    # B
    .param p2, "sheetIndex"    # I

    .line 1102
    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->findExistingBuiltinNameRecordIdx(IB)I

    move-result v0

    .line 1103
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 1104
    const/4 v1, 0x0

    return-object v1

    .line 1106
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFName;

    return-object v1
.end method

.method public getBytes()[B
    .locals 12

    .line 1352
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->log:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1353
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->log:Lorg/apache/poi/util/POILogger;

    const-string v2, "HSSFWorkbook.getBytes()"

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 1356
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheets()[Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    .line 1357
    .local v0, "sheets":[Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    array-length v1, v0

    .line 1362
    .local v1, "nSheets":I
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->preSerialize()V

    .line 1363
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1364
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/InternalSheet;->preSerialize()V

    .line 1365
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->preSerialize()V

    .line 1363
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1368
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSize()I

    move-result v2

    .line 1371
    .local v2, "totalsize":I
    new-array v3, v1, [Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;

    .line 1372
    .local v3, "srCollectors":[Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 1373
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v5, v4, v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->setSheetBof(II)V

    .line 1374
    new-instance v5, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;

    invoke-direct {v5}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;-><init>()V

    .line 1375
    .local v5, "src":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;
    aget-object v6, v0, v4

    invoke-virtual {v6}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Lorg/apache/poi/hssf/model/InternalSheet;->visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;I)V

    .line 1376
    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->getTotalSize()I

    move-result v6

    add-int/2addr v2, v6

    .line 1377
    aput-object v5, v3, v4

    .line 1372
    .end local v5    # "src":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1380
    .end local v4    # "k":I
    :cond_2
    new-array v4, v2, [B

    .line 1381
    .local v4, "retval":[B
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->serialize(I[B)I

    move-result v5

    .line 1383
    .local v5, "pos":I
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_2
    if-ge v6, v1, :cond_4

    .line 1384
    aget-object v7, v3, v6

    .line 1385
    .local v7, "src":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;
    invoke-virtual {v7, v5, v4}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->serialize(I[B)I

    move-result v8

    .line 1386
    .local v8, "serializedSize":I
    invoke-virtual {v7}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->getTotalSize()I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 1395
    add-int/2addr v5, v8

    .line 1383
    .end local v7    # "src":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;
    .end local v8    # "serializedSize":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1390
    .restart local v7    # "src":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;
    .restart local v8    # "serializedSize":I
    :cond_3
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Actual serialized sheet size ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") differs from pre-calculated size ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->getTotalSize()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") for sheet ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1397
    .end local v6    # "k":I
    .end local v7    # "src":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;
    .end local v8    # "serializedSize":I
    :cond_4
    return-object v4
.end method

.method public getCellStyleAt(S)Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    .locals 2
    .param p1, "idx"    # S

    .line 1243
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v0

    .line 1244
    .local v0, "xfr":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    invoke-direct {v1, p1, v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;-><init>(SLorg/apache/poi/hssf/record/ExtendedFormatRecord;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    .line 1246
    .local v1, "style":Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    return-object v1
.end method

.method public bridge synthetic getCellStyleAt(S)Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1
    .param p1, "x0"    # S

    .line 101
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCellStyleAt(S)Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    move-result-object v0

    return-object v0
.end method

.method public getCreationHelper()Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;
    .locals 1

    .line 1958
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    return-object v0
.end method

.method public bridge synthetic getCreationHelper()Lorg/apache/poi/ss/usermodel/CreationHelper;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCreationHelper()Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;

    move-result-object v0

    return-object v0
.end method

.method public getCustomPalette()Lorg/apache/poi/hssf/usermodel/HSSFPalette;
    .locals 2

    .line 1618
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getCustomPalette()Lorg/apache/poi/hssf/record/PaletteRecord;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;-><init>(Lorg/apache/poi/hssf/record/PaletteRecord;)V

    return-object v0
.end method

.method public getDisplayedTab()S
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 617
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getFirstVisibleTab()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getExternalSheetIndex(I)I
    .locals 1
    .param p1, "internalSheetIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 711
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->checkExternSheet(I)S

    move-result v0

    return v0
.end method

.method public getFirstVisibleTab()I
    .locals 1

    .line 609
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getFirstVisibleTab()I

    move-result v0

    return v0
.end method

.method public getFontAt(S)Lorg/apache/poi/hssf/usermodel/HSSFFont;
    .locals 4
    .param p1, "idx"    # S

    .line 1178
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->fonts:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->fonts:Ljava/util/Hashtable;

    .line 1183
    :cond_0
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    .line 1184
    .local v0, "sIdx":Ljava/lang/Short;
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->fonts:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1185
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->fonts:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFFont;

    return-object v1

    .line 1188
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFontRecordAt(I)Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object v1

    .line 1189
    .local v1, "font":Lorg/apache/poi/hssf/record/FontRecord;
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFFont;

    invoke-direct {v2, p1, v1}, Lorg/apache/poi/hssf/usermodel/HSSFFont;-><init>(SLorg/apache/poi/hssf/record/FontRecord;)V

    .line 1190
    .local v2, "retval":Lorg/apache/poi/hssf/usermodel/HSSFFont;
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->fonts:Ljava/util/Hashtable;

    invoke-virtual {v3, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    return-object v2
.end method

.method public bridge synthetic getFontAt(S)Lorg/apache/poi/ss/usermodel/Font;
    .locals 1
    .param p1, "x0"    # S

    .line 101
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getFontAt(S)Lorg/apache/poi/hssf/usermodel/HSSFFont;

    move-result-object v0

    return-object v0
.end method

.method public getForceFormulaRecalculation()Z
    .locals 3

    .line 2011
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    .line 2012
    .local v0, "iwb":Lorg/apache/poi/hssf/model/InternalWorkbook;
    const/16 v1, 0x1c1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/RecalcIdRecord;

    .line 2013
    .local v1, "recalc":Lorg/apache/poi/hssf/record/RecalcIdRecord;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecalcIdRecord;->getEngineId()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public getMissingCellPolicy()Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;
    .locals 1

    .line 448
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    return-object v0
.end method

.method public getName(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFName;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1428
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNameIndex(Ljava/lang/String;)I

    move-result v0

    .line 1429
    .local v0, "nameIndex":I
    if-gez v0, :cond_0

    .line 1430
    const/4 v1, 0x0

    return-object v1

    .line 1432
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFName;

    return-object v1
.end method

.method public bridge synthetic getName(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Name;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getName(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFName;

    move-result-object v0

    return-object v0
.end method

.method public getNameAt(I)Lorg/apache/poi/hssf/usermodel/HSSFName;
    .locals 4
    .param p1, "nameIndex"    # I

    .line 1436
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1437
    .local v0, "nNames":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 1440
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 1444
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFName;

    return-object v1

    .line 1441
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Specified name index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is outside the allowable range (0.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1438
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "There are no defined names in this workbook"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic getNameAt(I)Lorg/apache/poi/ss/usermodel/Name;
    .locals 1
    .param p1, "x0"    # I

    .line 101
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNameAt(I)Lorg/apache/poi/hssf/usermodel/HSSFName;

    move-result-object v0

    return-object v0
.end method

.method public getNameIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1551
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1552
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNameName(I)Ljava/lang/String;

    move-result-object v1

    .line 1554
    .local v1, "nameName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1555
    return v0

    .line 1551
    .end local v1    # "nameName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1558
    .end local v0    # "k":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method getNameIndex(Lorg/apache/poi/hssf/usermodel/HSSFName;)I
    .locals 2
    .param p1, "name"    # Lorg/apache/poi/hssf/usermodel/HSSFName;

    .line 1572
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1573
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1574
    return v0

    .line 1572
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1577
    .end local v0    # "k":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getNameName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 1456
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNameAt(I)Lorg/apache/poi/hssf/usermodel/HSSFName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFName;->getNameName()Ljava/lang/String;

    move-result-object v0

    .line 1458
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method public getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;
    .locals 1
    .param p1, "nameIndex"    # I

    .line 1448
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    return-object v0
.end method

.method public getNumCellStyles()S
    .locals 1

    .line 1233
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumExFormats()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getNumberOfFonts()S
    .locals 1

    .line 1169
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumberOfFontRecords()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getNumberOfNames()I
    .locals 1

    .line 1423
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1424
    .local v0, "result":I
    return v0
.end method

.method public getNumberOfSheets()I
    .locals 1

    .line 887
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPrintArea(I)Ljava/lang/String;
    .locals 3
    .param p1, "sheetIndex"    # I

    .line 1519
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSpecificBuiltinRecord(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    .line 1521
    .local v0, "name":Lorg/apache/poi/hssf/record/NameRecord;
    if-nez v0, :cond_0

    .line 1522
    const/4 v1, 0x0

    return-object v1

    .line 1525
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->toFormulaString(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRootDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .locals 1

    .line 2030
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    return-object v0
.end method

.method public getSSTString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1415
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSSTString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedTab()S
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 584
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getActiveSheetIndex()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getSheet(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 926
    const/4 v0, 0x0

    .line 928
    .local v0, "retval":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 930
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v2

    .line 932
    .local v2, "sheetname":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 934
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 928
    .end local v2    # "sheetname":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 937
    .end local v1    # "k":I
    :cond_1
    return-object v0
.end method

.method public bridge synthetic getSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 1
    .param p1, "index"    # I

    .line 914
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    .line 915
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    return-object v0
.end method

.method public bridge synthetic getSheetAt(I)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1
    .param p1, "x0"    # I

    .line 101
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getSheetIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 684
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I
    .locals 2
    .param p1, "sheet"    # Lorg/apache/poi/ss/usermodel/Sheet;

    .line 692
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 693
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 694
    return v0

    .line 692
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 697
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getSheetIndexFromExternSheetIndex(I)I
    .locals 1
    .param p1, "externSheetNumber"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 897
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFirstSheetIndexFromExternSheetIndex(I)I

    move-result v0

    return v0
.end method

.method public getSheetName(I)Ljava/lang/String;
    .locals 1
    .param p1, "sheetIndex"    # I

    .line 645
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    .line 646
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;
    .locals 1

    .line 1969
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_udfFinder:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    return-object v0
.end method

.method getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;
    .locals 1

    .line 1419
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    return-object v0
.end method

.method initDrawings()V
    .locals 3

    .line 1670
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findDrawingGroup()Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v0

    .line 1671
    .local v0, "mgr":Lorg/apache/poi/hssf/model/DrawingManager2;
    if-eqz v0, :cond_1

    .line 1672
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1673
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 1672
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 1676
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createDrawingGroup()V

    .line 1678
    :goto_1
    return-void
.end method

.method public insertChartRecord()V
    .locals 4

    .line 1624
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    const/16 v1, 0xfc

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordLocBySid(S)I

    move-result v0

    .line 1625
    .local v0, "loc":I
    const/16 v1, 0x5a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    .line 1645
    .local v1, "data":[B
    new-instance v2, Lorg/apache/poi/hssf/record/UnknownRecord;

    const/16 v3, 0xeb

    invoke-direct {v2, v3, v1}, Lorg/apache/poi/hssf/record/UnknownRecord;-><init>(I[B)V

    .line 1646
    .local v2, "r":Lorg/apache/poi/hssf/record/UnknownRecord;
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getRecords()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1647
    return-void

    :array_0
    .array-data 1
        0xft
        0x0t
        0x0t
        -0x10t
        0x52t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x6t
        -0x10t
        0x18t
        0x0t
        0x0t
        0x0t
        0x1t
        0x8t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x33t
        0x0t
        0xbt
        -0x10t
        0x12t
        0x0t
        0x0t
        0x0t
        -0x41t
        0x0t
        0x8t
        0x0t
        0x8t
        0x0t
        -0x7ft
        0x1t
        0x9t
        0x0t
        0x0t
        0x8t
        -0x40t
        0x1t
        0x40t
        0x0t
        0x0t
        0x8t
        0x40t
        0x0t
        0x1et
        -0xft
        0x10t
        0x0t
        0x0t
        0x0t
        0xdt
        0x0t
        0x0t
        0x8t
        0xct
        0x0t
        0x0t
        0x8t
        0x17t
        0x0t
        0x0t
        0x8t
        -0x9t
        0x0t
        0x0t
        0x10t
    .end array-data
.end method

.method public isHidden()Z
    .locals 1

    .line 650
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getHidden()Z

    move-result v0

    return v0
.end method

.method public isSheetHidden(I)Z
    .locals 1
    .param p1, "sheetIx"    # I

    .line 658
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    .line 659
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->isSheetHidden(I)Z

    move-result v0

    return v0
.end method

.method public isSheetVeryHidden(I)Z
    .locals 1
    .param p1, "sheetIx"    # I

    .line 663
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    .line 664
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->isSheetVeryHidden(I)Z

    move-result v0

    return v0
.end method

.method public isWriteProtected()Z
    .locals 1

    .line 1893
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->isWriteProtected()Z

    move-result v0

    return v0
.end method

.method public linkExternalWorkbook(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/Workbook;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "workbook"    # Lorg/apache/poi/ss/usermodel/Workbook;

    .line 1886
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->linkExternalWorkbook(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/Workbook;)I

    move-result v0

    return v0
.end method

.method public removeName(I)V
    .locals 1
    .param p1, "index"    # I

    .line 1582
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->names:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1583
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->removeName(I)V

    .line 1584
    return-void
.end method

.method public removeName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1600
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNameIndex(Ljava/lang/String;)I

    move-result v0

    .line 1601
    .local v0, "index":I
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->removeName(I)V

    .line 1602
    return-void
.end method

.method removeName(Lorg/apache/poi/hssf/usermodel/HSSFName;)V
    .locals 1
    .param p1, "name"    # Lorg/apache/poi/hssf/usermodel/HSSFName;

    .line 1612
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNameIndex(Lorg/apache/poi/hssf/usermodel/HSSFName;)I

    move-result v0

    .line 1613
    .local v0, "index":I
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->removeName(I)V

    .line 1614
    return-void
.end method

.method public removePrintArea(I)V
    .locals 3
    .param p1, "sheetIndex"    # I

    .line 1533
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->removeBuiltinRecord(BI)V

    .line 1534
    return-void
.end method

.method public removeSheetAt(I)V
    .locals 6
    .param p1, "index"    # I

    .line 955
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    .line 956
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->isSelected()Z

    move-result v0

    .line 958
    .local v0, "wasSelected":Z
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 959
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->removeSheet(I)V

    .line 962
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 963
    .local v1, "nSheets":I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 965
    return-void

    .line 968
    :cond_0
    move v2, p1

    .line 969
    .local v2, "newSheetIndex":I
    if-lt v2, v1, :cond_1

    .line 970
    add-int/lit8 v2, v1, -0x1

    .line 973
    :cond_1
    if-eqz v0, :cond_4

    .line 974
    const/4 v3, 0x0

    .line 975
    .local v3, "someOtherSheetIsStillSelected":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 976
    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 977
    const/4 v3, 0x1

    .line 978
    goto :goto_1

    .line 975
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 981
    .end local v4    # "i":I
    :cond_3
    :goto_1
    if-nez v3, :cond_4

    .line 982
    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setSelectedTab(I)V

    .line 987
    .end local v3    # "someOtherSheetIsStillSelected":Z
    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getActiveSheetIndex()I

    move-result v3

    .line 988
    .local v3, "active":I
    if-ne v3, p1, :cond_5

    .line 990
    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setActiveSheet(I)V

    goto :goto_2

    .line 991
    :cond_5
    if-le v3, p1, :cond_6

    .line 993
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setActiveSheet(I)V

    .line 995
    :cond_6
    :goto_2
    return-void
.end method

.method protected resetFontCache()V
    .locals 1

    .line 1202
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->fonts:Ljava/util/Hashtable;

    .line 1203
    return-void
.end method

.method public resolveNameXText(II)Ljava/lang/String;
    .locals 1
    .param p1, "refIndex"    # I
    .param p2, "definedNameIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 733
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->resolveNameXText(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setActiveSheet(I)V
    .locals 4
    .param p1, "index"    # I

    .line 560
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    .line 561
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 562
    .local v0, "nSheets":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 563
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v2

    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setActive(Z)V

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 565
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setActiveSheetIndex(I)V

    .line 566
    return-void
.end method

.method public setBackupFlag(Z)V
    .locals 1
    .param p1, "backupValue"    # Z

    .line 1005
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getBackupRecord()Lorg/apache/poi/hssf/record/BackupRecord;

    move-result-object v0

    .line 1007
    .local v0, "backupRecord":Lorg/apache/poi/hssf/record/BackupRecord;
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/BackupRecord;->setBackup(S)V

    .line 1009
    return-void
.end method

.method public setDisplayedTab(S)V
    .locals 0
    .param p1, "index"    # S
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 602
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setFirstVisibleTab(I)V

    .line 603
    return-void
.end method

.method public setFirstVisibleTab(I)V
    .locals 1
    .param p1, "index"    # I

    .line 594
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setFirstVisibleTab(I)V

    .line 595
    return-void
.end method

.method public setForceFormulaRecalculation(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 2000
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    .line 2001
    .local v0, "iwb":Lorg/apache/poi/hssf/model/InternalWorkbook;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getRecalcId()Lorg/apache/poi/hssf/record/RecalcIdRecord;

    move-result-object v1

    .line 2002
    .local v1, "recalc":Lorg/apache/poi/hssf/record/RecalcIdRecord;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/RecalcIdRecord;->setEngineId(I)V

    .line 2003
    return-void
.end method

.method public setHidden(Z)V
    .locals 1
    .param p1, "hiddenFlag"    # Z

    .line 654
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setHidden(Z)V

    .line 655
    return-void
.end method

.method public setMissingCellPolicy(Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)V
    .locals 0
    .param p1, "missingCellPolicy"    # Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    .line 462
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    .line 463
    return-void
.end method

.method public setPrintArea(IIIII)V
    .locals 4
    .param p1, "sheetIndex"    # I
    .param p2, "startColumn"    # I
    .param p3, "endColumn"    # I
    .param p4, "startRow"    # I
    .param p5, "endRow"    # I

    .line 1503
    new-instance v0, Lorg/apache/poi/hssf/util/CellReference;

    const/4 v1, 0x1

    invoke-direct {v0, p4, p2, v1, v1}, Lorg/apache/poi/hssf/util/CellReference;-><init>(IIZZ)V

    .line 1504
    .local v0, "cell":Lorg/apache/poi/hssf/util/CellReference;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v2

    .line 1506
    .local v2, "reference":Ljava/lang/String;
    new-instance v3, Lorg/apache/poi/hssf/util/CellReference;

    invoke-direct {v3, p5, p3, v1, v1}, Lorg/apache/poi/hssf/util/CellReference;-><init>(IIZZ)V

    move-object v0, v3

    .line 1507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1509
    .end local v2    # "reference":Ljava/lang/String;
    .local v1, "reference":Ljava/lang/String;
    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setPrintArea(ILjava/lang/String;)V

    .line 1510
    return-void
.end method

.method public setPrintArea(ILjava/lang/String;)V
    .locals 5
    .param p1, "sheetIndex"    # I
    .param p2, "reference"    # Ljava/lang/String;

    .line 1470
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSpecificBuiltinRecord(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    .line 1473
    .local v0, "name":Lorg/apache/poi/hssf/record/NameRecord;
    if-nez v0, :cond_0

    .line 1474
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createBuiltInName(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    .line 1477
    :cond_0
    sget-object v1, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 1478
    .local v1, "parts":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1479
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 1480
    if-lez v3, :cond_1

    .line 1481
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1483
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1484
    const-string v4, "!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1485
    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1479
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1487
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v3, p0, v4, p1}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/record/NameRecord;->setNameDefinition([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 1488
    return-void
.end method

.method public setRepeatingRowsAndColumns(IIIII)V
    .locals 5
    .param p1, "sheetIndex"    # I
    .param p2, "startColumn"    # I
    .param p3, "endColumn"    # I
    .param p4, "startRow"    # I
    .param p5, "endRow"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1058
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    .line 1060
    .local v0, "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    const/4 v1, 0x0

    .line 1061
    .local v1, "rows":Lorg/apache/poi/ss/util/CellRangeAddress;
    const/4 v2, 0x0

    .line 1063
    .local v2, "cols":Lorg/apache/poi/ss/util/CellRangeAddress;
    const/4 v3, -0x1

    if-eq p4, v3, :cond_0

    .line 1064
    new-instance v4, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v4, p4, p5, v3, v3}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    move-object v1, v4

    .line 1066
    :cond_0
    if-eq p2, v3, :cond_1

    .line 1067
    new-instance v4, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v4, v3, v3, p2, p3}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    move-object v2, v4

    .line 1070
    :cond_1
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setRepeatingRows(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 1071
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setRepeatingColumns(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 1072
    return-void
.end method

.method public setSelectedTab(I)V
    .locals 4
    .param p1, "index"    # I

    .line 519
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    .line 520
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 521
    .local v0, "nSheets":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_1

    .line 522
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v3

    if-ne v1, p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setSelected(Z)V

    .line 521
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setNumSelectedTabs(S)V

    .line 525
    return-void
.end method

.method public setSelectedTab(S)V
    .locals 0
    .param p1, "index"    # S
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 532
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setSelectedTab(I)V

    .line 533
    return-void
.end method

.method public setSelectedTabs([I)V
    .locals 5
    .param p1, "indexes"    # [I

    .line 536
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 537
    aget v1, p1, v0

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    .line 536
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 539
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 540
    .local v0, "nSheets":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 541
    const/4 v2, 0x0

    .line 542
    .local v2, "bSelect":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 543
    aget v4, p1, v3

    if-ne v4, v1, :cond_1

    .line 544
    const/4 v2, 0x1

    .line 545
    goto :goto_3

    .line 542
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 549
    .end local v3    # "j":I
    :cond_2
    :goto_3
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setSelected(Z)V

    .line 540
    .end local v2    # "bSelect":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 551
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getWindowOne()Lorg/apache/poi/hssf/record/WindowOneRecord;

    move-result-object v1

    array-length v2, p1

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setNumSelectedTabs(S)V

    .line 552
    return-void
.end method

.method public setSheetHidden(II)V
    .locals 1
    .param p1, "sheetIx"    # I
    .param p2, "hidden"    # I

    .line 674
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    .line 675
    invoke-static {p2}, Lorg/apache/poi/ss/util/WorkbookUtil;->validateSheetState(I)V

    .line 676
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->setSheetHidden(II)V

    .line 677
    return-void
.end method

.method public setSheetHidden(IZ)V
    .locals 1
    .param p1, "sheetIx"    # I
    .param p2, "hidden"    # Z

    .line 669
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    .line 670
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->setSheetHidden(IZ)V

    .line 671
    return-void
.end method

.method public setSheetName(ILjava/lang/String;)V
    .locals 2
    .param p1, "sheetIx"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 630
    if-eqz p2, :cond_1

    .line 634
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p2, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->doesContainsSheetName(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 637
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->validateSheetIndex(I)V

    .line 638
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->setSheetName(ILjava/lang/String;)V

    .line 639
    return-void

    .line 635
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The workbook already contains a sheet with this name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 631
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sheetName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSheetOrder(Ljava/lang/String;I)V
    .locals 6
    .param p1, "sheetname"    # Ljava/lang/String;
    .param p2, "pos"    # I

    .line 473
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v0

    .line 474
    .local v0, "oldSheetIndex":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 475
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->setSheetOrder(Ljava/lang/String;I)V

    .line 477
    invoke-static {v0, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->createForSheetShift(II)Lorg/apache/poi/ss/formula/FormulaShifter;

    move-result-object v1

    .line 478
    .local v1, "shifter":Lorg/apache/poi/ss/formula/FormulaShifter;
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->_sheets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 479
    .local v3, "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v1, v5}, Lorg/apache/poi/hssf/model/InternalSheet;->updateFormulasAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;I)V

    .line 480
    .end local v3    # "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    goto :goto_0

    .line 482
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->updateNamesAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;)V

    .line 485
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getActiveSheetIndex()I

    move-result v2

    .line 486
    .local v2, "active":I
    if-ne v2, v0, :cond_1

    .line 488
    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setActiveSheet(I)V

    goto :goto_1

    .line 489
    :cond_1
    if-ge v2, v0, :cond_2

    if-lt v2, p2, :cond_5

    :cond_2
    if-le v2, v0, :cond_3

    if-le v2, p2, :cond_3

    goto :goto_1

    .line 492
    :cond_3
    if-le p2, v0, :cond_4

    .line 494
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setActiveSheet(I)V

    goto :goto_1

    .line 497
    :cond_4
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setActiveSheet(I)V

    .line 499
    :cond_5
    :goto_1
    return-void
.end method

.method public unwriteProtectWorkbook()V
    .locals 1

    .line 1909
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->unwriteProtectWorkbook()V

    .line 1910
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1279
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getBytes()[B

    move-result-object v0

    .line 1280
    .local v0, "bytes":[B
    new-instance v1, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>()V

    .line 1284
    .local v1, "fs":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1287
    .local v2, "excepts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v4, "Workbook"

    invoke-virtual {v1, v3, v4}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->createDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 1290
    invoke-virtual {p0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->writeProperties(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Ljava/util/List;)V

    .line 1292
    iget-boolean v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->preserveNodes:Z

    if-eqz v3, :cond_0

    .line 1296
    sget-object v3, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->WORKBOOK_DIR_ENTRY_NAMES:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1299
    new-instance v3, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;

    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-direct {v3, v4, v2}, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/util/Collection;)V

    new-instance v4, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/util/Collection;)V

    invoke-static {v3, v4}, Lorg/apache/poi/poifs/filesystem/EntryUtils;->copyNodes(Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;)V

    .line 1306
    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    .line 1308
    :cond_0
    invoke-virtual {v1, p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V

    .line 1309
    return-void
.end method

.method public writeProtectWorkbook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;

    .line 1902
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->workbook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->writeProtectWorkbook(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    return-void
.end method
