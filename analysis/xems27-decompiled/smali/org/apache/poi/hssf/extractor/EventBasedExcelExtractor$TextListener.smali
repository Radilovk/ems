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
            "Ljava/util/List<",
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
    .locals 1

    .line 190
    iput-object p1, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->this$0:Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->_text:Ljava/lang/StringBuffer;

    .line 184
    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->sheetNum:I

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->outputNextStringValue:Z

    .line 188
    iput p1, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->nextRow:I

    .line 191
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->sheetNames:Ljava/util/List;

    .line 192
    return-void
.end method


# virtual methods
.method public processRecord(Lorg/apache/poi/hssf/record/Record;)V
    .locals 11
    .param p1, "record"    # Lorg/apache/poi/hssf/record/Record;

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "thisText":Ljava/lang/String;
    const/4 v1, -0x1

    .line 197
    .local v1, "thisRow":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v2

    const/4 v3, 0x6

    const-string v4, "\n"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v2, v3, :cond_a

    const/16 v3, 0x1c

    if-eq v2, v3, :cond_9

    const/16 v3, 0x85

    if-eq v2, v3, :cond_8

    const/16 v3, 0x207

    if-eq v2, v3, :cond_7

    const/16 v3, 0x809

    if-eq v2, v3, :cond_5

    const/16 v3, 0xfc

    if-eq v2, v3, :cond_4

    const/16 v3, 0xfd

    if-eq v2, v3, :cond_2

    const/16 v3, 0x203

    if-eq v2, v3, :cond_1

    const/16 v3, 0x204

    if-eq v2, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    move-object v2, v6

    .local v2, "frec":Lorg/apache/poi/hssf/record/FormulaRecord;
    move-object v3, v6

    .local v3, "sr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    move-object v5, v6

    .line 245
    .local v5, "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    move-object v6, p1

    check-cast v6, Lorg/apache/poi/hssf/record/LabelRecord;

    .line 246
    .local v6, "lrec":Lorg/apache/poi/hssf/record/LabelRecord;
    invoke-virtual {v6}, Lorg/apache/poi/hssf/record/LabelRecord;->getRow()I

    move-result v1

    .line 247
    invoke-virtual {v6}, Lorg/apache/poi/hssf/record/LabelRecord;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 248
    goto/16 :goto_0

    .line 197
    .end local v2    # "frec":Lorg/apache/poi/hssf/record/FormulaRecord;
    .end local v3    # "sr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    .end local v5    # "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    .end local v6    # "lrec":Lorg/apache/poi/hssf/record/LabelRecord;
    :cond_1
    move-object v2, v6

    .restart local v2    # "frec":Lorg/apache/poi/hssf/record/FormulaRecord;
    move-object v3, v6

    .restart local v3    # "sr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    move-object v5, v6

    .local v5, "lsrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    move-object v7, v6

    .local v7, "nrec":Lorg/apache/poi/hssf/record/NoteRecord;
    move-object v8, v6

    .line 263
    .local v6, "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    .local v8, "lrec":Lorg/apache/poi/hssf/record/LabelRecord;
    move-object v9, p1

    check-cast v9, Lorg/apache/poi/hssf/record/NumberRecord;

    .line 264
    .local v9, "numrec":Lorg/apache/poi/hssf/record/NumberRecord;
    invoke-virtual {v9}, Lorg/apache/poi/hssf/record/NumberRecord;->getRow()I

    move-result v1

    .line 265
    iget-object v10, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->_ft:Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;

    invoke-virtual {v10, v9}, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;->formatNumberDateCell(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)Ljava/lang/String;

    move-result-object v0

    .line 266
    goto/16 :goto_0

    .line 197
    .end local v2    # "frec":Lorg/apache/poi/hssf/record/FormulaRecord;
    .end local v3    # "sr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    .end local v5    # "lsrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    .end local v6    # "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    .end local v7    # "nrec":Lorg/apache/poi/hssf/record/NoteRecord;
    .end local v8    # "lrec":Lorg/apache/poi/hssf/record/LabelRecord;
    .end local v9    # "numrec":Lorg/apache/poi/hssf/record/NumberRecord;
    :cond_2
    move-object v2, v6

    .restart local v2    # "frec":Lorg/apache/poi/hssf/record/FormulaRecord;
    move-object v3, v6

    .restart local v3    # "sr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    move-object v5, v6

    .line 250
    .local v5, "lrec":Lorg/apache/poi/hssf/record/LabelRecord;
    .restart local v6    # "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    move-object v7, p1

    check-cast v7, Lorg/apache/poi/hssf/record/LabelSSTRecord;

    .line 251
    .local v7, "lsrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->getRow()I

    move-result v1

    .line 252
    iget-object v8, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->sstRecord:Lorg/apache/poi/hssf/record/SSTRecord;

    if-eqz v8, :cond_3

    .line 255
    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->getSSTIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/apache/poi/hssf/record/SSTRecord;->getString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/hssf/record/common/UnicodeString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    goto/16 :goto_0

    .line 253
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v8, "No SST record found"

    invoke-direct {v4, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 197
    .end local v2    # "frec":Lorg/apache/poi/hssf/record/FormulaRecord;
    .end local v3    # "sr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    .end local v5    # "lrec":Lorg/apache/poi/hssf/record/LabelRecord;
    .end local v6    # "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    .end local v7    # "lsrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    :cond_4
    move-object v2, v6

    .local v2, "sr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    move-object v3, v6

    .line 215
    .local v3, "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    move-object v5, p1

    check-cast v5, Lorg/apache/poi/hssf/record/SSTRecord;

    iput-object v5, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->sstRecord:Lorg/apache/poi/hssf/record/SSTRecord;

    .line 216
    goto/16 :goto_0

    .line 197
    .end local v2    # "sr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    .end local v3    # "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    :cond_5
    move-object v2, v6

    .line 203
    .restart local v2    # "sr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    move-object v3, p1

    check-cast v3, Lorg/apache/poi/hssf/record/BOFRecord;

    .line 204
    .restart local v3    # "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/BOFRecord;->getType()I

    move-result v6

    const/16 v7, 0x10

    if-ne v6, v7, :cond_d

    .line 205
    iget v6, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->sheetNum:I

    add-int/2addr v6, v5

    iput v6, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->sheetNum:I

    .line 206
    const/4 v5, -0x1

    iput v5, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->rowNum:I

    .line 208
    iget-object v5, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->this$0:Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;

    iget-boolean v5, v5, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->_includeSheetNames:Z

    if-eqz v5, :cond_d

    .line 209
    iget-object v5, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_6

    iget-object v5, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    :cond_6
    iget-object v5, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->_text:Ljava/lang/StringBuffer;

    iget-object v6, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->sheetNames:Ljava/util/List;

    iget v7, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->sheetNum:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 197
    .end local v2    # "sr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    .end local v3    # "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    :cond_7
    move-object v2, v6

    .local v2, "frec":Lorg/apache/poi/hssf/record/FormulaRecord;
    move-object v3, v6

    .local v3, "sr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    move-object v5, v6

    .line 236
    .local v5, "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    iget-boolean v6, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->outputNextStringValue:Z

    if-eqz v6, :cond_d

    .line 238
    move-object v6, p1

    check-cast v6, Lorg/apache/poi/hssf/record/StringRecord;

    .line 239
    .local v6, "srec":Lorg/apache/poi/hssf/record/StringRecord;
    invoke-virtual {v6}, Lorg/apache/poi/hssf/record/StringRecord;->getString()Ljava/lang/String;

    move-result-object v0

    .line 240
    iget v1, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->nextRow:I

    .line 241
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->outputNextStringValue:Z

    .line 242
    .end local v6    # "srec":Lorg/apache/poi/hssf/record/StringRecord;
    goto :goto_0

    .line 199
    .end local v2    # "frec":Lorg/apache/poi/hssf/record/FormulaRecord;
    .end local v3    # "sr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    .end local v5    # "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    :cond_8
    move-object v2, p1

    check-cast v2, Lorg/apache/poi/hssf/record/BoundSheetRecord;

    .line 200
    .local v2, "sr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    iget-object v3, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->sheetNames:Ljava/util/List;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->getSheetname()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    goto :goto_0

    .line 197
    .end local v2    # "sr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    :cond_9
    move-object v2, v6

    .local v2, "frec":Lorg/apache/poi/hssf/record/FormulaRecord;
    move-object v3, v6

    .restart local v3    # "sr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    move-object v5, v6

    .local v5, "lsrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    move-object v7, v6

    .line 258
    .local v6, "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    .local v7, "lrec":Lorg/apache/poi/hssf/record/LabelRecord;
    move-object v8, p1

    check-cast v8, Lorg/apache/poi/hssf/record/NoteRecord;

    .line 259
    .local v8, "nrec":Lorg/apache/poi/hssf/record/NoteRecord;
    invoke-virtual {v8}, Lorg/apache/poi/hssf/record/NoteRecord;->getRow()I

    move-result v1

    .line 261
    goto :goto_0

    .line 197
    .end local v2    # "frec":Lorg/apache/poi/hssf/record/FormulaRecord;
    .end local v3    # "sr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    .end local v5    # "lsrec":Lorg/apache/poi/hssf/record/LabelSSTRecord;
    .end local v6    # "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    .end local v7    # "lrec":Lorg/apache/poi/hssf/record/LabelRecord;
    .end local v8    # "nrec":Lorg/apache/poi/hssf/record/NoteRecord;
    :cond_a
    move-object v2, v6

    .local v2, "sr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    move-object v3, v6

    .line 219
    .local v3, "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    move-object v7, p1

    check-cast v7, Lorg/apache/poi/hssf/record/FormulaRecord;

    .line 220
    .local v7, "frec":Lorg/apache/poi/hssf/record/FormulaRecord;
    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/FormulaRecord;->getRow()I

    move-result v1

    .line 222
    iget-object v8, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->this$0:Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;

    iget-boolean v8, v8, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->_formulasNotResults:Z

    if-eqz v8, :cond_b

    .line 223
    check-cast v6, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/FormulaRecord;->getParsedExpression()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v5

    invoke-static {v6, v5}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->toFormulaString(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 225
    :cond_b
    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/FormulaRecord;->hasCachedResultString()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 228
    iput-boolean v5, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->outputNextStringValue:Z

    .line 229
    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/FormulaRecord;->getRow()I

    move-result v5

    iput v5, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->nextRow:I

    goto :goto_0

    .line 231
    :cond_c
    iget-object v5, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->_ft:Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;

    invoke-virtual {v5, v7}, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;->formatNumberDateCell(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)Ljava/lang/String;

    move-result-object v0

    .line 234
    nop

    .line 271
    .end local v2    # "sr":Lorg/apache/poi/hssf/record/BoundSheetRecord;
    .end local v3    # "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    .end local v7    # "frec":Lorg/apache/poi/hssf/record/FormulaRecord;
    :cond_d
    :goto_0
    if-eqz v0, :cond_10

    .line 272
    iget v2, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->rowNum:I

    if-eq v1, v2, :cond_e

    .line 273
    iput v1, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->rowNum:I

    .line 274
    iget-object v2, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_f

    .line 275
    iget-object v2, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 277
    :cond_e
    iget-object v2, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->_text:Ljava/lang/StringBuffer;

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    :cond_f
    :goto_1
    iget-object v2, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    :cond_10
    return-void
.end method
