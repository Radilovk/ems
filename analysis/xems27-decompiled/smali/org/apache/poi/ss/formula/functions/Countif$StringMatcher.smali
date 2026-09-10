.class public final Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;
.super Lorg/apache/poi/ss/formula/functions/Countif$MatcherBase;
.source "Countif.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/Countif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringMatcher"
.end annotation


# instance fields
.field private final _pattern:Ljava/util/regex/Pattern;

.field private final _value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "operator"    # Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    .line 316
    invoke-direct {p0, p2}, Lorg/apache/poi/ss/formula/functions/Countif$MatcherBase;-><init>(Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;)V

    .line 317
    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->_value:Ljava/lang/String;

    .line 318
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->getCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->_pattern:Ljava/util/regex/Pattern;

    goto :goto_0

    .line 322
    :cond_0
    invoke-static {p1}, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->getWildCardPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->_pattern:Ljava/util/regex/Pattern;

    .line 323
    nop

    .line 328
    :goto_0
    return-void
.end method

.method public static getWildCardPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 10
    .param p0, "value"    # Ljava/lang/String;

    .line 380
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 381
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 382
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 383
    .local v2, "hasWildCard":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_5

    .line 384
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 385
    .local v4, "ch":C
    const/16 v5, 0x24

    if-eq v4, v5, :cond_4

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_4

    const/16 v6, 0x3f

    if-eq v4, v6, :cond_3

    const/16 v5, 0x5b

    if-eq v4, v5, :cond_4

    const/16 v7, 0x5d

    const/16 v8, 0x7e

    if-eq v4, v8, :cond_0

    if-eq v4, v7, :cond_4

    const/16 v5, 0x5e

    if-eq v4, v5, :cond_4

    packed-switch v4, :pswitch_data_0

    .line 422
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 392
    :pswitch_0
    const/4 v2, 0x1

    .line 394
    const-string v5, ".*"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    goto :goto_2

    .line 397
    :cond_0
    add-int/lit8 v9, v3, 0x1

    if-ge v9, v0, :cond_2

    .line 398
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 399
    const/16 v9, 0x2a

    if-eq v4, v9, :cond_1

    if-eq v4, v6, :cond_1

    goto :goto_1

    .line 402
    :cond_1
    const/4 v2, 0x1

    .line 403
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 404
    add-int/lit8 v3, v3, 0x1

    .line 405
    goto :goto_2

    .line 409
    :cond_2
    :goto_1
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 410
    goto :goto_2

    .line 387
    :cond_3
    const/4 v2, 0x1

    .line 389
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 390
    goto :goto_2

    .line 419
    :cond_4
    :pswitch_1
    const-string v5, "\\"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 420
    nop

    .line 383
    .end local v4    # "ch":C
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 424
    .end local v3    # "i":I
    :cond_5
    if-eqz v2, :cond_6

    .line 425
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    return-object v3

    .line 427
    :cond_6
    const/4 v3, 0x0

    return-object v3

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected getValueText()Ljava/lang/String;
    .locals 1

    .line 331
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->_pattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->_value:Ljava/lang/String;

    return-object v0

    .line 334
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public matches(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 5
    .param p1, "x"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 338
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/BlankEval;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 339
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->getCode()I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_0

    .line 349
    return v2

    .line 346
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->_value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 342
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->_value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    .line 351
    :cond_4
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-nez v0, :cond_5

    .line 355
    return v2

    .line 357
    :cond_5
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "testedValue":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v3, :cond_8

    iget-object v4, p0, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->_value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v3, :cond_8

    .line 361
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->getCode()I

    move-result v4

    if-eqz v4, :cond_7

    if-eq v4, v1, :cond_6

    .line 366
    return v2

    .line 364
    :cond_6
    return v3

    .line 362
    :cond_7
    return v3

    .line 368
    :cond_8
    iget-object v1, p0, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->_pattern:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_9

    .line 369
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->evaluate(Z)Z

    move-result v1

    return v1

    .line 373
    :cond_9
    iget-object v1, p0, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->_value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->evaluate(I)Z

    move-result v1

    return v1
.end method
