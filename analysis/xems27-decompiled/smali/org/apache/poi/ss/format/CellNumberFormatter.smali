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
            "Ljava/util/List<",
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
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation
.end field

.field private exponentSpecials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation
.end field

.field private fractionalSpecials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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
            "Ljava/util/List<",
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
            "Ljava/util/List<",
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
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

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

    .line 251
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Lorg/apache/poi/ss/format/CellFormatter;-><init>(Ljava/lang/String;)V

    .line 253
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iput-wide v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->scale:D

    .line 255
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    .line 257
    new-instance v3, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;-><init>(Lorg/apache/poi/ss/format/CellNumberFormatter;Lorg/apache/poi/ss/format/CellNumberFormatter$1;)V

    .line 258
    .local v3, "partHandler":Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;
    sget-object v5, Lorg/apache/poi/ss/format/CellFormatType;->NUMBER:Lorg/apache/poi/ss/format/CellFormatType;

    move-object/from16 v6, p1

    invoke-static {v6, v5, v3}, Lorg/apache/poi/ss/format/CellFormatPart;->parseFormat(Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 262
    .local v5, "descBuf":Ljava/lang/StringBuffer;
    iget-object v7, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-nez v7, :cond_0

    iget-object v7, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v7, :cond_1

    :cond_0
    iget-object v7, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v7, :cond_1

    .line 263
    iput-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 264
    iput-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 267
    :cond_1
    invoke-direct {v0, v5}, Lorg/apache/poi/ss/format/CellNumberFormatter;->interpretCommas(Ljava/lang/StringBuffer;)V

    .line 270
    const/4 v7, 0x0

    .line 271
    .local v7, "fractionPartWidth":I
    iget-object v8, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-nez v8, :cond_2

    .line 272
    const/4 v4, 0x0

    .local v4, "precision":I
    goto :goto_0

    .line 274
    .end local v4    # "precision":I
    :cond_2
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->interpretPrecision()I

    move-result v8

    .line 275
    .local v8, "precision":I
    add-int/lit8 v7, v8, 0x1

    .line 276
    if-nez v8, :cond_3

    .line 279
    iget-object v9, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    iget-object v10, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-interface {v9, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 280
    iput-object v4, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 284
    :cond_3
    move v4, v8

    .end local v8    # "precision":I
    .restart local v4    # "precision":I
    :goto_0
    const/4 v8, 0x1

    if-nez v4, :cond_4

    .line 285
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    iput-object v9, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalSpecials:Ljava/util/List;

    goto :goto_1

    .line 287
    :cond_4
    iget-object v9, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    iget-object v10, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-interface {v9, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    add-int/2addr v10, v8

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalEnd()I

    move-result v11

    invoke-interface {v9, v10, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    iput-object v9, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalSpecials:Ljava/util/List;

    .line 289
    :goto_1
    iget-object v9, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    const/4 v10, 0x2

    if-nez v9, :cond_5

    .line 290
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    iput-object v9, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponentSpecials:Ljava/util/List;

    goto :goto_2

    .line 292
    :cond_5
    iget-object v11, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 293
    .local v9, "exponentPos":I
    invoke-direct {v0, v9, v10}, Lorg/apache/poi/ss/format/CellNumberFormatter;->specialsFor(II)Ljava/util/List;

    move-result-object v11

    iput-object v11, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponentSpecials:Ljava/util/List;

    .line 294
    add-int/lit8 v11, v9, 0x2

    invoke-direct {v0, v11}, Lorg/apache/poi/ss/format/CellNumberFormatter;->specialsFor(I)Ljava/util/List;

    move-result-object v11

    iput-object v11, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponentDigitSpecials:Ljava/util/List;

    .line 297
    .end local v9    # "exponentPos":I
    :goto_2
    iget-object v9, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-nez v9, :cond_6

    .line 298
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    iput-object v9, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    .line 299
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    iput-object v9, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorSpecials:Ljava/util/List;

    goto :goto_4

    .line 301
    :cond_6
    iget-object v9, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-nez v9, :cond_7

    .line 302
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    iput-object v9, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    goto :goto_3

    .line 304
    :cond_7
    iget-object v11, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-direct {v0, v9}, Lorg/apache/poi/ss/format/CellNumberFormatter;->specialsFor(I)Ljava/util/List;

    move-result-object v9

    iput-object v9, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    .line 306
    :goto_3
    iget-object v9, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    iget-object v11, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-interface {v9, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    add-int/2addr v9, v8

    invoke-direct {v0, v9}, Lorg/apache/poi/ss/format/CellNumberFormatter;->specialsFor(I)Ljava/util/List;

    move-result-object v9

    iput-object v9, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorSpecials:Ljava/util/List;

    .line 307
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 309
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    iput-object v9, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    goto :goto_4

    .line 311
    :cond_8
    iget-object v9, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorSpecials:Ljava/util/List;

    invoke-static {v9}, Lorg/apache/poi/ss/format/CellNumberFormatter;->maxValue(Ljava/util/List;)I

    move-result v9

    iput v9, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->maxDenominator:I

    .line 312
    iget-object v9, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    invoke-static {v9}, Lorg/apache/poi/ss/format/CellNumberFormatter;->singleNumberFormat(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorFmt:Ljava/lang/String;

    .line 313
    iget-object v9, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorSpecials:Ljava/util/List;

    invoke-static {v9}, Lorg/apache/poi/ss/format/CellNumberFormatter;->singleNumberFormat(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorFmt:Ljava/lang/String;

    .line 317
    :goto_4
    iget-object v9, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    const/4 v11, 0x0

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerEnd()I

    move-result v12

    invoke-interface {v9, v11, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    iput-object v9, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    .line 319
    iget-object v9, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    const/16 v11, 0x2e

    const/16 v12, 0x30

    if-nez v9, :cond_9

    .line 320
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "%"

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 322
    .local v8, "fmtBuf":Ljava/lang/StringBuffer;
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->calculateIntegerPartWidth()I

    move-result v9

    .line 323
    .local v9, "integerPartWidth":I
    add-int v10, v9, v7

    .line 325
    .local v10, "totalWidth":I
    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 327
    const-string v11, "f"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->printfFmt:Ljava/lang/String;

    .line 329
    .end local v8    # "fmtBuf":Ljava/lang/StringBuffer;
    .end local v9    # "integerPartWidth":I
    .end local v10    # "totalWidth":I
    goto/16 :goto_9

    .line 330
    :cond_9
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 331
    .local v9, "fmtBuf":Ljava/lang/StringBuffer;
    const/4 v13, 0x1

    .line 332
    .local v13, "first":Z
    iget-object v14, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    .line 333
    .local v14, "specialList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    iget-object v15, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ne v15, v8, :cond_a

    .line 335
    const-string v8, "0"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    const/4 v8, 0x0

    .end local v13    # "first":Z
    .local v8, "first":Z
    goto :goto_7

    .line 338
    .end local v8    # "first":Z
    .restart local v13    # "first":Z
    :cond_a
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 339
    .local v15, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    invoke-static {v15}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 340
    if-eqz v13, :cond_b

    const/16 v16, 0x23

    const/16 v1, 0x23

    goto :goto_6

    :cond_b
    const/16 v1, 0x30

    :goto_6
    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 341
    const/4 v1, 0x0

    move v13, v1

    .line 343
    .end local v15    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_c
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_5

    .line 338
    :cond_d
    move v8, v13

    .line 344
    .end local v13    # "first":Z
    .local v8, "first":Z
    :goto_7
    iget-object v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalSpecials:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_10

    .line 345
    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 346
    iget-object v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalSpecials:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 347
    .local v2, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    invoke-static {v2}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 348
    if-nez v8, :cond_e

    .line 349
    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 350
    :cond_e
    const/4 v8, 0x0

    .line 352
    .end local v2    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_f
    goto :goto_8

    .line 354
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_10
    const/16 v1, 0x45

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 355
    iget-object v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponentSpecials:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v10, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-static {v9, v1}, Lorg/apache/poi/ss/format/CellNumberFormatter;->placeZeros(Ljava/lang/StringBuffer;Ljava/util/List;)V

    .line 357
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalFmt:Ljava/text/DecimalFormat;

    .line 360
    .end local v8    # "first":Z
    .end local v9    # "fmtBuf":Ljava/lang/StringBuffer;
    .end local v14    # "specialList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    :goto_9
    iget-object v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v1, :cond_11

    .line 361
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iput-wide v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->scale:D

    .line 364
    :cond_11
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->desc:Ljava/lang/String;

    .line 365
    return-void
.end method

.method static synthetic access$000()Lorg/apache/poi/ss/format/CellFormatter;
    .locals 1

    .line 39
    sget-object v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->SIMPLE_INT:Lorg/apache/poi/ss/format/CellFormatter;

    return-object v0
.end method

.method static synthetic access$100()Lorg/apache/poi/ss/format/CellFormatter;
    .locals 1

    .line 39
    sget-object v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->SIMPLE_FLOAT:Lorg/apache/poi/ss/format/CellFormatter;

    return-object v0
.end method

.method static synthetic access$1034(Lorg/apache/poi/ss/format/CellNumberFormatter;D)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellNumberFormatter;
    .param p1, "x1"    # D

    .line 39
    iget-wide v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->scale:D

    mul-double v0, v0, p1

    iput-wide v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->scale:D

    return-wide v0
.end method

.method static synthetic access$200(Lorg/apache/poi/ss/format/CellNumberFormatter;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellNumberFormatter;

    .line 39
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    return-object v0
.end method

.method static synthetic access$202(Lorg/apache/poi/ss/format/CellNumberFormatter;Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellNumberFormatter;
    .param p1, "x1"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 39
    iput-object p1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    return-object p1
.end method

.method static synthetic access$300(Lorg/apache/poi/ss/format/CellNumberFormatter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellNumberFormatter;

    .line 39
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/poi/ss/format/CellNumberFormatter;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellNumberFormatter;

    .line 39
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    return-object v0
.end method

.method static synthetic access$402(Lorg/apache/poi/ss/format/CellNumberFormatter;Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellNumberFormatter;
    .param p1, "x1"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 39
    iput-object p1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    return-object p1
.end method

.method static synthetic access$500(Lorg/apache/poi/ss/format/CellNumberFormatter;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellNumberFormatter;

    .line 39
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    return-object v0
.end method

.method static synthetic access$502(Lorg/apache/poi/ss/format/CellNumberFormatter;Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellNumberFormatter;
    .param p1, "x1"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 39
    iput-object p1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    return-object p1
.end method

.method static synthetic access$600(Lorg/apache/poi/ss/format/CellNumberFormatter;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellNumberFormatter;

    .line 39
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    return-object v0
.end method

.method static synthetic access$602(Lorg/apache/poi/ss/format/CellNumberFormatter;Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellNumberFormatter;
    .param p1, "x1"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 39
    iput-object p1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    return-object p1
.end method

.method static synthetic access$700(Lorg/apache/poi/ss/format/CellNumberFormatter;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellNumberFormatter;

    .line 39
    invoke-direct {p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->previousNumber()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/util/List;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;

    .line 39
    invoke-static {p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->firstDigit(Ljava/util/List;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$902(Lorg/apache/poi/ss/format/CellNumberFormatter;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellNumberFormatter;
    .param p1, "x1"    # Z

    .line 39
    iput-boolean p1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->improperFraction:Z

    return p1
.end method

.method private calculateIntegerPartWidth()I
    .locals 4

    .line 455
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 456
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    const/4 v1, 0x0

    .line 457
    .local v1, "digitCount":I
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 458
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 460
    .local v2, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    iget-object v3, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-ne v2, v3, :cond_0

    .line 461
    goto :goto_1

    .line 462
    :cond_0
    invoke-static {v2}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 463
    add-int/lit8 v1, v1, 0x1

    .line 464
    .end local v2    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_1
    goto :goto_0

    .line 465
    :cond_2
    :goto_1
    return v1
.end method

.method static deleteMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;Z)Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;
    .locals 1
    .param p0, "start"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .param p1, "startInclusive"    # Z
    .param p2, "end"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .param p3, "endInclusive"    # Z

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
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;"
        }
    .end annotation

    .line 375
    .local p0, "specials":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 376
    .local v1, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    invoke-static {v1}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    return-object v1

    .line 378
    .end local v1    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_0
    goto :goto_0

    .line 379
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private fractionalEnd()I
    .locals 2

    .line 548
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v0, :cond_0

    .line 549
    iput-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterFractional:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto :goto_0

    .line 550
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v0, :cond_1

    .line 551
    iput-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto :goto_0

    .line 553
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterFractional:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 554
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterFractional:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 556
    .local v0, "end":I
    :goto_1
    return v0
.end method

.method private static varargs hasChar(C[Ljava/util/List;)Z
    .locals 7
    .param p0, "ch"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C[",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)Z"
        }
    .end annotation

    .line 847
    .local p1, "numSpecials":[Ljava/util/List;, "[Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/util/List;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 848
    .local v3, "specials":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 849
    .local v5, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    iget-char v6, v5, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-ne v6, p0, :cond_0

    .line 850
    const/4 v6, 0x1

    return v6

    .line 852
    .end local v5    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_0
    goto :goto_1

    .line 847
    .end local v3    # "specials":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 854
    .end local v0    # "arr$":[Ljava/util/List;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static varargs hasOnly(C[Ljava/util/List;)Z
    .locals 7
    .param p0, "ch"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C[",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)Z"
        }
    .end annotation

    .line 858
    .local p1, "numSpecials":[Ljava/util/List;, "[Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/util/List;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 859
    .local v3, "specials":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 860
    .local v5, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    iget-char v6, v5, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-eq v6, p0, :cond_0

    .line 861
    const/4 v6, 0x0

    return v6

    .line 863
    .end local v5    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_0
    goto :goto_1

    .line 858
    .end local v3    # "specials":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 865
    .end local v0    # "arr$":[Ljava/util/List;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method static insertMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;Ljava/lang/CharSequence;I)Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;
    .locals 2
    .param p0, "special"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .param p1, "toAdd"    # Ljava/lang/CharSequence;
    .param p2, "where"    # I

    .line 383
    new-instance v0, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;-><init>(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;Ljava/lang/CharSequence;ILorg/apache/poi/ss/format/CellNumberFormatter$1;)V

    return-object v0
.end method

.method private integerEnd()I
    .locals 2

    .line 534
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v0, :cond_0

    .line 535
    iput-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto :goto_0

    .line 536
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v0, :cond_1

    .line 537
    iput-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto :goto_0

    .line 538
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v0, :cond_2

    .line 539
    iput-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    goto :goto_0

    .line 541
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 542
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->afterInteger:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :goto_1
    return v0
.end method

.method private interpretCommas(Ljava/lang/StringBuffer;)V
    .locals 8
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .line 490
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-direct {p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerEnd()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 492
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    const/4 v1, 0x1

    .line 493
    .local v1, "stillScaling":Z
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerCommas:Z

    .line 494
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    const-wide v3, 0x408f400000000000L    # 1000.0

    const/16 v5, 0x2c

    if-eqz v2, :cond_2

    .line 495
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 496
    .local v2, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    iget-char v6, v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-eq v6, v5, :cond_0

    .line 497
    const/4 v1, 0x0

    goto :goto_1

    .line 499
    :cond_0
    if-eqz v1, :cond_1

    .line 500
    iget-wide v5, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->scale:D

    div-double/2addr v5, v3

    iput-wide v5, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->scale:D

    goto :goto_1

    .line 502
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerCommas:Z

    .line 505
    .end local v2    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :goto_1
    goto :goto_0

    .line 507
    :cond_2
    iget-object v2, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v2, :cond_4

    .line 508
    iget-object v2, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-direct {p0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalEnd()I

    move-result v6

    invoke-interface {v2, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 509
    :goto_2
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 510
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 511
    .restart local v2    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    iget-char v6, v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-eq v6, v5, :cond_3

    .line 512
    goto :goto_3

    .line 514
    :cond_3
    iget-wide v6, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->scale:D

    div-double/2addr v6, v3

    iput-wide v6, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->scale:D

    .line 516
    .end local v2    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    goto :goto_2

    .line 520
    :cond_4
    :goto_3
    iget-object v2, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 521
    const/4 v2, 0x0

    .line 522
    .local v2, "removed":I
    :goto_4
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 523
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 524
    .local v3, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    iget v4, v3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    sub-int/2addr v4, v2

    iput v4, v3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    .line 525
    iget-char v4, v3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-ne v4, v5, :cond_5

    .line 526
    add-int/lit8 v2, v2, 0x1

    .line 527
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 528
    iget v4, v3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 530
    .end local v3    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_5
    goto :goto_4

    .line 531
    :cond_6
    return-void
.end method

.method private interpretPrecision()I
    .locals 4

    .line 469
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalPoint:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-nez v0, :cond_0

    .line 470
    const/4 v0, -0x1

    return v0

    .line 472
    :cond_0
    const/4 v1, 0x0

    .line 473
    .local v1, "precision":I
    iget-object v2, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v2, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 475
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 476
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 477
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 478
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 479
    .local v2, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    invoke-static {v2}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 480
    nop

    .end local v2    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    add-int/lit8 v1, v1, 0x1

    .line 483
    goto :goto_0

    .line 484
    :cond_2
    return v1
.end method

.method private static isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z
    .locals 2
    .param p0, "s"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 428
    iget-char v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static maxValue(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)I"
        }
    .end annotation

    .line 404
    .local p0, "s":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method private static placeZeros(Ljava/lang/StringBuffer;Ljava/util/List;)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)V"
        }
    .end annotation

    .line 368
    .local p1, "specials":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

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

    .line 371
    .end local v1    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_0
    goto :goto_0

    .line 372
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private previousNumber()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 6

    .line 432
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 433
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 434
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 435
    .local v1, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    invoke-static {v1}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 436
    move-object v2, v1

    .line 437
    .local v2, "numStart":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    move-object v3, v1

    .line 438
    .local v3, "last":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :goto_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 439
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 440
    iget v4, v3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    iget v5, v1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 441
    goto :goto_2

    .line 442
    :cond_0
    invoke-static {v1}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 443
    move-object v2, v1

    .line 446
    move-object v3, v1

    goto :goto_1

    .line 448
    :cond_1
    :goto_2
    return-object v2

    .line 450
    .end local v1    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .end local v2    # "numStart":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .end local v3    # "last":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_2
    goto :goto_0

    .line 451
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method static replaceMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;ZC)Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;
    .locals 7
    .param p0, "start"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .param p1, "startInclusive"    # Z
    .param p2, "end"    # Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .param p3, "endInclusive"    # Z
    .param p4, "withChar"    # C

    .line 395
    new-instance v6, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;-><init>(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;ZC)V

    return-object v6
.end method

.method private static singleNumberFormat(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 400
    .local p0, "numSpecials":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation

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
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 409
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 410
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    add-int v1, p1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 411
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 412
    .local v1, "last":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    add-int v2, p1, p2

    .line 413
    .local v2, "end":I
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 414
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 415
    .local v3, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    invoke-static {v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->isDigitFmt(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v3, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    iget v5, v1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 416
    goto :goto_1

    .line 417
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 418
    move-object v1, v3

    .line 419
    .end local v3    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    goto :goto_0

    .line 420
    :cond_2
    :goto_1
    iget-object v3, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3, p1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    return-object v3
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
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;",
            ">;)V"
        }
    .end annotation

    .line 775
    .local p7, "mods":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;>;"
    move-object/from16 v7, p0

    move-wide/from16 v8, p4

    move-object/from16 v10, p7

    iget-boolean v0, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->improperFraction:Z

    const-wide/16 v11, 0x0

    if-nez v0, :cond_b

    .line 778
    const/16 v0, 0x20

    const/4 v13, 0x2

    const/16 v14, 0x3f

    const/16 v1, 0x30

    const/4 v15, 0x0

    const/4 v6, 0x1

    cmpl-double v2, v8, v11

    if-nez v2, :cond_1

    new-array v2, v6, [Ljava/util/List;

    iget-object v3, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    aput-object v3, v2, v15

    invoke-static {v1, v2}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(C[Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 779
    iget-object v4, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v5, p7

    const/4 v12, 0x1

    move v6, v11

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V

    .line 781
    iget-object v1, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v12

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 782
    .local v1, "start":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    iget-object v2, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorSpecials:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v12

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 784
    .local v2, "end":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/util/List;

    iget-object v4, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    aput-object v4, v3, v15

    iget-object v4, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    aput-object v4, v3, v12

    iget-object v4, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorSpecials:Ljava/util/List;

    aput-object v4, v3, v13

    invoke-static {v14, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(C[Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 787
    invoke-static {v1, v15, v2, v12, v0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->replaceMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;ZC)Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 790
    :cond_0
    invoke-static {v1, v15, v2, v12}, Lorg/apache/poi/ss/format/CellNumberFormatter;->deleteMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;Z)Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 794
    :goto_0
    return-void

    .line 778
    .end local v1    # "start":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .end local v2    # "end":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    :cond_1
    const/4 v2, 0x1

    .line 797
    cmpl-double v3, p1, v11

    if-nez v3, :cond_2

    cmpl-double v3, v8, v11

    if-nez v3, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    move/from16 v16, v6

    .line 798
    .local v16, "allZero":Z
    cmpl-double v3, v8, v11

    if-nez v3, :cond_4

    new-array v3, v2, [Ljava/util/List;

    iget-object v4, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    aput-object v4, v3, v15

    invoke-static {v1, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(C[Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v6, 0x1

    :goto_3
    move/from16 v17, v6

    .line 800
    .local v17, "willShowFraction":Z
    if-eqz v16, :cond_6

    const/16 v3, 0x23

    new-array v4, v2, [Ljava/util/List;

    iget-object v5, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    aput-object v5, v4, v15

    invoke-static {v3, v4}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasOnly(C[Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_5

    new-array v3, v2, [Ljava/util/List;

    iget-object v4, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    aput-object v4, v3, v15

    invoke-static {v1, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(C[Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    const/4 v6, 0x1

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    :goto_4
    move/from16 v18, v6

    .line 802
    .local v18, "removeBecauseZero":Z
    if-nez v16, :cond_7

    cmpl-double v3, p1, v11

    if-nez v3, :cond_7

    if-eqz v17, :cond_7

    new-array v3, v2, [Ljava/util/List;

    iget-object v4, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    aput-object v4, v3, v15

    invoke-static {v1, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(C[Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v6, 0x1

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    :goto_5
    move/from16 v19, v6

    .line 805
    .local v19, "removeBecauseFraction":Z
    if-nez v18, :cond_9

    if-eqz v19, :cond_8

    goto :goto_6

    .line 816
    :cond_8
    iget-object v4, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V

    goto :goto_7

    .line 806
    :cond_9
    :goto_6
    iget-object v1, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 808
    .restart local v1    # "start":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    new-array v3, v13, [Ljava/util/List;

    iget-object v4, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    aput-object v4, v3, v15

    iget-object v4, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    aput-object v4, v3, v2

    invoke-static {v14, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->hasChar(C[Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 809
    iget-object v3, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-static {v1, v2, v3, v15, v0}, Lorg/apache/poi/ss/format/CellNumberFormatter;->replaceMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;ZC)Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 812
    :cond_a
    iget-object v0, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-static {v1, v2, v0, v15}, Lorg/apache/poi/ss/format/CellNumberFormatter;->deleteMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;Z)Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 826
    .end local v1    # "start":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .end local v16    # "allZero":Z
    .end local v17    # "willShowFraction":Z
    .end local v18    # "removeBecauseZero":Z
    .end local v19    # "removeBecauseFraction":Z
    :cond_b
    :goto_7
    cmpl-double v0, v8, v11

    if-eqz v0, :cond_d

    :try_start_0
    iget-boolean v0, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->improperFraction:Z

    if-eqz v0, :cond_c

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    rem-double v0, v8, v0

    cmpl-double v2, v0, v11

    if-nez v2, :cond_c

    goto :goto_8

    .line 831
    :cond_c
    iget v0, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->maxDenominator:I

    invoke-static {v8, v9, v0}, Lorg/apache/poi/ss/format/SimpleFraction;->buildFractionMaxDenominator(DI)Lorg/apache/poi/ss/format/SimpleFraction;

    move-result-object v0

    .line 832
    .local v0, "frac":Lorg/apache/poi/ss/format/SimpleFraction;
    invoke-virtual {v0}, Lorg/apache/poi/ss/format/SimpleFraction;->getNumerator()I

    move-result v1

    .line 833
    .local v1, "n":I
    invoke-virtual {v0}, Lorg/apache/poi/ss/format/SimpleFraction;->getDenominator()I

    move-result v2

    move v0, v2

    .local v2, "d":I
    goto :goto_9

    .line 828
    .end local v0    # "frac":Lorg/apache/poi/ss/format/SimpleFraction;
    .end local v1    # "n":I
    .end local v2    # "d":I
    :cond_d
    :goto_8
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    .line 829
    .restart local v1    # "n":I
    const/4 v2, 0x1

    move v0, v2

    .line 835
    .local v0, "d":I
    :goto_9
    iget-boolean v2, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->improperFraction:Z

    if-eqz v2, :cond_e

    .line 836
    int-to-long v2, v1

    int-to-double v4, v0

    mul-double v4, v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v1, v2

    move v11, v1

    goto :goto_a

    .line 835
    :cond_e
    move v11, v1

    .line 837
    .end local v1    # "n":I
    .local v11, "n":I
    :goto_a
    iget-object v2, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorFmt:Ljava/lang/String;

    iget-object v5, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->numeratorSpecials:Ljava/util/List;

    move-object/from16 v1, p0

    move v3, v11

    move-object/from16 v4, p6

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeSingleInteger(Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;)V

    .line 839
    iget-object v2, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorFmt:Ljava/lang/String;

    iget-object v5, v7, Lorg/apache/poi/ss/format/CellNumberFormatter;->denominatorSpecials:Ljava/util/List;

    move-object/from16 v1, p0

    move v3, v0

    move-object/from16 v4, p6

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeSingleInteger(Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    .end local v0    # "d":I
    .end local v11    # "n":I
    goto :goto_b

    .line 841
    :catch_0
    move-exception v0

    .line 842
    .local v0, "ignored":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 844
    .end local v0    # "ignored":Ljava/lang/RuntimeException;
    :goto_b
    return-void
.end method

.method private writeFractional(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/StringBuffer;
    .param p2, "output"    # Ljava/lang/StringBuffer;

    .line 949
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalSpecials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 950
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 951
    .local v0, "digit":I
    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v1, :cond_0

    .line 952
    const-string v1, "e"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "strip":I
    goto :goto_0

    .line 954
    .end local v1    # "strip":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 955
    .restart local v1    # "strip":I
    :goto_0
    const/16 v2, 0x30

    if-le v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_1

    .line 956
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 957
    :cond_1
    iget-object v3, p0, Lorg/apache/poi/ss/format/CellNumberFormatter;->fractionalSpecials:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 958
    .local v3, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 959
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 960
    .local v4, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    .line 961
    .local v5, "resultCh":C
    if-ne v5, v2, :cond_3

    iget-char v6, v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-eq v6, v2, :cond_3

    if-ge v0, v1, :cond_2

    goto :goto_2

    .line 963
    :cond_2
    iget-char v6, v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    const/16 v7, 0x3f

    if-ne v6, v7, :cond_4

    .line 965
    iget v6, v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    const/16 v7, 0x20

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_3

    .line 962
    :cond_3
    :goto_2
    iget v6, v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    invoke-virtual {p2, v6, v5}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 967
    :cond_4
    :goto_3
    nop

    .end local v4    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .end local v5    # "resultCh":C
    add-int/lit8 v0, v0, 0x1

    .line 968
    goto :goto_1

    .line 970
    .end local v0    # "digit":I
    .end local v1    # "strip":I
    .end local v3    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    :cond_5
    return-void
.end method

.method private writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V
    .locals 17
    .param p1, "result"    # Ljava/lang/StringBuffer;
    .param p2, "output"    # Ljava/lang/StringBuffer;
    .param p5, "showCommas"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;",
            ">;Z)V"
        }
    .end annotation

    .line 885
    .local p3, "numSpecials":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    .local p4, "mods":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 886
    .local v4, "pos":I
    if-gez v4, :cond_1

    .line 887
    iget-object v6, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v6, :cond_0

    iget-object v6, v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    if-ne v2, v6, :cond_0

    .line 888
    const-string v6, "E"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    goto :goto_0

    .line 890
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 894
    :cond_1
    :goto_0
    const/4 v6, 0x0

    .local v6, "strip":I
    :goto_1
    const/16 v7, 0x2c

    const/16 v8, 0x30

    if-ge v6, v4, :cond_3

    .line 895
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    .line 896
    .local v9, "resultCh":C
    if-eq v9, v8, :cond_2

    if-eq v9, v7, :cond_2

    .line 897
    goto :goto_2

    .line 894
    .end local v9    # "resultCh":C
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 900
    :cond_3
    :goto_2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v2, v9}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v9

    .line 901
    .local v9, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    const/4 v10, 0x0

    .line 902
    .local v10, "followWithComma":Z
    const/4 v11, 0x0

    .line 903
    .local v11, "lastOutputIntegerDigit":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    const/4 v12, 0x0

    .line 904
    .local v12, "digit":I
    :goto_3
    invoke-interface {v9}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_c

    .line 906
    if-ltz v4, :cond_4

    .line 907
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v13

    .local v13, "resultCh":C
    goto :goto_4

    .line 910
    .end local v13    # "resultCh":C
    :cond_4
    const/16 v13, 0x30

    .line 912
    .restart local v13    # "resultCh":C
    :goto_4
    invoke-interface {v9}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 913
    .local v15, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    if-eqz p5, :cond_5

    if-lez v12, :cond_5

    rem-int/lit8 v16, v12, 0x3

    if-nez v16, :cond_5

    const/16 v16, 0x1

    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    :goto_5
    move/from16 v10, v16

    .line 914
    const/16 v16, 0x0

    .line 915
    .local v16, "zeroStrip":Z
    const/16 v5, 0x3f

    if-ne v13, v8, :cond_7

    iget-char v7, v15, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-eq v7, v8, :cond_7

    iget-char v7, v15, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-eq v7, v5, :cond_7

    if-lt v4, v6, :cond_6

    goto :goto_6

    :cond_6
    move-object/from16 v14, p2

    goto :goto_8

    .line 916
    :cond_7
    :goto_6
    iget-char v7, v15, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    if-ne v7, v5, :cond_8

    if-ge v4, v6, :cond_8

    const/4 v14, 0x1

    :cond_8
    move/from16 v16, v14

    .line 917
    iget v5, v15, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    if-eqz v16, :cond_9

    const/16 v7, 0x20

    goto :goto_7

    :cond_9
    move v7, v13

    :goto_7
    move-object/from16 v14, p2

    invoke-virtual {v14, v5, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 918
    move-object v5, v15

    move-object v11, v5

    .line 920
    :goto_8
    if-eqz v10, :cond_b

    .line 921
    if-eqz v16, :cond_a

    const-string v5, " "

    goto :goto_9

    :cond_a
    const-string v5, ","

    :goto_9
    const/4 v7, 0x2

    invoke-static {v15, v5, v7}, Lorg/apache/poi/ss/format/CellNumberFormatter;->insertMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;Ljava/lang/CharSequence;I)Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 922
    const/4 v5, 0x0

    move v10, v5

    .line 924
    :cond_b
    add-int/lit8 v12, v12, 0x1

    .line 925
    nop

    .end local v13    # "resultCh":C
    .end local v15    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .end local v16    # "zeroStrip":Z
    add-int/lit8 v4, v4, -0x1

    .line 926
    const/4 v5, 0x1

    const/16 v7, 0x2c

    goto :goto_3

    .line 927
    :cond_c
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 928
    .local v5, "extraLeadingDigits":Ljava/lang/StringBuffer;
    if-ltz v4, :cond_f

    .line 930
    add-int/lit8 v4, v4, 0x1

    .line 931
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-virtual {v1, v14, v4}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v5, v7

    .line 932
    if-eqz p5, :cond_e

    .line 933
    :goto_a
    if-lez v4, :cond_e

    .line 934
    if-lez v12, :cond_d

    rem-int/lit8 v7, v12, 0x3

    if-nez v7, :cond_d

    .line 935
    const/16 v7, 0x2c

    invoke-virtual {v5, v4, v7}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 934
    :cond_d
    const/16 v7, 0x2c

    .line 936
    :goto_b
    add-int/lit8 v12, v12, 0x1

    .line 937
    add-int/lit8 v4, v4, -0x1

    goto :goto_a

    .line 940
    :cond_e
    const/4 v7, 0x1

    invoke-static {v11, v5, v7}, Lorg/apache/poi/ss/format/CellNumberFormatter;->insertMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;Ljava/lang/CharSequence;I)Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 943
    :cond_f
    return-void
.end method

.method private writeScientific(DLjava/lang/StringBuffer;Ljava/util/Set;)V
    .locals 20
    .param p1, "value"    # D
    .param p3, "output"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;",
            ">;)V"
        }
    .end annotation

    .line 698
    .local p4, "mods":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v8, v0

    .line 699
    .local v8, "result":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/text/FieldPosition;

    const/4 v9, 0x1

    invoke-direct {v0, v9}, Ljava/text/FieldPosition;-><init>(I)V

    move-object v10, v0

    .line 701
    .local v10, "fractionPos":Ljava/text/FieldPosition;
    iget-object v0, v6, Lorg/apache/poi/ss/format/CellNumberFormatter;->decimalFmt:Ljava/text/DecimalFormat;

    move-wide/from16 v11, p1

    invoke-virtual {v0, v11, v12, v8, v10}, Ljava/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 702
    iget-object v3, v6, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    iget-boolean v5, v6, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerCommas:Z

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V

    .line 703
    move-object/from16 v13, p3

    invoke-direct {v6, v8, v13}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeFractional(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 742
    invoke-virtual {v10}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v14

    .line 743
    .local v14, "ePos":I
    add-int/lit8 v15, v14, 0x1

    .line 744
    .local v15, "signPos":I
    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 745
    .local v0, "expSignRes":C
    const/16 v1, 0x2b

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_0

    .line 747
    const/16 v0, 0x2b

    .line 750
    invoke-virtual {v8, v15, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move v5, v0

    goto :goto_0

    .line 745
    :cond_0
    move v5, v0

    .line 754
    .end local v0    # "expSignRes":C
    .local v5, "expSignRes":C
    :goto_0
    iget-object v0, v6, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponentSpecials:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v16

    .line 755
    .local v16, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 756
    .local v4, "expSign":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    iget-char v3, v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->ch:C

    .line 760
    .local v3, "expSignFmt":C
    if-eq v5, v2, :cond_2

    if-ne v3, v1, :cond_1

    goto :goto_1

    .line 763
    :cond_1
    invoke-static {v4, v9, v4, v9}, Lorg/apache/poi/ss/format/CellNumberFormatter;->deleteMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;Z)Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 761
    :cond_2
    :goto_1
    invoke-static {v4, v9, v4, v9, v5}, Lorg/apache/poi/ss/format/CellNumberFormatter;->replaceMod(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;ZC)Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 765
    :goto_2
    new-instance v1, Ljava/lang/StringBuffer;

    add-int/lit8 v0, v15, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 767
    .local v1, "exponentNum":Ljava/lang/StringBuffer;
    iget-object v9, v6, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponentDigitSpecials:Ljava/util/List;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v18, v3

    .end local v3    # "expSignFmt":C
    .local v18, "expSignFmt":C
    move-object v3, v9

    move-object v9, v4

    .end local v4    # "expSign":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .local v9, "expSign":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    move-object/from16 v4, p4

    move/from16 v19, v5

    .end local v5    # "expSignRes":C
    .local v19, "expSignRes":C
    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V

    .line 768
    return-void
.end method

.method private writeSingleInteger(Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;)V
    .locals 8
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "num"    # I
    .param p3, "output"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$Special;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;",
            ">;)V"
        }
    .end annotation

    .line 871
    .local p4, "numSpecials":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    .local p5, "mods":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 872
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    move-object v7, v1

    .line 874
    .local v7, "formatter":Ljava/util/Formatter;
    :try_start_0
    sget-object v1, Lorg/apache/poi/ss/format/CellNumberFormatter;->LOCALE:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v7, v1, p1, v2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 876
    invoke-virtual {v7}, Ljava/util/Formatter;->close()V

    .line 877
    nop

    .line 878
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V

    .line 879
    return-void

    .line 876
    :catchall_0
    move-exception v1

    invoke-virtual {v7}, Ljava/util/Formatter;->close()V

    throw v1
.end method


# virtual methods
.method public formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 25
    .param p1, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p2, "valueObject"    # Ljava/lang/Object;

    .line 561
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 562
    .local v0, "value":D
    iget-wide v2, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->scale:D

    mul-double v0, v0, v2

    .line 571
    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v13, v2

    .line 572
    .local v13, "negative":Z
    if-eqz v13, :cond_1

    .line 573
    neg-double v0, v0

    .line 576
    :cond_1
    const-wide/16 v2, 0x0

    .line 577
    .local v2, "fractional":D
    iget-object v4, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->slash:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v4, :cond_3

    .line 578
    iget-boolean v4, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->improperFraction:Z

    if-eqz v4, :cond_2

    .line 579
    move-wide v2, v0

    .line 580
    const-wide/16 v0, 0x0

    move-wide v14, v0

    move-wide/from16 v16, v2

    goto :goto_1

    .line 582
    :cond_2
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    rem-double v2, v0, v4

    .line 584
    double-to-long v4, v0

    long-to-double v0, v4

    move-wide v14, v0

    move-wide/from16 v16, v2

    goto :goto_1

    .line 577
    :cond_3
    move-wide v14, v0

    move-wide/from16 v16, v2

    .line 588
    .end local v0    # "value":D
    .end local v2    # "fractional":D
    .local v14, "value":D
    .local v16, "fractional":D
    :goto_1
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    move-object v8, v0

    .line 589
    .local v8, "mods":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->desc:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 591
    .local v7, "output":Ljava/lang/StringBuffer;
    iget-object v0, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->exponent:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-eqz v0, :cond_4

    .line 592
    invoke-direct {v9, v14, v15, v7, v8}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeScientific(DLjava/lang/StringBuffer;Ljava/util/Set;)V

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    goto/16 :goto_2

    .line 593
    :cond_4
    iget-boolean v0, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->improperFraction:Z

    if-eqz v0, :cond_5

    .line 594
    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-wide v2, v14

    move-wide/from16 v5, v16

    move-object/from16 v18, v7

    .end local v7    # "output":Ljava/lang/StringBuffer;
    .local v18, "output":Ljava/lang/StringBuffer;
    move-object/from16 v19, v8

    .end local v8    # "mods":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;>;"
    .local v19, "mods":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;>;"
    invoke-direct/range {v1 .. v8}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeFraction(DLjava/lang/StringBuffer;DLjava/lang/StringBuffer;Ljava/util/Set;)V

    goto :goto_2

    .line 596
    .end local v18    # "output":Ljava/lang/StringBuffer;
    .end local v19    # "mods":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;>;"
    .restart local v7    # "output":Ljava/lang/StringBuffer;
    .restart local v8    # "mods":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;>;"
    :cond_5
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    .end local v7    # "output":Ljava/lang/StringBuffer;
    .end local v8    # "mods":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;>;"
    .restart local v18    # "output":Ljava/lang/StringBuffer;
    .restart local v19    # "mods":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v8, v0

    .line 597
    .local v8, "result":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, v8}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    move-object v7, v0

    .line 599
    .local v7, "f":Ljava/util/Formatter;
    :try_start_0
    sget-object v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->LOCALE:Ljava/util/Locale;

    iget-object v1, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->printfFmt:Ljava/lang/String;

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-virtual {v7, v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    invoke-virtual {v7}, Ljava/util/Formatter;->close()V

    .line 602
    nop

    .line 604
    iget-object v0, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->numerator:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-nez v0, :cond_6

    .line 605
    move-object/from16 v6, v18

    .end local v18    # "output":Ljava/lang/StringBuffer;
    .local v6, "output":Ljava/lang/StringBuffer;
    invoke-direct {v9, v8, v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeFractional(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 606
    iget-object v4, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerSpecials:Ljava/util/List;

    iget-boolean v0, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->integerCommas:Z

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v6

    move-object/from16 v5, v19

    .end local v6    # "output":Ljava/lang/StringBuffer;
    .restart local v18    # "output":Ljava/lang/StringBuffer;
    move v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeInteger(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/List;Ljava/util/Set;Z)V

    goto :goto_2

    .line 609
    :cond_6
    move-object/from16 v1, p0

    move-wide v2, v14

    move-object v4, v8

    move-wide/from16 v5, v16

    move-object/from16 v20, v7

    .end local v7    # "f":Ljava/util/Formatter;
    .local v20, "f":Ljava/util/Formatter;
    move-object/from16 v7, v18

    move-object/from16 v21, v8

    .end local v8    # "result":Ljava/lang/StringBuffer;
    .local v21, "result":Ljava/lang/StringBuffer;
    move-object/from16 v8, v19

    invoke-direct/range {v1 .. v8}, Lorg/apache/poi/ss/format/CellNumberFormatter;->writeFraction(DLjava/lang/StringBuffer;DLjava/lang/StringBuffer;Ljava/util/Set;)V

    .line 614
    .end local v20    # "f":Ljava/util/Formatter;
    .end local v21    # "result":Ljava/lang/StringBuffer;
    :goto_2
    iget-object v0, v9, Lorg/apache/poi/ss/format/CellNumberFormatter;->specials:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 615
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 616
    .local v1, "changes":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    .line 617
    .local v2, "nextChange":Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;
    :goto_3
    const/4 v3, 0x0

    .line 618
    .local v3, "adjust":I
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 619
    .local v4, "deletedChars":Ljava/util/BitSet;
    :goto_4
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 620
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 621
    .local v8, "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    iget v11, v8, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    add-int/2addr v11, v3

    .line 622
    .local v11, "adjustedPos":I
    iget v12, v8, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    invoke-virtual {v4, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    if-nez v12, :cond_8

    move-object/from16 v12, v18

    move-object/from16 v18, v0

    .end local v0    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    .local v12, "output":Ljava/lang/StringBuffer;
    .local v18, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    invoke-virtual {v12, v11}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    move-object/from16 v20, v2

    .end local v2    # "nextChange":Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;
    .local v20, "nextChange":Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;
    const/16 v2, 0x23

    if-ne v0, v2, :cond_9

    .line 623
    invoke-virtual {v12, v11}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 624
    add-int/lit8 v3, v3, -0x1

    .line 625
    iget v0, v8, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->set(I)V

    move-object/from16 v2, v20

    goto :goto_5

    .line 622
    .end local v12    # "output":Ljava/lang/StringBuffer;
    .end local v20    # "nextChange":Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;
    .restart local v0    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    .restart local v2    # "nextChange":Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;
    .local v18, "output":Ljava/lang/StringBuffer;
    :cond_8
    move-object/from16 v20, v2

    move-object/from16 v12, v18

    move-object/from16 v18, v0

    .line 627
    .end local v0    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    .end local v2    # "nextChange":Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;
    .restart local v12    # "output":Ljava/lang/StringBuffer;
    .local v18, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    .restart local v20    # "nextChange":Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;
    :cond_9
    move-object/from16 v2, v20

    .end local v20    # "nextChange":Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;
    .restart local v2    # "nextChange":Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;
    :goto_5
    if-eqz v2, :cond_15

    iget-object v0, v2, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->special:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    if-ne v8, v0, :cond_15

    .line 628
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 629
    .local v0, "lenBefore":I
    iget v9, v8, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    add-int/2addr v9, v3

    .line 630
    .local v9, "modPos":I
    const/16 v20, 0x0

    .line 631
    .local v20, "posTweak":I
    move/from16 v21, v11

    .end local v11    # "adjustedPos":I
    .local v21, "adjustedPos":I
    iget v11, v2, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->op:I

    move-wide/from16 v23, v14

    const/4 v14, 0x1

    .end local v14    # "value":D
    .local v23, "value":D
    if-eq v11, v14, :cond_13

    const/4 v15, 0x2

    if-eq v11, v15, :cond_11

    const/4 v15, 0x3

    if-ne v11, v15, :cond_10

    .line 643
    iget v5, v8, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    .line 645
    .local v5, "delPos":I
    iget-boolean v6, v2, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->startInclusive:Z

    if-nez v6, :cond_a

    .line 646
    add-int/lit8 v5, v5, 0x1

    .line 647
    add-int/lit8 v9, v9, 0x1

    .line 651
    :cond_a
    :goto_6
    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 652
    add-int/lit8 v5, v5, 0x1

    .line 653
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 656
    :cond_b
    iget-object v6, v2, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->end:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iget v6, v6, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    .line 658
    .local v6, "delEndPos":I
    iget-boolean v7, v2, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->endInclusive:Z

    if-eqz v7, :cond_c

    .line 659
    add-int/lit8 v6, v6, 0x1

    .line 661
    :cond_c
    add-int v7, v6, v3

    .line 664
    .local v7, "modEndPos":I
    if-ge v9, v7, :cond_f

    .line 665
    iget-object v11, v2, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->toAdd:Ljava/lang/CharSequence;

    const-string v15, ""

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 666
    invoke-virtual {v12, v9, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const/4 v15, 0x0

    goto :goto_8

    .line 668
    :cond_d
    iget-object v11, v2, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->toAdd:Ljava/lang/CharSequence;

    const/4 v15, 0x0

    invoke-interface {v11, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    .line 669
    .local v11, "fillCh":C
    move/from16 v22, v9

    move/from16 v14, v22

    .local v14, "i":I
    :goto_7
    if-ge v14, v7, :cond_e

    .line 670
    invoke-virtual {v12, v14, v11}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 669
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 672
    .end local v11    # "fillCh":C
    .end local v14    # "i":I
    :cond_e
    :goto_8
    invoke-virtual {v4, v5, v6}, Ljava/util/BitSet;->set(II)V

    goto :goto_a

    .line 664
    :cond_f
    const/4 v15, 0x0

    goto :goto_a

    .line 677
    :cond_10
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown op: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v2, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->op:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 634
    .end local v5    # "delPos":I
    .end local v6    # "delEndPos":I
    .end local v7    # "modEndPos":I
    :cond_11
    const/4 v15, 0x0

    iget-object v11, v2, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->toAdd:Ljava/lang/CharSequence;

    const-string v14, ","

    invoke-virtual {v11, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    iget v11, v8, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    invoke-virtual {v4, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 635
    goto :goto_a

    .line 636
    :cond_12
    const/16 v20, 0x1

    goto :goto_9

    .line 631
    :cond_13
    const/4 v15, 0x0

    .line 639
    :goto_9
    add-int v11, v9, v20

    iget-object v14, v2, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;->toAdd:Ljava/lang/CharSequence;

    invoke-virtual {v12, v11, v14}, Ljava/lang/StringBuffer;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 640
    nop

    .line 680
    :goto_a
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    sub-int/2addr v11, v0

    add-int/2addr v3, v11

    .line 682
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 683
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v2, v11

    check-cast v2, Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;

    goto :goto_b

    .line 685
    :cond_14
    const/4 v2, 0x0

    .line 686
    .end local v0    # "lenBefore":I
    .end local v9    # "modPos":I
    .end local v20    # "posTweak":I
    :goto_b
    move-object/from16 v9, p0

    move/from16 v11, v21

    move-wide/from16 v14, v23

    goto/16 :goto_5

    .line 627
    .end local v21    # "adjustedPos":I
    .end local v23    # "value":D
    .local v11, "adjustedPos":I
    .local v14, "value":D
    :cond_15
    move/from16 v21, v11

    move-wide/from16 v23, v14

    const/4 v15, 0x0

    .line 687
    .end local v8    # "s":Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .end local v11    # "adjustedPos":I
    .end local v14    # "value":D
    .restart local v23    # "value":D
    move-object/from16 v9, p0

    move-object/from16 v0, v18

    move-wide/from16 v14, v23

    const/4 v11, 0x0

    move-object/from16 v18, v12

    const/4 v12, 0x1

    goto/16 :goto_4

    .line 690
    .end local v12    # "output":Ljava/lang/StringBuffer;
    .end local v23    # "value":D
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    .restart local v14    # "value":D
    .local v18, "output":Ljava/lang/StringBuffer;
    :cond_16
    move-object/from16 v20, v2

    move-wide/from16 v23, v14

    move-object/from16 v12, v18

    move-object/from16 v18, v0

    .end local v0    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    .end local v2    # "nextChange":Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;
    .end local v14    # "value":D
    .restart local v12    # "output":Ljava/lang/StringBuffer;
    .local v18, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellNumberFormatter$Special;>;"
    .local v20, "nextChange":Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;
    .restart local v23    # "value":D
    if-eqz v13, :cond_17

    .line 691
    const/16 v0, 0x2d

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 692
    :cond_17
    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 693
    return-void

    .line 601
    .end local v1    # "changes":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;>;"
    .end local v3    # "adjust":I
    .end local v4    # "deletedChars":Ljava/util/BitSet;
    .end local v12    # "output":Ljava/lang/StringBuffer;
    .end local v20    # "nextChange":Lorg/apache/poi/ss/format/CellNumberFormatter$StringMod;
    .end local v23    # "value":D
    .local v7, "f":Ljava/util/Formatter;
    .local v8, "result":Ljava/lang/StringBuffer;
    .restart local v14    # "value":D
    .local v18, "output":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-wide/from16 v23, v14

    move-object/from16 v12, v18

    .end local v7    # "f":Ljava/util/Formatter;
    .end local v8    # "result":Ljava/lang/StringBuffer;
    .end local v14    # "value":D
    .end local v18    # "output":Ljava/lang/StringBuffer;
    .restart local v12    # "output":Ljava/lang/StringBuffer;
    .local v20, "f":Ljava/util/Formatter;
    .local v21, "result":Ljava/lang/StringBuffer;
    .restart local v23    # "value":D
    invoke-virtual/range {v20 .. v20}, Ljava/util/Formatter;->close()V

    throw v0
.end method

.method public simpleValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # Ljava/lang/Object;

    .line 979
    sget-object v0, Lorg/apache/poi/ss/format/CellNumberFormatter;->SIMPLE_NUMBER:Lorg/apache/poi/ss/format/CellFormatter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/ss/format/CellFormatter;->formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 980
    return-void
.end method
