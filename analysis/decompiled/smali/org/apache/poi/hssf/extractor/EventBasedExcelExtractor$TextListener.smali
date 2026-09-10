.class Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;
.super Ljava/lang/Object;
.source "EventBasedExcelExtractor.java"

# interfaces
.implements Lorg/apache/poi/hssf/eventusermodel/HSSFListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextListener"
.end annotation


# instance fields
.field _ft:Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;

.field final _text:Ljava/lang/StringBuffer;

.field private nextRow:I

.field private outputNextStringValue:Z

.field private rowNum:I

.field private final sheetNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sheetNum:I

.field private sstRecord:Lorg/apache/poi/hssf/record/SSTRecord;

.field final synthetic this$0:Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 190
    iput-object p1, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->this$0:Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->_text:Ljava/lang/StringBuffer;

    .line 184
    iput v1, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->sheetNum:I

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->outputNextStringValue:Z

    .line 188
    iput v1, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->nextRow:I

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->sheetNames:Ljava/util/List;

    .line 192
    return-void
.end method


# virtual methods
.method public processRecord(Lorg/apache/poi/hssf/record/Record;)V
    .locals 13
    .param p1, "record"    # Lorg/apache/poi/hssf/record/Record;

    .prologue
    .line 194
    const/4 v9, 0x0

    .line 195
    .local v9, "thisText":Ljava/lang/String;
    const/4 v8, -0x1

    .line 197
    .local v8, "thisRow":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 271
    .end local p1    # "record":Lorg/apache/poi/hssf/record/Record;
    :cond_0
    :goto_0
    if-eqz v9, :cond_2

    .line 272
    iget v10, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->rowNum:I

    if-eq v8, v10, :cond_7

    .line 273
    iput v8, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->rowNum:I

    .line 274
    iget-object v10, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 275
    iget-object v10, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->_text:Ljava/lang/StringBuffer;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    :cond_1
    :goto_1
    iget-object v10, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    :cond_2
    return-void

    .restart local p1    # "record":Lorg/apache/poi/hssf/record/Record;
    :sswitch_0
    move-object v6, p1

    .line 199
    check-cast v6, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    .line 200
    .local v6, "sr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    iget-object v10, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->sheetNames:Ljava/util/List;

    invoke-virtual {v6}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->getSheetname()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v6    # "sr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    :sswitch_1
    move-object v0, p1

    .line 203
    check-cast v0, Lorg/apache/poi/hssf/record/BOFRecord;

    .line 204
    .local v0, "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BOFRecord;->getType()I

    move-result v10

    const/16 v11, 0x10

    if-ne v10, v11, :cond_0

    .line 205
    iget v10, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->sheetNum:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->sheetNum:I

    .line 206
    const/4 v10, -0x1

    iput v10, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->rowNum:I

    .line 208
    iget-object v10, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->this$0:Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;

    iget-boolean v10, v10, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->_includeSheetNames:Z

    if-eqz v10, :cond_0

    .line 209
    iget-object v10, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-lez v10, :cond_3

    iget-object v10, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->_text:Ljava/lang/StringBuffer;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    :cond_3
    iget-object v11, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->_text:Ljava/lang/StringBuffer;

    iget-object v10, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->sheetNames:Ljava/util/List;

    iget v12, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->sheetNum:I

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 215
    .end local v0    # "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    :sswitch_2
    check-cast p1, Lorg/apache/poi/hssf/record/SSTRecord;

    .end local p1    # "record":Lorg/apache/poi/hssf/record/Record;
    iput-object p1, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->sstRecord:Lorg/apache/poi/hssf/record/SSTRecord;

    goto :goto_0

    .restart local p1    # "record":Lorg/apache/poi/hssf/record/Record;
    :sswitch_3
    move-object v1, p1

    .line 219
    check-cast v1, Lorg/apache/poi/hssf/record/FormulaRecord;

    .line 220
    .local v1, "frec":Lorg/apache/poi/hssf/record/FormulaRecord;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getRow()I

    move-result v8

    .line 222
    iget-object v10, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->this$0:Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;

    iget-boolean v10, v10, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->_formulasNotResults:Z

    if-eqz v10, :cond_4

    .line 223
    const/4 v10, 0x0

    check-cast v10, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getParsedExpression()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->toFormulaString(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 225
    :cond_4
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/FormulaRecord;->hasCachedResultString()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 228
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->outputNextStringValue:Z

    .line 229
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getRow()I

    move-result v10

    iput v10, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->nextRow:I

    goto/16 :goto_0

    .line 231
    :cond_5
    iget-object v10, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->_ft:Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;

    invoke-virtual {v10, v1}, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;->formatNumberDateCell(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)Ljava/lang/String;

    move-result-object v9

    .line 234
    goto/16 :goto_0

    .line 236
    .end local v1    # "frec":Lorg/apache/poi/hssf/record/FormulaRecord;
    :sswitch_4
    iget-boolean v10, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->outputNextStringValue:Z

    if-eqz v10, :cond_0

    move-object v7, p1

    .line 238
    check-cast v7, Lorg/apache/poi/hssf/record/StringRecord;

    .line 239
    .local v7, "srec":Lorg/apache/poi/hssf/record/StringRecord;
    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/StringRecord;->getString()Ljava/lang/String;

    move-result-object v9

    .line 240
    iget v8, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->nextRow:I

    .line 241
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->outputNextStringValue:Z

    goto/16 :goto_0

    .end local v7    # "srec":Lorg/apache/poi/hssf/record/StringRecord;
    :sswitch_5
    move-object v2, p1

    .line 245
    check-cast v2, Lorg/apache/poi/hssf/record/LabelRecord;

    .line 246
    .local v2, "lrec":Lorg/apache/poi/hssf/record/LabelRecord;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/LabelRecord;->getRow()I

    move-result v8

    .line 247
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/LabelRecord;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 248
    goto/16 :goto_0

    .end local v2    # "lrec":Lorg/apache/poi/hssf/record/LabelRecord;
    :sswitch_6
    move-object v3, p1

    .line 250
    check-cast v3, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    .line 251
    .local v3, "lsrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->getRow()I

    move-result v8

    .line 252
    iget-object v10, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->sstRecord:Lorg/apache/poi/hssf/record/SSTRecord;

    if-nez v10, :cond_6

    .line 253
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "No SST record found"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 255
    :cond_6
    iget-object v10, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->sstRecord:Lorg/apache/poi/hssf/record/SSTRecord;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->getSSTIndex()I

    move-result v11

    invoke-virtual {v10, v11}, Lorg/apache/poi/hssf/record/SSTRecord;->getString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/poi/hssf/record/common/UnicodeString;->toString()Ljava/lang/String;

    move-result-object v9

    .line 256
    goto/16 :goto_0

    .end local v3    # "lsrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    :sswitch_7
    move-object v4, p1

    .line 258
    check-cast v4, Lorg/apache/poi/hssf/record/NoteRecord;

    .line 259
    .local v4, "nrec":Lorg/apache/poi/hssf/record/NoteRecord;
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/NoteRecord;->getRow()I

    move-result v8

    .line 261
    goto/16 :goto_0

    .end local v4    # "nrec":Lorg/apache/poi/hssf/record/NoteRecord;
    :sswitch_8
    move-object v5, p1

    .line 263
    check-cast v5, Lorg/apache/poi/hssf/record/NumberRecord;

    .line 264
    .local v5, "numrec":Lorg/apache/poi/hssf/record/NumberRecord;
    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/NumberRecord;->getRow()I

    move-result v8

    .line 265
    iget-object v10, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->_ft:Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;

    invoke-virtual {v10, v5}, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;->formatNumberDateCell(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)Ljava/lang/String;

    move-result-object v9

    .line 266
    goto/16 :goto_0

    .line 277
    .end local v5    # "numrec":Lorg/apache/poi/hssf/record/NumberRecord;
    .end local p1    # "record":Lorg/apache/poi/hssf/record/Record;
    :cond_7
    iget-object v10, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->_text:Ljava/lang/StringBuffer;

    const-string v11, "\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 197
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_3
        0x1c -> :sswitch_7
        0x85 -> :sswitch_0
        0xfc -> :sswitch_2
        0xfd -> :sswitch_6
        0x203 -> :sswitch_8
        0x204 -> :sswitch_5
        0x207 -> :sswitch_4
        0x809 -> :sswitch_1
    .end sparse-switch
.end method
