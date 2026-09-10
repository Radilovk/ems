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
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "operator"    # Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    .prologue
    .line 316
    invoke-direct {p0, p2}, Lorg/apache/poi/ss/formula/functions/Countif$MatcherBase;-><init>(Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;)V

    .line 317
    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->_value:Ljava/lang/String;

    .line 318
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;->getCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->_pattern:Ljava/util/regex/Pattern;

    .line 328
    :goto_0
    return-void

    .line 322
    :pswitch_0
    invoke-static {p1}, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->getWildCardPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->_pattern:Ljava/util/regex/Pattern;

    goto :goto_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getWildCardPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 7
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 380
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 381
    .local v3, "len":I
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 382
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 383
    .local v1, "hasWildCard":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 384
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 385
    .local v0, "ch":C
    sparse-switch v0, :sswitch_data_0

    .line 422
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 383
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 387
    :sswitch_0
    const/4 v1, 0x1

    .line 389
    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 392
    :sswitch_1
    const/4 v1, 0x1

    .line 394
    const-string v5, ".*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 397
    :sswitch_2
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v3, :cond_0

    .line 398
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 399
    sparse-switch v0, :sswitch_data_1

    .line 409
    :cond_0
    const/16 v5, 0x7e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 402
    :sswitch_3
    const/4 v1, 0x1

    .line 403
    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 404
    add-int/lit8 v2, v2, 0x1

    .line 405
    goto :goto_1

    .line 419
    :sswitch_4
    const-string v5, "\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 424
    .end local v0    # "ch":C
    :cond_1
    if-eqz v1, :cond_2

    .line 425
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 427
    :goto_2
    return-object v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 385
    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_4
        0x28 -> :sswitch_4
        0x29 -> :sswitch_4
        0x2a -> :sswitch_1
        0x2e -> :sswitch_4
        0x3f -> :sswitch_0
        0x5b -> :sswitch_4
        0x5d -> :sswitch_4
        0x5e -> :sswitch_4
        0x7e -> :sswitch_2
    .end sparse-switch

    .line 399
    :sswitch_data_1
    .sparse-switch
        0x2a -> :sswitch_3
        0x3f -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method protected getValueText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->_pattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->_value:Ljava/lang/String;

    .line 334
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->_pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public matches(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 4
    .param p1, "x"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 338
    instance-of v3, p1, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eqz v3, :cond_1

    .line 339
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->getCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 373
    .end local p1    # "x":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 342
    .restart local p1    # "x":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :pswitch_1
    iget-object v3, p0, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->_value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 346
    :pswitch_2
    iget-object v3, p0, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->_value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 351
    :cond_1
    instance-of v3, p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-nez v3, :cond_2

    move v1, v2

    .line 355
    goto :goto_0

    .line 357
    :cond_2
    check-cast p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    .end local p1    # "x":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "testedValue":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v1, :cond_3

    iget-object v3, p0, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->_value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v1, :cond_3

    .line 361
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->getCode()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    move v1, v2

    .line 366
    goto :goto_0

    :pswitch_3
    move v1, v2

    .line 363
    goto :goto_0

    .line 368
    :cond_3
    iget-object v1, p0, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->_pattern:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_4

    .line 369
    iget-object v1, p0, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->_pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->evaluate(Z)Z

    move-result v1

    goto :goto_0

    .line 373
    :cond_4
    iget-object v1, p0, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->_value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/functions/Countif$StringMatcher;->evaluate(I)Z

    move-result v1

    goto :goto_0

    .line 339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 361
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
