.class public Lorg/apache/poi/ss/format/CellNumberFormatter;
.super Lorg/apache/poi/ss/format/CellFormatter;
.source "CellNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;,
        Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;,
        Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    }
.end annotation


# static fields
.field private static final SIMPLE_FLOAT:Lorg/apache/poi/ss/format/CellFormatter;

.field private static final SIMPLE_INT:Lorg/apache/poi/ss/format/CellFormatter;

.field static final SIMPLE_NUMBER:Lorg/apache/poi/ss/format/CellFormatter;


# instance fields
.field private afterFractional:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private decimalFmt:Ljava/text/DecimalFormat;

.field private decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private denominatorFmt:Ljava/lang/String;

.field private denominatorSpecials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation
.end field

.field private final desc:Ljava/lang/String;

.field private exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private exponentDigitSpecials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation
.end field

.field private exponentSpecials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation
.end field

.field private fractionalSpecials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation
.end field

.field private improperFraction:Z

.field private integerCommas:Z

.field private integerSpecials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation
.end field

.field private maxDenominator:I

.field private numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private numeratorFmt:Ljava/lang/String;

.field private numeratorSpecials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation
.end field

.field private printfFmt:Ljava/lang/String;

.field private scale:D

.field private slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private final specials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lorg/apache/poi/ss/format/CellNumberFormatter$1;

    const-string v1, "General"

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/format/CellNumberFormatter$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->SIMPLE_NUMBER:Lorg/apache/poi/ss/format/CellFormatter;

    .line 90
    new-instance v0, Lorg/apache/poi/ss/format/CellNumberFormatter;

    const-string v1, "#"

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/format/CellNumberFormatter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->SIMPLE_INT:Lorg/apache/poi/ss/format/CellFormatter;

    .line 92
    new-instance v0, Lorg/apache/poi/ss/format/CellNumberFormatter;

    const-string v1, "#.#"

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/format/CellNumberFormatter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->SIMPLE_FLOAT:Lorg/apache/poi/ss/format/CellFormatter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 17
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-direct/range {p0 .. p1}, Lorg/apache/poi/ss/format/CellFormatter;-><init>(Ljava/lang/String;)V

    .line 253
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->scale:D

    .line 255
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    .line 257
    new-instance v9, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v14}, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;-><init>(Lorg/apache/poi/ss/format/CellNumberFormatter;Lorg/apache/poi/ss/format/CellNumberFormatter$1;)V

    .line 258
    .local v9, "partHandler":Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;
    sget-object v14, Lorg/apache/poi/ss/format/CellFormatType;->NUMBER:Lorg/apache/poi/ss/format/CellFormatType;

    move-object/from16 v0, p1

    invoke-static {v0, v14, v9}, Lorg/apache/poi/ss/format/CellFormatPart;->parseFormat(Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 262
    .local v2, "descBuf":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v14, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v14, :cond_1

    .line 263
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 264
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 267
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/poi/ss/format/CellNumberFormatter;->interpretCommas(Ljava/lang/StringBuffer;)V

    .line 270
    const/4 v6, 0x0

    .line 271
    .local v6, "fractionPartWidth":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-nez v14, :cond_4

    .line 272
    const/4 v10, 0x0

    .line 284
    .local v10, "precision":I
    :cond_2
    :goto_0
    if-nez v10, :cond_5

    .line 285
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalSpecials:Ljava/util/List;

    .line 289
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-nez v14, :cond_6

    .line 290
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponentSpecials:Ljava/util/List;

    .line 297
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-nez v14, :cond_7

    .line 298
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    .line 299
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorSpecials:Ljava/util/List;

    .line 317
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerEnd()I

    move-result v16

    invoke-interface/range {v14 .. v16}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    .line 319
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-nez v14, :cond_a

    .line 320
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v14, "%"

    invoke-direct {v5, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 322
    .local v5, "fmtBuf":Ljava/lang/StringBuffer;
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->calculateIntegerPartWidth()I

    move-result v8

    .line 323
    .local v8, "integerPartWidth":I
    add-int v13, v8, v6

    .line 325
    .local v13, "totalWidth":I
    const/16 v14, 0x30

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v14

    const/16 v15, 0x2e

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 327
    const-string v14, "f"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->printfFmt:Ljava/lang/String;

    .line 360
    .end local v8    # "integerPartWidth":I
    .end local v13    # "totalWidth":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v14, :cond_3

    .line 361
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->scale:D

    .line 364
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->desc:Ljava/lang/String;

    .line 365
    return-void

    .line 274
    .end local v5    # "fmtBuf":Ljava/lang/StringBuffer;
    .end local v10    # "precision":I
    :cond_4
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->interpretPrecision()I

    move-result v10

    .line 275
    .restart local v10    # "precision":I
    add-int/lit8 v6, v10, 0x1

    .line 276
    if-nez v10, :cond_2

    .line 279
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-interface {v14, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 280
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto/16 :goto_0

    .line 287
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalEnd()I

    move-result v16

    invoke-interface/range {v14 .. v16}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalSpecials:Ljava/util/List;

    goto/16 :goto_1

    .line 292
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-interface {v14, v15}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 293
    .local v3, "exponentPos":I
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lorg/apache/poi/ss/format/CellNumberFormatter;->specialsFor(II)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponentSpecials:Ljava/util/List;

    .line 294
    add-int/lit8 v14, v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/apache/poi/ss/format/CellNumberFormatter;->specialsFor(I)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponentDigitSpecials:Ljava/util/List;

    goto/16 :goto_2

    .line 301
    .end local v3    # "exponentPos":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-nez v14, :cond_8

    .line 302
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    .line 306
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-interface {v14, v15}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/apache/poi/ss/format/CellNumberFormatter;->specialsFor(I)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorSpecials:Ljava/util/List;

    .line 307
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorSpecials:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 309
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    goto/16 :goto_3

    .line 304
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-interface {v14, v15}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/apache/poi/ss/format/CellNumberFormatter;->specialsFor(I)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    goto :goto_5

    .line 311
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorSpecials:Ljava/util/List;

    invoke-static {v14}, Lorg/apache/poi/ss/format/CellNumberFormatter;->maxValue(Ljava/util/List;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->maxDenominator:I

    .line 312
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    invoke-static {v14}, Lorg/apache/poi/ss/format/CellNumberFormatter;->singleNumberFormat(Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorFmt:Ljava/lang/String;

    .line 313
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorSpecials:Ljava/util/List;

    invoke-static {v14}, Lorg/apache/poi/ss/format/CellNumberFormatter;->singleNumberFormat(Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorFmt:Ljava/lang/String;

    goto/16 :goto_3

    .line 330
    :cond_a
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 331
    .restart local v5    # "fmtBuf":Ljava/lang/StringBuffer;
    const/4 v4, 0x1

    .line 332
    .local v4, "first":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    .line 333
    .local v12, "specialList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_e

    .line 335
    const-string v14, "0"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    const/4 v4, 0x0

    .line 344
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalSpecials:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_11

    .line 345
    const/16 v14, 0x2e

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 346
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalSpecials:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 347
    .local v11, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    invoke-static {v11}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 348
    if-nez v4, :cond_d

    .line 349
    const/16 v14, 0x30

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 350
    :cond_d
    const/4 v4, 0x0

    goto :goto_6

    .line 338
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v11    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_e
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_f
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 339
    .restart local v11    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    invoke-static {v11}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 340
    if-eqz v4, :cond_10

    const/16 v14, 0x23

    :goto_8
    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 341
    const/4 v4, 0x0

    goto :goto_7

    .line 340
    :cond_10
    const/16 v14, 0x30

    goto :goto_8

    .line 354
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v11    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_11
    const/16 v14, 0x45

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 355
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponentSpecials:Ljava/util/List;

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponentSpecials:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    invoke-interface/range {v14 .. v16}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v14

    invoke-static {v5, v14}, Lorg/apache/poi/ss/format/CellNumberFormatter;->placeZeros(Ljava/lang/StringBuffer;Ljava/util/List;)V

    .line 357
    new-instance v14, Ljava/text/DecimalFormat;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalFmt:Ljava/text/DecimalFormat;

    goto/16 :goto_4
.end method

.method static synthetic access$000()Lorg/apache/poi/ss/format/CellFormatter;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->SIMPLE_INT:Lorg/apache/poi/ss/format/CellFormatter;

    return-object v0
.end method

.method static synthetic access$100()Lorg/apache/poi/ss/format/CellFormatter;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->SIMPLE_FLOAT:Lorg/apache/poi/ss/format/CellFormatter;

    return-object v0
.end method

.method static synthetic access$1034(Lorg/apache/poi/ss/format/CellNumberFormatter;D)D
    .locals 3
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellNumberFormatter;
    .param p1, "x1"    # D

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->scale:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->scale:D

    return-wide v0
.end method

.method static synthetic access$200(Lorg/apache/poi/ss/format/CellNumberFormatter;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellNumberFormatter;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    return-object v0
.end method

.method static synthetic access$202(Lorg/apache/poi/ss/format/CellNumberFormatter;Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellNumberFormatter;
    .param p1, "x1"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .prologue
    .line 39
    iput-object p1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    return-object p1
.end method

.method static synthetic access$300(Lorg/apache/poi/ss/format/CellNumberFormatter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellNumberFormatter;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/poi/ss/format/CellNumberFormatter;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellNumberFormatter;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    return-object v0
.end method

.method static synthetic access$402(Lorg/apache/poi/ss/format/CellNumberFormatter;Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellNumberFormatter;
    .param p1, "x1"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .prologue
    .line 39
    iput-object p1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    return-object p1
.end method

.method static synthetic access$500(Lorg/apache/poi/ss/format/CellNumberFormatter;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellNumberFormatter;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    return-object v0
.end method

.method static synthetic access$502(Lorg/apache/poi/ss/format/CellNumberFormatter;Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellNumberFormatter;
    .param p1, "x1"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .prologue
    .line 39
    iput-object p1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    return-object p1
.end method

.method static synthetic access$600(Lorg/apache/poi/ss/format/CellNumberFormatter;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellNumberFormatter;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    return-object v0
.end method

.method static synthetic access$602(Lorg/apache/poi/ss/format/CellNumberFormatter;Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellNumberFormatter;
    .param p1, "x1"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .prologue
    .line 39
    iput-object p1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    return-object p1
.end method

.method static synthetic access$700(Lorg/apache/poi/ss/format/CellNumberFormatter;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellNumberFormatter;

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->previousNumber()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/util/List;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;

    .prologue
    .line 39
    invoke-static {p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->firstDigit(Ljava/util/List;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$902(Lorg/apache/poi/ss/format/CellNumberFormatter;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellNumberFormatter;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->improperFraction:Z

    return p1
.end method

.method private calculateIntegerPartWidth()I
    .locals 4

    .prologue
    .line 455
    iget-object v3, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 456
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    const/4 v0, 0x0

    .line 457
    .local v0, "digitCount":I
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 458
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 460
    .local v2, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    iget-object v3, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-ne v2, v3, :cond_2

    .line 465
    .end local v2    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_1
    return v0

    .line 462
    .restart local v2    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_2
    invoke-static {v2}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static deleteMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;Z)Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;
    .locals 1
    .param p0, "start"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .param p1, "startInclusive"    # Z
    .param p2, "end"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .param p3, "endInclusive"    # Z

    .prologue
    .line 389
    new-instance v0, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;-><init>(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;Z)V

    return-object v0
.end method

.method private static firstDigit(Ljava/util/List;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;"
        }
    .end annotation

    .prologue
    .line 375
    .local p0, "specials":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 376
    .local v1, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    invoke-static {v1}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    .end local v1    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private fractionalEnd()I
    .locals 3

    .prologue
    .line 548
    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v1, :cond_0

    .line 549
    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iput-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterFractional:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 554
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterFractional:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 556
    .local v0, "end":I
    :goto_1
    return v0

    .line 550
    .end local v0    # "end":I
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v1, :cond_1

    .line 551
    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iput-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto :goto_0

    .line 553
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterFractional:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto :goto_0

    .line 554
    :cond_2
    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterFractional:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_1
.end method

.method private static varargs hasChar(C[Ljava/util/List;)Z
    .locals 7
    .param p0, "ch"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C[",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 847
    .local p1, "numSpecials":[Ljava/util/List;, "[Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/util/List;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    move v2, v1

    .end local v1    # "i$":I
    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 848
    .local v5, "specials":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "i$":I
    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 849
    .local v4, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    iget-char v6, v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-ne v6, p0, :cond_0

    .line 850
    const/4 v6, 0x1

    .line 854
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .end local v5    # "specials":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    :goto_1
    return v6

    .line 847
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v5    # "specials":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    :cond_1
    add-int/lit8 v1, v2, 0x1

    .local v1, "i$":I
    move v2, v1

    .end local v1    # "i$":I
    .restart local v2    # "i$":I
    goto :goto_0

    .line 854
    .end local v5    # "specials":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private static varargs hasOnly(C[Ljava/util/List;)Z
    .locals 7
    .param p0, "ch"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C[",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 858
    .local p1, "numSpecials":[Ljava/util/List;, "[Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/util/List;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    move v2, v1

    .end local v1    # "i$":I
    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 859
    .local v5, "specials":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "i$":I
    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 860
    .local v4, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    iget-char v6, v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-eq v6, p0, :cond_0

    .line 861
    const/4 v6, 0x0

    .line 865
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .end local v5    # "specials":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    :goto_1
    return v6

    .line 858
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v5    # "specials":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    :cond_1
    add-int/lit8 v1, v2, 0x1

    .local v1, "i$":I
    move v2, v1

    .end local v1    # "i$":I
    .restart local v2    # "i$":I
    goto :goto_0

    .line 865
    .end local v5    # "specials":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    :cond_2
    const/4 v6, 0x1

    goto :goto_1
.end method

.method static insertMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;Ljava/lang/CharSequence;I)Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;
    .locals 2
    .param p0, "special"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .param p1, "toAdd"    # Ljava/lang/CharSequence;
    .param p2, "where"    # I

    .prologue
    .line 383
    new-instance v0, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;-><init>(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;Ljava/lang/CharSequence;ILorg/apache/poi/ss/format/CellNumberFormatter$1;)V

    return-object v0
.end method

.method private integerEnd()I
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iput-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 542
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    return v0

    .line 536
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iput-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto :goto_0

    .line 538
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v0, :cond_2

    .line 539
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iput-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto :goto_0

    .line 541
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto :goto_0

    .line 542
    :cond_3
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_1
.end method

.method private interpretCommas(Ljava/lang/StringBuffer;)V
    .locals 10
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    const-wide v8, 0x408f400000000000L    # 1000.0

    const/16 v6, 0x2c

    .line 490
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-direct {p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerEnd()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 492
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    const/4 v3, 0x1

    .line 493
    .local v3, "stillScaling":Z
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerCommas:Z

    .line 494
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 495
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 496
    .local v2, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    iget-char v4, v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-eq v4, v6, :cond_0

    .line 497
    const/4 v3, 0x0

    goto :goto_0

    .line 499
    :cond_0
    if-eqz v3, :cond_1

    .line 500
    iget-wide v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->scale:D

    div-double/2addr v4, v8

    iput-wide v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->scale:D

    goto :goto_0

    .line 502
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerCommas:Z

    goto :goto_0

    .line 507
    .end local v2    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_2
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v4, :cond_3

    .line 508
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-direct {p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalEnd()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 509
    :goto_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 510
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 511
    .restart local v2    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    iget-char v4, v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-eq v4, v6, :cond_5

    .line 520
    .end local v2    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_3
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 521
    const/4 v1, 0x0

    .line 522
    .local v1, "removed":I
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 523
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 524
    .restart local v2    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    iget v4, v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    sub-int/2addr v4, v1

    iput v4, v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    .line 525
    iget-char v4, v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-ne v4, v6, :cond_4

    .line 526
    add-int/lit8 v1, v1, 0x1

    .line 527
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 528
    iget v4, v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 514
    .end local v1    # "removed":I
    :cond_5
    iget-wide v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->scale:D

    div-double/2addr v4, v8

    iput-wide v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->scale:D

    goto :goto_1

    .line 531
    .end local v2    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .restart local v1    # "removed":I
    :cond_6
    return-void
.end method

.method private interpretPrecision()I
    .locals 6

    .prologue
    .line 469
    iget-object v3, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-nez v3, :cond_1

    .line 470
    const/4 v1, -0x1

    .line 484
    :cond_0
    return v1

    .line 472
    :cond_1
    const/4 v1, 0x0

    .line 473
    .local v1, "precision":I
    iget-object v3, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    iget-object v5, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 475
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 476
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 477
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 478
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 479
    .local v2, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    invoke-static {v2}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 480
    add-int/lit8 v1, v1, 0x1

    .line 483
    goto :goto_0
.end method

.method private static isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z
    .locals 2
    .param p0, "s"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .prologue
    .line 428
    iget-char v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static maxValue(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 404
    .local p0, "s":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private static placeZeros(Ljava/lang/StringBuffer;Ljava/util/List;)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, "specials":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 369
    .local v1, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    invoke-static {v1}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 370
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 372
    .end local v1    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_1
    return-void
.end method

.method private previousNumber()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 6

    .prologue
    .line 432
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    iget-object v5, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 433
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 434
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 435
    .local v3, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    invoke-static {v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 436
    move-object v2, v3

    .line 437
    .local v2, "numStart":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    move-object v1, v3

    .line 438
    .local v1, "last":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 439
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    check-cast v3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 440
    .restart local v3    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    iget v4, v1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    iget v5, v3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 451
    .end local v1    # "last":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .end local v2    # "numStart":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .end local v3    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_1
    :goto_1
    return-object v2

    .line 442
    .restart local v1    # "last":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .restart local v2    # "numStart":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .restart local v3    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_2
    invoke-static {v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 443
    move-object v2, v3

    .line 446
    move-object v1, v3

    goto :goto_0

    .line 451
    .end local v1    # "last":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .end local v2    # "numStart":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .end local v3    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static replaceMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;ZC)Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;
    .locals 6
    .param p0, "start"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .param p1, "startInclusive"    # Z
    .param p2, "end"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .param p3, "endInclusive"    # Z
    .param p4, "withChar"    # C

    .prologue
    .line 395
    new-instance v0, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;-><init>(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;ZC)V

    return-object v0
.end method

.method private static singleNumberFormat(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 400
    .local p0, "numSpecials":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private specialsFor(I)Ljava/util/List;
    .locals 1
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation

    .prologue
    .line 424
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->specialsFor(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private specialsFor(II)Ljava/util/List;
    .locals 6
    .param p1, "pos"    # I
    .param p2, "takeFirst"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt p1, v4, :cond_0

    .line 409
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 420
    :goto_0
    return-object v4

    .line 410
    :cond_0
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    add-int v5, p1, p2

    invoke-interface {v4, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 411
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 412
    .local v2, "last":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    add-int v0, p1, p2

    .line 413
    .local v0, "end":I
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 414
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 415
    .local v3, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    invoke-static {v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    iget v5, v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 420
    .end local v3    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_1
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v4, p1, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 417
    .restart local v3    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 418
    move-object v2, v3

    .line 419
    goto :goto_1
.end method

.method private writeFraction(DLjava/lang/StringBuffer;DLjava/lang/StringBuffer;Ljava/util/Set;)V
    .locals 20
    .param p1, "value"    # D
    .param p3, "result"    # Ljava/lang/StringBuffer;
    .param p4, "fractional"    # D
    .param p6, "output"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/lang/StringBuffer;",
            "D",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 775
    .local p7, "mods":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;>;"
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->improperFraction:Z

    if-nez v2, :cond_5

    .line 778
    const-wide/16 v2, 0x0

    cmpl-double v2, p4, v2

    if-nez v2, :cond_1

    const/16 v2, 0x30

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/util/List;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(C[Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 779
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v6, p7

    invoke-direct/range {v2 .. v7}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V

    .line 781
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 782
    .local v18, "start":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorSpecials:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorSpecials:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 784
    .local v13, "end":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    const/16 v2, 0x3f

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/util/List;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorSpecials:Ljava/util/List;

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(C[Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 787
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v5, 0x20

    move-object/from16 v0, v18

    invoke-static {v0, v2, v13, v3, v5}, Lorg/apache/poi/ss/format/CellNumberFormatter;->replaceMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;ZC)Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 844
    .end local v13    # "end":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .end local v18    # "start":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :goto_0
    return-void

    .line 790
    .restart local v13    # "end":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .restart local v18    # "start":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-static {v0, v2, v13, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->deleteMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;Z)Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 797
    .end local v13    # "end":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .end local v18    # "start":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_1
    const-wide/16 v2, 0x0

    cmpl-double v2, p1, v2

    if-nez v2, :cond_8

    const-wide/16 v2, 0x0

    cmpl-double v2, p4, v2

    if-nez v2, :cond_8

    const/4 v11, 0x1

    .line 798
    .local v11, "allZero":Z
    :goto_1
    const-wide/16 v2, 0x0

    cmpl-double v2, p4, v2

    if-nez v2, :cond_2

    const/16 v2, 0x30

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/util/List;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(C[Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_2
    const/16 v19, 0x1

    .line 800
    .local v19, "willShowFraction":Z
    :goto_2
    if-eqz v11, :cond_a

    const/16 v2, 0x23

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/util/List;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasOnly(C[Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x30

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/util/List;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(C[Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_3
    const/16 v17, 0x1

    .line 802
    .local v17, "removeBecauseZero":Z
    :goto_3
    if-nez v11, :cond_b

    const-wide/16 v2, 0x0

    cmpl-double v2, p1, v2

    if-nez v2, :cond_b

    if-eqz v19, :cond_b

    const/16 v2, 0x30

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/util/List;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(C[Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_b

    const/16 v16, 0x1

    .line 805
    .local v16, "removeBecauseFraction":Z
    :goto_4
    if-nez v17, :cond_4

    if-eqz v16, :cond_d

    .line 806
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 808
    .restart local v18    # "start":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    const/16 v2, 0x3f

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/util/List;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(C[Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 809
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    const/4 v5, 0x0

    const/16 v6, 0x20

    move-object/from16 v0, v18

    invoke-static {v0, v2, v3, v5, v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->replaceMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;ZC)Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 826
    .end local v11    # "allZero":Z
    .end local v16    # "removeBecauseFraction":Z
    .end local v17    # "removeBecauseZero":Z
    .end local v18    # "start":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .end local v19    # "willShowFraction":Z
    :cond_5
    :goto_5
    const-wide/16 v2, 0x0

    cmpl-double v2, p4, v2

    if-eqz v2, :cond_6

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->improperFraction:Z

    if-eqz v2, :cond_e

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    rem-double v2, p4, v2

    const-wide/16 v6, 0x0

    cmpl-double v2, v2, v6

    if-nez v2, :cond_e

    .line 828
    :cond_6
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v4, v2

    .line 829
    .local v4, "n":I
    const/4 v12, 0x1

    .line 835
    .local v12, "d":I
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->improperFraction:Z

    if-eqz v2, :cond_7

    .line 836
    int-to-long v2, v4

    int-to-double v6, v12

    mul-double v6, v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    add-long/2addr v2, v6

    long-to-int v4, v2

    .line 837
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorFmt:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    move-object/from16 v2, p0

    move-object/from16 v5, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeSingleInteger(Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;)V

    .line 839
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorFmt:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorSpecials:Ljava/util/List;

    move-object/from16 v5, p0

    move v7, v12

    move-object/from16 v8, p6

    move-object/from16 v10, p7

    invoke-direct/range {v5 .. v10}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeSingleInteger(Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 841
    .end local v4    # "n":I
    .end local v12    # "d":I
    :catch_0
    move-exception v15

    .line 842
    .local v15, "ignored":Ljava/lang/RuntimeException;
    invoke-virtual {v15}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    .line 797
    .end local v15    # "ignored":Ljava/lang/RuntimeException;
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 798
    .restart local v11    # "allZero":Z
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 800
    .restart local v19    # "willShowFraction":Z
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 802
    .restart local v17    # "removeBecauseZero":Z
    :cond_b
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 812
    .restart local v16    # "removeBecauseFraction":Z
    .restart local v18    # "start":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_c
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v2, v3, v5}, Lorg/apache/poi/ss/format/CellNumberFormatter;->deleteMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;Z)Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 816
    .end local v18    # "start":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v6, p7

    invoke-direct/range {v2 .. v7}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V

    goto/16 :goto_5

    .line 831
    .end local v11    # "allZero":Z
    .end local v16    # "removeBecauseFraction":Z
    .end local v17    # "removeBecauseZero":Z
    .end local v19    # "willShowFraction":Z
    :cond_e
    :try_start_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->maxDenominator:I

    move-wide/from16 v0, p4

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/format/SimpleFraction;->buildFractionMaxDenominator(DI)Lorg/apache/poi/ss/format/SimpleFraction;

    move-result-object v14

    .line 832
    .local v14, "frac":Lorg/apache/poi/ss/format/SimpleFraction;
    invoke-virtual {v14}, Lorg/apache/poi/ss/format/SimpleFraction;->getNumerator()I

    move-result v4

    .line 833
    .restart local v4    # "n":I
    invoke-virtual {v14}, Lorg/apache/poi/ss/format/SimpleFraction;->getDenominator()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v12

    .restart local v12    # "d":I
    goto :goto_6
.end method

.method private writeFractional(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/StringBuffer;
    .param p2, "output"    # Ljava/lang/StringBuffer;

    .prologue
    const/16 v7, 0x30

    .line 949
    iget-object v5, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalSpecials:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 950
    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v0, v5, 0x1

    .line 951
    .local v0, "digit":I
    iget-object v5, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v5, :cond_0

    .line 952
    const-string v5, "e"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .line 955
    .local v4, "strip":I
    :goto_0
    if-le v4, v0, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_1

    .line 956
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 954
    .end local v4    # "strip":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .restart local v4    # "strip":I
    goto :goto_0

    .line 957
    :cond_1
    iget-object v5, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalSpecials:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 958
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 959
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 960
    .local v3, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    .line 961
    .local v2, "resultCh":C
    if-ne v2, v7, :cond_2

    iget-char v5, v3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-eq v5, v7, :cond_2

    if-ge v0, v4, :cond_4

    .line 962
    :cond_2
    iget v5, v3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    invoke-virtual {p2, v5, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 967
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 968
    goto :goto_1

    .line 963
    :cond_4
    iget-char v5, v3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    const/16 v6, 0x3f

    if-ne v5, v6, :cond_3

    .line 965
    iget v5, v3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    const/16 v6, 0x20

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_2

    .line 970
    .end local v0    # "digit":I
    .end local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    .end local v2    # "resultCh":C
    .end local v3    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .end local v4    # "strip":I
    :cond_5
    return-void
.end method

.method private writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V
    .locals 13
    .param p1, "result"    # Ljava/lang/StringBuffer;
    .param p2, "output"    # Ljava/lang/StringBuffer;
    .param p5, "showCommas"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 885
    .local p3, "numSpecials":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    .local p4, "mods":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;>;"
    const-string v11, "."

    invoke-virtual {p1, v11}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v6, v11, -0x1

    .line 886
    .local v6, "pos":I
    if-gez v6, :cond_0

    .line 887
    iget-object v11, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v11, :cond_6

    iget-object v11, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    move-object/from16 v0, p3

    if-ne v0, v11, :cond_6

    .line 888
    const-string v11, "E"

    invoke-virtual {p1, v11}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v6, v11, -0x1

    .line 894
    :cond_0
    :goto_0
    const/4 v9, 0x0

    .local v9, "strip":I
    :goto_1
    if-ge v9, v6, :cond_1

    .line 895
    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    .line 896
    .local v7, "resultCh":C
    const/16 v11, 0x30

    if-eq v7, v11, :cond_7

    const/16 v11, 0x2c

    if-eq v7, v11, :cond_7

    .line 900
    .end local v7    # "resultCh":C
    :cond_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 901
    .local v4, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    const/4 v3, 0x0

    .line 902
    .local v3, "followWithComma":Z
    const/4 v5, 0x0

    .line 903
    .local v5, "lastOutputIntegerDigit":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    const/4 v1, 0x0

    .line 904
    .local v1, "digit":I
    :goto_2
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 906
    if-ltz v6, :cond_8

    .line 907
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    .line 912
    .restart local v7    # "resultCh":C
    :goto_3
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 913
    .local v8, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    if-eqz p5, :cond_9

    if-lez v1, :cond_9

    rem-int/lit8 v11, v1, 0x3

    if-nez v11, :cond_9

    const/4 v3, 0x1

    .line 914
    :goto_4
    const/4 v10, 0x0

    .line 915
    .local v10, "zeroStrip":Z
    const/16 v11, 0x30

    if-ne v7, v11, :cond_2

    iget-char v11, v8, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    const/16 v12, 0x30

    if-eq v11, v12, :cond_2

    iget-char v11, v8, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    const/16 v12, 0x3f

    if-eq v11, v12, :cond_2

    if-lt v6, v9, :cond_4

    .line 916
    :cond_2
    iget-char v11, v8, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    const/16 v12, 0x3f

    if-ne v11, v12, :cond_a

    if-ge v6, v9, :cond_a

    const/4 v10, 0x1

    .line 917
    :goto_5
    iget v11, v8, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    if-eqz v10, :cond_3

    const/16 v7, 0x20

    .end local v7    # "resultCh":C
    :cond_3
    invoke-virtual {p2, v11, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 918
    move-object v5, v8

    .line 920
    :cond_4
    if-eqz v3, :cond_5

    .line 921
    if-eqz v10, :cond_b

    const-string v11, " "

    :goto_6
    const/4 v12, 0x2

    invoke-static {v8, v11, v12}, Lorg/apache/poi/ss/format/CellNumberFormatter;->insertMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;Ljava/lang/CharSequence;I)Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 922
    const/4 v3, 0x0

    .line 924
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 925
    add-int/lit8 v6, v6, -0x1

    .line 926
    goto :goto_2

    .line 890
    .end local v1    # "digit":I
    .end local v3    # "followWithComma":Z
    .end local v4    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    .end local v5    # "lastOutputIntegerDigit":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .end local v8    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .end local v9    # "strip":I
    .end local v10    # "zeroStrip":Z
    :cond_6
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    add-int/lit8 v6, v11, -0x1

    goto :goto_0

    .line 894
    .restart local v7    # "resultCh":C
    .restart local v9    # "strip":I
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 910
    .end local v7    # "resultCh":C
    .restart local v1    # "digit":I
    .restart local v3    # "followWithComma":Z
    .restart local v4    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    .restart local v5    # "lastOutputIntegerDigit":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_8
    const/16 v7, 0x30

    .restart local v7    # "resultCh":C
    goto :goto_3

    .line 913
    .restart local v8    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_9
    const/4 v3, 0x0

    goto :goto_4

    .line 916
    .restart local v10    # "zeroStrip":Z
    :cond_a
    const/4 v10, 0x0

    goto :goto_5

    .line 921
    .end local v7    # "resultCh":C
    :cond_b
    const-string v11, ","

    goto :goto_6

    .line 927
    .end local v8    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .end local v10    # "zeroStrip":Z
    :cond_c
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 928
    .local v2, "extraLeadingDigits":Ljava/lang/StringBuffer;
    if-ltz v6, :cond_f

    .line 930
    add-int/lit8 v6, v6, 0x1

    .line 931
    new-instance v2, Ljava/lang/StringBuffer;

    .end local v2    # "extraLeadingDigits":Ljava/lang/StringBuffer;
    const/4 v11, 0x0

    invoke-virtual {p1, v11, v6}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 932
    .restart local v2    # "extraLeadingDigits":Ljava/lang/StringBuffer;
    if-eqz p5, :cond_e

    .line 933
    :goto_7
    if-lez v6, :cond_e

    .line 934
    if-lez v1, :cond_d

    rem-int/lit8 v11, v1, 0x3

    if-nez v11, :cond_d

    .line 935
    const/16 v11, 0x2c

    invoke-virtual {v2, v6, v11}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 936
    :cond_d
    add-int/lit8 v1, v1, 0x1

    .line 937
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    .line 940
    :cond_e
    const/4 v11, 0x1

    invoke-static {v5, v2, v11}, Lorg/apache/poi/ss/format/CellNumberFormatter;->insertMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;Ljava/lang/CharSequence;I)Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 943
    :cond_f
    return-void
.end method

.method private writeScientific(DLjava/lang/StringBuffer;Ljava/util/Set;)V
    .locals 17
    .param p1, "value"    # D
    .param p3, "output"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 698
    .local p4, "mods":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;>;"
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 699
    .local v3, "result":Ljava/lang/StringBuffer;
    new-instance v14, Ljava/text/FieldPosition;

    const/4 v2, 0x1

    invoke-direct {v14, v2}, Ljava/text/FieldPosition;-><init>(I)V

    .line 701
    .local v14, "fractionPos":Ljava/text/FieldPosition;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalFmt:Ljava/text/DecimalFormat;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3, v14}, Ljava/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 702
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerCommas:Z

    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V

    .line 703
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeFractional(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 742
    invoke-virtual {v14}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v10

    .line 743
    .local v10, "ePos":I
    add-int/lit8 v16, v10, 0x1

    .line 744
    .local v16, "signPos":I
    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v13

    .line 745
    .local v13, "expSignRes":C
    const/16 v2, 0x2d

    if-eq v13, v2, :cond_0

    .line 747
    const/16 v13, 0x2b

    .line 750
    const/16 v2, 0x2b

    move/from16 v0, v16

    invoke-virtual {v3, v0, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 754
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponentSpecials:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v15

    .line 755
    .local v15, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    invoke-interface {v15}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 756
    .local v11, "expSign":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    iget-char v12, v11, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    .line 760
    .local v12, "expSignFmt":C
    const/16 v2, 0x2d

    if-eq v13, v2, :cond_1

    const/16 v2, 0x2b

    if-ne v12, v2, :cond_2

    .line 761
    :cond_1
    const/4 v2, 0x1

    const/4 v4, 0x1

    invoke-static {v11, v2, v11, v4, v13}, Lorg/apache/poi/ss/format/CellNumberFormatter;->replaceMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;ZC)Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 765
    :goto_0
    new-instance v5, Ljava/lang/StringBuffer;

    add-int/lit8 v2, v16, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 767
    .local v5, "exponentNum":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponentDigitSpecials:Ljava/util/List;

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v6, p3

    move-object/from16 v8, p4

    invoke-direct/range {v4 .. v9}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V

    .line 768
    return-void

    .line 763
    .end local v5    # "exponentNum":Ljava/lang/StringBuffer;
    :cond_2
    const/4 v2, 0x1

    const/4 v4, 0x1

    invoke-static {v11, v2, v11, v4}, Lorg/apache/poi/ss/format/CellNumberFormatter;->deleteMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;Z)Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private writeSingleInteger(Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;)V
    .locals 7
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "num"    # I
    .param p3, "output"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "numSpecials":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    .local p5, "mods":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;>;"
    const/4 v5, 0x0

    .line 871
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 872
    .local v1, "sb":Ljava/lang/StringBuffer;
    new-instance v6, Ljava/util/Formatter;

    invoke-direct {v6, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 874
    .local v6, "formatter":Ljava/util/Formatter;
    :try_start_0
    sget-object v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->LOCALE:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v6, v0, p1, v2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 876
    invoke-virtual {v6}, Ljava/util/Formatter;->close()V

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 878
    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V

    .line 879
    return-void

    .line 876
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Ljava/util/Formatter;->close()V

    throw v0
.end method


# virtual methods
.method public formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 34
    .param p1, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p2, "valueObject"    # Ljava/lang/Object;

    .prologue
    .line 561
    check-cast p2, Ljava/lang/Number;

    .end local p2    # "valueObject":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .line 562
    .local v4, "value":D
    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->scale:D

    mul-double/2addr v4, v13

    .line 571
    const-wide/16 v13, 0x0

    cmpg-double v3, v4, v13

    if-gez v3, :cond_4

    const/16 v30, 0x1

    .line 572
    .local v30, "negative":Z
    :goto_0
    if-eqz v30, :cond_0

    .line 573
    neg-double v4, v4

    .line 576
    :cond_0
    const-wide/16 v7, 0x0

    .line 577
    .local v7, "fractional":D
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v3, :cond_1

    .line 578
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->improperFraction:Z

    if-eqz v3, :cond_5

    .line 579
    move-wide v7, v4

    .line 580
    const-wide/16 v4, 0x0

    .line 588
    :cond_1
    :goto_1
    new-instance v10, Ljava/util/TreeSet;

    invoke-direct {v10}, Ljava/util/TreeSet;-><init>()V

    .line 589
    .local v10, "mods":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;>;"
    new-instance v9, Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->desc:Ljava/lang/String;

    invoke-direct {v9, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 591
    .local v9, "output":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v3, :cond_6

    .line 592
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v9, v10}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeScientific(DLjava/lang/StringBuffer;Ljava/util/Set;)V

    .line 614
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v26

    .line 615
    .local v26, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 616
    .local v19, "changes":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;

    move-object/from16 v31, v3

    .line 617
    .local v31, "nextChange":Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;
    :goto_3
    const/16 v17, 0x0

    .line 618
    .local v17, "adjust":I
    new-instance v22, Ljava/util/BitSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/BitSet;-><init>()V

    .line 619
    .local v22, "deletedChars":Ljava/util/BitSet;
    :cond_2
    invoke-interface/range {v26 .. v26}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 620
    invoke-interface/range {v26 .. v26}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 621
    .local v33, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    move-object/from16 v0, v33

    iget v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    add-int v18, v3, v17

    .line 622
    .local v18, "adjustedPos":I
    move-object/from16 v0, v33

    iget v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_3

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v6, 0x23

    if-ne v3, v6, :cond_3

    .line 623
    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 624
    add-int/lit8 v17, v17, -0x1

    .line 625
    move-object/from16 v0, v33

    iget v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 627
    :cond_3
    :goto_4
    if-eqz v31, :cond_2

    move-object/from16 v0, v31

    iget-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->special:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-object/from16 v0, v33

    if-ne v0, v3, :cond_2

    .line 628
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v27

    .line 629
    .local v27, "lenBefore":I
    move-object/from16 v0, v33

    iget v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    add-int v29, v3, v17

    .line 630
    .local v29, "modPos":I
    const/16 v32, 0x0

    .line 631
    .local v32, "posTweak":I
    move-object/from16 v0, v31

    iget v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->op:I

    packed-switch v3, :pswitch_data_0

    .line 677
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown op: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    iget v11, v0, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->op:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 571
    .end local v7    # "fractional":D
    .end local v9    # "output":Ljava/lang/StringBuffer;
    .end local v10    # "mods":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;>;"
    .end local v17    # "adjust":I
    .end local v18    # "adjustedPos":I
    .end local v19    # "changes":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;>;"
    .end local v22    # "deletedChars":Ljava/util/BitSet;
    .end local v26    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    .end local v27    # "lenBefore":I
    .end local v29    # "modPos":I
    .end local v30    # "negative":Z
    .end local v31    # "nextChange":Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;
    .end local v32    # "posTweak":I
    .end local v33    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_4
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 582
    .restart local v7    # "fractional":D
    .restart local v30    # "negative":Z
    :cond_5
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    rem-double v7, v4, v13

    .line 584
    double-to-long v13, v4

    long-to-double v4, v13

    goto/16 :goto_1

    .line 593
    .restart local v9    # "output":Ljava/lang/StringBuffer;
    .restart local v10    # "mods":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->improperFraction:Z

    if-eqz v3, :cond_7

    .line 594
    const/4 v6, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeFraction(DLjava/lang/StringBuffer;DLjava/lang/StringBuffer;Ljava/util/Set;)V

    goto/16 :goto_2

    .line 596
    :cond_7
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 597
    .local v12, "result":Ljava/lang/StringBuffer;
    new-instance v23, Ljava/util/Formatter;

    move-object/from16 v0, v23

    invoke-direct {v0, v12}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 599
    .local v23, "f":Ljava/util/Formatter;
    :try_start_0
    sget-object v3, Lorg/apache/poi/ss/format/CellNumberFormatter;->LOCALE:Ljava/util/Locale;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->printfFmt:Ljava/lang/String;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    aput-object v14, v11, v13

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v6, v11}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    invoke-virtual/range {v23 .. v23}, Ljava/util/Formatter;->close()V

    .line 604
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-nez v3, :cond_8

    .line 605
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v9}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeFractional(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 606
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerCommas:Z

    move/from16 v16, v0

    move-object/from16 v11, p0

    move-object v13, v9

    move-object v15, v10

    invoke-direct/range {v11 .. v16}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V

    goto/16 :goto_2

    .line 601
    :catchall_0
    move-exception v3

    invoke-virtual/range {v23 .. v23}, Ljava/util/Formatter;->close()V

    throw v3

    :cond_8
    move-object/from16 v3, p0

    move-object v6, v12

    .line 609
    invoke-direct/range {v3 .. v10}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeFraction(DLjava/lang/StringBuffer;DLjava/lang/StringBuffer;Ljava/util/Set;)V

    goto/16 :goto_2

    .line 616
    .end local v12    # "result":Ljava/lang/StringBuffer;
    .end local v23    # "f":Ljava/util/Formatter;
    .restart local v19    # "changes":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;>;"
    .restart local v26    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    :cond_9
    const/16 v31, 0x0

    goto/16 :goto_3

    .line 634
    .restart local v17    # "adjust":I
    .restart local v18    # "adjustedPos":I
    .restart local v22    # "deletedChars":Ljava/util/BitSet;
    .restart local v27    # "lenBefore":I
    .restart local v29    # "modPos":I
    .restart local v31    # "nextChange":Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;
    .restart local v32    # "posTweak":I
    .restart local v33    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :pswitch_0
    move-object/from16 v0, v31

    iget-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->toAdd:Ljava/lang/CharSequence;

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, v33

    iget v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 680
    :cond_a
    :goto_5
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    sub-int v3, v3, v27

    add-int v17, v17, v3

    .line 682
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 683
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    .end local v31    # "nextChange":Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;
    check-cast v31, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;

    .restart local v31    # "nextChange":Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;
    goto/16 :goto_4

    .line 636
    :cond_b
    const/16 v32, 0x1

    .line 639
    :pswitch_1
    add-int v3, v29, v32

    move-object/from16 v0, v31

    iget-object v6, v0, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->toAdd:Ljava/lang/CharSequence;

    invoke-virtual {v9, v3, v6}, Ljava/lang/StringBuffer;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 643
    :pswitch_2
    move-object/from16 v0, v33

    iget v0, v0, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    move/from16 v21, v0

    .line 645
    .local v21, "delPos":I
    move-object/from16 v0, v31

    iget-boolean v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->startInclusive:Z

    if-nez v3, :cond_c

    .line 646
    add-int/lit8 v21, v21, 0x1

    .line 647
    add-int/lit8 v29, v29, 0x1

    .line 651
    :cond_c
    :goto_6
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 652
    add-int/lit8 v21, v21, 0x1

    .line 653
    add-int/lit8 v29, v29, 0x1

    goto :goto_6

    .line 656
    :cond_d
    move-object/from16 v0, v31

    iget-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->end:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iget v0, v3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    move/from16 v20, v0

    .line 658
    .local v20, "delEndPos":I
    move-object/from16 v0, v31

    iget-boolean v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->endInclusive:Z

    if-eqz v3, :cond_e

    .line 659
    add-int/lit8 v20, v20, 0x1

    .line 661
    :cond_e
    add-int v28, v20, v17

    .line 664
    .local v28, "modEndPos":I
    move/from16 v0, v29

    move/from16 v1, v28

    if-ge v0, v1, :cond_a

    .line 665
    const-string v3, ""

    move-object/from16 v0, v31

    iget-object v6, v0, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->toAdd:Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 666
    move/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 672
    :cond_f
    move-object/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(II)V

    goto :goto_5

    .line 668
    :cond_10
    move-object/from16 v0, v31

    iget-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->toAdd:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v24

    .line 669
    .local v24, "fillCh":C
    move/from16 v25, v29

    .local v25, "i":I
    :goto_7
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_f

    .line 670
    move/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 669
    add-int/lit8 v25, v25, 0x1

    goto :goto_7

    .line 685
    .end local v20    # "delEndPos":I
    .end local v21    # "delPos":I
    .end local v24    # "fillCh":C
    .end local v25    # "i":I
    .end local v28    # "modEndPos":I
    :cond_11
    const/16 v31, 0x0

    goto/16 :goto_4

    .line 690
    .end local v18    # "adjustedPos":I
    .end local v27    # "lenBefore":I
    .end local v29    # "modPos":I
    .end local v32    # "posTweak":I
    .end local v33    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_12
    if-eqz v30, :cond_13

    .line 691
    const/16 v3, 0x2d

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 692
    :cond_13
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 693
    return-void

    .line 631
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public simpleValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 979
    sget-object v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->SIMPLE_NUMBER:Lorg/apache/poi/ss/format/CellFormatter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/ss/format/CellFormatter;->formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 980
    return-void
.end method
