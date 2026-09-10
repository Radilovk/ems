.class public abstract Lcom/alibaba/fastjson/parser/JSONLexerBase;
.super Ljava/lang/Object;
.source "JSONLexerBase.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/JSONLexer;
.implements Ljava/io/Closeable;


# static fields
.field protected static final INT_MULTMIN_RADIX_TEN:I = -0xccccccc

.field protected static final MULTMIN_RADIX_TEN:J = -0xcccccccccccccccL

.field private static final SBUF_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field

.field protected static final digits:[I

.field protected static final typeFieldName:[C


# instance fields
.field protected bp:I

.field protected calendar:Ljava/util/Calendar;

.field protected ch:C

.field protected eofPos:I

.field protected features:I

.field protected hasSpecial:Z

.field protected locale:Ljava/util/Locale;

.field public matchStat:I

.field protected np:I

.field protected pos:I

.field protected sbuf:[C

.field protected sp:I

.field protected stringDefaultValue:Ljava/lang/String;

.field protected timeZone:Ljava/util/TimeZone;

.field protected token:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 70
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_LOCAL:Ljava/lang/ThreadLocal;

    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    .line 5080
    const/16 v0, 0x67

    new-array v0, v0, [I

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    .line 5083
    const/16 v0, 0x30

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 5084
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v0, -0x30

    aput v2, v1, v0

    .line 5083
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5087
    .end local v0    # "i":I
    :cond_0
    const/16 v0, 0x61

    .restart local v0    # "i":I
    :goto_1
    const/16 v1, 0x66

    if-gt v0, v1, :cond_1

    .line 5088
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0xa

    aput v2, v1, v0

    .line 5087
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5090
    .end local v0    # "i":I
    :cond_1
    const/16 v0, 0x41

    .restart local v0    # "i":I
    :goto_2
    const/16 v1, 0x46

    if-gt v0, v1, :cond_2

    .line 5091
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v0, -0x41

    add-int/lit8 v2, v2, 0xa

    aput v2, v1, v0

    .line 5090
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5093
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "features"    # I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    .line 65
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    .line 66
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    .line 68
    const/4 v1, 0x0

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 72
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    .line 75
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    .line 77
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    .line 81
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 83
    if-nez v0, :cond_1

    .line 84
    const/16 v0, 0x200

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 86
    :cond_1
    return-void
.end method

.method public static isWhitespace(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 5074
    const/16 v0, 0x20

    if-gt p0, v0, :cond_1

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static readString([CI)Ljava/lang/String;
    .locals 13
    .param p0, "chars"    # [C
    .param p1, "chars_len"    # I

    .line 4630
    new-array v0, p1, [C

    .line 4631
    .local v0, "sbuf":[C
    const/4 v1, 0x0

    .line 4632
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, p1, :cond_9

    .line 4633
    aget-char v4, p0, v2

    .line 4635
    .local v4, "ch":C
    const/16 v5, 0x5c

    const/4 v6, 0x1

    if-eq v4, v5, :cond_0

    .line 4636
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .local v3, "len":I
    aput-char v4, v0, v1

    .line 4637
    move v1, v3

    goto/16 :goto_1

    .line 4639
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    aget-char v4, p0, v2

    .line 4641
    const/16 v7, 0x22

    if-eq v4, v7, :cond_8

    const/16 v7, 0x27

    if-eq v4, v7, :cond_7

    const/16 v7, 0x46

    if-eq v4, v7, :cond_6

    if-eq v4, v5, :cond_5

    const/16 v5, 0x62

    if-eq v4, v5, :cond_4

    const/16 v5, 0x66

    if-eq v4, v5, :cond_6

    const/16 v5, 0x6e

    if-eq v4, v5, :cond_3

    const/16 v5, 0x72

    if-eq v4, v5, :cond_2

    const/16 v5, 0x78

    const/16 v7, 0x10

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    .line 4708
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "unclosed.str.lit"

    invoke-direct {v3, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4676
    :pswitch_0
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    const/16 v5, 0xb

    aput-char v5, v0, v1

    .line 4677
    move v1, v3

    goto/16 :goto_1

    .line 4701
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :pswitch_1
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "len":I
    .local v10, "len":I
    new-instance v11, Ljava/lang/String;

    new-array v5, v5, [C

    add-int/lit8 v2, v2, 0x1

    aget-char v12, p0, v2

    aput-char v12, v5, v3

    add-int/2addr v2, v6

    aget-char v3, p0, v2

    aput-char v3, v5, v6

    add-int/2addr v2, v6

    aget-char v3, p0, v2

    aput-char v3, v5, v9

    add-int/2addr v2, v6

    aget-char v3, p0, v2

    aput-char v3, v5, v8

    invoke-direct {v11, v5}, Ljava/lang/String;-><init>([C)V

    invoke-static {v11, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-char v3, v3

    aput-char v3, v0, v1

    .line 4706
    move v1, v10

    goto/16 :goto_1

    .line 4670
    .end local v10    # "len":I
    .restart local v1    # "len":I
    :pswitch_2
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    const/16 v5, 0x9

    aput-char v5, v0, v1

    .line 4671
    move v1, v3

    goto/16 :goto_1

    .line 4664
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :pswitch_3
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    const/4 v5, 0x7

    aput-char v5, v0, v1

    .line 4665
    move v1, v3

    goto/16 :goto_1

    .line 4661
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :pswitch_4
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    const/4 v5, 0x6

    aput-char v5, v0, v1

    .line 4662
    move v1, v3

    goto/16 :goto_1

    .line 4658
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :pswitch_5
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    const/4 v5, 0x5

    aput-char v5, v0, v1

    .line 4659
    move v1, v3

    goto/16 :goto_1

    .line 4655
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :pswitch_6
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    aput-char v5, v0, v1

    .line 4656
    move v1, v3

    goto/16 :goto_1

    .line 4652
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :pswitch_7
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    aput-char v8, v0, v1

    .line 4653
    move v1, v3

    goto/16 :goto_1

    .line 4649
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :pswitch_8
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    aput-char v9, v0, v1

    .line 4650
    move v1, v3

    goto/16 :goto_1

    .line 4646
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :pswitch_9
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    aput-char v6, v0, v1

    .line 4647
    move v1, v3

    goto :goto_1

    .line 4643
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :pswitch_a
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "len":I
    .local v5, "len":I
    aput-char v3, v0, v1

    .line 4644
    move v1, v5

    goto :goto_1

    .line 4692
    .end local v5    # "len":I
    .restart local v1    # "len":I
    :pswitch_b
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    const/16 v5, 0x2f

    aput-char v5, v0, v1

    .line 4693
    move v1, v3

    goto :goto_1

    .line 4698
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :cond_1
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v2, v2, 0x1

    aget-char v8, p0, v2

    aget v8, v5, v8

    mul-int/lit8 v8, v8, 0x10

    add-int/2addr v2, v6

    aget-char v7, p0, v2

    aget v5, v5, v7

    add-int/2addr v8, v5

    int-to-char v5, v8

    aput-char v5, v0, v1

    .line 4699
    move v1, v3

    goto :goto_1

    .line 4683
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :cond_2
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    const/16 v5, 0xd

    aput-char v5, v0, v1

    .line 4684
    move v1, v3

    goto :goto_1

    .line 4673
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :cond_3
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    const/16 v5, 0xa

    aput-char v5, v0, v1

    .line 4674
    move v1, v3

    goto :goto_1

    .line 4667
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :cond_4
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    const/16 v5, 0x8

    aput-char v5, v0, v1

    .line 4668
    move v1, v3

    goto :goto_1

    .line 4695
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :cond_5
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    aput-char v5, v0, v1

    .line 4696
    move v1, v3

    goto :goto_1

    .line 4680
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :cond_6
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    const/16 v5, 0xc

    aput-char v5, v0, v1

    .line 4681
    move v1, v3

    goto :goto_1

    .line 4689
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :cond_7
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    aput-char v7, v0, v1

    .line 4690
    move v1, v3

    goto :goto_1

    .line 4686
    .end local v3    # "len":I
    .restart local v1    # "len":I
    :cond_8
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "len":I
    .restart local v3    # "len":I
    aput-char v7, v0, v1

    .line 4687
    move v1, v3

    .line 4632
    .end local v3    # "len":I
    .end local v4    # "ch":C
    .restart local v1    # "len":I
    :goto_1
    add-int/2addr v2, v6

    goto/16 :goto_0

    .line 4711
    .end local v2    # "i":I
    :cond_9
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private scanStringSingleQuote()V
    .locals 10

    .line 4751
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 4752
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 4755
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 4757
    .local v1, "chLocal":C
    const/4 v2, 0x4

    const/16 v3, 0x27

    if-ne v1, v3, :cond_0

    .line 4758
    nop

    .line 4867
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4868
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4869
    return-void

    .line 4761
    :cond_0
    const-string v4, "unclosed single-quote string"

    const/16 v5, 0x1a

    if-ne v1, v5, :cond_2

    .line 4762
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4763
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 4764
    goto :goto_0

    .line 4766
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4769
    :cond_2
    const/16 v5, 0x5c

    const/4 v6, 0x1

    if-ne v1, v5, :cond_d

    .line 4770
    iget-boolean v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v7, :cond_4

    .line 4771
    iput-boolean v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 4773
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v9, v8

    if-le v7, v9, :cond_3

    .line 4774
    mul-int/lit8 v7, v7, 0x2

    new-array v7, v7, [C

    .line 4775
    .local v7, "newsbuf":[C
    array-length v9, v8

    invoke-static {v8, v0, v7, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4776
    iput-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 4780
    .end local v7    # "newsbuf":[C
    :cond_3
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v7, v6

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    invoke-virtual {p0, v7, v8, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->copyTo(II[C)V

    .line 4784
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 4786
    const/16 v7, 0x22

    if-eq v1, v7, :cond_c

    if-eq v1, v3, :cond_b

    const/16 v3, 0x46

    if-eq v1, v3, :cond_a

    if-eq v1, v5, :cond_9

    const/16 v3, 0x62

    if-eq v1, v3, :cond_8

    const/16 v3, 0x66

    if-eq v1, v3, :cond_a

    const/16 v3, 0x6e

    if-eq v1, v3, :cond_7

    const/16 v3, 0x72

    if-eq v1, v3, :cond_6

    const/16 v3, 0x78

    const/16 v5, 0x10

    if-eq v1, v3, :cond_5

    const/4 v3, 0x3

    const/4 v7, 0x2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 4849
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 4850
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4821
    :pswitch_0
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 4822
    goto/16 :goto_0

    .line 4846
    :pswitch_1
    new-instance v4, Ljava/lang/String;

    new-array v2, v2, [C

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v8

    aput-char v8, v2, v0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v8

    aput-char v8, v2, v6

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v6

    aput-char v6, v2, v7

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v6

    aput-char v6, v2, v3

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 4847
    goto/16 :goto_0

    .line 4815
    :pswitch_2
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 4816
    goto/16 :goto_0

    .line 4809
    :pswitch_3
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 4810
    goto/16 :goto_0

    .line 4806
    :pswitch_4
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 4807
    goto/16 :goto_0

    .line 4803
    :pswitch_5
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 4804
    goto/16 :goto_0

    .line 4800
    :pswitch_6
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 4801
    goto/16 :goto_0

    .line 4797
    :pswitch_7
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 4798
    goto/16 :goto_0

    .line 4794
    :pswitch_8
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 4795
    goto/16 :goto_0

    .line 4791
    :pswitch_9
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 4792
    goto/16 :goto_0

    .line 4788
    :pswitch_a
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 4789
    goto/16 :goto_0

    .line 4837
    :pswitch_b
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 4838
    goto/16 :goto_0

    .line 4843
    :cond_5
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v3

    aget v2, v2, v3

    mul-int/lit8 v2, v2, 0x10

    sget-object v3, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    aget v3, v3, v4

    add-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 4844
    goto/16 :goto_0

    .line 4828
    :cond_6
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 4829
    goto/16 :goto_0

    .line 4818
    :cond_7
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 4819
    goto/16 :goto_0

    .line 4812
    :cond_8
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 4813
    goto/16 :goto_0

    .line 4840
    :cond_9
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 4841
    goto/16 :goto_0

    .line 4825
    :cond_a
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 4826
    goto/16 :goto_0

    .line 4834
    :cond_b
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 4835
    goto/16 :goto_0

    .line 4831
    :cond_c
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 4832
    goto/16 :goto_0

    .line 4855
    :cond_d
    iget-boolean v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v2, :cond_e

    .line 4856
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4857
    goto/16 :goto_0

    .line 4860
    :cond_e
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v4, v3

    if-ne v2, v4, :cond_f

    .line 4861
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4863
    :cond_f
    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char v1, v3, v2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
.end method

.method protected abstract arrayCopy(I[CII)V
.end method

.method public abstract bytesValue()[B
.end method

.method protected abstract charArrayCompare([C)Z
.end method

.method public abstract charAt(I)C
.end method

.method public close()V
    .locals 3

    .line 1087
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v1, v0

    const/16 v2, 0x2000

    if-gt v1, v2, :cond_0

    .line 1088
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1090
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 1091
    return-void
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;
    .param p2, "state"    # Z

    .line 523
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    invoke-static {v0, p1, p2}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    .line 525
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 526
    const-string v0, ""

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    .line 528
    :cond_0
    return-void
.end method

.method protected abstract copyTo(II[C)V
.end method

.method public final decimalValue(Z)Ljava/lang/Number;
    .locals 5
    .param p1, "decimal"    # Z

    .line 5050
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 5052
    .local v0, "chLocal":C
    const/16 v1, 0x46

    if-ne v0, v1, :cond_0

    .line 5053
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 5065
    :catch_0
    move-exception v1

    goto :goto_0

    .line 5056
    :cond_0
    const/16 v1, 0x44

    if-ne v0, v1, :cond_1

    .line 5057
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 5060
    :cond_1
    if-eqz p1, :cond_2

    .line 5061
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 5063
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 5066
    .local v1, "ex":Ljava/lang/NumberFormatException;
    :goto_0
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public abstract decimalValue()Ljava/math/BigDecimal;
.end method

.method public doubleValue()D
    .locals 2

    .line 519
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 6

    .line 507
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, "strVal":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 509
    .local v1, "floatValue":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v2, v1, v2

    if-nez v2, :cond_2

    .line 510
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 511
    .local v2, "c0":C
    const/16 v3, 0x30

    if-le v2, v3, :cond_2

    const/16 v3, 0x39

    if-le v2, v3, :cond_1

    goto :goto_0

    .line 512
    :cond_1
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "float overflow : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 515
    .end local v2    # "c0":C
    :cond_2
    :goto_0
    return v1
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    .line 1011
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public final getCurrent()C
    .locals 1

    .line 547
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    return v0
.end method

.method public getFeatures()I
    .locals 1

    .line 5111
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 1023
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 1015
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public abstract indexOf(CI)I
.end method

.method public info()Ljava/lang/String;
    .locals 1

    .line 816
    const-string v0, ""

    return-object v0
.end method

.method public final intValue()I
    .locals 12

    .line 1031
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1032
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 1035
    :cond_0
    const/4 v0, 0x0

    .line 1036
    .local v0, "result":I
    const/4 v1, 0x0

    .line 1037
    .local v1, "negative":Z
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .local v2, "i":I
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v4, v3

    .line 1041
    .local v4, "max":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v5, 0x2d

    if-ne v3, v5, :cond_1

    .line 1042
    const/4 v1, 0x1

    .line 1043
    const/high16 v3, -0x80000000

    .line 1044
    .local v3, "limit":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1046
    .end local v3    # "limit":I
    :cond_1
    const v3, -0x7fffffff

    .line 1048
    .restart local v3    # "limit":I
    :goto_0
    const-wide/32 v5, -0xccccccc

    .line 1049
    .local v5, "multmin":J
    if-ge v2, v4, :cond_2

    .line 1050
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "i":I
    .local v7, "i":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    .line 1051
    .local v2, "digit":I
    neg-int v0, v2

    move v2, v7

    .line 1053
    .end local v7    # "i":I
    .local v2, "i":I
    :cond_2
    :goto_1
    if-ge v2, v4, :cond_7

    .line 1055
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "i":I
    .restart local v7    # "i":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 1057
    .local v2, "chLocal":C
    const/16 v8, 0x4c

    if-eq v2, v8, :cond_6

    const/16 v8, 0x53

    if-eq v2, v8, :cond_6

    const/16 v8, 0x42

    if-ne v2, v8, :cond_3

    .line 1058
    goto :goto_2

    .line 1061
    :cond_3
    add-int/lit8 v8, v2, -0x30

    .line 1063
    .local v8, "digit":I
    int-to-long v9, v0

    cmp-long v11, v9, v5

    if-ltz v11, :cond_5

    .line 1066
    mul-int/lit8 v0, v0, 0xa

    .line 1067
    add-int v9, v3, v8

    if-lt v0, v9, :cond_4

    .line 1070
    sub-int/2addr v0, v8

    .line 1071
    .end local v2    # "chLocal":C
    move v2, v7

    goto :goto_1

    .line 1068
    .restart local v2    # "chLocal":C
    :cond_4
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1064
    :cond_5
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1073
    .end local v2    # "chLocal":C
    .end local v8    # "digit":I
    :cond_6
    :goto_2
    move v2, v7

    .end local v7    # "i":I
    .local v2, "i":I
    :cond_7
    if-eqz v1, :cond_9

    .line 1074
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v7, v7, 0x1

    if-le v2, v7, :cond_8

    .line 1075
    return v0

    .line 1077
    :cond_8
    new-instance v7, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1080
    :cond_9
    neg-int v7, v0

    return v7
.end method

.method public final integerValue()Ljava/lang/Number;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 414
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 415
    .local v1, "result":J
    const/4 v3, 0x0

    .line 416
    .local v3, "negative":Z
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 417
    const/4 v4, 0x0

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 419
    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .local v4, "i":I
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v5, v6

    .line 424
    .local v5, "max":I
    const/16 v6, 0x20

    .line 426
    .local v6, "type":C
    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v8, 0x53

    const/16 v9, 0x4c

    const/16 v10, 0x42

    if-eq v7, v10, :cond_3

    if-eq v7, v9, :cond_2

    if-eq v7, v8, :cond_1

    goto :goto_0

    .line 432
    :cond_1
    add-int/lit8 v5, v5, -0x1

    .line 433
    const/16 v6, 0x53

    .line 434
    goto :goto_0

    .line 428
    :cond_2
    add-int/lit8 v5, v5, -0x1

    .line 429
    const/16 v6, 0x4c

    .line 430
    goto :goto_0

    .line 436
    :cond_3
    add-int/lit8 v5, v5, -0x1

    .line 437
    const/16 v6, 0x42

    .line 438
    nop

    .line 443
    :goto_0
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v11, 0x2d

    if-ne v7, v11, :cond_4

    .line 444
    const/4 v3, 0x1

    .line 445
    const-wide/high16 v11, -0x8000000000000000L

    .line 446
    .local v11, "limit":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 448
    .end local v11    # "limit":J
    :cond_4
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 450
    .restart local v11    # "limit":J
    :goto_1
    const-wide v13, -0xcccccccccccccccL

    .line 451
    .local v13, "multmin":J
    if-ge v4, v5, :cond_5

    .line 452
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "i":I
    .local v7, "i":I
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    .line 453
    .local v4, "digit":I
    neg-int v15, v4

    int-to-long v1, v15

    move v4, v7

    .line 455
    .end local v7    # "i":I
    .local v4, "i":I
    :cond_5
    :goto_2
    if-ge v4, v5, :cond_8

    .line 457
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "i":I
    .restart local v7    # "i":I
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    .line 458
    .local v4, "digit":I
    cmp-long v15, v1, v13

    if-gez v15, :cond_6

    .line 459
    new-instance v8, Ljava/math/BigInteger;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v8

    .line 461
    :cond_6
    const-wide/16 v15, 0xa

    mul-long v1, v1, v15

    .line 462
    int-to-long v8, v4

    add-long/2addr v8, v11

    cmp-long v17, v1, v8

    if-gez v17, :cond_7

    .line 463
    new-instance v8, Ljava/math/BigInteger;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v8

    .line 465
    :cond_7
    int-to-long v8, v4

    sub-long/2addr v1, v8

    move v4, v7

    const/16 v8, 0x53

    const/16 v9, 0x4c

    goto :goto_2

    .line 468
    .end local v7    # "i":I
    .local v4, "i":I
    :cond_8
    if-eqz v3, :cond_d

    .line 469
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v7, v7, 0x1

    if-le v4, v7, :cond_c

    .line 470
    const-wide/32 v7, -0x80000000

    cmp-long v9, v1, v7

    if-ltz v9, :cond_b

    const/16 v7, 0x4c

    if-eq v6, v7, :cond_b

    .line 471
    const/16 v7, 0x53

    if-ne v6, v7, :cond_9

    .line 472
    long-to-int v7, v1

    int-to-short v7, v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    return-object v7

    .line 475
    :cond_9
    if-ne v6, v10, :cond_a

    .line 476
    long-to-int v7, v1

    int-to-byte v7, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    return-object v7

    .line 479
    :cond_a
    long-to-int v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    return-object v7

    .line 481
    :cond_b
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    return-object v7

    .line 483
    :cond_c
    new-instance v7, Ljava/lang/NumberFormatException;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 486
    :cond_d
    neg-long v1, v1

    .line 487
    const-wide/32 v7, 0x7fffffff

    cmp-long v9, v1, v7

    if-gtz v9, :cond_10

    const/16 v7, 0x4c

    if-eq v6, v7, :cond_10

    .line 488
    const/16 v7, 0x53

    if-ne v6, v7, :cond_e

    .line 489
    long-to-int v7, v1

    int-to-short v7, v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    return-object v7

    .line 492
    :cond_e
    if-ne v6, v10, :cond_f

    .line 493
    long-to-int v7, v1

    int-to-byte v7, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    return-object v7

    .line 496
    :cond_f
    long-to-int v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    return-object v7

    .line 498
    :cond_10
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    return-object v7
.end method

.method public isBlankInput()Z
    .locals 3

    .line 4717
    const/4 v0, 0x0

    .line 4718
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 4719
    .local v1, "chLocal":C
    const/16 v2, 0x1a

    if-ne v1, v2, :cond_0

    .line 4720
    const/16 v2, 0x14

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4721
    nop

    .line 4729
    .end local v0    # "i":I
    .end local v1    # "chLocal":C
    const/4 v0, 0x1

    return v0

    .line 4724
    .restart local v0    # "i":I
    .restart local v1    # "chLocal":C
    :cond_0
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4725
    const/4 v2, 0x0

    return v2

    .line 4717
    .end local v1    # "chLocal":C
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public abstract isEOF()Z
.end method

.method public final isEnabled(I)Z
    .locals 1
    .param p1, "feature"    # I

    .line 535
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isEnabled(II)Z
    .locals 1
    .param p1, "features"    # I
    .param p2, "feature"    # I

    .line 539
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    and-int/2addr v0, p2

    if-nez v0, :cond_1

    and-int v0, p1, p2

    if-eqz v0, :cond_0

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

.method public final isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 1
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;

    .line 531
    iget v0, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final isRef()Z
    .locals 5

    .line 1094
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 1095
    return v1

    .line 1098
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v4, 0x24

    if-ne v0, v4, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v0, v0, 0x2

    .line 1099
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v4, 0x72

    if-ne v0, v4, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v0, v0, 0x3

    .line 1100
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v4, 0x65

    if-ne v0, v4, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v0, v2

    .line 1101
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v2, 0x66

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1098
    :goto_0
    return v1
.end method

.method protected varargs lexError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 40
    return-void
.end method

.method public final longValue()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 4996
    const-wide/16 v0, 0x0

    .line 4997
    .local v0, "result":J
    const/4 v2, 0x0

    .line 5001
    .local v2, "negative":Z
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 5002
    const/4 v3, 0x0

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 5005
    :cond_0
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .local v3, "i":I
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v5, v4

    .line 5007
    .local v5, "max":I
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v6, 0x2d

    if-ne v4, v6, :cond_1

    .line 5008
    const/4 v2, 0x1

    .line 5009
    const-wide/high16 v6, -0x8000000000000000L

    .line 5010
    .local v6, "limit":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5012
    .end local v6    # "limit":J
    :cond_1
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 5014
    .restart local v6    # "limit":J
    :goto_0
    const-wide v8, -0xcccccccccccccccL

    .line 5015
    .local v8, "multmin":J
    if-ge v3, v5, :cond_2

    .line 5016
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    .line 5017
    .local v3, "digit":I
    neg-int v10, v3

    int-to-long v0, v10

    move v3, v4

    .line 5019
    .end local v4    # "i":I
    .local v3, "i":I
    :cond_2
    :goto_1
    if-ge v3, v5, :cond_7

    .line 5021
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 5023
    .local v3, "chLocal":C
    const/16 v10, 0x4c

    if-eq v3, v10, :cond_6

    const/16 v10, 0x53

    if-eq v3, v10, :cond_6

    const/16 v10, 0x42

    if-ne v3, v10, :cond_3

    .line 5024
    goto :goto_2

    .line 5027
    :cond_3
    add-int/lit8 v10, v3, -0x30

    .line 5028
    .local v10, "digit":I
    cmp-long v11, v0, v8

    if-ltz v11, :cond_5

    .line 5031
    const-wide/16 v11, 0xa

    mul-long v0, v0, v11

    .line 5032
    int-to-long v11, v10

    add-long/2addr v11, v6

    cmp-long v13, v0, v11

    if-ltz v13, :cond_4

    .line 5035
    int-to-long v11, v10

    sub-long/2addr v0, v11

    .line 5036
    .end local v3    # "chLocal":C
    move v3, v4

    goto :goto_1

    .line 5033
    .restart local v3    # "chLocal":C
    :cond_4
    new-instance v11, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 5029
    :cond_5
    new-instance v11, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 5038
    .end local v3    # "chLocal":C
    .end local v10    # "digit":I
    :cond_6
    :goto_2
    move v3, v4

    .end local v4    # "i":I
    .local v3, "i":I
    :cond_7
    if-eqz v2, :cond_9

    .line 5039
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v4, v4, 0x1

    if-le v3, v4, :cond_8

    .line 5040
    return-wide v0

    .line 5042
    :cond_8
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5045
    :cond_9
    neg-long v10, v0

    return-wide v10
.end method

.method public final matchField([C)Z
    .locals 4
    .param p1, "fieldName"    # [C

    .line 1158
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1159
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1160
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1161
    goto :goto_0

    .line 1163
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1169
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1170
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1172
    const/16 v1, 0x7b

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 1173
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1174
    const/16 v0, 0xc

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 1175
    :cond_2
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_3

    .line 1176
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1177
    const/16 v0, 0xe

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 1178
    :cond_3
    const/16 v3, 0x53

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v3, 0x65

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v3, 0x74

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_4

    .line 1179
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1180
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1181
    const/16 v0, 0x15

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 1183
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 1186
    :goto_1
    return v2
.end method

.method public matchField2([C)Z
    .locals 1
    .param p1, "fieldName"    # [C

    .line 5107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final matchStat()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0
.end method

.method public newCollectionByType(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1530
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1531
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1532
    .local v0, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    return-object v0

    .line 1533
    .end local v0    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1535
    .local v0, "list2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v0

    .line 1538
    .end local v0    # "list2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1539
    .local v0, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    return-object v0

    .line 1540
    .end local v0    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 1541
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract next()C
.end method

.method public final nextIdent()V
    .locals 2

    .line 364
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 367
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x24

    if-eq v0, v1, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 370
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto :goto_2

    .line 368
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanIdent()V

    .line 372
    :goto_2
    return-void
.end method

.method public final nextToken()V
    .locals 3

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 104
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 106
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipComment()V

    .line 108
    goto :goto_0

    .line 111
    :cond_0
    const/16 v2, 0x22

    if-ne v1, v2, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    .line 113
    return-void

    .line 116
    :cond_1
    const/16 v2, 0x2c

    if-ne v1, v2, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 118
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 119
    return-void

    .line 122
    :cond_2
    const/16 v2, 0x30

    if-lt v1, v2, :cond_3

    const/16 v2, 0x39

    if-gt v1, v2, :cond_3

    .line 123
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    .line 124
    return-void

    .line 127
    :cond_3
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_4

    .line 128
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    .line 129
    return-void

    .line 132
    :cond_4
    sparse-switch v1, :sswitch_data_0

    .line 206
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 207
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_6

    .line 211
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 212
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->eofPos:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    goto/16 :goto_1

    .line 183
    :sswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 184
    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 185
    return-void

    .line 179
    :sswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 180
    const/16 v0, 0xc

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 181
    return-void

    .line 203
    :sswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanHex()V

    .line 204
    return-void

    .line 148
    :sswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanTrue()V

    .line 149
    return-void

    .line 154
    :sswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNullOrNew()V

    .line 155
    return-void

    .line 151
    :sswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFalse()V

    .line 152
    return-void

    .line 175
    :sswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 176
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 177
    return-void

    .line 171
    :sswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 172
    const/16 v0, 0xe

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 173
    return-void

    .line 160
    :sswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanIdent()V

    .line 161
    return-void

    .line 191
    :sswitch_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 192
    const/16 v0, 0x18

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 193
    return-void

    .line 187
    :sswitch_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 188
    const/16 v0, 0x11

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 189
    return-void

    .line 195
    :sswitch_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 196
    const/16 v0, 0x19

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 197
    return-void

    .line 199
    :sswitch_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 200
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    .line 201
    return-void

    .line 167
    :sswitch_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 168
    const/16 v0, 0xb

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 169
    return-void

    .line 163
    :sswitch_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 164
    const/16 v0, 0xa

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 165
    return-void

    .line 134
    :sswitch_f
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 137
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanStringSingleQuote()V

    .line 138
    return-void

    .line 135
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "Feature.AllowSingleQuotes is false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :sswitch_10
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 146
    goto/16 :goto_0

    .line 208
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "EOF error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_7
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x1f

    if-le v1, v2, :cond_9

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_8

    goto :goto_2

    .line 219
    :cond_8
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "illegal.char"

    invoke-virtual {p0, v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 223
    :goto_1
    return-void

    .line 215
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 216
    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_10
        0x9 -> :sswitch_10
        0xa -> :sswitch_10
        0xc -> :sswitch_10
        0xd -> :sswitch_10
        0x20 -> :sswitch_10
        0x27 -> :sswitch_f
        0x28 -> :sswitch_e
        0x29 -> :sswitch_d
        0x2b -> :sswitch_c
        0x2e -> :sswitch_b
        0x3a -> :sswitch_a
        0x3b -> :sswitch_9
        0x4e -> :sswitch_8
        0x53 -> :sswitch_8
        0x54 -> :sswitch_8
        0x5b -> :sswitch_7
        0x5d -> :sswitch_6
        0x66 -> :sswitch_5
        0x6e -> :sswitch_4
        0x74 -> :sswitch_3
        0x75 -> :sswitch_8
        0x78 -> :sswitch_2
        0x7b -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method public final nextToken(I)V
    .locals 9
    .param p1, "expect"    # I

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 233
    :goto_0
    const/4 v0, 0x2

    const/16 v1, 0xd

    const/16 v2, 0x39

    const/16 v3, 0x22

    const/16 v4, 0x30

    const/16 v5, 0xe

    const/16 v6, 0x5b

    const/16 v7, 0x7b

    const/16 v8, 0xc

    if-eq p1, v0, :cond_c

    const/4 v0, 0x4

    if-eq p1, v0, :cond_8

    if-eq p1, v8, :cond_6

    const/16 v0, 0x12

    if-eq p1, v0, :cond_5

    const/16 v0, 0x1a

    const/16 v2, 0x14

    if-eq p1, v2, :cond_4

    const/16 v3, 0xf

    const/16 v4, 0x5d

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 247
    :pswitch_0
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_0

    .line 248
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 249
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 250
    return-void

    .line 253
    :cond_0
    const/16 v6, 0x7d

    if-ne v5, v6, :cond_1

    .line 254
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 255
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 256
    return-void

    .line 259
    :cond_1
    if-ne v5, v4, :cond_2

    .line 260
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 261
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 262
    return-void

    .line 265
    :cond_2
    if-ne v5, v0, :cond_10

    .line 266
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 267
    return-void

    .line 335
    :pswitch_1
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v5, v4, :cond_4

    .line 336
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 337
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 338
    return-void

    .line 322
    :pswitch_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v6, :cond_3

    .line 323
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 324
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 325
    return-void

    .line 328
    :cond_3
    if-ne v0, v7, :cond_10

    .line 329
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 330
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 331
    return-void

    .line 341
    :cond_4
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v3, v0, :cond_10

    .line 342
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 343
    return-void

    .line 347
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextIdent()V

    .line 348
    return-void

    .line 235
    :cond_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v7, :cond_7

    .line 236
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 237
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 238
    return-void

    .line 240
    :cond_7
    if-ne v0, v6, :cond_10

    .line 241
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 242
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 243
    return-void

    .line 297
    :cond_8
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v3, :cond_9

    .line 298
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 299
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    .line 300
    return-void

    .line 303
    :cond_9
    if-lt v0, v4, :cond_a

    if-gt v0, v2, :cond_a

    .line 304
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 305
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    .line 306
    return-void

    .line 309
    :cond_a
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v6, :cond_b

    .line 310
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 311
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 312
    return-void

    .line 315
    :cond_b
    if-ne v0, v7, :cond_10

    .line 316
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 317
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 318
    return-void

    .line 271
    :cond_c
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v0, v4, :cond_d

    if-gt v0, v2, :cond_d

    .line 272
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 273
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    .line 274
    return-void

    .line 277
    :cond_d
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v3, :cond_e

    .line 278
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 279
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    .line 280
    return-void

    .line 283
    :cond_e
    if-ne v0, v6, :cond_f

    .line 284
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 285
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 286
    return-void

    .line 289
    :cond_f
    if-ne v0, v7, :cond_10

    .line 290
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 291
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 292
    return-void

    .line 353
    :cond_10
    :goto_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x20

    if-eq v0, v2, :cond_12

    const/16 v2, 0xa

    if-eq v0, v2, :cond_12

    if-eq v0, v1, :cond_12

    const/16 v1, 0x9

    if-eq v0, v1, :cond_12

    if-eq v0, v8, :cond_12

    const/16 v1, 0x8

    if-ne v0, v1, :cond_11

    goto :goto_2

    .line 358
    :cond_11
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 359
    nop

    .line 361
    return-void

    .line 354
    :cond_12
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 355
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final nextTokenWithChar(C)V
    .locals 3
    .param p1, "expect"    # C

    .line 379
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 382
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, p1, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 384
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 385
    return-void

    .line 388
    :cond_0
    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 393
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", info : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 390
    goto :goto_0
.end method

.method public final nextTokenWithColon()V
    .locals 1

    .line 375
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithChar(C)V

    .line 376
    return-void
.end method

.method public final nextTokenWithColon(I)V
    .locals 1
    .param p1, "expect"    # I

    .line 503
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithChar(C)V

    .line 504
    return-void
.end method

.method public abstract numberString()Ljava/lang/String;
.end method

.method public final pos()I
    .locals 1

    .line 406
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    return v0
.end method

.method protected final putChar(C)V
    .locals 4
    .param p1, "ch"    # C

    .line 4875
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 4876
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 4877
    .local v0, "newsbuf":[C
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4878
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 4880
    .end local v0    # "newsbuf":[C
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char p1, v0, v1

    .line 4881
    return-void
.end method

.method public final resetStringPosition()V
    .locals 1

    .line 812
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 813
    return-void
.end method

.method public scanBoolean(C)Z
    .locals 9
    .param p1, "expectNext"    # C

    .line 1974
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1976
    const/4 v1, 0x0

    .line 1977
    .local v1, "offset":I
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "offset":I
    .local v3, "offset":I
    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1979
    .local v1, "chLocal":C
    const/4 v2, 0x0

    .line 1980
    .local v2, "value":Z
    const/16 v4, 0x65

    const/4 v5, 0x3

    const/4 v6, -0x1

    const/16 v7, 0x74

    if-ne v1, v7, :cond_1

    .line 1981
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v3

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v8, 0x72

    if-ne v7, v8, :cond_0

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x1

    .line 1982
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v8, 0x75

    if-ne v7, v8, :cond_0

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x2

    .line 1983
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    if-ne v7, v4, :cond_0

    .line 1984
    add-int/lit8 v3, v3, 0x3

    .line 1985
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .local v4, "offset":I
    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1986
    const/4 v2, 0x1

    move v3, v4

    goto :goto_0

    .line 1988
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :cond_0
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1989
    return v0

    .line 1991
    :cond_1
    const/16 v7, 0x66

    if-ne v1, v7, :cond_3

    .line 1992
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v3

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v8, 0x61

    if-ne v7, v8, :cond_2

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x1

    .line 1993
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v8, 0x6c

    if-ne v7, v8, :cond_2

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x2

    .line 1994
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v8, 0x73

    if-ne v7, v8, :cond_2

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v3

    add-int/2addr v7, v5

    .line 1995
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    if-ne v7, v4, :cond_2

    .line 1996
    add-int/lit8 v3, v3, 0x4

    .line 1997
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1998
    const/4 v2, 0x0

    move v3, v4

    goto :goto_0

    .line 2000
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :cond_2
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2001
    return v0

    .line 2003
    :cond_3
    const/16 v0, 0x31

    if-ne v1, v0, :cond_4

    .line 2004
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2005
    const/4 v2, 0x1

    move v3, v4

    goto :goto_0

    .line 2006
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :cond_4
    const/16 v0, 0x30

    if-ne v1, v0, :cond_5

    .line 2007
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2008
    const/4 v2, 0x0

    move v3, v4

    .line 2012
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :cond_5
    :goto_0
    if-ne v1, p1, :cond_6

    .line 2013
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2014
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2015
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2016
    return v2

    .line 2018
    :cond_6
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2019
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2020
    move v3, v4

    goto :goto_0

    .line 2022
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :cond_7
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2023
    return v2
.end method

.method public scanDate(C)Ljava/util/Date;
    .locals 18
    .param p1, "seperator"    # C

    .line 3937
    move-object/from16 v1, p0

    const/4 v0, 0x0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3939
    const/4 v2, 0x0

    .line 3940
    .local v2, "offset":I
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "offset":I
    .local v4, "offset":I
    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3943
    .local v2, "chLocal":C
    const/4 v3, 0x3

    const/16 v5, 0x22

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-ne v2, v5, :cond_5

    .line 3944
    iget v8, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v8, 0x1

    .line 3945
    .local v8, "startIndex":I
    invoke-virtual {v1, v5, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v9

    .line 3946
    .local v9, "endIndex":I
    if-eq v9, v7, :cond_4

    .line 3950
    iget v10, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v10, 0x1

    .line 3951
    .local v10, "startIndex2":I
    sub-int v11, v9, v10

    invoke-virtual {v1, v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v11

    .line 3952
    .local v11, "stringVal":Ljava/lang/String;
    const/16 v12, 0x5c

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-eq v13, v7, :cond_2

    .line 3954
    :goto_0
    const/4 v13, 0x0

    .line 3955
    .local v13, "slashCount":I
    add-int/lit8 v14, v9, -0x1

    .local v14, "i":I
    :goto_1
    if-ltz v14, :cond_0

    .line 3956
    invoke-virtual {v1, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v15

    if-ne v15, v12, :cond_0

    .line 3957
    add-int/lit8 v13, v13, 0x1

    .line 3955
    add-int/lit8 v14, v14, -0x1

    goto :goto_1

    .line 3962
    .end local v14    # "i":I
    :cond_0
    rem-int/lit8 v14, v13, 0x2

    if-nez v14, :cond_1

    .line 3963
    nop

    .line 3968
    .end local v13    # "slashCount":I
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v5, 0x1

    sub-int v12, v9, v12

    .line 3969
    .local v12, "chars_len":I
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v5

    .line 3971
    .local v5, "chars":[C
    invoke-static {v5, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 3965
    .end local v5    # "chars":[C
    .end local v12    # "chars_len":I
    .restart local v13    # "slashCount":I
    :cond_1
    add-int/lit8 v14, v9, 0x1

    invoke-virtual {v1, v5, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v9

    .line 3966
    .end local v13    # "slashCount":I
    goto :goto_0

    .line 3974
    :cond_2
    :goto_2
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v5, 0x1

    sub-int v12, v9, v12

    add-int/lit8 v12, v12, 0x1

    add-int/2addr v4, v12

    .line 3975
    add-int/lit8 v12, v4, 0x1

    .end local v4    # "offset":I
    .local v12, "offset":I
    add-int/2addr v5, v4

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3977
    new-instance v4, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v4, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 3979
    .local v4, "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :try_start_0
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3980
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 3981
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v5

    .line 3982
    .local v0, "dateVal":Ljava/util/Date;
    nop

    .line 3987
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 3988
    nop

    .line 3989
    .end local v4    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v8    # "startIndex":I
    .end local v9    # "endIndex":I
    .end local v10    # "startIndex2":I
    .end local v11    # "stringVal":Ljava/lang/String;
    goto/16 :goto_6

    .line 3983
    .end local v0    # "dateVal":Ljava/util/Date;
    .restart local v4    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .restart local v8    # "startIndex":I
    .restart local v9    # "endIndex":I
    .restart local v10    # "startIndex2":I
    .restart local v11    # "stringVal":Ljava/lang/String;
    :cond_3
    :try_start_1
    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3984
    nop

    .line 3987
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 3984
    return-object v6

    .line 3987
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v0

    .line 3947
    .end local v10    # "startIndex2":I
    .end local v11    # "stringVal":Ljava/lang/String;
    .end local v12    # "offset":I
    .local v4, "offset":I
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "unclosed str"

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3989
    .end local v8    # "startIndex":I
    .end local v9    # "endIndex":I
    :cond_5
    const/16 v0, 0x2d

    const/16 v5, 0x39

    const/16 v8, 0x30

    if-eq v2, v0, :cond_8

    if-lt v2, v8, :cond_6

    if-gt v2, v5, :cond_6

    goto :goto_3

    .line 4020
    :cond_6
    const/16 v0, 0x6e

    if-ne v2, v0, :cond_7

    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v4

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v5, 0x75

    if-ne v0, v5, :cond_7

    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v5, 0x6c

    if-ne v0, v5, :cond_7

    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_7

    .line 4021
    const/4 v0, 0x5

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4022
    const/4 v0, 0x0

    .line 4023
    .restart local v0    # "dateVal":Ljava/util/Date;
    add-int/2addr v4, v3

    .line 4024
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v4, 0x1

    .end local v4    # "offset":I
    .restart local v12    # "offset":I
    add-int/2addr v5, v4

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    goto :goto_6

    .line 4026
    .end local v0    # "dateVal":Ljava/util/Date;
    .end local v12    # "offset":I
    .restart local v4    # "offset":I
    :cond_7
    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4027
    return-object v6

    .line 3990
    :cond_8
    :goto_3
    const-wide/16 v9, 0x0

    .line 3992
    .local v9, "millis":J
    const/4 v11, 0x0

    .line 3993
    .local v11, "negative":Z
    if-ne v2, v0, :cond_9

    .line 3994
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v4, 0x1

    .end local v4    # "offset":I
    .restart local v12    # "offset":I
    add-int/2addr v0, v4

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3995
    const/4 v11, 0x1

    move v4, v12

    .line 3998
    .end local v12    # "offset":I
    .restart local v4    # "offset":I
    :cond_9
    if-lt v2, v8, :cond_b

    if-gt v2, v5, :cond_b

    .line 3999
    add-int/lit8 v0, v2, -0x30

    int-to-long v9, v0

    .line 4001
    :goto_4
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v4, 0x1

    .end local v4    # "offset":I
    .restart local v12    # "offset":I
    add-int/2addr v0, v4

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4002
    if-lt v2, v8, :cond_a

    if-gt v2, v5, :cond_a

    .line 4003
    const-wide/16 v13, 0xa

    mul-long v13, v13, v9

    add-int/lit8 v0, v2, -0x30

    move-wide/from16 v16, v9

    .end local v9    # "millis":J
    .local v16, "millis":J
    int-to-long v8, v0

    add-long v9, v13, v8

    move v4, v12

    const/16 v8, 0x30

    .end local v16    # "millis":J
    .restart local v9    # "millis":J
    goto :goto_4

    .line 4002
    :cond_a
    move-wide/from16 v16, v9

    .line 4010
    .end local v9    # "millis":J
    .restart local v16    # "millis":J
    move-wide/from16 v9, v16

    goto :goto_5

    .end local v12    # "offset":I
    .end local v16    # "millis":J
    .restart local v4    # "offset":I
    .restart local v9    # "millis":J
    :cond_b
    move v12, v4

    .end local v4    # "offset":I
    .restart local v12    # "offset":I
    :goto_5
    const-wide/16 v4, 0x0

    cmp-long v0, v9, v4

    if-gez v0, :cond_c

    .line 4011
    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4012
    return-object v6

    .line 4015
    :cond_c
    if-eqz v11, :cond_d

    .line 4016
    neg-long v9, v9

    .line 4019
    :cond_d
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 4020
    .end local v9    # "millis":J
    .end local v11    # "negative":Z
    .restart local v0    # "dateVal":Ljava/util/Date;
    nop

    .line 4030
    :goto_6
    const/16 v4, 0x10

    const/16 v5, 0x2c

    if-ne v2, v5, :cond_e

    .line 4031
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v12

    iput v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4032
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 4033
    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4034
    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4035
    return-object v0

    .line 4038
    :cond_e
    const/16 v3, 0x5d

    if-ne v2, v3, :cond_13

    .line 4039
    iget v8, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v12, 0x1

    .end local v12    # "offset":I
    .local v9, "offset":I
    add-int/2addr v8, v12

    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4040
    if-ne v2, v5, :cond_f

    .line 4041
    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4042
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v9

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4043
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_7

    .line 4044
    :cond_f
    if-ne v2, v3, :cond_10

    .line 4045
    const/16 v3, 0xf

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4046
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v9

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4047
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_7

    .line 4048
    :cond_10
    const/16 v3, 0x7d

    if-ne v2, v3, :cond_11

    .line 4049
    const/16 v3, 0xd

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4050
    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v9

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4051
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_7

    .line 4052
    :cond_11
    const/16 v3, 0x1a

    if-ne v2, v3, :cond_12

    .line 4053
    const/16 v4, 0x14

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4054
    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v9, -0x1

    add-int/2addr v4, v5

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4055
    iput-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 4060
    :goto_7
    const/4 v3, 0x4

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4066
    return-object v0

    .line 4057
    :cond_12
    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4058
    return-object v6

    .line 4062
    .end local v9    # "offset":I
    .restart local v12    # "offset":I
    :cond_13
    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4063
    return-object v6
.end method

.method public scanDecimal(C)Ljava/math/BigDecimal;
    .locals 19
    .param p1, "seperator"    # C

    .line 2851
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2853
    const/4 v2, 0x0

    .line 2854
    .local v2, "offset":I
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "offset":I
    .local v4, "offset":I
    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2855
    .local v2, "chLocal":C
    const/16 v3, 0x22

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 2856
    .local v6, "quote":Z
    :goto_0
    if-eqz v6, :cond_1

    .line 2857
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v4, 0x1

    .end local v4    # "offset":I
    .local v8, "offset":I
    add-int/2addr v7, v4

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v4, v8

    .line 2860
    .end local v8    # "offset":I
    .restart local v4    # "offset":I
    :cond_1
    const/16 v7, 0x2d

    if-ne v2, v7, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 2861
    .local v8, "negative":Z
    :goto_1
    if-eqz v8, :cond_3

    .line 2862
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v4, 0x1

    .end local v4    # "offset":I
    .local v10, "offset":I
    add-int/2addr v9, v4

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v4, v10

    .line 2866
    .end local v10    # "offset":I
    .restart local v4    # "offset":I
    :cond_3
    const/4 v11, 0x3

    const/16 v13, 0x2c

    const/16 v14, 0x30

    const/4 v15, 0x0

    const/4 v1, -0x1

    if-lt v2, v14, :cond_15

    const/16 v9, 0x39

    if-gt v2, v9, :cond_15

    .line 2868
    :goto_2
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v4, 0x1

    .end local v4    # "offset":I
    .local v17, "offset":I
    add-int/2addr v10, v4

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2869
    if-lt v2, v14, :cond_4

    if-gt v2, v9, :cond_4

    .line 2870
    move/from16 v4, v17

    goto :goto_2

    .line 2876
    :cond_4
    const/16 v4, 0x2e

    if-ne v2, v4, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    .line 2877
    .local v4, "small":Z
    :goto_3
    if-eqz v4, :cond_7

    .line 2878
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "offset":I
    .local v18, "offset":I
    add-int v10, v10, v17

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2879
    if-lt v2, v14, :cond_6

    if-gt v2, v9, :cond_6

    .line 2881
    :goto_4
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v18, 0x1

    .end local v18    # "offset":I
    .restart local v17    # "offset":I
    add-int v10, v10, v18

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2882
    if-lt v2, v14, :cond_7

    if-gt v2, v9, :cond_7

    .line 2883
    move/from16 v18, v17

    goto :goto_4

    .line 2889
    .end local v17    # "offset":I
    .restart local v18    # "offset":I
    :cond_6
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2890
    return-object v15

    .line 2894
    .end local v18    # "offset":I
    .restart local v17    # "offset":I
    :cond_7
    const/16 v10, 0x65

    if-eq v2, v10, :cond_9

    const/16 v10, 0x45

    if-ne v2, v10, :cond_8

    goto :goto_5

    :cond_8
    const/16 v16, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    const/16 v16, 0x1

    :goto_6
    move/from16 v10, v16

    .line 2895
    .local v10, "exp":Z
    if-eqz v10, :cond_c

    .line 2896
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "offset":I
    .restart local v18    # "offset":I
    add-int v12, v12, v17

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2897
    const/16 v12, 0x2b

    if-eq v2, v12, :cond_b

    if-ne v2, v7, :cond_a

    goto :goto_7

    :cond_a
    move/from16 v17, v18

    goto :goto_8

    .line 2898
    :cond_b
    :goto_7
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v18, 0x1

    .end local v18    # "offset":I
    .local v12, "offset":I
    add-int v7, v7, v18

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move/from16 v17, v12

    .line 2901
    .end local v12    # "offset":I
    .restart local v17    # "offset":I
    :goto_8
    if-lt v2, v14, :cond_c

    if-gt v2, v9, :cond_c

    .line 2902
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v17, 0x1

    .end local v17    # "offset":I
    .restart local v12    # "offset":I
    add-int v7, v7, v17

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move/from16 v17, v12

    goto :goto_8

    .line 2910
    .end local v12    # "offset":I
    .restart local v17    # "offset":I
    :cond_c
    if-eqz v6, :cond_e

    .line 2911
    if-eq v2, v3, :cond_d

    .line 2912
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2913
    return-object v15

    .line 2915
    :cond_d
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v17, 0x1

    .end local v17    # "offset":I
    .local v5, "offset":I
    add-int v3, v3, v17

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2917
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v3, 0x1

    .line 2918
    .local v7, "start":I
    add-int/2addr v3, v5

    sub-int/2addr v3, v7

    add-int/lit8 v3, v3, -0x2

    move/from16 v17, v5

    .local v3, "count":I
    goto :goto_9

    .line 2920
    .end local v3    # "count":I
    .end local v5    # "offset":I
    .end local v7    # "start":I
    .restart local v17    # "offset":I
    :cond_e
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2921
    .restart local v7    # "start":I
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v3, v3, v17

    sub-int/2addr v3, v7

    sub-int/2addr v3, v5

    .line 2924
    .restart local v3    # "count":I
    :goto_9
    invoke-virtual {v0, v7, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v5

    .line 2925
    .local v5, "chars":[C
    new-instance v9, Ljava/math/BigDecimal;

    invoke-direct {v9, v5}, Ljava/math/BigDecimal;-><init>([C)V

    move-object v3, v9

    .line 2926
    .end local v4    # "small":Z
    .end local v5    # "chars":[C
    .end local v7    # "start":I
    .end local v10    # "exp":Z
    .local v3, "value":Ljava/math/BigDecimal;
    nop

    .line 2962
    if-ne v2, v13, :cond_f

    .line 2963
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v1, v1, v17

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2964
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2965
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2966
    const/16 v1, 0x10

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2967
    return-object v3

    .line 2970
    :cond_f
    const/16 v4, 0x5d

    if-ne v2, v4, :cond_14

    .line 2971
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v17, 0x1

    .end local v17    # "offset":I
    .local v7, "offset":I
    add-int v5, v5, v17

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2972
    if-ne v2, v13, :cond_10

    .line 2973
    const/16 v1, 0x10

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2974
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2975
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_a

    .line 2976
    :cond_10
    if-ne v2, v4, :cond_11

    .line 2977
    const/16 v1, 0xf

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2978
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2979
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_a

    .line 2980
    :cond_11
    const/16 v4, 0x7d

    if-ne v2, v4, :cond_12

    .line 2981
    const/16 v1, 0xd

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2982
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v7

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2983
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_a

    .line 2984
    :cond_12
    const/16 v4, 0x1a

    if-ne v2, v4, :cond_13

    .line 2985
    const/16 v1, 0x14

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2986
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v7, -0x1

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2987
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2992
    :goto_a
    const/4 v1, 0x4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2998
    return-object v3

    .line 2989
    :cond_13
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2990
    return-object v15

    .line 2994
    .end local v7    # "offset":I
    .restart local v17    # "offset":I
    :cond_14
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2995
    return-object v15

    .line 2926
    .end local v3    # "value":Ljava/math/BigDecimal;
    .end local v17    # "offset":I
    .local v4, "offset":I
    :cond_15
    const/16 v7, 0x6e

    if-ne v2, v7, :cond_1a

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v4

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v9, 0x75

    if-ne v7, v9, :cond_1a

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v4

    add-int/2addr v7, v5

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v7, 0x6c

    if-ne v5, v7, :cond_1a

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_1a

    .line 2927
    const/4 v5, 0x5

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2928
    const/4 v7, 0x0

    .line 2929
    .local v7, "value":Ljava/math/BigDecimal;
    add-int/2addr v4, v11

    .line 2930
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v4, 0x1

    .end local v4    # "offset":I
    .local v10, "offset":I
    add-int/2addr v9, v4

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2932
    if-eqz v6, :cond_16

    if-ne v2, v3, :cond_16

    .line 2933
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v10, 0x1

    .end local v10    # "offset":I
    .restart local v4    # "offset":I
    add-int/2addr v3, v10

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v10, v4

    .line 2937
    .end local v4    # "offset":I
    .restart local v10    # "offset":I
    :cond_16
    :goto_b
    if-ne v2, v13, :cond_17

    .line 2938
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2939
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2940
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2941
    const/16 v3, 0x10

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2942
    return-object v7

    .line 2943
    :cond_17
    const/16 v3, 0x10

    const/16 v4, 0x7d

    if-ne v2, v4, :cond_18

    .line 2944
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2945
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2946
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2947
    const/16 v9, 0xd

    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2948
    return-object v7

    .line 2949
    :cond_18
    const/16 v9, 0xd

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 2950
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v10, 0x1

    .end local v10    # "offset":I
    .restart local v12    # "offset":I
    add-int/2addr v11, v10

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2951
    move v10, v12

    goto :goto_b

    .line 2955
    .end local v12    # "offset":I
    .restart local v10    # "offset":I
    :cond_19
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2956
    return-object v15

    .line 2958
    .end local v7    # "value":Ljava/math/BigDecimal;
    .end local v10    # "offset":I
    .restart local v4    # "offset":I
    :cond_1a
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2959
    return-object v15
.end method

.method public scanDouble(C)D
    .locals 24
    .param p1, "seperator"    # C

    .line 2713
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2715
    const/4 v2, 0x0

    .line 2716
    .local v2, "offset":I
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "offset":I
    .local v4, "offset":I
    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2717
    .local v2, "chLocal":C
    const/16 v3, 0x22

    if-ne v2, v3, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 2718
    .local v6, "quote":Z
    :goto_0
    if-eqz v6, :cond_1

    .line 2719
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v4, 0x1

    .end local v4    # "offset":I
    .local v8, "offset":I
    add-int/2addr v7, v4

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v4, v8

    .line 2722
    .end local v8    # "offset":I
    .restart local v4    # "offset":I
    :cond_1
    const/16 v7, 0x2d

    if-ne v2, v7, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 2723
    .local v8, "negative":Z
    :goto_1
    if-eqz v8, :cond_3

    .line 2724
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v4, 0x1

    .end local v4    # "offset":I
    .local v10, "offset":I
    add-int/2addr v9, v4

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v4, v10

    .line 2728
    .end local v10    # "offset":I
    .restart local v4    # "offset":I
    :cond_3
    const-wide/16 v11, 0x0

    const/4 v13, -0x1

    const/16 v14, 0x30

    if-lt v2, v14, :cond_13

    const/16 v15, 0x39

    if-gt v2, v15, :cond_13

    .line 2729
    add-int/lit8 v1, v2, -0x30

    int-to-long v9, v1

    .line 2731
    .local v9, "intVal":J
    :goto_2
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v4, 0x1

    .end local v4    # "offset":I
    .local v17, "offset":I
    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2732
    const-wide/16 v18, 0xa

    if-lt v2, v14, :cond_4

    if-gt v2, v15, :cond_4

    .line 2733
    mul-long v18, v18, v9

    add-int/lit8 v1, v2, -0x30

    int-to-long v3, v1

    add-long v9, v18, v3

    .line 2734
    move/from16 v4, v17

    const/16 v3, 0x22

    goto :goto_2

    .line 2740
    :cond_4
    const-wide/16 v3, 0x1

    .line 2741
    .local v3, "power":J
    const/16 v1, 0x2e

    if-ne v2, v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 2742
    .local v1, "small":Z
    :goto_3
    if-eqz v1, :cond_7

    .line 2743
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v20, v17, 0x1

    .end local v17    # "offset":I
    .local v20, "offset":I
    add-int v5, v5, v17

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2744
    if-lt v2, v14, :cond_6

    if-gt v2, v15, :cond_6

    .line 2745
    mul-long v21, v9, v18

    add-int/lit8 v5, v2, -0x30

    move/from16 v23, v8

    .end local v8    # "negative":Z
    .local v23, "negative":Z
    int-to-long v7, v5

    add-long v21, v21, v7

    .line 2746
    .end local v9    # "intVal":J
    .local v21, "intVal":J
    const-wide/16 v3, 0xa

    move-wide/from16 v9, v21

    .line 2748
    .end local v21    # "intVal":J
    .restart local v9    # "intVal":J
    :goto_4
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v20, 0x1

    .end local v20    # "offset":I
    .restart local v17    # "offset":I
    add-int v5, v5, v20

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2749
    if-lt v2, v14, :cond_8

    if-gt v2, v15, :cond_8

    .line 2750
    mul-long v7, v9, v18

    add-int/lit8 v5, v2, -0x30

    int-to-long v14, v5

    add-long v9, v7, v14

    .line 2751
    mul-long v3, v3, v18

    .line 2752
    move/from16 v20, v17

    const/16 v14, 0x30

    const/16 v15, 0x39

    goto :goto_4

    .line 2744
    .end local v17    # "offset":I
    .end local v23    # "negative":Z
    .restart local v8    # "negative":Z
    .restart local v20    # "offset":I
    :cond_6
    move/from16 v23, v8

    .line 2758
    .end local v8    # "negative":Z
    .restart local v23    # "negative":Z
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2759
    return-wide v11

    .line 2742
    .end local v20    # "offset":I
    .end local v23    # "negative":Z
    .restart local v8    # "negative":Z
    .restart local v17    # "offset":I
    :cond_7
    move/from16 v23, v8

    .line 2763
    .end local v8    # "negative":Z
    .restart local v23    # "negative":Z
    :cond_8
    const/16 v5, 0x65

    if-eq v2, v5, :cond_a

    const/16 v5, 0x45

    if-ne v2, v5, :cond_9

    goto :goto_5

    :cond_9
    const/16 v16, 0x0

    goto :goto_6

    :cond_a
    :goto_5
    const/16 v16, 0x1

    :goto_6
    move/from16 v5, v16

    .line 2764
    .local v5, "exp":Z
    if-eqz v5, :cond_d

    .line 2765
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v17, 0x1

    .end local v17    # "offset":I
    .local v8, "offset":I
    add-int v7, v7, v17

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2766
    const/16 v7, 0x2b

    if-eq v2, v7, :cond_c

    const/16 v7, 0x2d

    if-ne v2, v7, :cond_b

    goto :goto_7

    :cond_b
    move/from16 v17, v8

    goto :goto_8

    .line 2767
    :cond_c
    :goto_7
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v8, 0x1

    .end local v8    # "offset":I
    .local v14, "offset":I
    add-int/2addr v7, v8

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move/from16 v17, v14

    .line 2770
    .end local v14    # "offset":I
    .restart local v17    # "offset":I
    :goto_8
    const/16 v7, 0x30

    if-lt v2, v7, :cond_d

    const/16 v8, 0x39

    if-gt v2, v8, :cond_d

    .line 2771
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v15, v17, 0x1

    .end local v17    # "offset":I
    .local v15, "offset":I
    add-int v14, v14, v17

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move/from16 v17, v15

    goto :goto_8

    .line 2779
    .end local v15    # "offset":I
    .restart local v17    # "offset":I
    :cond_d
    if-eqz v6, :cond_f

    .line 2780
    const/16 v7, 0x22

    if-eq v2, v7, :cond_e

    .line 2781
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2782
    return-wide v11

    .line 2784
    :cond_e
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v17, 0x1

    .end local v17    # "offset":I
    .restart local v8    # "offset":I
    add-int v7, v7, v17

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2786
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v7, 0x1

    .line 2787
    .local v11, "start":I
    add-int/2addr v7, v8

    sub-int/2addr v7, v11

    add-int/lit8 v7, v7, -0x2

    move/from16 v17, v8

    .local v7, "count":I
    goto :goto_9

    .line 2789
    .end local v7    # "count":I
    .end local v8    # "offset":I
    .end local v11    # "start":I
    .restart local v17    # "offset":I
    :cond_f
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2790
    .restart local v11    # "start":I
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v7, v7, v17

    sub-int/2addr v7, v11

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .line 2793
    .restart local v7    # "count":I
    :goto_9
    if-nez v5, :cond_10

    const/16 v8, 0x14

    if-ge v7, v8, :cond_10

    .line 2794
    long-to-double v14, v9

    move-wide/from16 v18, v9

    .end local v9    # "intVal":J
    .local v18, "intVal":J
    long-to-double v8, v3

    div-double/2addr v14, v8

    .line 2795
    .local v14, "value":D
    if-eqz v23, :cond_11

    .line 2796
    neg-double v14, v14

    goto :goto_a

    .line 2793
    .end local v14    # "value":D
    .end local v18    # "intVal":J
    .restart local v9    # "intVal":J
    :cond_10
    move-wide/from16 v18, v9

    .line 2799
    .end local v9    # "intVal":J
    .restart local v18    # "intVal":J
    invoke-virtual {v0, v11, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v8

    .line 2800
    .local v8, "text":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 2802
    .end local v1    # "small":Z
    .end local v3    # "power":J
    .end local v5    # "exp":Z
    .end local v7    # "count":I
    .end local v8    # "text":Ljava/lang/String;
    .end local v11    # "start":I
    .end local v18    # "intVal":J
    .restart local v14    # "value":D
    :cond_11
    :goto_a
    nop

    .line 2838
    move/from16 v1, p1

    if-ne v2, v1, :cond_12

    .line 2839
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v3, v3, v17

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2840
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2841
    const/4 v3, 0x3

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2842
    const/16 v3, 0x10

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2843
    return-wide v14

    .line 2845
    :cond_12
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2846
    return-wide v14

    .line 2728
    .end local v14    # "value":D
    .end local v17    # "offset":I
    .end local v23    # "negative":Z
    .restart local v4    # "offset":I
    .local v8, "negative":Z
    :cond_13
    move/from16 v1, p1

    move/from16 v23, v8

    .line 2802
    .end local v8    # "negative":Z
    .restart local v23    # "negative":Z
    const/16 v3, 0x6e

    if-ne v2, v3, :cond_18

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v5, 0x75

    if-ne v3, v5, :cond_18

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v4

    const/4 v5, 0x1

    add-int/2addr v3, v5

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v5, 0x6c

    if-ne v3, v5, :cond_18

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_18

    .line 2803
    const/4 v3, 0x5

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2804
    const-wide/16 v7, 0x0

    .line 2805
    .local v7, "value":D
    const/4 v5, 0x3

    add-int/2addr v4, v5

    .line 2806
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v4, 0x1

    .end local v4    # "offset":I
    .local v9, "offset":I
    add-int/2addr v5, v4

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2808
    if-eqz v6, :cond_14

    const/16 v4, 0x22

    if-ne v2, v4, :cond_14

    .line 2809
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v9, 0x1

    .end local v9    # "offset":I
    .local v5, "offset":I
    add-int/2addr v4, v9

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v9, v5

    .line 2813
    .end local v5    # "offset":I
    .restart local v9    # "offset":I
    :cond_14
    :goto_b
    const/16 v4, 0x2c

    if-ne v2, v4, :cond_15

    .line 2814
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v9

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2815
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2816
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2817
    const/16 v4, 0x10

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2818
    return-wide v7

    .line 2819
    :cond_15
    const/16 v4, 0x10

    const/16 v5, 0x5d

    if-ne v2, v5, :cond_16

    .line 2820
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v9

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2821
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2822
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2823
    const/16 v3, 0xf

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2824
    return-wide v7

    .line 2825
    :cond_16
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 2826
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "offset":I
    .restart local v10    # "offset":I
    add-int/2addr v5, v9

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2827
    move v9, v10

    goto :goto_b

    .line 2831
    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    :cond_17
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2832
    return-wide v11

    .line 2834
    .end local v7    # "value":D
    .end local v9    # "offset":I
    .restart local v4    # "offset":I
    :cond_18
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2835
    return-wide v11
.end method

.method public scanEnum(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/Enum;
    .locals 2
    .param p2, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;
    .param p3, "serperator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/parser/SymbolTable;",
            "C)",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 1450
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbolWithSeperator(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    .line 1451
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1452
    const/4 v1, 0x0

    return-object v1

    .line 1454
    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    return-object v1
.end method

.method public final scanFalse()V
    .locals 3

    .line 4555
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const-string v1, "error parse false"

    const/16 v2, 0x66

    if-ne v0, v2, :cond_6

    .line 4558
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4560
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x61

    if-ne v0, v2, :cond_5

    .line 4563
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4565
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x6c

    if-ne v0, v2, :cond_4

    .line 4568
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4570
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x73

    if-ne v0, v2, :cond_3

    .line 4573
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4575
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x65

    if-ne v0, v2, :cond_2

    .line 4578
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4580
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4584
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan false error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4582
    :cond_1
    :goto_0
    const/4 v0, 0x7

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4586
    return-void

    .line 4576
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4571
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4566
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4561
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4556
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scanFieldBigInteger([C)Ljava/math/BigInteger;
    .locals 19
    .param p1, "fieldName"    # [C

    .line 3671
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3673
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 3674
    const/4 v2, -0x2

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3675
    return-object v4

    .line 3678
    :cond_0
    array-length v3, v1

    .line 3679
    .local v3, "offset":I
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "offset":I
    .local v6, "offset":I
    add-int/2addr v5, v3

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3680
    .local v3, "chLocal":C
    const/16 v5, 0x22

    const/4 v7, 0x1

    if-ne v3, v5, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 3681
    .local v8, "quote":Z
    :goto_0
    if-eqz v8, :cond_2

    .line 3682
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v6, 0x1

    .end local v6    # "offset":I
    .local v10, "offset":I
    add-int/2addr v9, v6

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v6, v10

    .line 3685
    .end local v10    # "offset":I
    .restart local v6    # "offset":I
    :cond_2
    const/16 v9, 0x2d

    if-ne v3, v9, :cond_3

    const/4 v2, 0x1

    .line 3686
    .local v2, "negative":Z
    :cond_3
    if-eqz v2, :cond_4

    .line 3687
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v6, 0x1

    .end local v6    # "offset":I
    .restart local v10    # "offset":I
    add-int/2addr v9, v6

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v6, v10

    .line 3691
    .end local v10    # "offset":I
    .restart local v6    # "offset":I
    :cond_4
    const/16 v13, 0x2c

    const/16 v14, 0x30

    const/4 v15, -0x1

    if-lt v3, v14, :cond_11

    const/16 v9, 0x39

    if-gt v3, v9, :cond_11

    .line 3692
    add-int/lit8 v12, v3, -0x30

    int-to-long v11, v12

    .line 3694
    .local v11, "intVal":J
    :goto_1
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v16, v6, 0x1

    .end local v6    # "offset":I
    .local v16, "offset":I
    add-int/2addr v10, v6

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3695
    if-lt v3, v14, :cond_5

    if-gt v3, v9, :cond_5

    .line 3696
    const-wide/16 v17, 0xa

    mul-long v17, v17, v11

    add-int/lit8 v6, v3, -0x30

    int-to-long v9, v6

    add-long v11, v17, v9

    .line 3697
    move/from16 v6, v16

    const/16 v9, 0x39

    goto :goto_1

    .line 3704
    :cond_5
    if-eqz v8, :cond_7

    .line 3705
    if-eq v3, v5, :cond_6

    .line 3706
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3707
    return-object v4

    .line 3709
    :cond_6
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v16, 0x1

    .end local v16    # "offset":I
    .restart local v6    # "offset":I
    add-int v5, v5, v16

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3711
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v9, v1

    add-int/2addr v9, v5

    add-int/2addr v9, v7

    .line 3712
    .local v9, "start":I
    add-int/2addr v5, v6

    sub-int/2addr v5, v9

    add-int/lit8 v5, v5, -0x2

    move/from16 v16, v6

    .local v5, "count":I
    goto :goto_2

    .line 3714
    .end local v5    # "count":I
    .end local v6    # "offset":I
    .end local v9    # "start":I
    .restart local v16    # "offset":I
    :cond_7
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v6, v1

    add-int v9, v5, v6

    .line 3715
    .restart local v9    # "start":I
    add-int v5, v5, v16

    sub-int/2addr v5, v9

    sub-int/2addr v5, v7

    .line 3718
    .restart local v5    # "count":I
    :goto_2
    const/16 v6, 0x14

    if-lt v5, v6, :cond_9

    if-eqz v2, :cond_8

    const/16 v7, 0x15

    if-ge v5, v7, :cond_8

    goto :goto_3

    .line 3724
    :cond_8
    invoke-virtual {v0, v9, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v7

    .line 3725
    .local v7, "strVal":Ljava/lang/String;
    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object v4, v10

    .local v10, "value":Ljava/math/BigInteger;
    goto :goto_5

    .line 3719
    .end local v7    # "strVal":Ljava/lang/String;
    .end local v10    # "value":Ljava/math/BigInteger;
    :cond_9
    :goto_3
    if-eqz v2, :cond_a

    move v7, v5

    .end local v5    # "count":I
    .local v7, "count":I
    neg-long v4, v11

    goto :goto_4

    .end local v7    # "count":I
    .restart local v5    # "count":I
    :cond_a
    move v7, v5

    .end local v5    # "count":I
    .restart local v7    # "count":I
    move-wide v4, v11

    :goto_4
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 3727
    .end local v7    # "count":I
    .end local v9    # "start":I
    .end local v11    # "intVal":J
    .local v4, "value":Ljava/math/BigInteger;
    :goto_5
    nop

    .line 3763
    if-ne v3, v13, :cond_b

    .line 3764
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v5, v5, v16

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3765
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3766
    const/4 v5, 0x3

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3767
    const/16 v5, 0x10

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3768
    return-object v4

    .line 3771
    :cond_b
    const/16 v5, 0x7d

    if-ne v3, v5, :cond_10

    .line 3772
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v16, 0x1

    .end local v16    # "offset":I
    .local v7, "offset":I
    add-int v5, v5, v16

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3773
    if-ne v3, v13, :cond_c

    .line 3774
    const/16 v5, 0x10

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3775
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v7

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3776
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    .line 3777
    :cond_c
    const/16 v5, 0x5d

    if-ne v3, v5, :cond_d

    .line 3778
    const/16 v5, 0xf

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3779
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v7

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3780
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    .line 3781
    :cond_d
    const/16 v5, 0x7d

    if-ne v3, v5, :cond_e

    .line 3782
    const/16 v5, 0xd

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3783
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v7

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3784
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    .line 3785
    :cond_e
    const/16 v5, 0x1a

    if-ne v3, v5, :cond_f

    .line 3786
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3787
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v7, -0x1

    add-int/2addr v6, v9

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3788
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3793
    :goto_6
    const/4 v5, 0x4

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3799
    return-object v4

    .line 3790
    :cond_f
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3791
    const/4 v5, 0x0

    return-object v5

    .line 3795
    .end local v7    # "offset":I
    .restart local v16    # "offset":I
    :cond_10
    const/4 v5, 0x0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3796
    return-object v5

    .line 3727
    .end local v4    # "value":Ljava/math/BigInteger;
    .end local v16    # "offset":I
    .restart local v6    # "offset":I
    :cond_11
    const/16 v4, 0x6e

    if-ne v3, v4, :cond_16

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v6

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v9, 0x75

    if-ne v4, v9, :cond_16

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v6

    add-int/2addr v4, v7

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v7, 0x6c

    if-ne v4, v7, :cond_16

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_16

    .line 3728
    const/4 v4, 0x5

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3729
    const/4 v7, 0x0

    .line 3730
    .local v7, "value":Ljava/math/BigInteger;
    const/4 v9, 0x3

    add-int/2addr v6, v9

    .line 3731
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v6, 0x1

    .end local v6    # "offset":I
    .local v11, "offset":I
    add-int/2addr v9, v6

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3733
    if-eqz v8, :cond_12

    if-ne v3, v5, :cond_12

    .line 3734
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v11, 0x1

    .end local v11    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v5, v11

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v11, v6

    .line 3738
    .end local v6    # "offset":I
    .restart local v11    # "offset":I
    :cond_12
    :goto_7
    if-ne v3, v13, :cond_13

    .line 3739
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v11

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3740
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3741
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3742
    const/16 v5, 0x10

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3743
    return-object v7

    .line 3744
    :cond_13
    const/16 v5, 0x10

    const/16 v6, 0x7d

    if-ne v3, v6, :cond_14

    .line 3745
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v11

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3746
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3747
    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3748
    const/16 v9, 0xd

    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3749
    return-object v7

    .line 3750
    :cond_14
    const/16 v9, 0xd

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 3751
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v11, 0x1

    .end local v11    # "offset":I
    .local v14, "offset":I
    add-int/2addr v12, v11

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3752
    move v11, v14

    goto :goto_7

    .line 3756
    .end local v14    # "offset":I
    .restart local v11    # "offset":I
    :cond_15
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3757
    const/4 v4, 0x0

    return-object v4

    .line 3759
    .end local v7    # "value":Ljava/math/BigInteger;
    .end local v11    # "offset":I
    .restart local v6    # "offset":I
    :cond_16
    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3760
    const/4 v4, 0x0

    return-object v4
.end method

.method public scanFieldBoolean([C)Z
    .locals 10
    .param p1, "fieldName"    # [C

    .line 2117
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2119
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2120
    const/4 v1, -0x2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2121
    return v0

    .line 2124
    :cond_0
    array-length v1, p1

    .line 2125
    .local v1, "offset":I
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "offset":I
    .local v3, "offset":I
    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2128
    .local v1, "chLocal":C
    const/16 v2, 0x74

    const/16 v4, 0x65

    const/4 v5, -0x1

    if-ne v1, v2, :cond_4

    .line 2129
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "offset":I
    .local v6, "offset":I
    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x72

    if-eq v2, v3, :cond_1

    .line 2130
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2131
    return v0

    .line 2133
    :cond_1
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v6, 0x1

    .end local v6    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v2, v6

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v6, 0x75

    if-eq v2, v6, :cond_2

    .line 2134
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2135
    return v0

    .line 2137
    :cond_2
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_3

    .line 2138
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2139
    return v0

    .line 2142
    :cond_3
    const/4 v2, 0x1

    .local v2, "value":Z
    goto :goto_0

    .line 2143
    .end local v2    # "value":Z
    .end local v6    # "offset":I
    .restart local v3    # "offset":I
    :cond_4
    const/16 v2, 0x66

    if-ne v1, v2, :cond_f

    .line 2144
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x61

    if-eq v2, v3, :cond_5

    .line 2145
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2146
    return v0

    .line 2148
    :cond_5
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v6, 0x1

    .end local v6    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v2, v6

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v6, 0x6c

    if-eq v2, v6, :cond_6

    .line 2149
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2150
    return v0

    .line 2152
    :cond_6
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x73

    if-eq v2, v3, :cond_7

    .line 2153
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2154
    return v0

    .line 2156
    :cond_7
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v6, 0x1

    .end local v6    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v2, v6

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_8

    .line 2157
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2158
    return v0

    .line 2161
    :cond_8
    const/4 v2, 0x0

    move v6, v3

    .line 2167
    .end local v3    # "offset":I
    .restart local v2    # "value":Z
    .restart local v6    # "offset":I
    :goto_0
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v6, 0x1

    .end local v6    # "offset":I
    .local v4, "offset":I
    add-int/2addr v3, v6

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2168
    const/16 v3, 0x10

    const/16 v6, 0x2c

    if-ne v1, v6, :cond_9

    .line 2169
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2170
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2171
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2172
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2174
    return v2

    .line 2177
    :cond_9
    const/16 v7, 0x7d

    if-ne v1, v7, :cond_e

    .line 2178
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v4, 0x1

    .end local v4    # "offset":I
    .local v9, "offset":I
    add-int/2addr v8, v4

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2179
    if-ne v1, v6, :cond_a

    .line 2180
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2181
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v9

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2182
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    .line 2183
    :cond_a
    const/16 v3, 0x5d

    if-ne v1, v3, :cond_b

    .line 2184
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2185
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v9

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2186
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    .line 2187
    :cond_b
    if-ne v1, v7, :cond_c

    .line 2188
    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2189
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v9

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2190
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    .line 2191
    :cond_c
    const/16 v3, 0x1a

    if-ne v1, v3, :cond_d

    .line 2192
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2193
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v9, -0x1

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2194
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2199
    :goto_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2205
    return v2

    .line 2196
    :cond_d
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2197
    return v0

    .line 2201
    .end local v9    # "offset":I
    .restart local v4    # "offset":I
    :cond_e
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2202
    return v0

    .line 2163
    .end local v2    # "value":Z
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :cond_f
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2164
    return v0
.end method

.method public scanFieldDate([C)Ljava/util/Date;
    .locals 16
    .param p1, "fieldName"    # [C

    .line 3803
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v0, 0x0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3805
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 3806
    const/4 v0, -0x2

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3807
    return-object v4

    .line 3812
    :cond_0
    array-length v3, v2

    .line 3813
    .local v3, "offset":I
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "offset":I
    .local v6, "offset":I
    add-int/2addr v5, v3

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3816
    .local v3, "chLocal":C
    const/16 v5, 0x22

    const/4 v7, -0x1

    if-ne v3, v5, :cond_6

    .line 3817
    iget v8, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v9, v2

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    .line 3818
    .local v8, "startIndex":I
    invoke-virtual {v1, v5, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v9

    .line 3819
    .local v9, "endIndex":I
    if-eq v9, v7, :cond_5

    .line 3823
    iget v10, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v11, v2

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x1

    .line 3824
    .local v10, "startIndex2":I
    sub-int v11, v9, v10

    invoke-virtual {v1, v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v11

    .line 3825
    .local v11, "stringVal":Ljava/lang/String;
    const/16 v12, 0x5c

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-eq v13, v7, :cond_3

    .line 3827
    :goto_0
    const/4 v13, 0x0

    .line 3828
    .local v13, "slashCount":I
    add-int/lit8 v14, v9, -0x1

    .local v14, "i":I
    :goto_1
    if-ltz v14, :cond_1

    .line 3829
    invoke-virtual {v1, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v15

    if-ne v15, v12, :cond_1

    .line 3830
    add-int/lit8 v13, v13, 0x1

    .line 3828
    add-int/lit8 v14, v14, -0x1

    goto :goto_1

    .line 3835
    .end local v14    # "i":I
    :cond_1
    rem-int/lit8 v14, v13, 0x2

    if-nez v14, :cond_2

    .line 3836
    nop

    .line 3841
    .end local v13    # "slashCount":I
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v12, v2

    add-int/2addr v12, v5

    add-int/lit8 v12, v12, 0x1

    sub-int v12, v9, v12

    .line 3842
    .local v12, "chars_len":I
    array-length v13, v2

    add-int/2addr v5, v13

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v5

    .line 3844
    .local v5, "chars":[C
    invoke-static {v5, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 3838
    .end local v5    # "chars":[C
    .end local v12    # "chars_len":I
    .restart local v13    # "slashCount":I
    :cond_2
    add-int/lit8 v14, v9, 0x1

    invoke-virtual {v1, v5, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v9

    .line 3839
    .end local v13    # "slashCount":I
    goto :goto_0

    .line 3847
    :cond_3
    :goto_2
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v12, v2

    add-int/2addr v12, v5

    add-int/lit8 v12, v12, 0x1

    sub-int v12, v9, v12

    add-int/lit8 v12, v12, 0x1

    add-int/2addr v6, v12

    .line 3848
    add-int/lit8 v12, v6, 0x1

    .end local v6    # "offset":I
    .local v12, "offset":I
    add-int/2addr v5, v6

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3850
    new-instance v5, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v5, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 3852
    .local v5, "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :try_start_0
    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3853
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 3854
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v6

    .line 3855
    .local v0, "dateVal":Ljava/util/Date;
    nop

    .line 3860
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 3861
    nop

    .line 3862
    .end local v5    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v8    # "startIndex":I
    .end local v9    # "endIndex":I
    .end local v10    # "startIndex2":I
    .end local v11    # "stringVal":Ljava/lang/String;
    goto :goto_5

    .line 3856
    .end local v0    # "dateVal":Ljava/util/Date;
    .restart local v5    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .restart local v8    # "startIndex":I
    .restart local v9    # "endIndex":I
    .restart local v10    # "startIndex2":I
    .restart local v11    # "stringVal":Ljava/lang/String;
    :cond_4
    :try_start_1
    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3857
    nop

    .line 3860
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 3857
    return-object v4

    .line 3860
    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v0

    .line 3820
    .end local v5    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v10    # "startIndex2":I
    .end local v11    # "stringVal":Ljava/lang/String;
    .end local v12    # "offset":I
    .restart local v6    # "offset":I
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "unclosed str"

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3862
    .end local v8    # "startIndex":I
    .end local v9    # "endIndex":I
    :cond_6
    const/16 v0, 0x2d

    const/16 v5, 0x39

    const/16 v8, 0x30

    if-eq v3, v0, :cond_8

    if-lt v3, v8, :cond_7

    if-gt v3, v5, :cond_7

    goto :goto_3

    .line 3894
    :cond_7
    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3895
    return-object v4

    .line 3863
    :cond_8
    :goto_3
    const-wide/16 v9, 0x0

    .line 3865
    .local v9, "millis":J
    const/4 v11, 0x0

    .line 3866
    .local v11, "negative":Z
    if-ne v3, v0, :cond_9

    .line 3867
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v6, 0x1

    .end local v6    # "offset":I
    .restart local v12    # "offset":I
    add-int/2addr v0, v6

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3868
    const/4 v11, 0x1

    move v6, v12

    .line 3871
    .end local v12    # "offset":I
    .restart local v6    # "offset":I
    :cond_9
    if-lt v3, v8, :cond_a

    if-gt v3, v5, :cond_a

    .line 3872
    add-int/lit8 v0, v3, -0x30

    int-to-long v9, v0

    .line 3874
    :goto_4
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v6, 0x1

    .end local v6    # "offset":I
    .restart local v12    # "offset":I
    add-int/2addr v0, v6

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3875
    if-lt v3, v8, :cond_b

    if-gt v3, v5, :cond_b

    .line 3876
    const-wide/16 v13, 0xa

    mul-long v13, v13, v9

    add-int/lit8 v0, v3, -0x30

    int-to-long v5, v0

    add-long v9, v13, v5

    move v6, v12

    const/16 v5, 0x39

    goto :goto_4

    .line 3883
    .end local v12    # "offset":I
    .restart local v6    # "offset":I
    :cond_a
    move v12, v6

    .end local v6    # "offset":I
    .restart local v12    # "offset":I
    :cond_b
    const-wide/16 v5, 0x0

    cmp-long v0, v9, v5

    if-gez v0, :cond_c

    .line 3884
    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3885
    return-object v4

    .line 3888
    :cond_c
    if-eqz v11, :cond_d

    .line 3889
    neg-long v9, v9

    .line 3892
    :cond_d
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 3893
    .end local v9    # "millis":J
    .end local v11    # "negative":Z
    .restart local v0    # "dateVal":Ljava/util/Date;
    nop

    .line 3898
    :goto_5
    const/16 v5, 0x2c

    if-ne v3, v5, :cond_e

    .line 3899
    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v12

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3900
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3901
    const/4 v4, 0x3

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3902
    return-object v0

    .line 3905
    :cond_e
    const/16 v6, 0x7d

    if-ne v3, v6, :cond_13

    .line 3906
    iget v8, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v12, 0x1

    .end local v12    # "offset":I
    .local v9, "offset":I
    add-int/2addr v8, v12

    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3907
    if-ne v3, v5, :cond_f

    .line 3908
    const/16 v4, 0x10

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3909
    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v9

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3910
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    .line 3911
    :cond_f
    const/16 v5, 0x5d

    if-ne v3, v5, :cond_10

    .line 3912
    const/16 v4, 0xf

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3913
    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v9

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3914
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    .line 3915
    :cond_10
    if-ne v3, v6, :cond_11

    .line 3916
    const/16 v4, 0xd

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3917
    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v9

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3918
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    .line 3919
    :cond_11
    const/16 v5, 0x1a

    if-ne v3, v5, :cond_12

    .line 3920
    const/16 v4, 0x14

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3921
    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v9, -0x1

    add-int/2addr v4, v6

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3922
    iput-char v5, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3927
    :goto_6
    const/4 v4, 0x4

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3933
    return-object v0

    .line 3924
    :cond_12
    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3925
    return-object v4

    .line 3929
    .end local v9    # "offset":I
    .restart local v12    # "offset":I
    :cond_13
    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3930
    return-object v4
.end method

.method public scanFieldDecimal([C)Ljava/math/BigDecimal;
    .locals 19
    .param p1, "fieldName"    # [C

    .line 3515
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3517
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 3518
    const/4 v2, -0x2

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3519
    return-object v4

    .line 3522
    :cond_0
    array-length v3, v1

    .line 3523
    .local v3, "offset":I
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "offset":I
    .local v6, "offset":I
    add-int/2addr v5, v3

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3524
    .local v3, "chLocal":C
    const/16 v5, 0x22

    const/4 v7, 0x1

    if-ne v3, v5, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 3525
    .local v8, "quote":Z
    :goto_0
    if-eqz v8, :cond_2

    .line 3526
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v6, 0x1

    .end local v6    # "offset":I
    .local v10, "offset":I
    add-int/2addr v9, v6

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v6, v10

    .line 3529
    .end local v10    # "offset":I
    .restart local v6    # "offset":I
    :cond_2
    const/16 v9, 0x2d

    if-ne v3, v9, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    .line 3530
    .local v10, "negative":Z
    :goto_1
    if-eqz v10, :cond_4

    .line 3531
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v6, 0x1

    .end local v6    # "offset":I
    .local v12, "offset":I
    add-int/2addr v11, v6

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v6, v12

    .line 3535
    .end local v12    # "offset":I
    .restart local v6    # "offset":I
    :cond_4
    const/16 v15, 0x2c

    const/16 v2, 0x30

    const/4 v11, -0x1

    if-lt v3, v2, :cond_16

    const/16 v14, 0x39

    if-gt v3, v14, :cond_16

    .line 3537
    :goto_2
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v6, 0x1

    .end local v6    # "offset":I
    .local v17, "offset":I
    add-int/2addr v13, v6

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3538
    if-lt v3, v2, :cond_5

    if-gt v3, v14, :cond_5

    .line 3539
    move/from16 v6, v17

    goto :goto_2

    .line 3545
    :cond_5
    const/16 v6, 0x2e

    if-ne v3, v6, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    .line 3546
    .local v6, "small":Z
    :goto_3
    if-eqz v6, :cond_8

    .line 3547
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "offset":I
    .local v18, "offset":I
    add-int v13, v13, v17

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3548
    if-lt v3, v2, :cond_7

    if-gt v3, v14, :cond_7

    .line 3550
    :goto_4
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v18, 0x1

    .end local v18    # "offset":I
    .restart local v17    # "offset":I
    add-int v13, v13, v18

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3551
    if-lt v3, v2, :cond_8

    if-gt v3, v14, :cond_8

    .line 3552
    move/from16 v18, v17

    goto :goto_4

    .line 3558
    .end local v17    # "offset":I
    .restart local v18    # "offset":I
    :cond_7
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3559
    return-object v4

    .line 3563
    .end local v18    # "offset":I
    .restart local v17    # "offset":I
    :cond_8
    const/16 v13, 0x65

    if-eq v3, v13, :cond_a

    const/16 v13, 0x45

    if-ne v3, v13, :cond_9

    goto :goto_5

    :cond_9
    const/16 v16, 0x0

    goto :goto_6

    :cond_a
    :goto_5
    const/16 v16, 0x1

    :goto_6
    move/from16 v13, v16

    .line 3564
    .local v13, "exp":Z
    if-eqz v13, :cond_d

    .line 3565
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "offset":I
    .restart local v18    # "offset":I
    add-int v12, v12, v17

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3566
    const/16 v12, 0x2b

    if-eq v3, v12, :cond_c

    if-ne v3, v9, :cond_b

    goto :goto_7

    :cond_b
    move/from16 v17, v18

    goto :goto_8

    .line 3567
    :cond_c
    :goto_7
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v18, 0x1

    .end local v18    # "offset":I
    .restart local v12    # "offset":I
    add-int v9, v9, v18

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move/from16 v17, v12

    .line 3570
    .end local v12    # "offset":I
    .restart local v17    # "offset":I
    :goto_8
    if-lt v3, v2, :cond_d

    if-gt v3, v14, :cond_d

    .line 3571
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v17, 0x1

    .end local v17    # "offset":I
    .restart local v12    # "offset":I
    add-int v9, v9, v17

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move/from16 v17, v12

    goto :goto_8

    .line 3579
    .end local v12    # "offset":I
    .restart local v17    # "offset":I
    :cond_d
    if-eqz v8, :cond_f

    .line 3580
    if-eq v3, v5, :cond_e

    .line 3581
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3582
    return-object v4

    .line 3584
    :cond_e
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v17, 0x1

    .end local v17    # "offset":I
    .local v5, "offset":I
    add-int v2, v2, v17

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3586
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v9, v1

    add-int/2addr v9, v2

    add-int/2addr v9, v7

    .line 3587
    .local v9, "start":I
    add-int/2addr v2, v5

    sub-int/2addr v2, v9

    add-int/lit8 v2, v2, -0x2

    move/from16 v17, v5

    .local v2, "count":I
    goto :goto_9

    .line 3589
    .end local v2    # "count":I
    .end local v5    # "offset":I
    .end local v9    # "start":I
    .restart local v17    # "offset":I
    :cond_f
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v5, v1

    add-int v9, v2, v5

    .line 3590
    .restart local v9    # "start":I
    add-int v2, v2, v17

    sub-int/2addr v2, v9

    sub-int/2addr v2, v7

    .line 3593
    .restart local v2    # "count":I
    :goto_9
    invoke-virtual {v0, v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v5

    .line 3594
    .local v5, "chars":[C
    new-instance v7, Ljava/math/BigDecimal;

    invoke-direct {v7, v5}, Ljava/math/BigDecimal;-><init>([C)V

    move-object v2, v7

    .line 3595
    .end local v5    # "chars":[C
    .end local v6    # "small":Z
    .end local v9    # "start":I
    .end local v13    # "exp":Z
    .local v2, "value":Ljava/math/BigDecimal;
    nop

    .line 3631
    if-ne v3, v15, :cond_10

    .line 3632
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v4, v4, v17

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3633
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3634
    const/4 v4, 0x3

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3635
    const/16 v4, 0x10

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3636
    return-object v2

    .line 3639
    :cond_10
    const/16 v5, 0x7d

    if-ne v3, v5, :cond_15

    .line 3640
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v17, 0x1

    .end local v17    # "offset":I
    .local v6, "offset":I
    add-int v5, v5, v17

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3641
    if-ne v3, v15, :cond_11

    .line 3642
    const/16 v4, 0x10

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3643
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v6

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3644
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_a

    .line 3645
    :cond_11
    const/16 v5, 0x5d

    if-ne v3, v5, :cond_12

    .line 3646
    const/16 v4, 0xf

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3647
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v6

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3648
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_a

    .line 3649
    :cond_12
    const/16 v5, 0x7d

    if-ne v3, v5, :cond_13

    .line 3650
    const/16 v4, 0xd

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3651
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v6

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3652
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_a

    .line 3653
    :cond_13
    const/16 v5, 0x1a

    if-ne v3, v5, :cond_14

    .line 3654
    const/16 v4, 0x14

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3655
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v6, -0x1

    add-int/2addr v4, v7

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3656
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3661
    :goto_a
    const/4 v4, 0x4

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3667
    return-object v2

    .line 3658
    :cond_14
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3659
    return-object v4

    .line 3663
    .end local v6    # "offset":I
    .restart local v17    # "offset":I
    :cond_15
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3664
    return-object v4

    .line 3595
    .end local v2    # "value":Ljava/math/BigDecimal;
    .end local v17    # "offset":I
    .restart local v6    # "offset":I
    :cond_16
    const/16 v2, 0x6e

    if-ne v3, v2, :cond_1b

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v9, 0x75

    if-ne v2, v9, :cond_1b

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v6

    add-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v7, 0x6c

    if-ne v2, v7, :cond_1b

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v6

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_1b

    .line 3596
    const/4 v2, 0x5

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3597
    const/4 v7, 0x0

    .line 3598
    .local v7, "value":Ljava/math/BigDecimal;
    const/4 v9, 0x3

    add-int/2addr v6, v9

    .line 3599
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v6, 0x1

    .end local v6    # "offset":I
    .restart local v12    # "offset":I
    add-int/2addr v9, v6

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3601
    if-eqz v8, :cond_17

    if-ne v3, v5, :cond_17

    .line 3602
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v12, 0x1

    .end local v12    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v5, v12

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v12, v6

    .line 3606
    .end local v6    # "offset":I
    .restart local v12    # "offset":I
    :cond_17
    :goto_b
    if-ne v3, v15, :cond_18

    .line 3607
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v12

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3608
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3609
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3610
    const/16 v5, 0x10

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3611
    return-object v7

    .line 3612
    :cond_18
    const/16 v5, 0x10

    const/16 v6, 0x7d

    if-ne v3, v6, :cond_19

    .line 3613
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v12

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3614
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3615
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3616
    const/16 v9, 0xd

    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3617
    return-object v7

    .line 3618
    :cond_19
    const/16 v9, 0xd

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 3619
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v12, 0x1

    .end local v12    # "offset":I
    .local v14, "offset":I
    add-int/2addr v13, v12

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3620
    move v12, v14

    goto :goto_b

    .line 3624
    .end local v14    # "offset":I
    .restart local v12    # "offset":I
    :cond_1a
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3625
    return-object v4

    .line 3627
    .end local v7    # "value":Ljava/math/BigDecimal;
    .end local v12    # "offset":I
    .restart local v6    # "offset":I
    :cond_1b
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3628
    return-object v4
.end method

.method public final scanFieldDouble([C)D
    .locals 25
    .param p1, "fieldName"    # [C

    .line 3344
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3346
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_0

    .line 3347
    const/4 v2, -0x2

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3348
    return-wide v4

    .line 3351
    :cond_0
    array-length v3, v1

    .line 3352
    .local v3, "offset":I
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "offset":I
    .local v7, "offset":I
    add-int/2addr v6, v3

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3353
    .local v3, "chLocal":C
    const/16 v6, 0x22

    if-ne v3, v6, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 3354
    .local v9, "quote":Z
    :goto_0
    if-eqz v9, :cond_2

    .line 3355
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v7, 0x1

    .end local v7    # "offset":I
    .local v11, "offset":I
    add-int/2addr v10, v7

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v7, v11

    .line 3358
    .end local v11    # "offset":I
    .restart local v7    # "offset":I
    :cond_2
    const/16 v10, 0x2d

    if-ne v3, v10, :cond_3

    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    .line 3359
    .local v11, "negative":Z
    :goto_1
    if-eqz v11, :cond_4

    .line 3360
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v13, v7, 0x1

    .end local v7    # "offset":I
    .local v13, "offset":I
    add-int/2addr v12, v7

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v7, v13

    .line 3364
    .end local v13    # "offset":I
    .restart local v7    # "offset":I
    :cond_4
    const/4 v12, -0x1

    const/16 v15, 0x30

    if-lt v3, v15, :cond_19

    const/16 v14, 0x39

    if-gt v3, v14, :cond_19

    .line 3365
    add-int/lit8 v13, v3, -0x30

    move/from16 v17, v3

    .end local v3    # "chLocal":C
    .local v17, "chLocal":C
    int-to-long v2, v13

    .line 3368
    .local v2, "intVal":J
    :goto_2
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v18, v7, 0x1

    .end local v7    # "offset":I
    .local v18, "offset":I
    add-int/2addr v13, v7

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    .line 3369
    .end local v17    # "chLocal":C
    .local v7, "chLocal":C
    const-wide/16 v19, 0xa

    if-lt v7, v15, :cond_5

    if-gt v7, v14, :cond_5

    .line 3370
    mul-long v19, v19, v2

    add-int/lit8 v13, v7, -0x30

    move/from16 v21, v9

    .end local v9    # "quote":Z
    .local v21, "quote":Z
    int-to-long v8, v13

    add-long v2, v19, v8

    .line 3371
    move/from16 v17, v7

    move/from16 v7, v18

    move/from16 v9, v21

    goto :goto_2

    .line 3369
    .end local v21    # "quote":Z
    .restart local v9    # "quote":Z
    :cond_5
    move/from16 v21, v9

    .line 3377
    .end local v9    # "quote":Z
    .restart local v21    # "quote":Z
    const-wide/16 v8, 0x1

    .line 3378
    .local v8, "power":J
    const/16 v13, 0x2e

    if-ne v7, v13, :cond_6

    const/4 v13, 0x1

    goto :goto_3

    :cond_6
    const/4 v13, 0x0

    .line 3379
    .local v13, "small":Z
    :goto_3
    if-eqz v13, :cond_9

    .line 3380
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v18, 0x1

    .end local v18    # "offset":I
    .local v17, "offset":I
    add-int v6, v6, v18

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    .line 3381
    .end local v7    # "chLocal":C
    .local v6, "chLocal":C
    if-lt v6, v15, :cond_8

    if-gt v6, v14, :cond_8

    .line 3382
    mul-long v22, v2, v19

    add-int/lit8 v7, v6, -0x30

    move/from16 v24, v11

    .end local v11    # "negative":Z
    .local v24, "negative":Z
    int-to-long v10, v7

    add-long v22, v22, v10

    .line 3383
    .end local v2    # "intVal":J
    .local v22, "intVal":J
    const-wide/16 v2, 0xa

    move-wide v8, v2

    move-wide/from16 v2, v22

    .line 3385
    .end local v22    # "intVal":J
    .restart local v2    # "intVal":J
    :goto_4
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "offset":I
    .restart local v18    # "offset":I
    add-int v7, v7, v17

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    .line 3386
    if-lt v6, v15, :cond_7

    if-gt v6, v14, :cond_7

    .line 3387
    mul-long v10, v2, v19

    add-int/lit8 v7, v6, -0x30

    int-to-long v14, v7

    add-long v2, v10, v14

    .line 3388
    mul-long v8, v8, v19

    .line 3389
    move/from16 v17, v18

    const/16 v14, 0x39

    const/16 v15, 0x30

    goto :goto_4

    .line 3400
    :cond_7
    move v7, v6

    goto :goto_5

    .line 3381
    .end local v18    # "offset":I
    .end local v24    # "negative":Z
    .restart local v11    # "negative":Z
    .restart local v17    # "offset":I
    :cond_8
    move/from16 v24, v11

    .line 3395
    .end local v11    # "negative":Z
    .restart local v24    # "negative":Z
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3396
    return-wide v4

    .line 3379
    .end local v6    # "chLocal":C
    .end local v17    # "offset":I
    .end local v24    # "negative":Z
    .restart local v7    # "chLocal":C
    .restart local v11    # "negative":Z
    .restart local v18    # "offset":I
    :cond_9
    move/from16 v24, v11

    .line 3400
    .end local v11    # "negative":Z
    .restart local v24    # "negative":Z
    :goto_5
    const/16 v6, 0x65

    if-eq v7, v6, :cond_b

    const/16 v6, 0x45

    if-ne v7, v6, :cond_a

    goto :goto_6

    :cond_a
    const/16 v16, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    const/16 v16, 0x1

    :goto_7
    move/from16 v6, v16

    .line 3401
    .local v6, "exp":Z
    if-eqz v6, :cond_e

    .line 3402
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v18, 0x1

    .end local v18    # "offset":I
    .local v11, "offset":I
    add-int v10, v10, v18

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    .line 3403
    const/16 v10, 0x2b

    if-eq v7, v10, :cond_d

    const/16 v10, 0x2d

    if-ne v7, v10, :cond_c

    goto :goto_8

    :cond_c
    move/from16 v18, v11

    goto :goto_9

    .line 3404
    :cond_d
    :goto_8
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v11, 0x1

    .end local v11    # "offset":I
    .local v14, "offset":I
    add-int/2addr v10, v11

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    move/from16 v18, v14

    .line 3407
    .end local v14    # "offset":I
    .restart local v18    # "offset":I
    :goto_9
    const/16 v10, 0x30

    if-lt v7, v10, :cond_e

    const/16 v11, 0x39

    if-gt v7, v11, :cond_e

    .line 3408
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v15, v18, 0x1

    .end local v18    # "offset":I
    .local v15, "offset":I
    add-int v14, v14, v18

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    move/from16 v18, v15

    goto :goto_9

    .line 3416
    .end local v15    # "offset":I
    .restart local v18    # "offset":I
    :cond_e
    if-eqz v21, :cond_10

    .line 3417
    const/16 v10, 0x22

    if-eq v7, v10, :cond_f

    .line 3418
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3419
    return-wide v4

    .line 3421
    :cond_f
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v18, 0x1

    .end local v18    # "offset":I
    .restart local v11    # "offset":I
    add-int v10, v10, v18

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    .line 3423
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v14, v1

    add-int/2addr v14, v10

    const/4 v15, 0x1

    add-int/2addr v14, v15

    .line 3424
    .local v14, "start":I
    add-int/2addr v10, v11

    sub-int/2addr v10, v14

    add-int/lit8 v10, v10, -0x2

    move/from16 v18, v11

    .local v10, "count":I
    goto :goto_a

    .line 3426
    .end local v10    # "count":I
    .end local v11    # "offset":I
    .end local v14    # "start":I
    .restart local v18    # "offset":I
    :cond_10
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v11, v1

    add-int v14, v10, v11

    .line 3427
    .restart local v14    # "start":I
    add-int v10, v10, v18

    sub-int/2addr v10, v14

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    .line 3430
    .restart local v10    # "count":I
    :goto_a
    const/16 v11, 0x14

    if-nez v6, :cond_11

    if-ge v10, v11, :cond_11

    .line 3431
    long-to-double v4, v2

    move/from16 v17, v13

    .end local v13    # "small":Z
    .local v17, "small":Z
    long-to-double v12, v8

    div-double/2addr v4, v12

    .line 3432
    .local v4, "value":D
    if-eqz v24, :cond_12

    .line 3433
    neg-double v4, v4

    goto :goto_b

    .line 3430
    .end local v4    # "value":D
    .end local v17    # "small":Z
    .restart local v13    # "small":Z
    :cond_11
    move/from16 v17, v13

    .line 3436
    .end local v13    # "small":Z
    .restart local v17    # "small":Z
    invoke-virtual {v0, v14, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v4

    .line 3437
    .local v4, "text":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    move-wide v4, v12

    .line 3439
    .end local v2    # "intVal":J
    .end local v6    # "exp":Z
    .end local v8    # "power":J
    .end local v10    # "count":I
    .end local v14    # "start":I
    .end local v17    # "small":Z
    .local v4, "value":D
    :cond_12
    :goto_b
    nop

    .line 3475
    const/16 v2, 0x2c

    if-ne v7, v2, :cond_13

    .line 3476
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v2, v2, v18

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3477
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3478
    const/4 v2, 0x3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3479
    const/16 v2, 0x10

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3480
    return-wide v4

    .line 3483
    :cond_13
    const/16 v2, 0x7d

    if-ne v7, v2, :cond_18

    .line 3484
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v18, 0x1

    .end local v18    # "offset":I
    .local v3, "offset":I
    add-int v2, v2, v18

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3485
    .end local v7    # "chLocal":C
    .local v2, "chLocal":C
    const/16 v6, 0x2c

    if-ne v2, v6, :cond_14

    .line 3486
    const/16 v6, 0x10

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3487
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v3

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3488
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_c

    .line 3489
    :cond_14
    const/16 v6, 0x5d

    if-ne v2, v6, :cond_15

    .line 3490
    const/16 v6, 0xf

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3491
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v3

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3492
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_c

    .line 3493
    :cond_15
    const/16 v6, 0x7d

    if-ne v2, v6, :cond_16

    .line 3494
    const/16 v6, 0xd

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3495
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v3

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3496
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_c

    .line 3497
    :cond_16
    const/16 v6, 0x1a

    if-ne v2, v6, :cond_17

    .line 3498
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3499
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v3, -0x1

    add-int/2addr v7, v8

    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3500
    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3505
    :goto_c
    const/4 v6, 0x4

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3511
    return-wide v4

    .line 3502
    :cond_17
    const/4 v6, -0x1

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3503
    const-wide/16 v8, 0x0

    return-wide v8

    .line 3507
    .end local v2    # "chLocal":C
    .end local v3    # "offset":I
    .restart local v7    # "chLocal":C
    .restart local v18    # "offset":I
    :cond_18
    const/4 v6, -0x1

    const-wide/16 v8, 0x0

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3508
    return-wide v8

    .line 3364
    .end local v4    # "value":D
    .end local v18    # "offset":I
    .end local v21    # "quote":Z
    .end local v24    # "negative":Z
    .local v3, "chLocal":C
    .local v7, "offset":I
    .restart local v9    # "quote":Z
    .local v11, "negative":Z
    :cond_19
    move/from16 v17, v3

    move/from16 v21, v9

    move/from16 v24, v11

    .line 3439
    .end local v3    # "chLocal":C
    .end local v9    # "quote":Z
    .end local v11    # "negative":Z
    .local v17, "chLocal":C
    .restart local v21    # "quote":Z
    .restart local v24    # "negative":Z
    const/16 v2, 0x6e

    move/from16 v3, v17

    .end local v17    # "chLocal":C
    .restart local v3    # "chLocal":C
    if-ne v3, v2, :cond_1e

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v4, 0x75

    if-ne v2, v4, :cond_1e

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v7

    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v4, 0x6c

    if-ne v2, v4, :cond_1e

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v7

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1e

    .line 3440
    const/4 v2, 0x5

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3441
    const-wide/16 v4, 0x0

    .line 3442
    .restart local v4    # "value":D
    const/4 v6, 0x3

    add-int/2addr v7, v6

    .line 3443
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .local v8, "offset":I
    add-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3445
    if-eqz v21, :cond_1a

    const/16 v6, 0x22

    if-ne v3, v6, :cond_1a

    .line 3446
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v6, v8

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v8, v7

    .line 3450
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    :cond_1a
    :goto_d
    const/16 v6, 0x2c

    if-ne v3, v6, :cond_1b

    .line 3451
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v8

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3452
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3453
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3454
    const/16 v7, 0x10

    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3455
    return-wide v4

    .line 3456
    :cond_1b
    const/16 v7, 0x10

    const/16 v9, 0x7d

    if-ne v3, v9, :cond_1c

    .line 3457
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v8

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3458
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3459
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3460
    const/16 v10, 0xd

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3461
    return-wide v4

    .line 3462
    :cond_1c
    const/16 v10, 0xd

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 3463
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v8, 0x1

    .end local v8    # "offset":I
    .local v12, "offset":I
    add-int/2addr v11, v8

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3464
    move v8, v12

    goto :goto_d

    .line 3468
    .end local v12    # "offset":I
    .restart local v8    # "offset":I
    :cond_1d
    const/4 v2, -0x1

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3469
    const-wide/16 v6, 0x0

    return-wide v6

    .line 3471
    .end local v4    # "value":D
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    :cond_1e
    const/4 v2, -0x1

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3472
    const-wide/16 v4, 0x0

    return-wide v4
.end method

.method public final scanFieldFloat([C)F
    .locals 20
    .param p1, "fieldName"    # [C

    .line 2389
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2391
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 2392
    const/4 v2, -0x2

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2393
    return v4

    .line 2396
    :cond_0
    array-length v3, v1

    .line 2397
    .local v3, "offset":I
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "offset":I
    .local v6, "offset":I
    add-int/2addr v5, v3

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2399
    .local v3, "chLocal":C
    const/16 v5, 0x22

    if-ne v3, v5, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 2400
    .local v8, "quote":Z
    :goto_0
    if-eqz v8, :cond_2

    .line 2401
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v6, 0x1

    .end local v6    # "offset":I
    .local v10, "offset":I
    add-int/2addr v9, v6

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v6, v10

    .line 2404
    .end local v10    # "offset":I
    .restart local v6    # "offset":I
    :cond_2
    const/16 v9, 0x2d

    if-ne v3, v9, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    .line 2405
    .local v10, "negative":Z
    :goto_1
    if-eqz v10, :cond_4

    .line 2406
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v6, 0x1

    .end local v6    # "offset":I
    .local v12, "offset":I
    add-int/2addr v11, v6

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v6, v12

    .line 2410
    .end local v12    # "offset":I
    .restart local v6    # "offset":I
    :cond_4
    const/4 v2, -0x1

    const/16 v11, 0x30

    if-lt v3, v11, :cond_19

    const/16 v14, 0x39

    if-gt v3, v14, :cond_19

    .line 2411
    add-int/lit8 v17, v3, -0x30

    .line 2413
    .local v17, "intVal":I
    :goto_2
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v18, v6, 0x1

    .end local v6    # "offset":I
    .local v18, "offset":I
    add-int/2addr v13, v6

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2414
    if-lt v3, v11, :cond_5

    if-gt v3, v14, :cond_5

    .line 2415
    mul-int/lit8 v6, v17, 0xa

    add-int/lit8 v13, v3, -0x30

    add-int v17, v6, v13

    .line 2416
    move/from16 v6, v18

    goto :goto_2

    .line 2422
    :cond_5
    const/4 v6, 0x1

    .line 2423
    .local v6, "power":I
    const/16 v13, 0x2e

    if-ne v3, v13, :cond_6

    const/4 v13, 0x1

    goto :goto_3

    :cond_6
    const/4 v13, 0x0

    .line 2424
    .local v13, "small":Z
    :goto_3
    if-eqz v13, :cond_9

    .line 2425
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v19, v18, 0x1

    .end local v18    # "offset":I
    .local v19, "offset":I
    add-int v12, v12, v18

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2426
    if-lt v3, v11, :cond_8

    if-gt v3, v14, :cond_8

    .line 2427
    mul-int/lit8 v12, v17, 0xa

    add-int/lit8 v18, v3, -0x30

    add-int v12, v12, v18

    .line 2428
    .end local v17    # "intVal":I
    .local v12, "intVal":I
    const/16 v6, 0xa

    move/from16 v17, v12

    .line 2430
    .end local v12    # "intVal":I
    .restart local v17    # "intVal":I
    :goto_4
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v18, v19, 0x1

    .end local v19    # "offset":I
    .restart local v18    # "offset":I
    add-int v12, v12, v19

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2431
    if-lt v3, v11, :cond_7

    if-gt v3, v14, :cond_7

    .line 2432
    mul-int/lit8 v12, v17, 0xa

    add-int/lit8 v19, v3, -0x30

    add-int v17, v12, v19

    .line 2433
    mul-int/lit8 v6, v6, 0xa

    .line 2434
    move/from16 v19, v18

    goto :goto_4

    .line 2445
    :cond_7
    move/from16 v12, v17

    goto :goto_5

    .line 2440
    .end local v18    # "offset":I
    .restart local v19    # "offset":I
    :cond_8
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2441
    return v4

    .line 2424
    .end local v19    # "offset":I
    .restart local v18    # "offset":I
    :cond_9
    move/from16 v12, v17

    .line 2445
    .end local v17    # "intVal":I
    .restart local v12    # "intVal":I
    :goto_5
    const/16 v15, 0x65

    if-eq v3, v15, :cond_b

    const/16 v15, 0x45

    if-ne v3, v15, :cond_a

    goto :goto_6

    :cond_a
    const/16 v16, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    const/16 v16, 0x1

    :goto_7
    move/from16 v15, v16

    .line 2446
    .local v15, "exp":Z
    if-eqz v15, :cond_e

    .line 2447
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v19, v18, 0x1

    .end local v18    # "offset":I
    .restart local v19    # "offset":I
    add-int v7, v7, v18

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2448
    const/16 v7, 0x2b

    if-eq v3, v7, :cond_d

    if-ne v3, v9, :cond_c

    goto :goto_8

    :cond_c
    move/from16 v18, v19

    goto :goto_9

    .line 2449
    :cond_d
    :goto_8
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v19, 0x1

    .end local v19    # "offset":I
    .local v9, "offset":I
    add-int v7, v7, v19

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move/from16 v18, v9

    .line 2452
    .end local v9    # "offset":I
    .restart local v18    # "offset":I
    :goto_9
    if-lt v3, v11, :cond_e

    if-gt v3, v14, :cond_e

    .line 2453
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v18, 0x1

    .end local v18    # "offset":I
    .restart local v9    # "offset":I
    add-int v7, v7, v18

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move/from16 v18, v9

    goto :goto_9

    .line 2461
    .end local v9    # "offset":I
    .restart local v18    # "offset":I
    :cond_e
    if-eqz v8, :cond_10

    .line 2462
    if-eq v3, v5, :cond_f

    .line 2463
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2464
    return v4

    .line 2466
    :cond_f
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v18, 0x1

    .end local v18    # "offset":I
    .local v7, "offset":I
    add-int v5, v5, v18

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2468
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v9, v1

    add-int/2addr v9, v5

    const/4 v11, 0x1

    add-int/2addr v9, v11

    .line 2469
    .local v9, "start":I
    add-int/2addr v5, v7

    sub-int/2addr v5, v9

    add-int/lit8 v5, v5, -0x2

    move/from16 v18, v7

    .local v5, "count":I
    goto :goto_a

    .line 2471
    .end local v5    # "count":I
    .end local v7    # "offset":I
    .end local v9    # "start":I
    .restart local v18    # "offset":I
    :cond_10
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v7, v1

    add-int v9, v5, v7

    .line 2472
    .restart local v9    # "start":I
    add-int v5, v5, v18

    sub-int/2addr v5, v9

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    .line 2475
    .restart local v5    # "count":I
    :goto_a
    const/16 v7, 0x14

    if-nez v15, :cond_11

    if-ge v5, v7, :cond_11

    .line 2476
    int-to-float v11, v12

    int-to-float v14, v6

    div-float/2addr v11, v14

    .line 2477
    .local v11, "value":F
    if-eqz v10, :cond_12

    .line 2478
    neg-float v11, v11

    goto :goto_b

    .line 2481
    .end local v11    # "value":F
    :cond_11
    invoke-virtual {v0, v9, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v11

    .line 2482
    .local v11, "text":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    move v11, v14

    .line 2484
    .end local v5    # "count":I
    .end local v6    # "power":I
    .end local v9    # "start":I
    .end local v12    # "intVal":I
    .end local v13    # "small":Z
    .end local v15    # "exp":Z
    .local v11, "value":F
    :cond_12
    :goto_b
    nop

    .line 2520
    const/16 v5, 0x2c

    if-ne v3, v5, :cond_13

    .line 2521
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v2, v2, v18

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2522
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2523
    const/4 v2, 0x3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2524
    const/16 v2, 0x10

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2525
    return v11

    .line 2528
    :cond_13
    const/16 v5, 0x7d

    if-ne v3, v5, :cond_18

    .line 2529
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v18, 0x1

    .end local v18    # "offset":I
    .local v6, "offset":I
    add-int v5, v5, v18

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2530
    const/16 v5, 0x2c

    if-ne v3, v5, :cond_14

    .line 2531
    const/16 v2, 0x10

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2532
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2533
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_c

    .line 2534
    :cond_14
    const/16 v5, 0x5d

    if-ne v3, v5, :cond_15

    .line 2535
    const/16 v2, 0xf

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2536
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2537
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_c

    .line 2538
    :cond_15
    const/16 v5, 0x7d

    if-ne v3, v5, :cond_16

    .line 2539
    const/16 v2, 0xd

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2540
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2541
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_c

    .line 2542
    :cond_16
    const/16 v5, 0x1a

    if-ne v3, v5, :cond_17

    .line 2543
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v6, -0x1

    add-int/2addr v2, v4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2544
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2545
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2550
    :goto_c
    const/4 v2, 0x4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2556
    return v11

    .line 2547
    :cond_17
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2548
    return v4

    .line 2552
    .end local v6    # "offset":I
    .restart local v18    # "offset":I
    :cond_18
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2553
    return v4

    .line 2484
    .end local v11    # "value":F
    .end local v18    # "offset":I
    .restart local v6    # "offset":I
    :cond_19
    const/16 v7, 0x6e

    if-ne v3, v7, :cond_1e

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v6

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v9, 0x75

    if-ne v7, v9, :cond_1e

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v6

    const/4 v9, 0x1

    add-int/2addr v7, v9

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v9, 0x6c

    if-ne v7, v9, :cond_1e

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v6

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_1e

    .line 2485
    const/4 v7, 0x5

    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2486
    const/4 v9, 0x0

    .line 2487
    .local v9, "value":F
    const/4 v11, 0x3

    add-int/2addr v6, v11

    .line 2488
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v6, 0x1

    .end local v6    # "offset":I
    .local v12, "offset":I
    add-int/2addr v11, v6

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2490
    if-eqz v8, :cond_1a

    if-ne v3, v5, :cond_1a

    .line 2491
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v12, 0x1

    .end local v12    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v5, v12

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v12, v6

    .line 2495
    .end local v6    # "offset":I
    .restart local v12    # "offset":I
    :cond_1a
    :goto_d
    const/16 v5, 0x2c

    if-ne v3, v5, :cond_1b

    .line 2496
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v12

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2497
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2498
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2499
    const/16 v6, 0x10

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2500
    return v9

    .line 2501
    :cond_1b
    const/16 v6, 0x10

    const/16 v11, 0x7d

    if-ne v3, v11, :cond_1c

    .line 2502
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v12

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2503
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2504
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2505
    const/16 v13, 0xd

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2506
    return v9

    .line 2507
    :cond_1c
    const/16 v13, 0xd

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 2508
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v15, v12, 0x1

    .end local v12    # "offset":I
    .local v15, "offset":I
    add-int/2addr v14, v12

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2509
    move v12, v15

    goto :goto_d

    .line 2513
    .end local v15    # "offset":I
    .restart local v12    # "offset":I
    :cond_1d
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2514
    return v4

    .line 2516
    .end local v9    # "value":F
    .end local v12    # "offset":I
    .restart local v6    # "offset":I
    :cond_1e
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2517
    return v4
.end method

.method public final scanFieldFloatArray([C)[F
    .locals 21
    .param p1, "fieldName"    # [C

    .line 3002
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3004
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 3005
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3006
    return-object v4

    .line 3009
    :cond_0
    move-object/from16 v2, p1

    array-length v5, v2

    .line 3010
    .local v5, "offset":I
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v5, 0x1

    .end local v5    # "offset":I
    .local v7, "offset":I
    add-int/2addr v6, v5

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 3011
    .local v5, "chLocal":C
    const/16 v6, 0x5b

    if-eq v5, v6, :cond_1

    .line 3012
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3013
    return-object v4

    .line 3015
    :cond_1
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .local v6, "offset":I
    add-int/2addr v3, v7

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3017
    .end local v5    # "chLocal":C
    .local v3, "chLocal":C
    const/16 v5, 0x10

    new-array v7, v5, [F

    .line 3018
    .local v7, "array":[F
    const/4 v8, 0x0

    .line 3021
    .local v8, "arrayIndex":I
    :goto_0
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v9, v6

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    .line 3023
    .local v9, "start":I
    const/16 v11, 0x2d

    if-ne v3, v11, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    .line 3024
    .local v12, "negative":Z
    :goto_1
    if-eqz v12, :cond_3

    .line 3025
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v6, 0x1

    .end local v6    # "offset":I
    .local v14, "offset":I
    add-int/2addr v13, v6

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v6, v14

    .line 3028
    .end local v14    # "offset":I
    .restart local v6    # "offset":I
    :cond_3
    const/4 v13, -0x1

    const/16 v14, 0x30

    if-lt v3, v14, :cond_1a

    const/16 v15, 0x39

    if-gt v3, v15, :cond_1a

    .line 3029
    add-int/lit8 v16, v3, -0x30

    .line 3031
    .local v16, "intVal":I
    :goto_2
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v6, 0x1

    .end local v6    # "offset":I
    .local v17, "offset":I
    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3032
    if-lt v3, v14, :cond_4

    if-gt v3, v15, :cond_4

    .line 3033
    mul-int/lit8 v5, v16, 0xa

    add-int/lit8 v6, v3, -0x30

    add-int v16, v5, v6

    .line 3034
    move/from16 v6, v17

    const/16 v5, 0x10

    goto :goto_2

    .line 3040
    :cond_4
    const/4 v5, 0x1

    .line 3041
    .local v5, "power":I
    const/16 v6, 0x2e

    if-ne v3, v6, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    .line 3042
    .local v6, "small":Z
    :goto_3
    if-eqz v6, :cond_8

    .line 3043
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "offset":I
    .local v18, "offset":I
    add-int v1, v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 3044
    .end local v3    # "chLocal":C
    .local v1, "chLocal":C
    const/16 v3, 0xa

    .line 3045
    .end local v5    # "power":I
    .local v3, "power":I
    if-lt v1, v14, :cond_7

    if-gt v1, v15, :cond_7

    .line 3046
    mul-int/lit8 v5, v16, 0xa

    add-int/lit8 v17, v1, -0x30

    add-int v5, v5, v17

    move/from16 v16, v5

    move v5, v3

    .line 3048
    .end local v3    # "power":I
    .restart local v5    # "power":I
    :goto_4
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v18, 0x1

    .end local v18    # "offset":I
    .restart local v17    # "offset":I
    add-int v3, v3, v18

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 3050
    if-lt v1, v14, :cond_6

    if-gt v1, v15, :cond_6

    .line 3051
    mul-int/lit8 v3, v16, 0xa

    add-int/lit8 v18, v1, -0x30

    add-int v16, v3, v18

    .line 3052
    mul-int/lit8 v5, v5, 0xa

    .line 3053
    move/from16 v18, v17

    goto :goto_4

    .line 3064
    :cond_6
    move v3, v1

    move/from16 v1, v16

    goto :goto_5

    .line 3059
    .end local v5    # "power":I
    .end local v17    # "offset":I
    .restart local v3    # "power":I
    .restart local v18    # "offset":I
    :cond_7
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3060
    return-object v4

    .line 3042
    .end local v1    # "chLocal":C
    .end local v18    # "offset":I
    .local v3, "chLocal":C
    .restart local v5    # "power":I
    .restart local v17    # "offset":I
    :cond_8
    move/from16 v1, v16

    .line 3064
    .end local v16    # "intVal":I
    .local v1, "intVal":I
    :goto_5
    const/16 v4, 0x65

    if-eq v3, v4, :cond_a

    const/16 v4, 0x45

    if-ne v3, v4, :cond_9

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v4, 0x1

    .line 3065
    .local v4, "exp":Z
    :goto_7
    if-eqz v4, :cond_d

    .line 3066
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v19, v17, 0x1

    .end local v17    # "offset":I
    .local v19, "offset":I
    add-int v13, v13, v17

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3067
    const/16 v13, 0x2b

    if-eq v3, v13, :cond_c

    if-ne v3, v11, :cond_b

    goto :goto_8

    :cond_b
    move/from16 v17, v19

    goto :goto_9

    .line 3068
    :cond_c
    :goto_8
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v13, v19, 0x1

    .end local v19    # "offset":I
    .local v13, "offset":I
    add-int v11, v11, v19

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move/from16 v17, v13

    .line 3071
    .end local v13    # "offset":I
    .restart local v17    # "offset":I
    :goto_9
    if-lt v3, v14, :cond_d

    if-gt v3, v15, :cond_d

    .line 3072
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v13, v17, 0x1

    .end local v17    # "offset":I
    .restart local v13    # "offset":I
    add-int v11, v11, v17

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move/from16 v17, v13

    goto :goto_9

    .line 3079
    .end local v13    # "offset":I
    .restart local v17    # "offset":I
    :cond_d
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v11, v11, v17

    sub-int/2addr v11, v9

    sub-int/2addr v11, v10

    .line 3082
    .local v11, "count":I
    if-nez v4, :cond_e

    const/16 v10, 0xa

    if-ge v11, v10, :cond_e

    .line 3083
    int-to-float v10, v1

    int-to-float v13, v5

    div-float/2addr v10, v13

    .line 3084
    .local v10, "value":F
    if-eqz v12, :cond_f

    .line 3085
    neg-float v10, v10

    goto :goto_a

    .line 3088
    .end local v10    # "value":F
    :cond_e
    invoke-virtual {v0, v9, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v10

    .line 3089
    .local v10, "text":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    move v10, v13

    .line 3092
    .local v10, "value":F
    :cond_f
    :goto_a
    array-length v13, v7

    const/4 v14, 0x3

    if-lt v8, v13, :cond_10

    .line 3093
    array-length v13, v7

    mul-int/lit8 v13, v13, 0x3

    div-int/lit8 v13, v13, 0x2

    new-array v13, v13, [F

    .line 3094
    .local v13, "tmp":[F
    const/4 v15, 0x0

    invoke-static {v7, v15, v13, v15, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3095
    move-object v7, v13

    .line 3097
    .end local v13    # "tmp":[F
    :cond_10
    add-int/lit8 v13, v8, 0x1

    .end local v8    # "arrayIndex":I
    .local v13, "arrayIndex":I
    aput v10, v7, v8

    .line 3099
    const/16 v8, 0x2c

    if-ne v3, v8, :cond_11

    .line 3100
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v17, 0x1

    .end local v17    # "offset":I
    .restart local v14    # "offset":I
    add-int v8, v8, v17

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v6, v14

    const/16 v14, 0x10

    const/4 v15, 0x0

    goto/16 :goto_c

    .line 3101
    .end local v14    # "offset":I
    .restart local v17    # "offset":I
    :cond_11
    const/16 v15, 0x5d

    if-ne v3, v15, :cond_19

    .line 3102
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v20, v17, 0x1

    .end local v17    # "offset":I
    .local v20, "offset":I
    add-int v15, v15, v17

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3103
    nop

    .line 3112
    .end local v1    # "intVal":I
    .end local v4    # "exp":Z
    .end local v5    # "power":I
    .end local v6    # "small":Z
    .end local v9    # "start":I
    .end local v10    # "value":F
    .end local v11    # "count":I
    .end local v12    # "negative":Z
    array-length v1, v7

    if-eq v13, v1, :cond_12

    .line 3113
    new-array v1, v13, [F

    .line 3114
    .local v1, "tmp":[F
    const/4 v15, 0x0

    invoke-static {v7, v15, v1, v15, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3115
    move-object v7, v1

    .line 3118
    .end local v1    # "tmp":[F
    :cond_12
    if-ne v3, v8, :cond_13

    .line 3119
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v20, -0x1

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3120
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3121
    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3122
    const/16 v1, 0x10

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3123
    return-object v7

    .line 3126
    :cond_13
    const/16 v1, 0x7d

    if-ne v3, v1, :cond_18

    .line 3127
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v20, 0x1

    .end local v20    # "offset":I
    .local v5, "offset":I
    add-int v4, v4, v20

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3128
    if-ne v3, v8, :cond_14

    .line 3129
    const/16 v14, 0x10

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3130
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v5, -0x1

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3131
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_b

    .line 3132
    :cond_14
    const/16 v4, 0x5d

    if-ne v3, v4, :cond_15

    .line 3133
    const/16 v1, 0xf

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3134
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v5, -0x1

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3135
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_b

    .line 3136
    :cond_15
    if-ne v3, v1, :cond_16

    .line 3137
    const/16 v1, 0xd

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3138
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v5, -0x1

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3139
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_b

    .line 3140
    :cond_16
    const/16 v1, 0x1a

    if-ne v3, v1, :cond_17

    .line 3141
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, -0x1

    add-int/2addr v4, v6

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3142
    const/16 v4, 0x14

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3143
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3148
    :goto_b
    const/4 v1, 0x4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3154
    return-object v7

    .line 3145
    :cond_17
    const/4 v1, -0x1

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3146
    const/4 v4, 0x0

    return-object v4

    .line 3150
    .end local v5    # "offset":I
    .restart local v20    # "offset":I
    :cond_18
    const/4 v1, -0x1

    const/4 v4, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3151
    return-object v4

    .line 3101
    .end local v20    # "offset":I
    .local v1, "intVal":I
    .restart local v4    # "exp":Z
    .local v5, "power":I
    .restart local v6    # "small":Z
    .restart local v9    # "start":I
    .restart local v10    # "value":F
    .restart local v11    # "count":I
    .restart local v12    # "negative":Z
    .restart local v17    # "offset":I
    :cond_19
    const/16 v14, 0x10

    const/4 v15, 0x0

    move/from16 v6, v17

    .line 3105
    .end local v1    # "intVal":I
    .end local v4    # "exp":Z
    .end local v5    # "power":I
    .end local v10    # "value":F
    .end local v11    # "count":I
    .end local v17    # "offset":I
    .local v6, "offset":I
    :goto_c
    nop

    .line 3109
    .end local v9    # "start":I
    .end local v12    # "negative":Z
    move v8, v13

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x10

    goto/16 :goto_0

    .line 3106
    .end local v13    # "arrayIndex":I
    .restart local v8    # "arrayIndex":I
    .restart local v9    # "start":I
    .restart local v12    # "negative":Z
    :cond_1a
    const/4 v1, -0x1

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3107
    const/4 v1, 0x0

    return-object v1
.end method

.method public final scanFieldFloatArray2([C)[[F
    .locals 22
    .param p1, "fieldName"    # [C

    .line 3158
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3160
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 3161
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3162
    check-cast v4, [[F

    return-object v4

    .line 3165
    :cond_0
    move-object/from16 v2, p1

    array-length v5, v2

    .line 3166
    .local v5, "offset":I
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v5, 0x1

    .end local v5    # "offset":I
    .local v7, "offset":I
    add-int/2addr v6, v5

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 3168
    .local v5, "chLocal":C
    const/16 v6, 0x5b

    if-eq v5, v6, :cond_1

    .line 3169
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3170
    check-cast v4, [[F

    return-object v4

    .line 3172
    :cond_1
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .local v8, "offset":I
    add-int/2addr v3, v7

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3174
    .end local v5    # "chLocal":C
    .local v3, "chLocal":C
    const/16 v5, 0x10

    new-array v7, v5, [[F

    .line 3175
    .local v7, "arrayarray":[[F
    const/4 v9, 0x0

    .line 3178
    .local v9, "arrayarrayIndex":I
    :goto_0
    if-ne v3, v6, :cond_1e

    .line 3179
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v8, 0x1

    .end local v8    # "offset":I
    .local v11, "offset":I
    add-int/2addr v10, v8

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3181
    new-array v8, v5, [F

    .line 3182
    .local v8, "array":[F
    const/4 v10, 0x0

    .line 3185
    .local v10, "arrayIndex":I
    :goto_1
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v12, v11

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    .line 3186
    .local v12, "start":I
    const/16 v14, 0x2d

    if-ne v3, v14, :cond_2

    const/4 v15, 0x1

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    .line 3187
    .local v15, "negative":Z
    :goto_2
    if-eqz v15, :cond_3

    .line 3188
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v16, v11, 0x1

    .end local v11    # "offset":I
    .local v16, "offset":I
    add-int/2addr v6, v11

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move/from16 v11, v16

    .line 3191
    .end local v16    # "offset":I
    .restart local v11    # "offset":I
    :cond_3
    const/4 v6, -0x1

    const/16 v5, 0x30

    if-lt v3, v5, :cond_1d

    const/16 v1, 0x39

    if-gt v3, v1, :cond_1d

    .line 3192
    add-int/lit8 v17, v3, -0x30

    .line 3194
    .local v17, "intVal":I
    :goto_3
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v18, v11, 0x1

    .end local v11    # "offset":I
    .local v18, "offset":I
    add-int/2addr v13, v11

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3196
    if-lt v3, v5, :cond_4

    if-gt v3, v1, :cond_4

    .line 3197
    mul-int/lit8 v11, v17, 0xa

    add-int/lit8 v13, v3, -0x30

    add-int v17, v11, v13

    .line 3198
    move/from16 v11, v18

    const/4 v13, 0x1

    goto :goto_3

    .line 3204
    :cond_4
    const/4 v11, 0x1

    .line 3205
    .local v11, "power":I
    const/16 v13, 0x2e

    if-ne v3, v13, :cond_7

    .line 3206
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v19, v18, 0x1

    .end local v18    # "offset":I
    .local v19, "offset":I
    add-int v13, v13, v18

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3208
    if-lt v3, v5, :cond_6

    if-gt v3, v1, :cond_6

    .line 3209
    mul-int/lit8 v13, v17, 0xa

    add-int/lit8 v18, v3, -0x30

    add-int v13, v13, v18

    .line 3210
    .end local v17    # "intVal":I
    .local v13, "intVal":I
    const/16 v11, 0xa

    move/from16 v17, v13

    .line 3212
    .end local v13    # "intVal":I
    .restart local v17    # "intVal":I
    :goto_4
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v18, v19, 0x1

    .end local v19    # "offset":I
    .restart local v18    # "offset":I
    add-int v13, v13, v19

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3214
    if-lt v3, v5, :cond_5

    if-gt v3, v1, :cond_5

    .line 3215
    mul-int/lit8 v13, v17, 0xa

    add-int/lit8 v19, v3, -0x30

    add-int v17, v13, v19

    .line 3216
    mul-int/lit8 v11, v11, 0xa

    .line 3217
    move/from16 v19, v18

    goto :goto_4

    .line 3228
    :cond_5
    move/from16 v13, v17

    goto :goto_5

    .line 3223
    .end local v18    # "offset":I
    .restart local v19    # "offset":I
    :cond_6
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3224
    check-cast v4, [[F

    return-object v4

    .line 3205
    .end local v19    # "offset":I
    .restart local v18    # "offset":I
    :cond_7
    move/from16 v13, v17

    .line 3228
    .end local v17    # "intVal":I
    .restart local v13    # "intVal":I
    :goto_5
    const/16 v4, 0x65

    if-eq v3, v4, :cond_9

    const/16 v4, 0x45

    if-ne v3, v4, :cond_8

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v4, 0x1

    .line 3229
    .local v4, "exp":Z
    :goto_7
    if-eqz v4, :cond_c

    .line 3230
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v20, v18, 0x1

    .end local v18    # "offset":I
    .local v20, "offset":I
    add-int v6, v6, v18

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3231
    const/16 v6, 0x2b

    if-eq v3, v6, :cond_b

    if-ne v3, v14, :cond_a

    goto :goto_8

    :cond_a
    move/from16 v18, v20

    goto :goto_9

    .line 3232
    :cond_b
    :goto_8
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v20, 0x1

    .end local v20    # "offset":I
    .local v14, "offset":I
    add-int v6, v6, v20

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move/from16 v18, v14

    .line 3235
    .end local v14    # "offset":I
    .restart local v18    # "offset":I
    :goto_9
    if-lt v3, v5, :cond_c

    if-gt v3, v1, :cond_c

    .line 3236
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v18, 0x1

    .end local v18    # "offset":I
    .restart local v14    # "offset":I
    add-int v6, v6, v18

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move/from16 v18, v14

    goto :goto_9

    .line 3243
    .end local v14    # "offset":I
    .restart local v18    # "offset":I
    :cond_c
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v1, v1, v18

    sub-int/2addr v1, v12

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    .line 3245
    .local v1, "count":I
    if-nez v4, :cond_d

    const/16 v5, 0xa

    if-ge v1, v5, :cond_d

    .line 3246
    int-to-float v5, v13

    int-to-float v6, v11

    div-float/2addr v5, v6

    .line 3247
    .local v5, "value":F
    if-eqz v15, :cond_e

    .line 3248
    neg-float v5, v5

    goto :goto_a

    .line 3251
    .end local v5    # "value":F
    :cond_d
    invoke-virtual {v0, v12, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v5

    .line 3252
    .local v5, "text":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    move v5, v6

    .line 3255
    .local v5, "value":F
    :cond_e
    :goto_a
    array-length v6, v8

    const/4 v14, 0x3

    if-lt v10, v6, :cond_f

    .line 3256
    array-length v6, v8

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x2

    new-array v6, v6, [F

    .line 3257
    .local v6, "tmp":[F
    const/4 v14, 0x0

    invoke-static {v8, v14, v6, v14, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3258
    move-object v8, v6

    .line 3260
    .end local v6    # "tmp":[F
    :cond_f
    add-int/lit8 v6, v10, 0x1

    .end local v10    # "arrayIndex":I
    .local v6, "arrayIndex":I
    aput v5, v8, v10

    .line 3262
    const/16 v10, 0x2c

    if-ne v3, v10, :cond_10

    .line 3263
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v18, 0x1

    .end local v18    # "offset":I
    .restart local v14    # "offset":I
    add-int v10, v10, v18

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v11, v14

    const/16 v10, 0x10

    const/4 v14, 0x0

    goto/16 :goto_d

    .line 3264
    .end local v14    # "offset":I
    .restart local v18    # "offset":I
    :cond_10
    const/16 v14, 0x5d

    if-ne v3, v14, :cond_1c

    .line 3265
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v21, v18, 0x1

    .end local v18    # "offset":I
    .local v21, "offset":I
    add-int v14, v14, v18

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3266
    nop

    .line 3275
    .end local v1    # "count":I
    .end local v4    # "exp":Z
    .end local v5    # "value":F
    .end local v11    # "power":I
    .end local v12    # "start":I
    .end local v13    # "intVal":I
    .end local v15    # "negative":Z
    array-length v1, v8

    if-eq v6, v1, :cond_11

    .line 3276
    new-array v1, v6, [F

    .line 3277
    .local v1, "tmp":[F
    const/4 v4, 0x0

    invoke-static {v8, v4, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3278
    move-object v8, v1

    .line 3281
    .end local v1    # "tmp":[F
    :cond_11
    array-length v1, v7

    if-lt v9, v1, :cond_12

    .line 3282
    array-length v1, v7

    const/4 v4, 0x3

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [[F

    .line 3283
    .local v1, "tmp":[[F
    const/4 v4, 0x0

    invoke-static {v8, v4, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3284
    move-object v4, v1

    move-object v7, v4

    .line 3286
    .end local v1    # "tmp":[[F
    :cond_12
    add-int/lit8 v1, v9, 0x1

    .end local v9    # "arrayarrayIndex":I
    .local v1, "arrayarrayIndex":I
    aput-object v8, v7, v9

    .line 3288
    if-ne v3, v10, :cond_13

    .line 3289
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v21, 0x1

    .end local v21    # "offset":I
    .local v5, "offset":I
    add-int v4, v4, v21

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v8, v5

    const/16 v10, 0x10

    const/4 v14, 0x0

    goto/16 :goto_c

    .line 3290
    .end local v5    # "offset":I
    .restart local v21    # "offset":I
    :cond_13
    const/16 v4, 0x5d

    if-ne v3, v4, :cond_1b

    .line 3291
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v21, 0x1

    .end local v21    # "offset":I
    .restart local v5    # "offset":I
    add-int v4, v4, v21

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3292
    nop

    .line 3298
    .end local v6    # "arrayIndex":I
    .end local v8    # "array":[F
    array-length v4, v7

    if-eq v1, v4, :cond_14

    .line 3299
    new-array v4, v1, [[F

    .line 3300
    .local v4, "tmp":[[F
    const/4 v14, 0x0

    invoke-static {v7, v14, v4, v14, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3301
    move-object v7, v4

    .line 3304
    .end local v4    # "tmp":[[F
    :cond_14
    if-ne v3, v10, :cond_15

    .line 3305
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, -0x1

    add-int/2addr v4, v6

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3306
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3307
    const/4 v4, 0x3

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3308
    const/16 v4, 0x10

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3309
    return-object v7

    .line 3312
    :cond_15
    const/16 v4, 0x7d

    if-ne v3, v4, :cond_1a

    .line 3313
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v5, 0x1

    .end local v5    # "offset":I
    .local v8, "offset":I
    add-int/2addr v6, v5

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 3314
    if-ne v3, v10, :cond_16

    .line 3315
    const/16 v10, 0x10

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3316
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v8, -0x1

    add-int/2addr v4, v5

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3317
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_b

    .line 3318
    :cond_16
    const/16 v5, 0x5d

    if-ne v3, v5, :cond_17

    .line 3319
    const/16 v4, 0xf

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3320
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v8, -0x1

    add-int/2addr v4, v5

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3321
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_b

    .line 3322
    :cond_17
    if-ne v3, v4, :cond_18

    .line 3323
    const/16 v4, 0xd

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3324
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v8, -0x1

    add-int/2addr v4, v5

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3325
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_b

    .line 3326
    :cond_18
    const/16 v4, 0x1a

    if-ne v3, v4, :cond_19

    .line 3327
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v8, -0x1

    add-int/2addr v5, v6

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3328
    const/16 v5, 0x14

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3329
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3334
    :goto_b
    const/4 v4, 0x4

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3340
    return-object v7

    .line 3331
    :cond_19
    const/4 v4, -0x1

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3332
    const/4 v6, 0x0

    move-object v4, v6

    check-cast v4, [[F

    return-object v4

    .line 3336
    .end local v8    # "offset":I
    .restart local v5    # "offset":I
    :cond_1a
    const/4 v4, -0x1

    const/4 v6, 0x0

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3337
    move-object v4, v6

    check-cast v4, [[F

    return-object v4

    .line 3290
    .end local v5    # "offset":I
    .restart local v6    # "arrayIndex":I
    .local v8, "array":[F
    .restart local v21    # "offset":I
    :cond_1b
    const/16 v10, 0x10

    const/4 v14, 0x0

    move/from16 v8, v21

    .line 3294
    .end local v6    # "arrayIndex":I
    .end local v21    # "offset":I
    .local v8, "offset":I
    :goto_c
    move v9, v1

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x5b

    goto/16 :goto_0

    .line 3264
    .local v1, "count":I
    .local v4, "exp":Z
    .local v5, "value":F
    .restart local v6    # "arrayIndex":I
    .local v8, "array":[F
    .restart local v9    # "arrayarrayIndex":I
    .restart local v11    # "power":I
    .restart local v12    # "start":I
    .restart local v13    # "intVal":I
    .restart local v15    # "negative":Z
    .restart local v18    # "offset":I
    :cond_1c
    const/16 v10, 0x10

    const/4 v14, 0x0

    move/from16 v11, v18

    .line 3268
    .end local v1    # "count":I
    .end local v4    # "exp":Z
    .end local v5    # "value":F
    .end local v13    # "intVal":I
    .end local v18    # "offset":I
    .local v11, "offset":I
    :goto_d
    nop

    .line 3272
    .end local v12    # "start":I
    .end local v15    # "negative":Z
    move v10, v6

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x5b

    goto/16 :goto_1

    .line 3269
    .end local v6    # "arrayIndex":I
    .restart local v10    # "arrayIndex":I
    .restart local v12    # "start":I
    .restart local v15    # "negative":Z
    :cond_1d
    const/4 v1, -0x1

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3270
    const/4 v4, 0x0

    check-cast v4, [[F

    return-object v4

    .line 3178
    .end local v10    # "arrayIndex":I
    .end local v11    # "offset":I
    .end local v12    # "start":I
    .end local v15    # "negative":Z
    .local v8, "offset":I
    :cond_1e
    const/16 v1, 0x10

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x5b

    goto/16 :goto_0
.end method

.method public scanFieldInt([C)I
    .locals 11
    .param p1, "fieldName"    # [C

    .line 1784
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1786
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1787
    const/4 v1, -0x2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1788
    return v0

    .line 1791
    :cond_0
    array-length v1, p1

    .line 1792
    .local v1, "offset":I
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "offset":I
    .local v3, "offset":I
    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1794
    .local v1, "chLocal":C
    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1795
    .local v2, "negative":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 1796
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "offset":I
    .local v5, "offset":I
    add-int/2addr v4, v3

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v3, v5

    .line 1800
    .end local v5    # "offset":I
    .restart local v3    # "offset":I
    :cond_2
    const/16 v4, 0x30

    const/4 v5, -0x1

    if-lt v1, v4, :cond_10

    const/16 v6, 0x39

    if-gt v1, v6, :cond_10

    .line 1801
    add-int/lit8 v7, v1, -0x30

    .line 1803
    .local v7, "value":I
    :goto_1
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v3, 0x1

    .end local v3    # "offset":I
    .local v9, "offset":I
    add-int/2addr v8, v3

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1804
    if-lt v1, v4, :cond_3

    if-gt v1, v6, :cond_3

    .line 1805
    mul-int/lit8 v3, v7, 0xa

    add-int/lit8 v8, v1, -0x30

    add-int v7, v3, v8

    move v3, v9

    goto :goto_1

    .line 1806
    :cond_3
    const/16 v3, 0x2e

    if-ne v1, v3, :cond_4

    .line 1807
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1808
    return v0

    .line 1813
    :cond_4
    if-ltz v7, :cond_5

    array-length v3, p1

    add-int/lit8 v3, v3, 0xe

    if-le v9, v3, :cond_6

    .line 1815
    :cond_5
    const/high16 v3, -0x80000000

    if-ne v7, v3, :cond_f

    const/16 v3, 0x11

    if-ne v9, v3, :cond_f

    if-nez v2, :cond_6

    goto/16 :goto_5

    .line 1827
    :cond_6
    const/16 v3, 0x10

    const/16 v4, 0x2c

    if-ne v1, v4, :cond_8

    .line 1828
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v9

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1829
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1830
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1831
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1832
    if-eqz v2, :cond_7

    neg-int v0, v7

    goto :goto_2

    :cond_7
    move v0, v7

    :goto_2
    return v0

    .line 1835
    :cond_8
    const/16 v6, 0x7d

    if-ne v1, v6, :cond_e

    .line 1836
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "offset":I
    .local v10, "offset":I
    add-int/2addr v8, v9

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1837
    if-ne v1, v4, :cond_9

    .line 1838
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1839
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1840
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    .line 1841
    :cond_9
    const/16 v3, 0x5d

    if-ne v1, v3, :cond_a

    .line 1842
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1843
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1844
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    .line 1845
    :cond_a
    if-ne v1, v6, :cond_b

    .line 1846
    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1847
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1848
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    .line 1849
    :cond_b
    const/16 v3, 0x1a

    if-ne v1, v3, :cond_d

    .line 1850
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1851
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v10, -0x1

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1852
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1857
    :goto_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1863
    if-eqz v2, :cond_c

    neg-int v0, v7

    goto :goto_4

    :cond_c
    move v0, v7

    :goto_4
    return v0

    .line 1854
    :cond_d
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1855
    return v0

    .line 1859
    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    :cond_e
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1860
    return v0

    .line 1818
    :cond_f
    :goto_5
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1819
    return v0

    .line 1823
    .end local v7    # "value":I
    .end local v9    # "offset":I
    .restart local v3    # "offset":I
    :cond_10
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1824
    return v0
.end method

.method public final scanFieldIntArray([C)[I
    .locals 18
    .param p1, "fieldName"    # [C

    .line 1867
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1869
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 1870
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1871
    return-object v4

    .line 1874
    :cond_0
    move-object/from16 v2, p1

    array-length v5, v2

    .line 1875
    .local v5, "offset":I
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v5, 0x1

    .end local v5    # "offset":I
    .local v7, "offset":I
    add-int/2addr v6, v5

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 1877
    .local v5, "chLocal":C
    const/16 v6, 0x5b

    if-eq v5, v6, :cond_1

    .line 1878
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1879
    return-object v4

    .line 1881
    :cond_1
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .local v6, "offset":I
    add-int/2addr v3, v7

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 1883
    .end local v5    # "chLocal":C
    .local v3, "chLocal":C
    const/16 v5, 0x10

    new-array v7, v5, [I

    .line 1884
    .local v7, "array":[I
    const/4 v8, 0x0

    .line 1886
    .local v8, "arrayIndex":I
    const/4 v9, 0x3

    const/16 v10, 0x2c

    const/16 v12, 0x5d

    if-ne v3, v12, :cond_2

    .line 1887
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v6, 0x1

    .end local v6    # "offset":I
    .local v14, "offset":I
    add-int/2addr v13, v6

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    goto/16 :goto_3

    .line 1890
    .end local v14    # "offset":I
    .restart local v6    # "offset":I
    :cond_2
    :goto_0
    const/4 v13, 0x0

    .line 1891
    .local v13, "nagative":Z
    const/16 v14, 0x2d

    if-ne v3, v14, :cond_3

    .line 1892
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v15, v6, 0x1

    .end local v6    # "offset":I
    .local v15, "offset":I
    add-int/2addr v14, v6

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 1893
    const/4 v13, 0x1

    move v6, v15

    .line 1895
    .end local v15    # "offset":I
    .restart local v6    # "offset":I
    :cond_3
    const/16 v14, 0x30

    if-lt v3, v14, :cond_10

    const/16 v15, 0x39

    if-gt v3, v15, :cond_10

    .line 1896
    add-int/lit8 v16, v3, -0x30

    move/from16 v4, v16

    .line 1898
    .local v4, "value":I
    :goto_1
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v6, 0x1

    .end local v6    # "offset":I
    .local v17, "offset":I
    add-int/2addr v11, v6

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 1900
    if-lt v3, v14, :cond_4

    if-gt v3, v15, :cond_4

    .line 1901
    mul-int/lit8 v6, v4, 0xa

    add-int/lit8 v11, v3, -0x30

    add-int v4, v6, v11

    move/from16 v6, v17

    goto :goto_1

    .line 1907
    :cond_4
    array-length v6, v7

    if-lt v8, v6, :cond_5

    .line 1908
    array-length v6, v7

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x2

    new-array v6, v6, [I

    .line 1909
    .local v6, "tmp":[I
    invoke-static {v7, v1, v6, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1910
    move-object v7, v6

    .line 1912
    .end local v6    # "tmp":[I
    :cond_5
    add-int/lit8 v6, v8, 0x1

    .end local v8    # "arrayIndex":I
    .local v6, "arrayIndex":I
    if-eqz v13, :cond_6

    neg-int v11, v4

    goto :goto_2

    :cond_6
    move v11, v4

    :goto_2
    aput v11, v7, v8

    .line 1914
    if-ne v3, v10, :cond_7

    .line 1915
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v17, 0x1

    .end local v17    # "offset":I
    .local v11, "offset":I
    add-int v8, v8, v17

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move/from16 v17, v11

    goto/16 :goto_5

    .line 1916
    .end local v11    # "offset":I
    .restart local v17    # "offset":I
    :cond_7
    if-ne v3, v12, :cond_f

    .line 1917
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v17, 0x1

    .end local v17    # "offset":I
    .restart local v14    # "offset":I
    add-int v8, v8, v17

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 1918
    move v8, v6

    .line 1928
    .end local v4    # "value":I
    .end local v6    # "arrayIndex":I
    .end local v13    # "nagative":Z
    .restart local v8    # "arrayIndex":I
    :goto_3
    array-length v4, v7

    if-eq v8, v4, :cond_8

    .line 1929
    new-array v4, v8, [I

    .line 1930
    .local v4, "tmp":[I
    invoke-static {v7, v1, v4, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1931
    move-object v7, v4

    .line 1934
    .end local v4    # "tmp":[I
    :cond_8
    if-ne v3, v10, :cond_9

    .line 1935
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v14, -0x1

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1936
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1937
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1938
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1939
    return-object v7

    .line 1942
    :cond_9
    const/16 v1, 0x7d

    if-ne v3, v1, :cond_e

    .line 1943
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v14, 0x1

    .end local v14    # "offset":I
    .local v6, "offset":I
    add-int/2addr v4, v14

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 1944
    if-ne v3, v10, :cond_a

    .line 1945
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1946
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v6, -0x1

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1947
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_4

    .line 1948
    :cond_a
    if-ne v3, v12, :cond_b

    .line 1949
    const/16 v1, 0xf

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1950
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v6, -0x1

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1951
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_4

    .line 1952
    :cond_b
    if-ne v3, v1, :cond_c

    .line 1953
    const/16 v1, 0xd

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1954
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v6, -0x1

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1955
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_4

    .line 1956
    :cond_c
    const/16 v1, 0x1a

    if-ne v3, v1, :cond_d

    .line 1957
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, -0x1

    add-int/2addr v4, v5

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1958
    const/16 v4, 0x14

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1959
    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1964
    :goto_4
    const/4 v1, 0x4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1970
    return-object v7

    .line 1961
    :cond_d
    const/4 v1, -0x1

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1962
    const/4 v4, 0x0

    return-object v4

    .line 1966
    .end local v6    # "offset":I
    .restart local v14    # "offset":I
    :cond_e
    const/4 v1, -0x1

    const/4 v4, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1967
    return-object v4

    .line 1920
    .end local v8    # "arrayIndex":I
    .end local v14    # "offset":I
    .local v6, "arrayIndex":I
    .restart local v13    # "nagative":Z
    .restart local v17    # "offset":I
    :cond_f
    :goto_5
    nop

    .line 1924
    .end local v13    # "nagative":Z
    move v8, v6

    move/from16 v6, v17

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1921
    .end local v17    # "offset":I
    .local v6, "offset":I
    .restart local v8    # "arrayIndex":I
    .restart local v13    # "nagative":Z
    :cond_10
    const/4 v1, -0x1

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1922
    const/4 v1, 0x0

    return-object v1
.end method

.method public scanFieldLong([C)J
    .locals 19
    .param p1, "fieldName"    # [C

    .line 2209
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2211
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_0

    .line 2212
    const/4 v2, -0x2

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2213
    return-wide v4

    .line 2216
    :cond_0
    array-length v3, v1

    .line 2217
    .local v3, "offset":I
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "offset":I
    .local v7, "offset":I
    add-int/2addr v6, v3

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2219
    .local v3, "chLocal":C
    const/4 v6, 0x0

    .line 2220
    .local v6, "negative":Z
    const/16 v8, 0x2d

    if-ne v3, v8, :cond_1

    .line 2221
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v7, 0x1

    .end local v7    # "offset":I
    .local v9, "offset":I
    add-int/2addr v8, v7

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2222
    const/4 v6, 0x1

    move v7, v9

    .line 2226
    .end local v9    # "offset":I
    .restart local v7    # "offset":I
    :cond_1
    const/16 v8, 0x30

    const/4 v9, -0x1

    if-lt v3, v8, :cond_f

    const/16 v10, 0x39

    if-gt v3, v10, :cond_f

    .line 2227
    add-int/lit8 v11, v3, -0x30

    int-to-long v11, v11

    .line 2229
    .local v11, "value":J
    :goto_0
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v7, 0x1

    .end local v7    # "offset":I
    .local v14, "offset":I
    add-int/2addr v13, v7

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2230
    if-lt v3, v8, :cond_2

    if-gt v3, v10, :cond_2

    .line 2231
    const-wide/16 v15, 0xa

    mul-long v15, v15, v11

    add-int/lit8 v7, v3, -0x30

    move-wide/from16 v17, v11

    .end local v11    # "value":J
    .local v17, "value":J
    int-to-long v10, v7

    add-long v11, v15, v10

    move v7, v14

    const/16 v10, 0x39

    .end local v17    # "value":J
    .restart local v11    # "value":J
    goto :goto_0

    .line 2230
    :cond_2
    move-wide/from16 v17, v11

    .line 2232
    .end local v11    # "value":J
    .restart local v17    # "value":J
    const/16 v7, 0x2e

    if-ne v3, v7, :cond_3

    .line 2233
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2234
    return-wide v4

    .line 2240
    :cond_3
    array-length v7, v1

    sub-int v7, v14, v7

    const/16 v8, 0x15

    if-ge v7, v8, :cond_5

    cmp-long v7, v17, v4

    if-gez v7, :cond_4

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v10, v17, v7

    if-nez v10, :cond_5

    if-eqz v6, :cond_5

    :cond_4
    const/4 v2, 0x1

    .line 2242
    .local v2, "valid":Z
    :cond_5
    if-nez v2, :cond_6

    .line 2243
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2244
    return-wide v4

    .line 2246
    .end local v2    # "valid":Z
    :cond_6
    nop

    .line 2251
    const/16 v2, 0x10

    const/16 v7, 0x2c

    if-ne v3, v7, :cond_8

    .line 2252
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v14

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2253
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2254
    const/4 v4, 0x3

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2255
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2256
    if-eqz v6, :cond_7

    move-wide/from16 v11, v17

    .end local v17    # "value":J
    .restart local v11    # "value":J
    neg-long v4, v11

    goto :goto_1

    .end local v11    # "value":J
    .restart local v17    # "value":J
    :cond_7
    move-wide/from16 v11, v17

    .end local v17    # "value":J
    .restart local v11    # "value":J
    move-wide v4, v11

    :goto_1
    return-wide v4

    .line 2259
    .end local v11    # "value":J
    .restart local v17    # "value":J
    :cond_8
    move-wide/from16 v11, v17

    .end local v17    # "value":J
    .restart local v11    # "value":J
    const/16 v8, 0x7d

    if-ne v3, v8, :cond_e

    .line 2260
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "offset":I
    .local v13, "offset":I
    add-int/2addr v10, v14

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2261
    if-ne v3, v7, :cond_9

    .line 2262
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2263
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v13

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2264
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    .line 2265
    :cond_9
    const/16 v2, 0x5d

    if-ne v3, v2, :cond_a

    .line 2266
    const/16 v2, 0xf

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2267
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v13

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2268
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    .line 2269
    :cond_a
    if-ne v3, v8, :cond_b

    .line 2270
    const/16 v2, 0xd

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2271
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v13

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2272
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    .line 2273
    :cond_b
    const/16 v2, 0x1a

    if-ne v3, v2, :cond_d

    .line 2274
    const/16 v4, 0x14

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2275
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v13, -0x1

    add-int/2addr v4, v5

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2276
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2281
    :goto_2
    const/4 v2, 0x4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2287
    if-eqz v6, :cond_c

    neg-long v4, v11

    goto :goto_3

    :cond_c
    move-wide v4, v11

    :goto_3
    return-wide v4

    .line 2278
    :cond_d
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2279
    return-wide v4

    .line 2283
    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    :cond_e
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2284
    return-wide v4

    .line 2247
    .end local v11    # "value":J
    .end local v14    # "offset":I
    .restart local v7    # "offset":I
    :cond_f
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2248
    return-wide v4
.end method

.method public scanFieldString([C)Ljava/lang/String;
    .locals 12
    .param p1, "fieldName"    # [C

    .line 1194
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1196
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1197
    const/4 v0, -0x2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1198
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1203
    :cond_0
    array-length v0, p1

    .line 1204
    .local v0, "offset":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "offset":I
    .local v2, "offset":I
    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1206
    .local v0, "chLocal":C
    const/16 v1, 0x22

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    .line 1207
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1209
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1214
    :cond_1
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v5, p1

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    .line 1215
    .local v4, "startIndex":I
    invoke-virtual {p0, v1, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v5

    .line 1216
    .local v5, "endIndex":I
    if-eq v5, v3, :cond_b

    .line 1220
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v7, p1

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    .line 1221
    .local v6, "startIndex2":I
    sub-int v7, v5, v6

    invoke-virtual {p0, v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v7

    .line 1222
    .local v7, "stringVal":Ljava/lang/String;
    const/16 v8, 0x5c

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v9, v3, :cond_4

    .line 1224
    :goto_0
    const/4 v9, 0x0

    .line 1225
    .local v9, "slashCount":I
    add-int/lit8 v10, v5, -0x1

    .local v10, "i":I
    :goto_1
    if-ltz v10, :cond_2

    .line 1226
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    if-ne v11, v8, :cond_2

    .line 1227
    add-int/lit8 v9, v9, 0x1

    .line 1225
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 1232
    .end local v10    # "i":I
    :cond_2
    rem-int/lit8 v10, v9, 0x2

    if-nez v10, :cond_3

    .line 1233
    nop

    .line 1238
    .end local v9    # "slashCount":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v8, p1

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, 0x1

    sub-int v8, v5, v8

    .line 1239
    .local v8, "chars_len":I
    array-length v9, p1

    add-int/2addr v1, v9

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v1

    .line 1241
    .local v1, "chars":[C
    invoke-static {v1, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 1235
    .end local v1    # "chars":[C
    .end local v8    # "chars_len":I
    .restart local v9    # "slashCount":I
    :cond_3
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v1, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v5

    .line 1236
    .end local v9    # "slashCount":I
    goto :goto_0

    .line 1244
    :cond_4
    :goto_2
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v8, p1

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, 0x1

    sub-int v8, v5, v8

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v2, v8

    .line 1245
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "offset":I
    .local v8, "offset":I
    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1246
    move-object v1, v7

    .line 1249
    .end local v4    # "startIndex":I
    .end local v5    # "endIndex":I
    .end local v6    # "startIndex2":I
    .end local v7    # "stringVal":Ljava/lang/String;
    .local v1, "strVal":Ljava/lang/String;
    const/16 v2, 0x2c

    if-ne v0, v2, :cond_5

    .line 1250
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v8

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1251
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1252
    const/4 v2, 0x3

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1253
    return-object v1

    .line 1256
    :cond_5
    const/16 v4, 0x7d

    if-ne v0, v4, :cond_a

    .line 1257
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v8, 0x1

    .end local v8    # "offset":I
    .local v6, "offset":I
    add-int/2addr v5, v8

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1258
    if-ne v0, v2, :cond_6

    .line 1259
    const/16 v2, 0x10

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1260
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1261
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    .line 1262
    :cond_6
    const/16 v2, 0x5d

    if-ne v0, v2, :cond_7

    .line 1263
    const/16 v2, 0xf

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1264
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1265
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    .line 1266
    :cond_7
    if-ne v0, v4, :cond_8

    .line 1267
    const/16 v2, 0xd

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1268
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1269
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    .line 1270
    :cond_8
    const/16 v2, 0x1a

    if-ne v0, v2, :cond_9

    .line 1271
    const/16 v3, 0x14

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1272
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v6, -0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1273
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1278
    :goto_3
    const/4 v2, 0x4

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1284
    return-object v1

    .line 1275
    :cond_9
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1276
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1280
    .end local v6    # "offset":I
    .restart local v8    # "offset":I
    :cond_a
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1281
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1217
    .end local v1    # "strVal":Ljava/lang/String;
    .end local v8    # "offset":I
    .restart local v2    # "offset":I
    .restart local v4    # "startIndex":I
    .restart local v5    # "endIndex":I
    :cond_b
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "unclosed str"

    invoke-direct {v1, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public scanFieldStringArray([CLjava/lang/Class;)Ljava/util/Collection;
    .locals 17
    .param p1, "fieldName"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1548
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1550
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1551
    const/4 v1, -0x2

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1552
    return-object v2

    .line 1555
    :cond_0
    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->newCollectionByType(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v3

    .line 1571
    .local v3, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v4, p1

    array-length v5, v4

    .line 1572
    .local v5, "offset":I
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v5, 0x1

    .end local v5    # "offset":I
    .local v7, "offset":I
    add-int/2addr v6, v5

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 1574
    .local v5, "chLocal":C
    const/16 v6, 0x5b

    const/4 v8, -0x1

    if-eq v5, v6, :cond_1

    .line 1575
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1576
    return-object v2

    .line 1579
    :cond_1
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v7, 0x1

    .end local v7    # "offset":I
    .local v9, "offset":I
    add-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 1583
    :goto_0
    const/16 v10, 0x22

    if-ne v5, v10, :cond_6

    .line 1584
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v9

    .line 1585
    .local v11, "startIndex":I
    invoke-virtual {v0, v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v12

    .line 1586
    .local v12, "endIndex":I
    if-eq v12, v8, :cond_5

    .line 1590
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v9

    .line 1591
    .local v13, "startIndex2":I
    sub-int v14, v12, v13

    invoke-virtual {v0, v13, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v14

    .line 1592
    .local v14, "stringVal":Ljava/lang/String;
    const/16 v15, 0x5c

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v8, :cond_4

    .line 1594
    :goto_1
    const/4 v7, 0x0

    .line 1595
    .local v7, "slashCount":I
    add-int/lit8 v16, v12, -0x1

    move/from16 v8, v16

    .local v8, "i":I
    :goto_2
    if-ltz v8, :cond_2

    .line 1596
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    if-ne v6, v15, :cond_2

    .line 1597
    add-int/lit8 v7, v7, 0x1

    .line 1595
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 1602
    .end local v8    # "i":I
    :cond_2
    rem-int/lit8 v6, v7, 0x2

    if-nez v6, :cond_3

    .line 1603
    nop

    .line 1608
    .end local v7    # "slashCount":I
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v7, v6, v9

    sub-int v7, v12, v7

    .line 1609
    .local v7, "chars_len":I
    add-int/2addr v6, v9

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v6

    .line 1611
    .local v6, "chars":[C
    invoke-static {v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    .line 1605
    .end local v6    # "chars":[C
    .local v7, "slashCount":I
    :cond_3
    add-int/lit8 v6, v12, 0x1

    invoke-virtual {v0, v10, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v12

    .line 1606
    .end local v7    # "slashCount":I
    const/4 v8, -0x1

    goto :goto_1

    .line 1614
    :cond_4
    :goto_3
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v7, v6, v9

    sub-int v7, v12, v7

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v9, v7

    .line 1615
    add-int/lit8 v7, v9, 0x1

    .end local v9    # "offset":I
    .local v7, "offset":I
    add-int/2addr v6, v9

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 1617
    invoke-interface {v3, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1618
    .end local v11    # "startIndex":I
    .end local v12    # "endIndex":I
    .end local v13    # "startIndex2":I
    .end local v14    # "stringVal":Ljava/lang/String;
    goto :goto_4

    .line 1587
    .end local v7    # "offset":I
    .restart local v9    # "offset":I
    .restart local v11    # "startIndex":I
    .restart local v12    # "endIndex":I
    :cond_5
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "unclosed str"

    invoke-direct {v2, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1618
    .end local v11    # "startIndex":I
    .end local v12    # "endIndex":I
    :cond_6
    const/16 v6, 0x6e

    if-ne v5, v6, :cond_9

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v9

    .line 1619
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    const/16 v7, 0x75

    if-ne v6, v7, :cond_9

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v9

    add-int/lit8 v6, v6, 0x1

    .line 1620
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    const/16 v7, 0x6c

    if-ne v6, v7, :cond_9

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v9

    add-int/lit8 v6, v6, 0x2

    .line 1621
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_9

    .line 1622
    add-int/lit8 v9, v9, 0x3

    .line 1623
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v9, 0x1

    .end local v9    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v6, v9

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 1624
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1632
    :goto_4
    const/16 v6, 0x2c

    if-ne v5, v6, :cond_7

    .line 1633
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v7, 0x1

    .end local v7    # "offset":I
    .restart local v9    # "offset":I
    add-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 1634
    const/4 v8, -0x1

    goto/16 :goto_0

    .line 1637
    .end local v9    # "offset":I
    .restart local v7    # "offset":I
    :cond_7
    const/16 v6, 0x5d

    if-ne v5, v6, :cond_8

    .line 1638
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .local v8, "offset":I
    add-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 1639
    goto :goto_5

    .line 1642
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    :cond_8
    const/4 v6, -0x1

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1643
    return-object v2

    .line 1625
    .end local v7    # "offset":I
    .restart local v9    # "offset":I
    :cond_9
    const/16 v6, 0x5d

    if-ne v5, v6, :cond_10

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v6

    if-nez v6, :cond_10

    .line 1626
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v6, v9

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 1627
    nop

    .line 1646
    :goto_5
    const/16 v6, 0x2c

    if-ne v5, v6, :cond_a

    .line 1647
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v8

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1648
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1649
    const/4 v2, 0x3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1650
    return-object v3

    .line 1653
    :cond_a
    const/16 v6, 0x7d

    if-ne v5, v6, :cond_f

    .line 1654
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    add-int/2addr v7, v8

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 1655
    const/16 v7, 0x2c

    if-ne v5, v7, :cond_b

    .line 1656
    const/16 v2, 0x10

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1657
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v9

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1658
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    .line 1659
    :cond_b
    const/16 v7, 0x5d

    if-ne v5, v7, :cond_c

    .line 1660
    const/16 v2, 0xf

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1661
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v9

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1662
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    .line 1663
    :cond_c
    if-ne v5, v6, :cond_d

    .line 1664
    const/16 v2, 0xd

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1665
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v9

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1666
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    .line 1667
    :cond_d
    const/16 v6, 0x1a

    if-ne v5, v6, :cond_e

    .line 1668
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v9, -0x1

    add-int/2addr v2, v7

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1669
    const/16 v2, 0x14

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1670
    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1675
    :goto_6
    const/4 v2, 0x4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1681
    return-object v3

    .line 1672
    :cond_e
    const/4 v6, -0x1

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1673
    return-object v2

    .line 1677
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :cond_f
    const/4 v6, -0x1

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1678
    return-object v2

    .line 1629
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_10
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "illega str"

    invoke-direct {v2, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public scanFieldStringArray([CILcom/alibaba/fastjson/parser/SymbolTable;)[Ljava/lang/String;
    .locals 1
    .param p1, "fieldName"    # [C
    .param p2, "argTypesCount"    # I
    .param p3, "typeSymbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 5103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public scanFieldSymbol([C)J
    .locals 12
    .param p1, "fieldName"    # [C

    .line 1378
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1380
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 1381
    const/4 v0, -0x2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1382
    return-wide v1

    .line 1385
    :cond_0
    array-length v0, p1

    .line 1386
    .local v0, "offset":I
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "offset":I
    .local v4, "offset":I
    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1388
    .local v0, "chLocal":C
    const/16 v3, 0x22

    const/4 v5, -0x1

    if-eq v0, v3, :cond_1

    .line 1389
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1390
    return-wide v1

    .line 1393
    :cond_1
    const-wide v6, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 1395
    .local v6, "hash":J
    :goto_0
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v4, 0x1

    .end local v4    # "offset":I
    .local v9, "offset":I
    add-int/2addr v8, v4

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1396
    if-ne v0, v3, :cond_8

    .line 1397
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v9, 0x1

    .end local v9    # "offset":I
    .restart local v4    # "offset":I
    add-int/2addr v3, v9

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1398
    nop

    .line 1410
    const/16 v3, 0x2c

    if-ne v0, v3, :cond_2

    .line 1411
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1412
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1413
    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1414
    return-wide v6

    .line 1417
    :cond_2
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_7

    .line 1418
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v4, 0x1

    .end local v4    # "offset":I
    .local v10, "offset":I
    add-int/2addr v9, v4

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1419
    if-ne v0, v3, :cond_3

    .line 1420
    const/16 v1, 0x10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1421
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1422
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    .line 1423
    :cond_3
    const/16 v3, 0x5d

    if-ne v0, v3, :cond_4

    .line 1424
    const/16 v1, 0xf

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1425
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1426
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    .line 1427
    :cond_4
    if-ne v0, v8, :cond_5

    .line 1428
    const/16 v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1429
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1430
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    .line 1431
    :cond_5
    const/16 v3, 0x1a

    if-ne v0, v3, :cond_6

    .line 1432
    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1433
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v10, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1434
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1439
    :goto_1
    const/4 v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1445
    return-wide v6

    .line 1436
    :cond_6
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1437
    return-wide v1

    .line 1441
    .end local v10    # "offset":I
    .restart local v4    # "offset":I
    :cond_7
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1442
    return-wide v1

    .line 1401
    .end local v4    # "offset":I
    .restart local v9    # "offset":I
    :cond_8
    int-to-long v10, v0

    xor-long/2addr v6, v10

    .line 1402
    const-wide v10, 0x100000001b3L

    mul-long v6, v6, v10

    .line 1404
    const/16 v4, 0x5c

    if-ne v0, v4, :cond_9

    .line 1405
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1406
    return-wide v1

    .line 1404
    :cond_9
    move v4, v9

    goto/16 :goto_0
.end method

.method public scanFieldUUID([C)Ljava/util/UUID;
    .locals 23
    .param p1, "fieldName"    # [C

    .line 4070
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4072
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 4073
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4074
    return-object v4

    .line 4079
    :cond_0
    array-length v2, v1

    .line 4080
    .local v2, "offset":I
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "offset":I
    .local v6, "offset":I
    add-int/2addr v5, v2

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4083
    .local v2, "chLocal":C
    const/16 v8, 0x22

    const/4 v9, -0x1

    if-ne v2, v8, :cond_22

    .line 4084
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v12, v1

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x1

    .line 4085
    .local v11, "startIndex":I
    invoke-virtual {v0, v8, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v8

    .line 4086
    .local v8, "endIndex":I
    if-eq v8, v9, :cond_21

    .line 4090
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v13, v1

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    .line 4091
    .local v12, "startIndex2":I
    sub-int v13, v8, v12

    .line 4092
    .local v13, "len":I
    const/16 v14, 0x24

    const/16 v15, 0x46

    const/16 v9, 0x66

    const/16 v7, 0x39

    const/16 v5, 0x41

    const/16 v4, 0x61

    const/16 v3, 0x30

    if-ne v13, v14, :cond_15

    .line 4093
    const-wide/16 v16, 0x0

    .local v16, "mostSigBits":J
    const-wide/16 v18, 0x0

    .line 4094
    .local v18, "leastSigBits":J
    const/16 v20, 0x0

    move/from16 v14, v20

    .local v14, "i":I
    :goto_0
    const/16 v10, 0x8

    if-ge v14, v10, :cond_4

    .line 4095
    add-int v10, v12, v14

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    .line 4097
    .local v10, "ch":C
    if-lt v10, v3, :cond_1

    if-gt v10, v7, :cond_1

    .line 4098
    add-int/lit8 v22, v10, -0x30

    move/from16 v15, v22

    .local v22, "num":I
    goto :goto_1

    .line 4099
    .end local v22    # "num":I
    :cond_1
    if-lt v10, v4, :cond_2

    if-gt v10, v9, :cond_2

    .line 4100
    add-int/lit8 v22, v10, -0x61

    add-int/lit8 v22, v22, 0xa

    move/from16 v15, v22

    .restart local v22    # "num":I
    goto :goto_1

    .line 4101
    .end local v22    # "num":I
    :cond_2
    if-lt v10, v5, :cond_3

    if-gt v10, v15, :cond_3

    .line 4102
    add-int/lit8 v22, v10, -0x41

    add-int/lit8 v22, v22, 0xa

    move/from16 v15, v22

    .line 4108
    .local v15, "num":I
    :goto_1
    const/16 v21, 0x4

    shl-long v16, v16, v21

    .line 4109
    move/from16 v22, v6

    .end local v6    # "offset":I
    .local v22, "offset":I
    int-to-long v5, v15

    or-long v16, v16, v5

    .line 4094
    .end local v10    # "ch":C
    .end local v15    # "num":I
    add-int/lit8 v14, v14, 0x1

    move/from16 v6, v22

    const/16 v5, 0x41

    const/16 v15, 0x46

    goto :goto_0

    .line 4101
    .end local v22    # "offset":I
    .restart local v6    # "offset":I
    .restart local v10    # "ch":C
    :cond_3
    move/from16 v22, v6

    .line 4104
    .end local v6    # "offset":I
    .restart local v22    # "offset":I
    const/4 v3, -0x2

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4105
    const/4 v3, 0x0

    return-object v3

    .line 4094
    .end local v10    # "ch":C
    .end local v22    # "offset":I
    .restart local v6    # "offset":I
    :cond_4
    move/from16 v22, v6

    .line 4111
    .end local v6    # "offset":I
    .end local v14    # "i":I
    .restart local v22    # "offset":I
    const/16 v5, 0x9

    .local v5, "i":I
    :goto_2
    const/16 v6, 0xd

    if-ge v5, v6, :cond_8

    .line 4112
    add-int v6, v12, v5

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    .line 4114
    .local v6, "ch":C
    if-lt v6, v3, :cond_5

    if-gt v6, v7, :cond_5

    .line 4115
    add-int/lit8 v10, v6, -0x30

    .local v10, "num":I
    goto :goto_3

    .line 4116
    .end local v10    # "num":I
    :cond_5
    if-lt v6, v4, :cond_6

    if-gt v6, v9, :cond_6

    .line 4117
    add-int/lit8 v10, v6, -0x61

    add-int/lit8 v10, v10, 0xa

    .restart local v10    # "num":I
    goto :goto_3

    .line 4118
    .end local v10    # "num":I
    :cond_6
    const/16 v10, 0x41

    if-lt v6, v10, :cond_7

    const/16 v10, 0x46

    if-gt v6, v10, :cond_7

    .line 4119
    add-int/lit8 v10, v6, -0x41

    add-int/lit8 v10, v10, 0xa

    .line 4125
    .restart local v10    # "num":I
    :goto_3
    const/4 v14, 0x4

    shl-long v16, v16, v14

    .line 4126
    int-to-long v14, v10

    or-long v16, v16, v14

    .line 4111
    .end local v6    # "ch":C
    .end local v10    # "num":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4121
    .restart local v6    # "ch":C
    :cond_7
    const/4 v3, -0x2

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4122
    const/4 v3, 0x0

    return-object v3

    .line 4128
    .end local v5    # "i":I
    .end local v6    # "ch":C
    :cond_8
    const/16 v5, 0xe

    move-wide/from16 v14, v16

    .end local v16    # "mostSigBits":J
    .restart local v5    # "i":I
    .local v14, "mostSigBits":J
    :goto_4
    const/16 v6, 0x12

    if-ge v5, v6, :cond_c

    .line 4129
    add-int v6, v12, v5

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    .line 4131
    .restart local v6    # "ch":C
    if-lt v6, v3, :cond_9

    if-gt v6, v7, :cond_9

    .line 4132
    add-int/lit8 v10, v6, -0x30

    .restart local v10    # "num":I
    goto :goto_5

    .line 4133
    .end local v10    # "num":I
    :cond_9
    if-lt v6, v4, :cond_a

    if-gt v6, v9, :cond_a

    .line 4134
    add-int/lit8 v10, v6, -0x61

    add-int/lit8 v10, v10, 0xa

    .restart local v10    # "num":I
    goto :goto_5

    .line 4135
    .end local v10    # "num":I
    :cond_a
    const/16 v10, 0x41

    if-lt v6, v10, :cond_b

    const/16 v10, 0x46

    if-gt v6, v10, :cond_b

    .line 4136
    add-int/lit8 v10, v6, -0x41

    add-int/lit8 v10, v10, 0xa

    .line 4142
    .restart local v10    # "num":I
    :goto_5
    const/16 v16, 0x4

    shl-long v14, v14, v16

    .line 4143
    move/from16 v16, v8

    .end local v8    # "endIndex":I
    .local v16, "endIndex":I
    int-to-long v7, v10

    or-long/2addr v14, v7

    .line 4128
    .end local v6    # "ch":C
    .end local v10    # "num":I
    add-int/lit8 v5, v5, 0x1

    move/from16 v8, v16

    const/16 v7, 0x39

    goto :goto_4

    .line 4135
    .end local v16    # "endIndex":I
    .restart local v6    # "ch":C
    .restart local v8    # "endIndex":I
    :cond_b
    move/from16 v16, v8

    .line 4138
    .end local v8    # "endIndex":I
    .restart local v16    # "endIndex":I
    const/4 v3, -0x2

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4139
    const/4 v3, 0x0

    return-object v3

    .line 4128
    .end local v6    # "ch":C
    .end local v16    # "endIndex":I
    .restart local v8    # "endIndex":I
    :cond_c
    move/from16 v16, v8

    .line 4145
    .end local v5    # "i":I
    .end local v8    # "endIndex":I
    .restart local v16    # "endIndex":I
    const/16 v5, 0x13

    .restart local v5    # "i":I
    :goto_6
    const/16 v6, 0x17

    if-ge v5, v6, :cond_10

    .line 4146
    add-int v6, v12, v5

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    .line 4148
    .restart local v6    # "ch":C
    if-lt v6, v3, :cond_d

    const/16 v7, 0x39

    if-gt v6, v7, :cond_d

    .line 4149
    add-int/lit8 v7, v6, -0x30

    .local v7, "num":I
    goto :goto_7

    .line 4150
    .end local v7    # "num":I
    :cond_d
    if-lt v6, v4, :cond_e

    if-gt v6, v9, :cond_e

    .line 4151
    add-int/lit8 v7, v6, -0x61

    add-int/lit8 v7, v7, 0xa

    .restart local v7    # "num":I
    goto :goto_7

    .line 4152
    .end local v7    # "num":I
    :cond_e
    const/16 v7, 0x41

    if-lt v6, v7, :cond_f

    const/16 v7, 0x46

    if-gt v6, v7, :cond_f

    .line 4153
    add-int/lit8 v7, v6, -0x41

    add-int/lit8 v7, v7, 0xa

    .line 4159
    .restart local v7    # "num":I
    :goto_7
    const/4 v8, 0x4

    shl-long v18, v18, v8

    .line 4160
    int-to-long v9, v7

    or-long v18, v18, v9

    .line 4145
    .end local v6    # "ch":C
    .end local v7    # "num":I
    add-int/lit8 v5, v5, 0x1

    const/16 v9, 0x66

    goto :goto_6

    .line 4155
    .restart local v6    # "ch":C
    :cond_f
    const/4 v3, -0x2

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4156
    const/4 v3, 0x0

    return-object v3

    .line 4162
    .end local v5    # "i":I
    .end local v6    # "ch":C
    :cond_10
    const/16 v5, 0x18

    move-wide/from16 v6, v18

    .end local v18    # "leastSigBits":J
    .restart local v5    # "i":I
    .local v6, "leastSigBits":J
    :goto_8
    const/16 v9, 0x24

    if-ge v5, v9, :cond_14

    .line 4163
    add-int v10, v12, v5

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    .line 4165
    .local v10, "ch":C
    if-lt v10, v3, :cond_11

    const/16 v8, 0x39

    if-gt v10, v8, :cond_11

    .line 4166
    add-int/lit8 v8, v10, -0x30

    .local v8, "num":I
    goto :goto_9

    .line 4167
    .end local v8    # "num":I
    :cond_11
    if-lt v10, v4, :cond_12

    const/16 v8, 0x66

    if-gt v10, v8, :cond_12

    .line 4168
    add-int/lit8 v18, v10, -0x61

    add-int/lit8 v18, v18, 0xa

    move/from16 v8, v18

    .local v18, "num":I
    goto :goto_9

    .line 4169
    .end local v18    # "num":I
    :cond_12
    const/16 v8, 0x41

    if-lt v10, v8, :cond_13

    const/16 v8, 0x46

    if-gt v10, v8, :cond_13

    .line 4170
    add-int/lit8 v8, v10, -0x41

    add-int/lit8 v8, v8, 0xa

    .line 4176
    .restart local v8    # "num":I
    :goto_9
    const/16 v19, 0x4

    shl-long v6, v6, v19

    .line 4177
    move/from16 v19, v10

    .end local v10    # "ch":C
    .local v19, "ch":C
    int-to-long v9, v8

    or-long/2addr v6, v9

    .line 4162
    .end local v8    # "num":I
    .end local v19    # "ch":C
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 4169
    .restart local v10    # "ch":C
    :cond_13
    move/from16 v19, v10

    .line 4172
    .end local v10    # "ch":C
    .restart local v19    # "ch":C
    const/4 v3, -0x2

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4173
    const/4 v3, 0x0

    return-object v3

    .line 4179
    .end local v5    # "i":I
    .end local v19    # "ch":C
    :cond_14
    new-instance v3, Ljava/util/UUID;

    invoke-direct {v3, v14, v15, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    .line 4181
    .local v3, "uuid":Ljava/util/UUID;
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v5, v1

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x1

    sub-int v8, v16, v5

    add-int/lit8 v8, v8, 0x1

    add-int v5, v22, v8

    .line 4182
    .end local v22    # "offset":I
    .local v5, "offset":I
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "offset":I
    .local v8, "offset":I
    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4183
    .end local v6    # "leastSigBits":J
    .end local v14    # "mostSigBits":J
    goto/16 :goto_e

    .end local v3    # "uuid":Ljava/util/UUID;
    .end local v16    # "endIndex":I
    .local v6, "offset":I
    .local v8, "endIndex":I
    :cond_15
    move/from16 v22, v6

    move/from16 v16, v8

    .end local v6    # "offset":I
    .end local v8    # "endIndex":I
    .restart local v16    # "endIndex":I
    .restart local v22    # "offset":I
    const/16 v5, 0x20

    if-ne v13, v5, :cond_20

    .line 4184
    const-wide/16 v6, 0x0

    .local v6, "mostSigBits":J
    const-wide/16 v9, 0x0

    .line 4185
    .local v9, "leastSigBits":J
    const/4 v8, 0x0

    move v14, v8

    .local v14, "i":I
    :goto_a
    const/16 v8, 0x10

    if-ge v14, v8, :cond_19

    .line 4186
    add-int v8, v12, v14

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v15

    .line 4188
    .local v15, "ch":C
    if-lt v15, v3, :cond_16

    const/16 v8, 0x39

    if-gt v15, v8, :cond_16

    .line 4189
    add-int/lit8 v8, v15, -0x30

    .local v8, "num":I
    goto :goto_b

    .line 4190
    .end local v8    # "num":I
    :cond_16
    if-lt v15, v4, :cond_17

    const/16 v8, 0x66

    if-gt v15, v8, :cond_17

    .line 4191
    add-int/lit8 v18, v15, -0x61

    add-int/lit8 v18, v18, 0xa

    move/from16 v8, v18

    .restart local v18    # "num":I
    goto :goto_b

    .line 4192
    .end local v18    # "num":I
    :cond_17
    const/16 v8, 0x41

    if-lt v15, v8, :cond_18

    const/16 v8, 0x46

    if-gt v15, v8, :cond_18

    .line 4193
    add-int/lit8 v8, v15, -0x41

    add-int/lit8 v8, v8, 0xa

    .line 4199
    .restart local v8    # "num":I
    :goto_b
    const/16 v19, 0x4

    shl-long v6, v6, v19

    .line 4200
    int-to-long v3, v8

    or-long/2addr v6, v3

    .line 4185
    .end local v8    # "num":I
    .end local v15    # "ch":C
    add-int/lit8 v14, v14, 0x1

    const/16 v3, 0x30

    const/16 v4, 0x61

    goto :goto_a

    .line 4195
    .restart local v15    # "ch":C
    :cond_18
    const/4 v3, -0x2

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4196
    const/4 v3, 0x0

    return-object v3

    .line 4202
    .end local v14    # "i":I
    .end local v15    # "ch":C
    :cond_19
    const/16 v3, 0x10

    .local v3, "i":I
    :goto_c
    if-ge v3, v5, :cond_1f

    .line 4203
    add-int v4, v12, v3

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    .line 4205
    .local v4, "ch":C
    const/16 v8, 0x30

    if-lt v4, v8, :cond_1a

    const/16 v14, 0x39

    if-gt v4, v14, :cond_1b

    .line 4206
    add-int/lit8 v15, v4, -0x30

    move v5, v15

    const/16 v15, 0x61

    .local v15, "num":I
    goto :goto_d

    .line 4205
    .end local v15    # "num":I
    :cond_1a
    const/16 v14, 0x39

    .line 4207
    :cond_1b
    const/16 v15, 0x61

    if-lt v4, v15, :cond_1c

    const/16 v5, 0x66

    if-gt v4, v5, :cond_1d

    .line 4208
    add-int/lit8 v18, v4, -0x61

    add-int/lit8 v18, v18, 0xa

    move/from16 v5, v18

    .restart local v18    # "num":I
    goto :goto_d

    .line 4207
    .end local v18    # "num":I
    :cond_1c
    const/16 v5, 0x66

    .line 4209
    :cond_1d
    const/16 v5, 0x41

    if-lt v4, v5, :cond_1e

    const/16 v5, 0x46

    if-gt v4, v5, :cond_1e

    .line 4210
    add-int/lit8 v19, v4, -0x41

    add-int/lit8 v19, v19, 0xa

    move/from16 v5, v19

    .line 4216
    .local v5, "num":I
    :goto_d
    const/16 v19, 0x4

    shl-long v9, v9, v19

    .line 4217
    int-to-long v14, v5

    or-long/2addr v9, v14

    .line 4202
    .end local v4    # "ch":C
    .end local v5    # "num":I
    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x20

    goto :goto_c

    .line 4212
    .restart local v4    # "ch":C
    :cond_1e
    const/4 v5, -0x2

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4213
    const/4 v5, 0x0

    return-object v5

    .line 4220
    .end local v3    # "i":I
    .end local v4    # "ch":C
    :cond_1f
    new-instance v3, Ljava/util/UUID;

    invoke-direct {v3, v6, v7, v9, v10}, Ljava/util/UUID;-><init>(JJ)V

    .line 4222
    .local v3, "uuid":Ljava/util/UUID;
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v5, v1

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x1

    sub-int v8, v16, v5

    add-int/lit8 v8, v8, 0x1

    add-int v5, v22, v8

    .line 4223
    .end local v22    # "offset":I
    .local v5, "offset":I
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "offset":I
    .local v8, "offset":I
    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4224
    .end local v6    # "mostSigBits":J
    .end local v9    # "leastSigBits":J
    nop

    .line 4228
    .end local v11    # "startIndex":I
    .end local v12    # "startIndex2":I
    .end local v13    # "len":I
    .end local v16    # "endIndex":I
    :goto_e
    goto :goto_f

    .line 4225
    .end local v3    # "uuid":Ljava/util/UUID;
    .end local v8    # "offset":I
    .restart local v11    # "startIndex":I
    .restart local v12    # "startIndex2":I
    .restart local v13    # "len":I
    .restart local v16    # "endIndex":I
    .restart local v22    # "offset":I
    :cond_20
    const/4 v3, -0x1

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4226
    const/4 v3, 0x0

    return-object v3

    .line 4087
    .end local v12    # "startIndex2":I
    .end local v13    # "len":I
    .end local v16    # "endIndex":I
    .end local v22    # "offset":I
    .local v6, "offset":I
    .local v8, "endIndex":I
    :cond_21
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "unclosed str"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4228
    .end local v8    # "endIndex":I
    .end local v11    # "startIndex":I
    :cond_22
    move/from16 v22, v6

    .end local v6    # "offset":I
    .restart local v22    # "offset":I
    const/16 v3, 0x6e

    if-ne v2, v3, :cond_2a

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v22, 0x1

    .end local v22    # "offset":I
    .restart local v6    # "offset":I
    add-int v3, v3, v22

    .line 4229
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v4, 0x75

    if-ne v3, v4, :cond_2b

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v6, 0x1

    .end local v6    # "offset":I
    .local v4, "offset":I
    add-int/2addr v3, v6

    .line 4230
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    const/16 v5, 0x6c

    if-ne v3, v5, :cond_29

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v3, v4

    .line 4231
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_2b

    .line 4232
    const/4 v3, 0x0

    .line 4233
    .restart local v3    # "uuid":Ljava/util/UUID;
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v6, 0x1

    .end local v6    # "offset":I
    .local v8, "offset":I
    add-int/2addr v4, v6

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4239
    :goto_f
    const/16 v4, 0x2c

    if-ne v2, v4, :cond_23

    .line 4240
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v8

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4241
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 4242
    const/4 v4, 0x3

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4243
    return-object v3

    .line 4246
    :cond_23
    const/16 v5, 0x7d

    if-ne v2, v5, :cond_28

    .line 4247
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .local v7, "offset":I
    add-int/2addr v6, v8

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4248
    if-ne v2, v4, :cond_24

    .line 4249
    const/16 v4, 0x10

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4250
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v7

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4251
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_10

    .line 4252
    :cond_24
    const/16 v4, 0x5d

    if-ne v2, v4, :cond_25

    .line 4253
    const/16 v4, 0xf

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4254
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v7

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4255
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_10

    .line 4256
    :cond_25
    if-ne v2, v5, :cond_26

    .line 4257
    const/16 v4, 0xd

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4258
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v7

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4259
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_10

    .line 4260
    :cond_26
    const/16 v4, 0x1a

    if-ne v2, v4, :cond_27

    .line 4261
    const/16 v5, 0x14

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4262
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v7, -0x1

    add-int/2addr v5, v6

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4263
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 4268
    :goto_10
    const/4 v4, 0x4

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4274
    return-object v3

    .line 4265
    :cond_27
    const/4 v4, -0x1

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4266
    const/4 v5, 0x0

    return-object v5

    .line 4270
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    :cond_28
    const/4 v4, -0x1

    const/4 v5, 0x0

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4271
    return-object v5

    .line 4230
    .end local v3    # "uuid":Ljava/util/UUID;
    .end local v8    # "offset":I
    .restart local v4    # "offset":I
    :cond_29
    move v6, v4

    goto :goto_11

    .line 4228
    .end local v4    # "offset":I
    .restart local v22    # "offset":I
    :cond_2a
    move/from16 v6, v22

    .line 4235
    .end local v22    # "offset":I
    .restart local v6    # "offset":I
    :cond_2b
    :goto_11
    const/4 v3, -0x1

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4236
    const/4 v3, 0x0

    return-object v3
.end method

.method public final scanFloat(C)F
    .locals 24
    .param p1, "seperator"    # C

    .line 2560
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2562
    const/4 v2, 0x0

    .line 2563
    .local v2, "offset":I
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "offset":I
    .local v4, "offset":I
    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2564
    .local v2, "chLocal":C
    const/16 v3, 0x22

    if-ne v2, v3, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 2565
    .local v6, "quote":Z
    :goto_0
    if-eqz v6, :cond_1

    .line 2566
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v4, 0x1

    .end local v4    # "offset":I
    .local v8, "offset":I
    add-int/2addr v7, v4

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v4, v8

    .line 2569
    .end local v8    # "offset":I
    .restart local v4    # "offset":I
    :cond_1
    const/16 v7, 0x2d

    if-ne v2, v7, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 2570
    .local v8, "negative":Z
    :goto_1
    if-eqz v8, :cond_3

    .line 2571
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v4, 0x1

    .end local v4    # "offset":I
    .local v10, "offset":I
    add-int/2addr v9, v4

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v4, v10

    .line 2575
    .end local v10    # "offset":I
    .restart local v4    # "offset":I
    :cond_3
    const/4 v11, 0x0

    const/4 v12, -0x1

    const/16 v13, 0x30

    if-lt v2, v13, :cond_13

    const/16 v14, 0x39

    if-gt v2, v14, :cond_13

    .line 2576
    add-int/lit8 v15, v2, -0x30

    move/from16 v17, v2

    .end local v2    # "chLocal":C
    .local v17, "chLocal":C
    int-to-long v1, v15

    .line 2578
    .local v1, "intVal":J
    :goto_2
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v18, v4, 0x1

    .end local v4    # "offset":I
    .local v18, "offset":I
    add-int/2addr v15, v4

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    .line 2579
    .end local v17    # "chLocal":C
    .local v4, "chLocal":C
    const-wide/16 v19, 0xa

    if-lt v4, v13, :cond_4

    if-gt v4, v14, :cond_4

    .line 2580
    mul-long v19, v19, v1

    add-int/lit8 v15, v4, -0x30

    int-to-long v9, v15

    add-long v1, v19, v9

    .line 2581
    move/from16 v17, v4

    move/from16 v4, v18

    goto :goto_2

    .line 2587
    :cond_4
    const-wide/16 v9, 0x1

    .line 2588
    .local v9, "power":J
    const/16 v15, 0x2e

    if-ne v4, v15, :cond_5

    const/4 v15, 0x1

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    .line 2589
    .local v15, "small":Z
    :goto_3
    if-eqz v15, :cond_8

    .line 2590
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v17, v18, 0x1

    .end local v18    # "offset":I
    .local v17, "offset":I
    add-int v5, v5, v18

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    .line 2591
    if-lt v4, v13, :cond_7

    if-gt v4, v14, :cond_7

    .line 2592
    mul-long v21, v1, v19

    add-int/lit8 v5, v4, -0x30

    move/from16 v18, v4

    .end local v4    # "chLocal":C
    .local v18, "chLocal":C
    int-to-long v3, v5

    add-long v21, v21, v3

    .line 2593
    .end local v1    # "intVal":J
    .local v21, "intVal":J
    const-wide/16 v1, 0xa

    move-wide v9, v1

    move/from16 v4, v18

    move-wide/from16 v1, v21

    .line 2595
    .end local v18    # "chLocal":C
    .end local v21    # "intVal":J
    .restart local v1    # "intVal":J
    .restart local v4    # "chLocal":C
    :goto_4
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "offset":I
    .local v18, "offset":I
    add-int v3, v3, v17

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    .line 2596
    if-lt v4, v13, :cond_6

    if-gt v4, v14, :cond_6

    .line 2597
    mul-long v21, v1, v19

    add-int/lit8 v3, v4, -0x30

    move/from16 v23, v15

    .end local v15    # "small":Z
    .local v23, "small":Z
    int-to-long v14, v3

    add-long v1, v21, v14

    .line 2598
    mul-long v9, v9, v19

    .line 2599
    move/from16 v17, v18

    move/from16 v15, v23

    const/16 v14, 0x39

    goto :goto_4

    .line 2596
    .end local v23    # "small":Z
    .restart local v15    # "small":Z
    :cond_6
    move/from16 v23, v15

    .end local v15    # "small":Z
    .restart local v23    # "small":Z
    goto :goto_5

    .line 2591
    .end local v18    # "offset":I
    .end local v23    # "small":Z
    .restart local v15    # "small":Z
    .restart local v17    # "offset":I
    :cond_7
    move/from16 v18, v4

    move/from16 v23, v15

    .line 2605
    .end local v4    # "chLocal":C
    .end local v15    # "small":Z
    .local v18, "chLocal":C
    .restart local v23    # "small":Z
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2606
    return v11

    .line 2589
    .end local v17    # "offset":I
    .end local v23    # "small":Z
    .restart local v4    # "chLocal":C
    .restart local v15    # "small":Z
    .local v18, "offset":I
    :cond_8
    move/from16 v23, v15

    .line 2610
    .end local v15    # "small":Z
    .restart local v23    # "small":Z
    :goto_5
    const/16 v3, 0x65

    if-eq v4, v3, :cond_a

    const/16 v3, 0x45

    if-ne v4, v3, :cond_9

    goto :goto_6

    :cond_9
    const/16 v16, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    const/16 v16, 0x1

    :goto_7
    move/from16 v3, v16

    .line 2611
    .local v3, "exp":Z
    if-eqz v3, :cond_d

    .line 2612
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v15, v18, 0x1

    .end local v18    # "offset":I
    .local v15, "offset":I
    add-int v14, v14, v18

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    .line 2613
    const/16 v14, 0x2b

    if-eq v4, v14, :cond_c

    if-ne v4, v7, :cond_b

    goto :goto_8

    :cond_b
    move/from16 v18, v15

    goto :goto_9

    .line 2614
    :cond_c
    :goto_8
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "offset":I
    .local v14, "offset":I
    add-int/2addr v7, v15

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    move/from16 v18, v14

    .line 2617
    .end local v14    # "offset":I
    .restart local v18    # "offset":I
    :goto_9
    if-lt v4, v13, :cond_d

    const/16 v5, 0x39

    if-gt v4, v5, :cond_d

    .line 2618
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v18, 0x1

    .end local v18    # "offset":I
    .restart local v14    # "offset":I
    add-int v7, v7, v18

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    move/from16 v18, v14

    goto :goto_9

    .line 2641
    .end local v14    # "offset":I
    .restart local v18    # "offset":I
    :cond_d
    if-eqz v6, :cond_f

    .line 2642
    const/16 v5, 0x22

    if-eq v4, v5, :cond_e

    .line 2643
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2644
    return v11

    .line 2646
    :cond_e
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v18, 0x1

    .end local v18    # "offset":I
    .local v7, "offset":I
    add-int v5, v5, v18

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    .line 2648
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v5, 0x1

    .line 2649
    .local v11, "start":I
    add-int/2addr v5, v7

    sub-int/2addr v5, v11

    add-int/lit8 v5, v5, -0x2

    move/from16 v18, v7

    .local v5, "count":I
    goto :goto_a

    .line 2651
    .end local v5    # "count":I
    .end local v7    # "offset":I
    .end local v11    # "start":I
    .restart local v18    # "offset":I
    :cond_f
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2652
    .restart local v11    # "start":I
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v5, v5, v18

    sub-int/2addr v5, v11

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    .line 2655
    .restart local v5    # "count":I
    :goto_a
    if-nez v3, :cond_10

    const/16 v7, 0x14

    if-ge v5, v7, :cond_10

    .line 2656
    long-to-float v7, v1

    long-to-float v13, v9

    div-float/2addr v7, v13

    .line 2657
    .local v7, "value":F
    if-eqz v8, :cond_11

    .line 2658
    neg-float v7, v7

    goto :goto_b

    .line 2661
    .end local v7    # "value":F
    :cond_10
    invoke-virtual {v0, v11, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v7

    .line 2662
    .local v7, "text":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    move v7, v13

    .line 2664
    .end local v1    # "intVal":J
    .end local v3    # "exp":Z
    .end local v5    # "count":I
    .end local v9    # "power":J
    .end local v11    # "start":I
    .end local v23    # "small":Z
    .local v7, "value":F
    :cond_11
    :goto_b
    nop

    .line 2700
    move/from16 v1, p1

    if-ne v4, v1, :cond_12

    .line 2701
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v2, v2, v18

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2702
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2703
    const/4 v2, 0x3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2704
    const/16 v2, 0x10

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2705
    return v7

    .line 2707
    :cond_12
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2708
    return v7

    .line 2575
    .end local v7    # "value":F
    .end local v18    # "offset":I
    .restart local v2    # "chLocal":C
    .local v4, "offset":I
    :cond_13
    move/from16 v1, p1

    move/from16 v17, v2

    .line 2664
    .end local v2    # "chLocal":C
    .local v17, "chLocal":C
    const/16 v2, 0x6e

    move/from16 v3, v17

    .end local v17    # "chLocal":C
    .local v3, "chLocal":C
    if-ne v3, v2, :cond_18

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v5, 0x75

    if-ne v2, v5, :cond_18

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    const/4 v5, 0x1

    add-int/2addr v2, v5

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v5, 0x6c

    if-ne v2, v5, :cond_18

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_18

    .line 2665
    const/4 v2, 0x5

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2666
    const/4 v5, 0x0

    .line 2667
    .local v5, "value":F
    const/4 v7, 0x3

    add-int/2addr v4, v7

    .line 2668
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v4, 0x1

    .end local v4    # "offset":I
    .local v9, "offset":I
    add-int/2addr v7, v4

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2670
    if-eqz v6, :cond_14

    const/16 v4, 0x22

    if-ne v3, v4, :cond_14

    .line 2671
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v9, 0x1

    .end local v9    # "offset":I
    .local v7, "offset":I
    add-int/2addr v4, v9

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v9, v7

    .line 2675
    .end local v7    # "offset":I
    .restart local v9    # "offset":I
    :cond_14
    :goto_c
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_15

    .line 2676
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v9

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2677
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2678
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2679
    const/16 v4, 0x10

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2680
    return v5

    .line 2681
    :cond_15
    const/16 v4, 0x10

    const/16 v7, 0x5d

    if-ne v3, v7, :cond_16

    .line 2682
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v9

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2683
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2684
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2685
    const/16 v2, 0xf

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2686
    return v5

    .line 2687
    :cond_16
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 2688
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "offset":I
    .restart local v10    # "offset":I
    add-int/2addr v7, v9

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 2689
    move v9, v10

    goto :goto_c

    .line 2693
    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    :cond_17
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2694
    return v11

    .line 2696
    .end local v5    # "value":F
    .end local v9    # "offset":I
    .restart local v4    # "offset":I
    :cond_18
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2697
    return v11
.end method

.method public final scanHex()V
    .locals 5

    .line 4884
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const-string v1, "illegal state. "

    const/16 v2, 0x78

    if-ne v0, v2, :cond_5

    .line 4887
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4888
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x27

    if-ne v0, v2, :cond_4

    .line 4892
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 4893
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4895
    const/4 v0, 0x0

    .line 4896
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v3

    .line 4897
    .local v3, "ch":C
    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    const/16 v4, 0x39

    if-le v3, v4, :cond_1

    :cond_0
    const/16 v4, 0x41

    if-lt v3, v4, :cond_2

    const/16 v4, 0x46

    if-gt v3, v4, :cond_2

    .line 4898
    :cond_1
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4899
    nop

    .line 4895
    .end local v3    # "ch":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4900
    .restart local v3    # "ch":C
    :cond_2
    if-ne v3, v2, :cond_3

    .line 4901
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4902
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4903
    nop

    .line 4908
    .end local v0    # "i":I
    .end local v3    # "ch":C
    const/16 v0, 0x1a

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4909
    return-void

    .line 4905
    .restart local v0    # "i":I
    .restart local v3    # "ch":C
    :cond_3
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4889
    .end local v0    # "i":I
    .end local v3    # "ch":C
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4885
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanIdent()V
    .locals 2

    .line 4589
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 4590
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 4593
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4595
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4596
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4597
    goto :goto_0

    .line 4600
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 4602
    .local v0, "ident":Ljava/lang/String;
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4603
    const/16 v1, 0x8

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 4604
    :cond_1
    const-string v1, "new"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4605
    const/16 v1, 0x9

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 4606
    :cond_2
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4607
    const/4 v1, 0x6

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 4608
    :cond_3
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4609
    const/4 v1, 0x7

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 4610
    :cond_4
    const-string v1, "undefined"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4611
    const/16 v1, 0x17

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 4612
    :cond_5
    const-string v1, "Set"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4613
    const/16 v1, 0x15

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 4614
    :cond_6
    const-string v1, "TreeSet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4615
    const/16 v1, 0x16

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 4617
    :cond_7
    const/16 v1, 0x12

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4619
    :goto_1
    return-void
.end method

.method public scanInt(C)I
    .locals 13
    .param p1, "expectNext"    # C

    .line 2029
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2031
    const/4 v1, 0x0

    .line 2032
    .local v1, "offset":I
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "offset":I
    .local v3, "offset":I
    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2034
    .local v1, "chLocal":C
    const/16 v2, 0x22

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 2035
    .local v5, "quote":Z
    :goto_0
    if-eqz v5, :cond_1

    .line 2036
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "offset":I
    .local v7, "offset":I
    add-int/2addr v6, v3

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v3, v7

    .line 2039
    .end local v7    # "offset":I
    .restart local v3    # "offset":I
    :cond_1
    const/16 v6, 0x2d

    if-ne v1, v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 2040
    .local v6, "negative":Z
    :goto_1
    if-eqz v6, :cond_3

    .line 2041
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v3, 0x1

    .end local v3    # "offset":I
    .local v8, "offset":I
    add-int/2addr v7, v3

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v3, v8

    .line 2045
    .end local v8    # "offset":I
    .restart local v3    # "offset":I
    :cond_3
    const/16 v7, 0x10

    const/4 v8, 0x3

    const/16 v9, 0x30

    const/4 v10, -0x1

    if-lt v1, v9, :cond_b

    const/16 v11, 0x39

    if-gt v1, v11, :cond_b

    .line 2046
    add-int/lit8 v2, v1, -0x30

    .line 2048
    .local v2, "value":I
    :goto_2
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v3, 0x1

    .end local v3    # "offset":I
    .local v12, "offset":I
    add-int/2addr v4, v3

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2049
    if-lt v1, v9, :cond_4

    if-gt v1, v11, :cond_4

    .line 2050
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v4, v1, -0x30

    add-int v2, v3, v4

    move v3, v12

    goto :goto_2

    .line 2051
    :cond_4
    const/16 v3, 0x2e

    if-ne v1, v3, :cond_5

    .line 2052
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2053
    return v0

    .line 2058
    :cond_5
    if-gez v2, :cond_6

    .line 2059
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2060
    return v0

    .line 2099
    :cond_6
    :goto_3
    if-ne v1, p1, :cond_8

    .line 2100
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v12

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2101
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2102
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2103
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2104
    if-eqz v6, :cond_7

    neg-int v0, v2

    goto :goto_4

    :cond_7
    move v0, v2

    :goto_4
    return v0

    .line 2106
    :cond_8
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2107
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v12, 0x1

    .end local v12    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v0, v12

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2108
    move v12, v3

    goto :goto_3

    .line 2110
    .end local v3    # "offset":I
    .restart local v12    # "offset":I
    :cond_9
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2111
    if-eqz v6, :cond_a

    neg-int v0, v2

    goto :goto_5

    :cond_a
    move v0, v2

    :goto_5
    return v0

    .line 2062
    .end local v2    # "value":I
    .end local v12    # "offset":I
    .restart local v3    # "offset":I
    :cond_b
    const/16 v9, 0x6e

    if-ne v1, v9, :cond_10

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v9, v3

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    const/16 v11, 0x75

    if-ne v9, v11, :cond_10

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v9, v3

    add-int/2addr v9, v4

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v9, 0x6c

    if-ne v4, v9, :cond_10

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_10

    .line 2063
    const/4 v4, 0x5

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2064
    const/4 v9, 0x0

    .line 2065
    .local v9, "value":I
    add-int/2addr v3, v8

    .line 2066
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v3, 0x1

    .end local v3    # "offset":I
    .local v11, "offset":I
    add-int/2addr v8, v3

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2068
    if-eqz v5, :cond_c

    if-ne v1, v2, :cond_c

    .line 2069
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v11, 0x1

    .end local v11    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v2, v11

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v11, v3

    .line 2073
    .end local v3    # "offset":I
    .restart local v11    # "offset":I
    :cond_c
    :goto_6
    const/16 v2, 0x2c

    if-ne v1, v2, :cond_d

    .line 2074
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v11

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2075
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2076
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2077
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2078
    return v9

    .line 2079
    :cond_d
    const/16 v2, 0x5d

    if-ne v1, v2, :cond_e

    .line 2080
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v0, v11

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2081
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2082
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2083
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2084
    return v9

    .line 2085
    :cond_e
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2086
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v11, 0x1

    .end local v11    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v2, v11

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2087
    move v11, v3

    goto :goto_6

    .line 2091
    .end local v3    # "offset":I
    .restart local v11    # "offset":I
    :cond_f
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2092
    return v0

    .line 2094
    .end local v9    # "value":I
    .end local v11    # "offset":I
    .restart local v3    # "offset":I
    :cond_10
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2095
    return v0
.end method

.method public scanLong(C)J
    .locals 21
    .param p1, "expectNextChar"    # C

    .line 2291
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2293
    const/4 v2, 0x0

    .line 2294
    .local v2, "offset":I
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "offset":I
    .local v4, "offset":I
    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2295
    .local v2, "chLocal":C
    const/16 v3, 0x22

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 2296
    .local v6, "quote":Z
    :goto_0
    if-eqz v6, :cond_1

    .line 2297
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v4, 0x1

    .end local v4    # "offset":I
    .local v8, "offset":I
    add-int/2addr v7, v4

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v4, v8

    .line 2300
    .end local v8    # "offset":I
    .restart local v4    # "offset":I
    :cond_1
    const/16 v7, 0x2d

    if-ne v2, v7, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 2301
    .local v7, "negative":Z
    :goto_1
    if-eqz v7, :cond_3

    .line 2302
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v4, 0x1

    .end local v4    # "offset":I
    .local v9, "offset":I
    add-int/2addr v8, v4

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v4, v9

    .line 2306
    .end local v9    # "offset":I
    .restart local v4    # "offset":I
    :cond_3
    const/16 v8, 0x10

    const/4 v9, 0x3

    const/16 v10, 0x30

    const-wide/16 v11, 0x0

    const/4 v13, -0x1

    if-lt v2, v10, :cond_e

    const/16 v14, 0x39

    if-gt v2, v14, :cond_e

    .line 2307
    add-int/lit8 v15, v2, -0x30

    move/from16 v17, v2

    .end local v2    # "chLocal":C
    .local v17, "chLocal":C
    int-to-long v1, v15

    .line 2309
    .local v1, "value":J
    :goto_2
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v18, v4, 0x1

    .end local v4    # "offset":I
    .local v18, "offset":I
    add-int/2addr v15, v4

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    .line 2310
    .end local v17    # "chLocal":C
    .local v4, "chLocal":C
    if-lt v4, v10, :cond_4

    if-gt v4, v14, :cond_4

    .line 2311
    const-wide/16 v19, 0xa

    mul-long v19, v19, v1

    add-int/lit8 v15, v4, -0x30

    int-to-long v14, v15

    add-long v1, v19, v14

    move/from16 v17, v4

    move/from16 v4, v18

    const/16 v14, 0x39

    goto :goto_2

    .line 2312
    :cond_4
    const/16 v10, 0x2e

    if-ne v4, v10, :cond_5

    .line 2313
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2314
    return-wide v11

    .line 2319
    :cond_5
    cmp-long v10, v1, v11

    if-gez v10, :cond_7

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v10, v1, v14

    if-nez v10, :cond_6

    if-eqz v7, :cond_6

    goto :goto_3

    :cond_6
    const/16 v16, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    const/16 v16, 0x1

    :goto_4
    move/from16 v5, v16

    .line 2320
    .local v5, "valid":Z
    if-eqz v5, :cond_d

    .line 2324
    .end local v5    # "valid":Z
    nop

    .line 2360
    if-eqz v6, :cond_9

    .line 2361
    if-eq v4, v3, :cond_8

    .line 2362
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2363
    return-wide v11

    .line 2365
    :cond_8
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v18, 0x1

    .end local v18    # "offset":I
    .local v5, "offset":I
    add-int v3, v3, v18

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    move/from16 v18, v5

    .line 2370
    .end local v5    # "offset":I
    .restart local v18    # "offset":I
    :cond_9
    :goto_5
    move/from16 v10, p1

    if-ne v4, v10, :cond_b

    .line 2371
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v3, v3, v18

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2372
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2373
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2374
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2375
    if-eqz v7, :cond_a

    neg-long v8, v1

    goto :goto_6

    :cond_a
    move-wide v8, v1

    :goto_6
    return-wide v8

    .line 2377
    :cond_b
    invoke-static {v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2378
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v18, 0x1

    .end local v18    # "offset":I
    .restart local v5    # "offset":I
    add-int v3, v3, v18

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    .line 2379
    move/from16 v18, v5

    goto :goto_5

    .line 2382
    .end local v5    # "offset":I
    .restart local v18    # "offset":I
    :cond_c
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2383
    return-wide v1

    .line 2321
    .local v5, "valid":Z
    :cond_d
    move/from16 v10, p1

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v18, -0x1

    invoke-virtual {v0, v3, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v3

    .line 2322
    .local v3, "val":Ljava/lang/String;
    new-instance v8, Ljava/lang/NumberFormatException;

    invoke-direct {v8, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2306
    .end local v1    # "value":J
    .end local v3    # "val":Ljava/lang/String;
    .end local v5    # "valid":Z
    .end local v18    # "offset":I
    .restart local v2    # "chLocal":C
    .local v4, "offset":I
    :cond_e
    move/from16 v10, p1

    move/from16 v17, v2

    .line 2324
    .end local v2    # "chLocal":C
    .restart local v17    # "chLocal":C
    const/16 v1, 0x6e

    move/from16 v2, v17

    .end local v17    # "chLocal":C
    .restart local v2    # "chLocal":C
    if-ne v2, v1, :cond_13

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v14, 0x75

    if-ne v1, v14, :cond_13

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    add-int/2addr v1, v5

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v5, 0x6c

    if-ne v1, v5, :cond_13

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_13

    .line 2325
    const/4 v1, 0x5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2326
    const-wide/16 v14, 0x0

    .line 2327
    .local v14, "value":J
    add-int/2addr v4, v9

    .line 2328
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v4, 0x1

    .end local v4    # "offset":I
    .restart local v9    # "offset":I
    add-int/2addr v5, v4

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2330
    if-eqz v6, :cond_f

    if-ne v2, v3, :cond_f

    .line 2331
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v9, 0x1

    .end local v9    # "offset":I
    .restart local v4    # "offset":I
    add-int/2addr v3, v9

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v9, v4

    .line 2335
    .end local v4    # "offset":I
    .restart local v9    # "offset":I
    :cond_f
    :goto_7
    const/16 v3, 0x2c

    if-ne v2, v3, :cond_10

    .line 2336
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v9

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2337
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2338
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2339
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2340
    return-wide v14

    .line 2341
    :cond_10
    const/16 v3, 0x5d

    if-ne v2, v3, :cond_11

    .line 2342
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v9

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2343
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2344
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2345
    const/16 v1, 0xf

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2346
    return-wide v14

    .line 2347
    :cond_11
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2348
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v9, 0x1

    .end local v9    # "offset":I
    .restart local v4    # "offset":I
    add-int/2addr v3, v9

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2349
    move v9, v4

    goto :goto_7

    .line 2353
    .end local v4    # "offset":I
    .restart local v9    # "offset":I
    :cond_12
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2354
    return-wide v11

    .line 2356
    .end local v9    # "offset":I
    .end local v14    # "value":J
    .restart local v4    # "offset":I
    :cond_13
    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2357
    return-wide v11
.end method

.method public final scanNullOrNew()V
    .locals 13

    .line 4510
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_9

    .line 4513
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4515
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x75

    const/16 v2, 0xc

    const/16 v3, 0x1a

    const/16 v4, 0xd

    const/16 v5, 0xa

    const/16 v6, 0x5d

    const/16 v7, 0x7d

    const/16 v8, 0x2c

    const/16 v9, 0x20

    const/16 v10, 0x8

    const/16 v11, 0x9

    if-ne v0, v1, :cond_4

    .line 4516
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4517
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const-string v1, "error parse null"

    const/16 v12, 0x6c

    if-ne v0, v12, :cond_3

    .line 4520
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4522
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v12, :cond_2

    .line 4525
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4527
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v9, :cond_1

    if-eq v0, v8, :cond_1

    if-eq v0, v7, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v11, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-ne v0, v10, :cond_0

    goto :goto_0

    .line 4531
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan null error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4529
    :cond_1
    :goto_0
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4533
    return-void

    .line 4523
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4518
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4536
    :cond_4
    const/16 v1, 0x65

    const-string v12, "error parse new"

    if-ne v0, v1, :cond_8

    .line 4539
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4541
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x77

    if-ne v0, v1, :cond_7

    .line 4544
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4546
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v9, :cond_6

    if-eq v0, v8, :cond_6

    if-eq v0, v7, :cond_6

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_6

    if-eq v0, v11, :cond_6

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_6

    if-ne v0, v10, :cond_5

    goto :goto_1

    .line 4550
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan new error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4548
    :cond_6
    :goto_1
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4552
    return-void

    .line 4542
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4537
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4511
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse null or new"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanNumber()V
    .locals 8

    .line 4912
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 4914
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    .line 4915
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4916
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4920
    :cond_0
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x39

    const/16 v3, 0x30

    if-lt v0, v3, :cond_1

    if-gt v0, v2, :cond_1

    .line 4921
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4925
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 4928
    :cond_1
    const/4 v0, 0x0

    .line 4930
    .local v0, "isDouble":Z
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_2

    .line 4931
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4932
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4933
    const/4 v0, 0x1

    .line 4936
    :goto_1
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v4, v3, :cond_2

    if-gt v4, v2, :cond_2

    .line 4937
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4941
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 4945
    :cond_2
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v5, 0x4c

    if-ne v4, v5, :cond_3

    .line 4946
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4947
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_3

    .line 4948
    :cond_3
    const/16 v5, 0x53

    if-ne v4, v5, :cond_4

    .line 4949
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4950
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_3

    .line 4951
    :cond_4
    const/16 v5, 0x42

    if-ne v4, v5, :cond_5

    .line 4952
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4953
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_3

    .line 4954
    :cond_5
    const/16 v5, 0x46

    if-ne v4, v5, :cond_6

    .line 4955
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4956
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4957
    const/4 v0, 0x1

    goto :goto_3

    .line 4958
    :cond_6
    const/16 v6, 0x44

    if-ne v4, v6, :cond_7

    .line 4959
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4960
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4961
    const/4 v0, 0x1

    goto :goto_3

    .line 4962
    :cond_7
    const/16 v7, 0x65

    if-eq v4, v7, :cond_8

    const/16 v7, 0x45

    if-ne v4, v7, :cond_e

    .line 4963
    :cond_8
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4964
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4966
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v7, 0x2b

    if-eq v4, v7, :cond_9

    if-ne v4, v1, :cond_a

    .line 4967
    :cond_9
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4968
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4972
    :cond_a
    :goto_2
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v1, v3, :cond_b

    if-gt v1, v2, :cond_b

    .line 4973
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4977
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_2

    .line 4980
    :cond_b
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v1, v6, :cond_c

    if-ne v1, v5, :cond_d

    .line 4981
    :cond_c
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4982
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4985
    :cond_d
    const/4 v0, 0x1

    .line 4988
    :cond_e
    :goto_3
    if-eqz v0, :cond_f

    .line 4989
    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_4

    .line 4991
    :cond_f
    const/4 v1, 0x2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4993
    :goto_4
    return-void
.end method

.method public scanString(C)Ljava/lang/String;
    .locals 12
    .param p1, "expectNextChar"    # C

    .line 1288
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1290
    const/4 v0, 0x0

    .line 1291
    .local v0, "offset":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "offset":I
    .local v2, "offset":I
    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1293
    .local v0, "chLocal":C
    const/4 v1, 0x3

    const/4 v3, -0x1

    const/16 v4, 0x6e

    if-ne v0, v4, :cond_2

    .line 1294
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v5, 0x75

    const/4 v6, 0x0

    if-ne v4, v5, :cond_1

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v5, 0x6c

    if-ne v4, v5, :cond_1

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_1

    .line 1295
    add-int/2addr v2, v1

    .line 1296
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "offset":I
    .local v5, "offset":I
    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1302
    if-ne v0, p1, :cond_0

    .line 1303
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1304
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1305
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1306
    return-object v6

    .line 1308
    :cond_0
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1309
    return-object v6

    .line 1298
    .end local v5    # "offset":I
    .restart local v2    # "offset":I
    :cond_1
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1299
    return-object v6

    .line 1317
    :cond_2
    :goto_0
    const/16 v4, 0x22

    if-ne v0, v4, :cond_9

    .line 1318
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v2

    .line 1319
    .local v5, "startIndex":I
    invoke-virtual {p0, v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v6

    .line 1320
    .local v6, "endIndex":I
    if-eq v6, v3, :cond_8

    .line 1324
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v2

    sub-int v8, v6, v5

    invoke-virtual {p0, v7, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v7

    .line 1325
    .local v7, "stringVal":Ljava/lang/String;
    const/16 v8, 0x5c

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v9, v3, :cond_5

    .line 1327
    :goto_1
    const/4 v9, 0x0

    .line 1328
    .local v9, "slashCount":I
    add-int/lit8 v10, v6, -0x1

    .local v10, "i":I
    :goto_2
    if-ltz v10, :cond_3

    .line 1329
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    if-ne v11, v8, :cond_3

    .line 1330
    add-int/lit8 v9, v9, 0x1

    .line 1328
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 1335
    .end local v10    # "i":I
    :cond_3
    rem-int/lit8 v10, v9, 0x2

    if-nez v10, :cond_4

    .line 1336
    nop

    .line 1341
    .end local v9    # "slashCount":I
    sub-int v4, v6, v5

    .line 1342
    .local v4, "chars_len":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v8

    .line 1344
    .local v8, "chars":[C
    invoke-static {v8, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 1338
    .end local v4    # "chars_len":I
    .end local v8    # "chars":[C
    .restart local v9    # "slashCount":I
    :cond_4
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {p0, v4, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v6

    .line 1339
    .end local v9    # "slashCount":I
    goto :goto_1

    .line 1347
    :cond_5
    :goto_3
    sub-int v4, v6, v5

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 1348
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v2, 0x1

    .end local v2    # "offset":I
    .local v8, "offset":I
    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1349
    move-object v2, v7

    .line 1350
    .local v2, "strVal":Ljava/lang/String;
    nop

    .line 1362
    .end local v5    # "startIndex":I
    .end local v6    # "endIndex":I
    .end local v7    # "stringVal":Ljava/lang/String;
    :goto_4
    if-ne v0, p1, :cond_6

    .line 1363
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v8

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1364
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1365
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1366
    return-object v2

    .line 1367
    :cond_6
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1368
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v8, 0x1

    .end local v8    # "offset":I
    .local v5, "offset":I
    add-int/2addr v4, v8

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1369
    move v8, v5

    goto :goto_4

    .line 1371
    .end local v5    # "offset":I
    .restart local v8    # "offset":I
    :cond_7
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1372
    return-object v2

    .line 1321
    .end local v8    # "offset":I
    .local v2, "offset":I
    .local v5, "startIndex":I
    .restart local v6    # "endIndex":I
    :cond_8
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "unclosed str"

    invoke-direct {v1, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1351
    .end local v5    # "startIndex":I
    .end local v6    # "endIndex":I
    :cond_9
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1352
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "offset":I
    .local v5, "offset":I
    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1353
    move v2, v5

    goto/16 :goto_0

    .line 1355
    .end local v5    # "offset":I
    .restart local v2    # "offset":I
    :cond_a
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1357
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final scanString()V
    .locals 12

    .line 876
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 877
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 880
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 882
    .local v1, "ch":C
    const/4 v2, 0x4

    const/16 v3, 0x22

    if-ne v1, v3, :cond_0

    .line 883
    nop

    .line 1006
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1007
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1008
    return-void

    .line 886
    :cond_0
    const-string v4, "unclosed string : "

    const/16 v5, 0x1a

    if-ne v1, v5, :cond_2

    .line 887
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    move-result v2

    if-nez v2, :cond_1

    .line 888
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 889
    goto :goto_0

    .line 891
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 894
    :cond_2
    const/16 v5, 0x5c

    const/4 v6, 0x1

    if-ne v1, v5, :cond_e

    .line 895
    iget-boolean v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    const/4 v8, 0x2

    if-nez v7, :cond_5

    .line 896
    iput-boolean v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 898
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v10, v9

    if-lt v7, v10, :cond_4

    .line 899
    array-length v9, v9

    mul-int/lit8 v9, v9, 0x2

    .line 900
    .local v9, "newCapcity":I
    if-le v7, v9, :cond_3

    .line 901
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 903
    :cond_3
    new-array v7, v9, [C

    .line 904
    .local v7, "newsbuf":[C
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v11, v10

    invoke-static {v10, v0, v7, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 905
    iput-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 908
    .end local v7    # "newsbuf":[C
    .end local v9    # "newCapcity":I
    :cond_4
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v7, v6

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    invoke-virtual {p0, v7, v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->copyTo(II[C)V

    .line 913
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 915
    if-eq v1, v3, :cond_d

    const/16 v3, 0x27

    if-eq v1, v3, :cond_c

    const/16 v3, 0x46

    if-eq v1, v3, :cond_b

    if-eq v1, v5, :cond_a

    const/16 v3, 0x62

    if-eq v1, v3, :cond_9

    const/16 v3, 0x66

    if-eq v1, v3, :cond_b

    const/16 v3, 0x6e

    if-eq v1, v3, :cond_8

    const/16 v3, 0x72

    if-eq v1, v3, :cond_7

    const/16 v3, 0x78

    const/16 v5, 0x10

    if-eq v1, v3, :cond_6

    const/4 v3, 0x3

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 988
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 989
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 950
    :pswitch_0
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 951
    goto/16 :goto_0

    .line 980
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    move v1, v4

    .line 981
    .local v4, "u1":C
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v7

    move v1, v7

    .line 982
    .local v7, "u2":C
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v9

    move v1, v9

    .line 983
    .local v9, "u3":C
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v10

    move v1, v10

    .line 984
    .local v10, "u4":C
    new-instance v11, Ljava/lang/String;

    new-array v2, v2, [C

    aput-char v4, v2, v0

    aput-char v7, v2, v6

    aput-char v9, v2, v8

    aput-char v10, v2, v3

    invoke-direct {v11, v2}, Ljava/lang/String;-><init>([C)V

    invoke-static {v11, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 985
    .local v2, "val":I
    int-to-char v3, v2

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 986
    goto/16 :goto_0

    .line 944
    .end local v2    # "val":I
    .end local v4    # "u1":C
    .end local v7    # "u2":C
    .end local v9    # "u3":C
    .end local v10    # "u4":C
    :pswitch_2
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 945
    goto/16 :goto_0

    .line 938
    :pswitch_3
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 939
    goto/16 :goto_0

    .line 935
    :pswitch_4
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 936
    goto/16 :goto_0

    .line 932
    :pswitch_5
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 933
    goto/16 :goto_0

    .line 929
    :pswitch_6
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 930
    goto/16 :goto_0

    .line 926
    :pswitch_7
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 927
    goto/16 :goto_0

    .line 923
    :pswitch_8
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 924
    goto/16 :goto_0

    .line 920
    :pswitch_9
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 921
    goto/16 :goto_0

    .line 917
    :pswitch_a
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 918
    goto/16 :goto_0

    .line 966
    :pswitch_b
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 967
    goto/16 :goto_0

    .line 972
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v2

    move v1, v2

    .line 973
    .local v2, "x1":C
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v3

    move v1, v3

    .line 975
    .local v3, "x2":C
    sget-object v4, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v6, v4, v2

    mul-int/lit8 v6, v6, 0x10

    aget v4, v4, v3

    add-int/2addr v6, v4

    .line 976
    .local v6, "x_val":I
    int-to-char v4, v6

    .line 977
    .local v4, "x_char":C
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 978
    goto/16 :goto_0

    .line 957
    .end local v2    # "x1":C
    .end local v3    # "x2":C
    .end local v4    # "x_char":C
    .end local v6    # "x_val":I
    :cond_7
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 958
    goto/16 :goto_0

    .line 947
    :cond_8
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 948
    goto/16 :goto_0

    .line 941
    :cond_9
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 942
    goto/16 :goto_0

    .line 969
    :cond_a
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 970
    goto/16 :goto_0

    .line 954
    :cond_b
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 955
    goto/16 :goto_0

    .line 963
    :cond_c
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 964
    goto/16 :goto_0

    .line 960
    :cond_d
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 961
    goto/16 :goto_0

    .line 994
    :cond_e
    iget-boolean v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v2, :cond_f

    .line 995
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 996
    goto/16 :goto_0

    .line 999
    :cond_f
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v4, v3

    if-ne v2, v4, :cond_10

    .line 1000
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 1002
    :cond_10
    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char v1, v3, v2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scanStringArray(Ljava/util/Collection;C)V
    .locals 17
    .param p2, "seperator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;C)V"
        }
    .end annotation

    .line 1685
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1687
    const/4 v3, 0x0

    .line 1688
    .local v3, "offset":I
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "offset":I
    .local v5, "offset":I
    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 1690
    .local v3, "chLocal":C
    const/16 v4, 0x75

    const/16 v6, 0x6e

    const/4 v7, 0x3

    const/16 v8, 0x6c

    if-ne v3, v6, :cond_0

    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v9, v5

    .line 1691
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    if-ne v9, v4, :cond_0

    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v9, v5

    add-int/lit8 v9, v9, 0x1

    .line 1692
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_0

    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v9, v5

    add-int/lit8 v9, v9, 0x2

    .line 1693
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_0

    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v9, v5

    add-int/2addr v9, v7

    .line 1694
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    if-ne v9, v2, :cond_0

    .line 1696
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    const/4 v6, 0x5

    add-int/2addr v4, v6

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1697
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1698
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1699
    return-void

    .line 1702
    :cond_0
    const/16 v9, 0x5b

    const/4 v10, -0x1

    if-eq v3, v9, :cond_1

    .line 1703
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1704
    return-void

    .line 1707
    :cond_1
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v5, 0x1

    .end local v5    # "offset":I
    .local v11, "offset":I
    add-int/2addr v9, v5

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 1710
    :goto_0
    const/16 v5, 0x5d

    if-ne v3, v6, :cond_2

    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v9, v11

    .line 1711
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    if-ne v9, v4, :cond_2

    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v9, v11

    add-int/lit8 v9, v9, 0x1

    .line 1712
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_2

    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v9, v11

    add-int/lit8 v9, v9, 0x2

    .line 1713
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_2

    .line 1714
    add-int/lit8 v11, v11, 0x3

    .line 1715
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "offset":I
    .local v12, "offset":I
    add-int/2addr v9, v11

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 1716
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1717
    .end local v12    # "offset":I
    .restart local v11    # "offset":I
    :cond_2
    if-ne v3, v5, :cond_3

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v9

    if-nez v9, :cond_3

    .line 1718
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v11, 0x1

    .end local v11    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v4, v11

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 1719
    goto/16 :goto_5

    .line 1720
    .end local v5    # "offset":I
    .restart local v11    # "offset":I
    :cond_3
    const/16 v9, 0x22

    if-eq v3, v9, :cond_4

    .line 1721
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1722
    return-void

    .line 1724
    :cond_4
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v12, v11

    .line 1725
    .local v12, "startIndex":I
    invoke-virtual {v0, v9, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v13

    .line 1726
    .local v13, "endIndex":I
    if-eq v13, v10, :cond_b

    .line 1730
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v11

    sub-int v15, v13, v12

    invoke-virtual {v0, v14, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v14

    .line 1731
    .local v14, "stringVal":Ljava/lang/String;
    const/16 v15, 0x5c

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v10, :cond_7

    .line 1733
    :goto_1
    const/4 v4, 0x0

    .line 1734
    .local v4, "slashCount":I
    add-int/lit8 v16, v13, -0x1

    move/from16 v6, v16

    .local v6, "i":I
    :goto_2
    if-ltz v6, :cond_5

    .line 1735
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    if-ne v8, v15, :cond_5

    .line 1736
    add-int/lit8 v4, v4, 0x1

    .line 1734
    add-int/lit8 v6, v6, -0x1

    const/16 v8, 0x6c

    goto :goto_2

    .line 1741
    .end local v6    # "i":I
    :cond_5
    rem-int/lit8 v6, v4, 0x2

    if-nez v6, :cond_6

    .line 1742
    nop

    .line 1747
    .end local v4    # "slashCount":I
    sub-int v4, v13, v12

    .line 1748
    .local v4, "chars_len":I
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v11

    invoke-virtual {v0, v6, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v6

    .line 1750
    .local v6, "chars":[C
    invoke-static {v6, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    .line 1744
    .end local v6    # "chars":[C
    .local v4, "slashCount":I
    :cond_6
    add-int/lit8 v6, v13, 0x1

    invoke-virtual {v0, v9, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v13

    .line 1745
    .end local v4    # "slashCount":I
    const/16 v6, 0x6e

    const/16 v8, 0x6c

    goto :goto_1

    .line 1753
    :cond_7
    :goto_3
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v6, v4, v11

    sub-int v6, v13, v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v11, v6

    .line 1754
    add-int/lit8 v6, v11, 0x1

    .end local v11    # "offset":I
    .local v6, "offset":I
    add-int/2addr v4, v11

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 1755
    invoke-interface {v1, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v12, v6

    .line 1758
    .end local v6    # "offset":I
    .end local v13    # "endIndex":I
    .end local v14    # "stringVal":Ljava/lang/String;
    .local v12, "offset":I
    :goto_4
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_8

    .line 1759
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "offset":I
    .restart local v11    # "offset":I
    add-int/2addr v4, v12

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 1760
    const/16 v4, 0x75

    const/16 v6, 0x6e

    const/16 v8, 0x6c

    goto/16 :goto_0

    .line 1763
    .end local v11    # "offset":I
    .restart local v12    # "offset":I
    :cond_8
    if-ne v3, v5, :cond_a

    .line 1764
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v12, 0x1

    .end local v12    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v4, v12

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 1765
    nop

    .line 1772
    :goto_5
    if-ne v3, v2, :cond_9

    .line 1773
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v5

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1774
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1775
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1776
    return-void

    .line 1778
    :cond_9
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1779
    return-void

    .line 1768
    .end local v5    # "offset":I
    .restart local v12    # "offset":I
    :cond_a
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1769
    return-void

    .line 1727
    .restart local v11    # "offset":I
    .local v12, "startIndex":I
    .restart local v13    # "endIndex":I
    :cond_b
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "unclosed str"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 4
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 595
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 597
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 598
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 601
    :cond_0
    const-string v1, "syntax error"

    const/16 v2, 0x27

    if-ne v0, v2, :cond_2

    .line 602
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 606
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 603
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_2
    const/16 v2, 0x7d

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    .line 610
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 611
    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 612
    return-object v3

    .line 615
    :cond_3
    const/16 v2, 0x2c

    if-ne v0, v2, :cond_4

    .line 616
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 617
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 618
    return-object v3

    .line 621
    :cond_4
    const/16 v2, 0x1a

    if-ne v0, v2, :cond_5

    .line 622
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 623
    return-object v3

    .line 626
    :cond_5
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 630
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 627
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .locals 16
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;
    .param p2, "quote"    # C

    .line 638
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 640
    .local v2, "hash":I
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 641
    const/4 v3, 0x0

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 642
    const/4 v4, 0x0

    .line 645
    .local v4, "hasSpecial":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v5

    .line 647
    .local v5, "chLocal":C
    const/4 v6, 0x4

    const/4 v7, 0x1

    move/from16 v8, p2

    if-ne v5, v8, :cond_2

    .line 648
    nop

    .line 789
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 792
    if-nez v4, :cond_1

    .line 795
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v9, -0x1

    if-ne v6, v9, :cond_0

    .line 796
    const/4 v6, 0x0

    .local v6, "offset":I
    goto :goto_1

    .line 798
    .end local v6    # "offset":I
    :cond_0
    add-int/2addr v6, v7

    .line 800
    .restart local v6    # "offset":I
    :goto_1
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {v0, v6, v7, v2, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v6

    .line 801
    .local v6, "value":Ljava/lang/String;
    goto :goto_2

    .line 802
    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {v1, v6, v3, v7, v2}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v6

    .line 805
    .restart local v6    # "value":Ljava/lang/String;
    :goto_2
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 806
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 808
    return-object v6

    .line 651
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    const/16 v9, 0x1a

    if-eq v5, v9, :cond_11

    .line 655
    const/16 v9, 0x5c

    if-ne v5, v9, :cond_e

    .line 656
    const/4 v10, 0x2

    if-nez v4, :cond_5

    .line 657
    const/4 v4, 0x1

    .line 659
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v13, v12

    if-lt v11, v13, :cond_4

    .line 660
    array-length v12, v12

    mul-int/lit8 v12, v12, 0x2

    .line 661
    .local v12, "newCapcity":I
    if-le v11, v12, :cond_3

    .line 662
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 664
    :cond_3
    new-array v11, v12, [C

    .line 665
    .local v11, "newsbuf":[C
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v14, v13

    invoke-static {v13, v3, v11, v3, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 666
    iput-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 671
    .end local v11    # "newsbuf":[C
    .end local v12    # "newCapcity":I
    :cond_4
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v11, v7

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {v0, v11, v12, v3, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->arrayCopy(I[CII)V

    .line 674
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v5

    .line 676
    const/16 v11, 0x22

    if-eq v5, v11, :cond_d

    const/16 v11, 0x27

    if-eq v5, v11, :cond_c

    const/16 v11, 0x46

    if-eq v5, v11, :cond_b

    if-eq v5, v9, :cond_a

    const/16 v9, 0x62

    if-eq v5, v9, :cond_9

    const/16 v9, 0x66

    if-eq v5, v9, :cond_b

    const/16 v9, 0x6e

    if-eq v5, v9, :cond_8

    const/16 v9, 0x72

    if-eq v5, v9, :cond_7

    const/16 v9, 0x78

    if-eq v5, v9, :cond_6

    const/4 v9, 0x3

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    .line 769
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 770
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "unclosed.str.lit"

    invoke-direct {v3, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 722
    :pswitch_0
    mul-int/lit8 v6, v2, 0x1f

    const/16 v7, 0xb

    add-int/lit8 v2, v6, 0xb

    .line 723
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 724
    goto/16 :goto_0

    .line 760
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v12

    move v5, v12

    .line 761
    .local v12, "c1":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v13

    move v5, v13

    .line 762
    .local v13, "c2":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v14

    move v5, v14

    .line 763
    .local v14, "c3":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v15

    move v5, v15

    .line 764
    .local v15, "c4":C
    new-instance v11, Ljava/lang/String;

    new-array v6, v6, [C

    aput-char v12, v6, v3

    aput-char v13, v6, v7

    aput-char v14, v6, v10

    aput-char v15, v6, v9

    invoke-direct {v11, v6}, Ljava/lang/String;-><init>([C)V

    const/16 v6, 0x10

    invoke-static {v11, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 765
    .local v6, "val":I
    mul-int/lit8 v7, v2, 0x1f

    add-int v2, v7, v6

    .line 766
    int-to-char v7, v6

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 767
    goto/16 :goto_0

    .line 714
    .end local v6    # "val":I
    .end local v12    # "c1":C
    .end local v13    # "c2":C
    .end local v14    # "c3":C
    .end local v15    # "c4":C
    :pswitch_2
    mul-int/lit8 v6, v2, 0x1f

    const/16 v7, 0x9

    add-int/lit8 v2, v6, 0x9

    .line 715
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 716
    goto/16 :goto_0

    .line 706
    :pswitch_3
    mul-int/lit8 v6, v2, 0x1f

    add-int v2, v6, v5

    .line 707
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 708
    goto/16 :goto_0

    .line 702
    :pswitch_4
    mul-int/lit8 v6, v2, 0x1f

    add-int v2, v6, v5

    .line 703
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 704
    goto/16 :goto_0

    .line 698
    :pswitch_5
    mul-int/lit8 v6, v2, 0x1f

    add-int v2, v6, v5

    .line 699
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 700
    goto/16 :goto_0

    .line 694
    :pswitch_6
    mul-int/lit8 v7, v2, 0x1f

    add-int v2, v7, v5

    .line 695
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 696
    goto/16 :goto_0

    .line 690
    :pswitch_7
    mul-int/lit8 v6, v2, 0x1f

    add-int v2, v6, v5

    .line 691
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 692
    goto/16 :goto_0

    .line 686
    :pswitch_8
    mul-int/lit8 v6, v2, 0x1f

    add-int v2, v6, v5

    .line 687
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 688
    goto/16 :goto_0

    .line 682
    :pswitch_9
    mul-int/lit8 v6, v2, 0x1f

    add-int v2, v6, v5

    .line 683
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 684
    goto/16 :goto_0

    .line 678
    :pswitch_a
    mul-int/lit8 v6, v2, 0x1f

    add-int v2, v6, v5

    .line 679
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 680
    goto/16 :goto_0

    .line 743
    :pswitch_b
    mul-int/lit8 v6, v2, 0x1f

    const/16 v7, 0x2f

    add-int/lit8 v2, v6, 0x2f

    .line 744
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 745
    goto/16 :goto_0

    .line 751
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 752
    .local v6, "x1":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v7

    iput-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 754
    .local v7, "x2":C
    sget-object v9, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v10, v9, v6

    const/16 v11, 0x10

    mul-int/lit8 v10, v10, 0x10

    aget v9, v9, v7

    add-int/2addr v10, v9

    .line 755
    .local v10, "x_val":I
    int-to-char v9, v10

    .line 756
    .local v9, "x_char":C
    mul-int/lit8 v11, v2, 0x1f

    add-int v2, v11, v9

    .line 757
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 758
    goto/16 :goto_0

    .line 731
    .end local v6    # "x1":C
    .end local v7    # "x2":C
    .end local v9    # "x_char":C
    .end local v10    # "x_val":I
    :cond_7
    mul-int/lit8 v6, v2, 0x1f

    const/16 v7, 0xd

    add-int/lit8 v2, v6, 0xd

    .line 732
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 733
    goto/16 :goto_0

    .line 718
    :cond_8
    mul-int/lit8 v6, v2, 0x1f

    const/16 v7, 0xa

    add-int/lit8 v2, v6, 0xa

    .line 719
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 720
    goto/16 :goto_0

    .line 710
    :cond_9
    mul-int/lit8 v6, v2, 0x1f

    const/16 v7, 0x8

    add-int/lit8 v2, v6, 0x8

    .line 711
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 712
    goto/16 :goto_0

    .line 747
    :cond_a
    mul-int/lit8 v6, v2, 0x1f

    add-int/lit8 v2, v6, 0x5c

    .line 748
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 749
    goto/16 :goto_0

    .line 727
    :cond_b
    mul-int/lit8 v6, v2, 0x1f

    const/16 v7, 0xc

    add-int/lit8 v2, v6, 0xc

    .line 728
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 729
    goto/16 :goto_0

    .line 739
    :cond_c
    mul-int/lit8 v6, v2, 0x1f

    add-int/lit8 v2, v6, 0x27

    .line 740
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 741
    goto/16 :goto_0

    .line 735
    :cond_d
    mul-int/lit8 v6, v2, 0x1f

    add-int/lit8 v2, v6, 0x22

    .line 736
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    .line 737
    goto/16 :goto_0

    .line 775
    :cond_e
    mul-int/lit8 v6, v2, 0x1f

    add-int v2, v6, v5

    .line 777
    if-nez v4, :cond_f

    .line 778
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v6, v7

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 779
    goto/16 :goto_0

    .line 782
    :cond_f
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v9, v7

    if-ne v6, v9, :cond_10

    .line 783
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 785
    :cond_10
    add-int/lit8 v9, v6, 0x1

    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char v5, v7, v6

    goto/16 :goto_0

    .line 652
    :cond_11
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "unclosed.str"

    invoke-direct {v3, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 10
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 820
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    if-ne v0, v2, :cond_0

    .line 821
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 823
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    .line 824
    .local v0, "firstIdentifierFlags":[Z
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 826
    .local v3, "first":C
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    array-length v5, v0

    if-ge v4, v5, :cond_1

    aget-boolean v4, v0, v3

    if-eqz v4, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 827
    .local v1, "firstFlag":Z
    :cond_2
    if-eqz v1, :cond_6

    .line 832
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    .line 834
    .local v4, "identifierFlags":[Z
    move v5, v3

    .line 836
    .local v5, "hash":I
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 837
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 840
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v6

    .line 842
    .local v6, "chLocal":C
    array-length v7, v4

    if-ge v6, v7, :cond_5

    .line 843
    aget-boolean v7, v4, v6

    if-nez v7, :cond_5

    .line 844
    nop

    .line 854
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 855
    const/16 v7, 0x12

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 857
    const v7, 0x33c587

    .line 858
    .local v7, "NULL_HASH":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    const v8, 0x33c587

    if-ne v5, v8, :cond_3

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    const/16 v9, 0x6e

    if-ne v8, v9, :cond_3

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v8, 0x75

    if-ne v2, v8, :cond_3

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v8, 0x6c

    if-ne v2, v8, :cond_3

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v2, v2, 0x3

    .line 859
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_3

    .line 860
    const/4 v2, 0x0

    return-object v2

    .line 865
    :cond_3
    if-nez p1, :cond_4

    .line 866
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p0, v2, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 869
    :cond_4
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p0, v2, v8, v5, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 848
    .end local v7    # "NULL_HASH":I
    :cond_5
    mul-int/lit8 v7, v5, 0x1f

    add-int v5, v7, v6

    .line 850
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 851
    goto :goto_0

    .line 828
    .end local v4    # "identifierFlags":[Z
    .end local v5    # "hash":I
    .end local v6    # "chLocal":C
    :cond_6
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal identifier : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 829
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public scanSymbolWithSeperator(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .locals 10
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;
    .param p2, "serperator"    # C

    .line 1458
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1460
    const/4 v0, 0x0

    .line 1461
    .local v0, "offset":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "offset":I
    .local v2, "offset":I
    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1463
    .local v0, "chLocal":C
    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/16 v5, 0x6e

    if-ne v0, v5, :cond_2

    .line 1464
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v6, 0x75

    if-ne v5, v6, :cond_1

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v6, 0x6c

    if-ne v5, v6, :cond_1

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_1

    .line 1465
    add-int/2addr v2, v1

    .line 1466
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "offset":I
    .local v6, "offset":I
    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1472
    if-ne v0, p2, :cond_0

    .line 1473
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1474
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1475
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1476
    return-object v3

    .line 1478
    :cond_0
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1479
    return-object v3

    .line 1468
    .end local v6    # "offset":I
    .restart local v2    # "offset":I
    :cond_1
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1469
    return-object v3

    .line 1483
    :cond_2
    const/16 v5, 0x22

    if-eq v0, v5, :cond_3

    .line 1484
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1485
    return-object v3

    .line 1490
    :cond_3
    const/4 v6, 0x0

    .line 1492
    .local v6, "hash":I
    :goto_0
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v2, 0x1

    .end local v2    # "offset":I
    .local v8, "offset":I
    add-int/2addr v7, v2

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1493
    if-ne v0, v5, :cond_6

    .line 1496
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x0

    add-int/lit8 v3, v3, 0x1

    .line 1497
    .local v3, "start":I
    add-int/2addr v2, v8

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 1498
    .local v2, "len":I
    invoke-virtual {p0, v3, v2, v6, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v5

    .line 1499
    .local v5, "strVal":Ljava/lang/String;
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .local v9, "offset":I
    add-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1500
    nop

    .line 1512
    .end local v2    # "len":I
    .end local v3    # "start":I
    :goto_1
    if-ne v0, p2, :cond_4

    .line 1513
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v2, v9

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1514
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1515
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1516
    return-object v5

    .line 1518
    :cond_4
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1519
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v9, 0x1

    .end local v9    # "offset":I
    .local v3, "offset":I
    add-int/2addr v2, v9

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1520
    move v9, v3

    goto :goto_1

    .line 1523
    .end local v3    # "offset":I
    .restart local v9    # "offset":I
    :cond_5
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1524
    return-object v5

    .line 1503
    .end local v5    # "strVal":Ljava/lang/String;
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :cond_6
    mul-int/lit8 v2, v6, 0x1f

    add-int v6, v2, v0

    .line 1505
    const/16 v2, 0x5c

    if-ne v0, v2, :cond_7

    .line 1506
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1507
    return-object v3

    .line 1505
    :cond_7
    move v2, v8

    goto :goto_0
.end method

.method public final scanTrue()V
    .locals 3

    .line 4481
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const-string v1, "error parse true"

    const/16 v2, 0x74

    if-ne v0, v2, :cond_5

    .line 4484
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4486
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x72

    if-ne v0, v2, :cond_4

    .line 4489
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4491
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x75

    if-ne v0, v2, :cond_3

    .line 4494
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4496
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x65

    if-ne v0, v2, :cond_2

    .line 4499
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4501
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4505
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4503
    :cond_1
    :goto_0
    const/4 v0, 0x6

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4507
    return-void

    .line 4497
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4492
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4487
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4482
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanType(Ljava/lang/String;)I
    .locals 7
    .param p1, "type"    # Ljava/lang/String;

    .line 1107
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1109
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1110
    const/4 v0, -0x2

    return v0

    .line 1113
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    array-length v1, v1

    add-int/2addr v0, v1

    .line 1115
    .local v0, "bpLocal":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1116
    .local v1, "typeLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, -0x1

    if-ge v2, v1, :cond_2

    .line 1117
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v5, v0, v2

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_1

    .line 1118
    return v3

    .line 1116
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1121
    .end local v2    # "i":I
    :cond_2
    add-int/2addr v0, v1

    .line 1122
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v4, 0x22

    if-eq v2, v4, :cond_3

    .line 1123
    return v3

    .line 1126
    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1128
    const/16 v4, 0x10

    const/16 v5, 0x2c

    if-ne v2, v5, :cond_4

    .line 1129
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1130
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1131
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1132
    const/4 v2, 0x3

    return v2

    .line 1133
    :cond_4
    const/16 v6, 0x7d

    if-ne v2, v6, :cond_9

    .line 1134
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1135
    if-ne v2, v5, :cond_5

    .line 1136
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1137
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    .line 1138
    :cond_5
    const/16 v4, 0x5d

    if-ne v2, v4, :cond_6

    .line 1139
    const/16 v2, 0xf

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1140
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    .line 1141
    :cond_6
    if-ne v2, v6, :cond_7

    .line 1142
    const/16 v2, 0xd

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1143
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_1

    .line 1144
    :cond_7
    const/16 v4, 0x1a

    if-ne v2, v4, :cond_8

    .line 1145
    const/16 v2, 0x14

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1149
    :goto_1
    const/4 v2, 0x4

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_2

    .line 1147
    :cond_8
    return v3

    .line 1152
    :cond_9
    :goto_2
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1153
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v2
.end method

.method public scanUUID(C)Ljava/util/UUID;
    .locals 23
    .param p1, "seperator"    # C

    .line 4278
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4282
    const/4 v1, 0x0

    .line 4283
    .local v1, "offset":I
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "offset":I
    .local v3, "offset":I
    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 4286
    .local v1, "chLocal":C
    const/16 v5, 0x22

    const/4 v6, -0x1

    const/4 v7, 0x4

    if-ne v1, v5, :cond_21

    .line 4287
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v9, 0x1

    .line 4288
    .local v9, "startIndex":I
    invoke-virtual {v0, v5, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v5

    .line 4289
    .local v5, "endIndex":I
    if-eq v5, v6, :cond_20

    .line 4293
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v10, 0x1

    .line 4294
    .local v10, "startIndex2":I
    sub-int v11, v5, v10

    .line 4295
    .local v11, "len":I
    const/16 v12, 0x24

    const/16 v13, 0x46

    const/16 v15, 0x66

    const/16 v6, 0x39

    const/16 v4, 0x41

    const/16 v2, 0x61

    const/16 v8, 0x30

    if-ne v11, v12, :cond_14

    .line 4296
    const-wide/16 v16, 0x0

    .local v16, "mostSigBits":J
    const-wide/16 v18, 0x0

    .line 4297
    .local v18, "leastSigBits":J
    const/16 v20, 0x0

    move/from16 v12, v20

    .local v12, "i":I
    :goto_0
    const/16 v14, 0x8

    if-ge v12, v14, :cond_3

    .line 4298
    add-int v14, v10, v12

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    .line 4300
    .local v14, "ch":C
    if-lt v14, v8, :cond_0

    if-gt v14, v6, :cond_0

    .line 4301
    add-int/lit8 v21, v14, -0x30

    move/from16 v13, v21

    .local v21, "num":I
    goto :goto_1

    .line 4302
    .end local v21    # "num":I
    :cond_0
    if-lt v14, v2, :cond_1

    if-gt v14, v15, :cond_1

    .line 4303
    add-int/lit8 v21, v14, -0x61

    add-int/lit8 v21, v21, 0xa

    move/from16 v13, v21

    .restart local v21    # "num":I
    goto :goto_1

    .line 4304
    .end local v21    # "num":I
    :cond_1
    if-lt v14, v4, :cond_2

    if-gt v14, v13, :cond_2

    .line 4305
    add-int/lit8 v21, v14, -0x41

    add-int/lit8 v21, v21, 0xa

    move/from16 v13, v21

    .line 4311
    .local v13, "num":I
    :goto_1
    shl-long v16, v16, v7

    .line 4312
    move/from16 v21, v5

    .end local v5    # "endIndex":I
    .local v21, "endIndex":I
    int-to-long v4, v13

    or-long v16, v16, v4

    .line 4297
    .end local v13    # "num":I
    .end local v14    # "ch":C
    add-int/lit8 v12, v12, 0x1

    move/from16 v5, v21

    const/16 v4, 0x41

    const/16 v13, 0x46

    goto :goto_0

    .line 4304
    .end local v21    # "endIndex":I
    .restart local v5    # "endIndex":I
    .restart local v14    # "ch":C
    :cond_2
    move/from16 v21, v5

    .line 4307
    .end local v5    # "endIndex":I
    .restart local v21    # "endIndex":I
    const/4 v2, -0x2

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4308
    const/4 v2, 0x0

    return-object v2

    .line 4297
    .end local v14    # "ch":C
    .end local v21    # "endIndex":I
    .restart local v5    # "endIndex":I
    :cond_3
    move/from16 v21, v5

    .line 4314
    .end local v5    # "endIndex":I
    .end local v12    # "i":I
    .restart local v21    # "endIndex":I
    const/16 v4, 0x9

    .local v4, "i":I
    :goto_2
    const/16 v5, 0xd

    if-ge v4, v5, :cond_7

    .line 4315
    add-int v5, v10, v4

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 4317
    .local v5, "ch":C
    if-lt v5, v8, :cond_4

    if-gt v5, v6, :cond_4

    .line 4318
    add-int/lit8 v12, v5, -0x30

    .local v12, "num":I
    goto :goto_3

    .line 4319
    .end local v12    # "num":I
    :cond_4
    if-lt v5, v2, :cond_5

    if-gt v5, v15, :cond_5

    .line 4320
    add-int/lit8 v12, v5, -0x61

    add-int/lit8 v12, v12, 0xa

    .restart local v12    # "num":I
    goto :goto_3

    .line 4321
    .end local v12    # "num":I
    :cond_5
    const/16 v12, 0x41

    if-lt v5, v12, :cond_6

    const/16 v12, 0x46

    if-gt v5, v12, :cond_6

    .line 4322
    add-int/lit8 v12, v5, -0x41

    add-int/lit8 v12, v12, 0xa

    .line 4328
    .restart local v12    # "num":I
    :goto_3
    shl-long v13, v16, v7

    .line 4329
    .end local v16    # "mostSigBits":J
    .local v13, "mostSigBits":J
    move/from16 v22, v3

    .end local v3    # "offset":I
    .local v22, "offset":I
    int-to-long v2, v12

    or-long v16, v13, v2

    .line 4314
    .end local v5    # "ch":C
    .end local v12    # "num":I
    .end local v13    # "mostSigBits":J
    .restart local v16    # "mostSigBits":J
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v22

    const/16 v2, 0x61

    goto :goto_2

    .line 4321
    .end local v22    # "offset":I
    .restart local v3    # "offset":I
    .restart local v5    # "ch":C
    :cond_6
    move/from16 v22, v3

    .line 4324
    .end local v3    # "offset":I
    .restart local v22    # "offset":I
    const/4 v2, -0x2

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4325
    const/4 v2, 0x0

    return-object v2

    .line 4314
    .end local v5    # "ch":C
    .end local v22    # "offset":I
    .restart local v3    # "offset":I
    :cond_7
    move/from16 v22, v3

    .line 4331
    .end local v3    # "offset":I
    .end local v4    # "i":I
    .restart local v22    # "offset":I
    const/16 v2, 0xe

    move-wide/from16 v3, v16

    .end local v16    # "mostSigBits":J
    .local v2, "i":I
    .local v3, "mostSigBits":J
    :goto_4
    const/16 v5, 0x12

    if-ge v2, v5, :cond_b

    .line 4332
    add-int v5, v10, v2

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 4334
    .restart local v5    # "ch":C
    if-lt v5, v8, :cond_8

    if-gt v5, v6, :cond_8

    .line 4335
    add-int/lit8 v12, v5, -0x30

    .restart local v12    # "num":I
    goto :goto_5

    .line 4336
    .end local v12    # "num":I
    :cond_8
    const/16 v12, 0x61

    if-lt v5, v12, :cond_9

    if-gt v5, v15, :cond_9

    .line 4337
    add-int/lit8 v12, v5, -0x61

    add-int/lit8 v12, v12, 0xa

    .restart local v12    # "num":I
    goto :goto_5

    .line 4338
    .end local v12    # "num":I
    :cond_9
    const/16 v12, 0x41

    if-lt v5, v12, :cond_a

    const/16 v12, 0x46

    if-gt v5, v12, :cond_a

    .line 4339
    add-int/lit8 v12, v5, -0x41

    add-int/lit8 v12, v12, 0xa

    .line 4345
    .restart local v12    # "num":I
    :goto_5
    shl-long/2addr v3, v7

    .line 4346
    int-to-long v13, v12

    or-long/2addr v3, v13

    .line 4331
    .end local v5    # "ch":C
    .end local v12    # "num":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 4341
    .restart local v5    # "ch":C
    :cond_a
    const/4 v6, -0x2

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4342
    const/4 v6, 0x0

    return-object v6

    .line 4348
    .end local v2    # "i":I
    .end local v5    # "ch":C
    :cond_b
    const/16 v2, 0x13

    .restart local v2    # "i":I
    :goto_6
    const/16 v5, 0x17

    if-ge v2, v5, :cond_f

    .line 4349
    add-int v5, v10, v2

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 4351
    .restart local v5    # "ch":C
    if-lt v5, v8, :cond_c

    if-gt v5, v6, :cond_c

    .line 4352
    add-int/lit8 v12, v5, -0x30

    .restart local v12    # "num":I
    goto :goto_7

    .line 4353
    .end local v12    # "num":I
    :cond_c
    const/16 v12, 0x61

    if-lt v5, v12, :cond_d

    if-gt v5, v15, :cond_d

    .line 4354
    add-int/lit8 v12, v5, -0x61

    add-int/lit8 v12, v12, 0xa

    .restart local v12    # "num":I
    goto :goto_7

    .line 4355
    .end local v12    # "num":I
    :cond_d
    const/16 v12, 0x41

    if-lt v5, v12, :cond_e

    const/16 v12, 0x46

    if-gt v5, v12, :cond_e

    .line 4356
    add-int/lit8 v12, v5, -0x41

    add-int/lit8 v12, v12, 0xa

    .line 4362
    .restart local v12    # "num":I
    :goto_7
    shl-long v13, v18, v7

    .line 4363
    .end local v18    # "leastSigBits":J
    .local v13, "leastSigBits":J
    int-to-long v6, v12

    or-long v18, v13, v6

    .line 4348
    .end local v5    # "ch":C
    .end local v12    # "num":I
    .end local v13    # "leastSigBits":J
    .restart local v18    # "leastSigBits":J
    add-int/lit8 v2, v2, 0x1

    const/16 v6, 0x39

    const/4 v7, 0x4

    goto :goto_6

    .line 4358
    .restart local v5    # "ch":C
    :cond_e
    const/4 v6, -0x2

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4359
    const/4 v6, 0x0

    return-object v6

    .line 4365
    .end local v2    # "i":I
    .end local v5    # "ch":C
    :cond_f
    const/16 v2, 0x18

    move-wide/from16 v5, v18

    .end local v18    # "leastSigBits":J
    .restart local v2    # "i":I
    .local v5, "leastSigBits":J
    :goto_8
    const/16 v7, 0x24

    if-ge v2, v7, :cond_13

    .line 4366
    add-int v12, v10, v2

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    .line 4368
    .local v12, "ch":C
    if-lt v12, v8, :cond_10

    const/16 v13, 0x39

    if-gt v12, v13, :cond_10

    .line 4369
    add-int/lit8 v13, v12, -0x30

    .local v13, "num":I
    goto :goto_9

    .line 4370
    .end local v13    # "num":I
    :cond_10
    const/16 v13, 0x61

    if-lt v12, v13, :cond_11

    if-gt v12, v15, :cond_11

    .line 4371
    add-int/lit8 v13, v12, -0x61

    add-int/lit8 v13, v13, 0xa

    .restart local v13    # "num":I
    goto :goto_9

    .line 4372
    .end local v13    # "num":I
    :cond_11
    const/16 v13, 0x41

    if-lt v12, v13, :cond_12

    const/16 v13, 0x46

    if-gt v12, v13, :cond_12

    .line 4373
    add-int/lit8 v13, v12, -0x41

    add-int/lit8 v13, v13, 0xa

    .line 4379
    .restart local v13    # "num":I
    :goto_9
    const/4 v14, 0x4

    shl-long/2addr v5, v14

    .line 4380
    int-to-long v7, v13

    or-long/2addr v5, v7

    .line 4365
    .end local v12    # "ch":C
    .end local v13    # "num":I
    add-int/lit8 v2, v2, 0x1

    const/16 v8, 0x30

    goto :goto_8

    .line 4375
    .restart local v12    # "ch":C
    :cond_12
    const/4 v7, -0x2

    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4376
    const/4 v7, 0x0

    return-object v7

    .line 4382
    .end local v2    # "i":I
    .end local v12    # "ch":C
    :cond_13
    new-instance v2, Ljava/util/UUID;

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/util/UUID;-><init>(JJ)V

    .line 4384
    .local v2, "uuid":Ljava/util/UUID;
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v7, 0x1

    sub-int v8, v21, v8

    add-int/lit8 v8, v8, 0x1

    add-int v8, v22, v8

    .line 4385
    .end local v22    # "offset":I
    .local v8, "offset":I
    add-int/lit8 v12, v8, 0x1

    .end local v8    # "offset":I
    .local v12, "offset":I
    add-int/2addr v7, v8

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 4386
    .end local v3    # "mostSigBits":J
    .end local v5    # "leastSigBits":J
    goto/16 :goto_e

    .end local v2    # "uuid":Ljava/util/UUID;
    .end local v12    # "offset":I
    .end local v21    # "endIndex":I
    .local v3, "offset":I
    .local v5, "endIndex":I
    :cond_14
    move/from16 v22, v3

    move/from16 v21, v5

    .end local v3    # "offset":I
    .end local v5    # "endIndex":I
    .restart local v21    # "endIndex":I
    .restart local v22    # "offset":I
    const/16 v2, 0x20

    if-ne v11, v2, :cond_1f

    .line 4387
    const-wide/16 v3, 0x0

    .local v3, "mostSigBits":J
    const-wide/16 v5, 0x0

    .line 4388
    .local v5, "leastSigBits":J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_a
    const/16 v8, 0x10

    if-ge v7, v8, :cond_18

    .line 4389
    add-int v8, v10, v7

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    .line 4391
    .local v8, "ch":C
    const/16 v12, 0x30

    if-lt v8, v12, :cond_15

    const/16 v12, 0x39

    if-gt v8, v12, :cond_15

    .line 4392
    add-int/lit8 v12, v8, -0x30

    .local v12, "num":I
    goto :goto_b

    .line 4393
    .end local v12    # "num":I
    :cond_15
    const/16 v12, 0x61

    if-lt v8, v12, :cond_16

    if-gt v8, v15, :cond_16

    .line 4394
    add-int/lit8 v12, v8, -0x61

    add-int/lit8 v12, v12, 0xa

    .restart local v12    # "num":I
    goto :goto_b

    .line 4395
    .end local v12    # "num":I
    :cond_16
    const/16 v12, 0x41

    if-lt v8, v12, :cond_17

    const/16 v12, 0x46

    if-gt v8, v12, :cond_17

    .line 4396
    add-int/lit8 v12, v8, -0x41

    add-int/lit8 v12, v12, 0xa

    .line 4402
    .restart local v12    # "num":I
    :goto_b
    const/4 v13, 0x4

    shl-long/2addr v3, v13

    .line 4403
    int-to-long v14, v12

    or-long/2addr v3, v14

    .line 4388
    .end local v8    # "ch":C
    .end local v12    # "num":I
    add-int/lit8 v7, v7, 0x1

    const/16 v15, 0x66

    goto :goto_a

    .line 4398
    .restart local v8    # "ch":C
    :cond_17
    const/4 v2, -0x2

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4399
    const/4 v2, 0x0

    return-object v2

    .line 4405
    .end local v7    # "i":I
    .end local v8    # "ch":C
    :cond_18
    const/16 v7, 0x10

    .restart local v7    # "i":I
    :goto_c
    if-ge v7, v2, :cond_1e

    .line 4406
    add-int v8, v10, v7

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v8

    .line 4408
    .restart local v8    # "ch":C
    const/16 v12, 0x30

    if-lt v8, v12, :cond_19

    const/16 v14, 0x39

    if-gt v8, v14, :cond_1a

    .line 4409
    add-int/lit8 v15, v8, -0x30

    move v2, v15

    const/16 v13, 0x66

    const/16 v15, 0x61

    .local v15, "num":I
    goto :goto_d

    .line 4408
    .end local v15    # "num":I
    :cond_19
    const/16 v14, 0x39

    .line 4410
    :cond_1a
    const/16 v15, 0x61

    if-lt v8, v15, :cond_1b

    const/16 v13, 0x66

    if-gt v8, v13, :cond_1c

    .line 4411
    add-int/lit8 v17, v8, -0x61

    add-int/lit8 v17, v17, 0xa

    move/from16 v2, v17

    .local v17, "num":I
    goto :goto_d

    .line 4410
    .end local v17    # "num":I
    :cond_1b
    const/16 v13, 0x66

    .line 4412
    :cond_1c
    const/16 v2, 0x41

    if-lt v8, v2, :cond_1d

    const/16 v2, 0x46

    if-gt v8, v2, :cond_1d

    .line 4413
    add-int/lit8 v18, v8, -0x41

    add-int/lit8 v18, v18, 0xa

    move/from16 v2, v18

    .line 4419
    .local v2, "num":I
    :goto_d
    const/16 v16, 0x4

    shl-long v5, v5, v16

    .line 4420
    int-to-long v12, v2

    or-long/2addr v5, v12

    .line 4405
    .end local v2    # "num":I
    .end local v8    # "ch":C
    add-int/lit8 v7, v7, 0x1

    const/16 v2, 0x20

    goto :goto_c

    .line 4415
    .restart local v8    # "ch":C
    :cond_1d
    const/4 v2, -0x2

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4416
    const/4 v2, 0x0

    return-object v2

    .line 4423
    .end local v7    # "i":I
    .end local v8    # "ch":C
    :cond_1e
    new-instance v2, Ljava/util/UUID;

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/util/UUID;-><init>(JJ)V

    .line 4425
    .local v2, "uuid":Ljava/util/UUID;
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v7, 0x1

    sub-int v8, v21, v8

    add-int/lit8 v8, v8, 0x1

    add-int v8, v22, v8

    .line 4426
    .end local v22    # "offset":I
    .local v8, "offset":I
    add-int/lit8 v12, v8, 0x1

    .end local v8    # "offset":I
    .local v12, "offset":I
    add-int/2addr v7, v8

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 4427
    .end local v3    # "mostSigBits":J
    .end local v5    # "leastSigBits":J
    nop

    .line 4431
    .end local v9    # "startIndex":I
    .end local v10    # "startIndex2":I
    .end local v11    # "len":I
    .end local v21    # "endIndex":I
    :goto_e
    goto :goto_f

    .line 4428
    .end local v2    # "uuid":Ljava/util/UUID;
    .end local v12    # "offset":I
    .restart local v9    # "startIndex":I
    .restart local v10    # "startIndex2":I
    .restart local v11    # "len":I
    .restart local v21    # "endIndex":I
    .restart local v22    # "offset":I
    :cond_1f
    const/4 v2, -0x1

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4429
    const/4 v2, 0x0

    return-object v2

    .line 4290
    .end local v10    # "startIndex2":I
    .end local v11    # "len":I
    .end local v21    # "endIndex":I
    .end local v22    # "offset":I
    .local v3, "offset":I
    .local v5, "endIndex":I
    :cond_20
    move/from16 v22, v3

    .end local v3    # "offset":I
    .restart local v22    # "offset":I
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "unclosed str"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4431
    .end local v5    # "endIndex":I
    .end local v9    # "startIndex":I
    .end local v22    # "offset":I
    .restart local v3    # "offset":I
    :cond_21
    move/from16 v22, v3

    .end local v3    # "offset":I
    .restart local v22    # "offset":I
    const/16 v2, 0x6e

    if-ne v1, v2, :cond_2a

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v22, 0x1

    .end local v22    # "offset":I
    .restart local v3    # "offset":I
    add-int v2, v2, v22

    .line 4432
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v4, 0x75

    if-ne v2, v4, :cond_2b

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .local v4, "offset":I
    add-int/2addr v2, v3

    .line 4433
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_29

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .local v5, "offset":I
    add-int/2addr v2, v4

    .line 4434
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_28

    .line 4435
    const/4 v2, 0x0

    .line 4436
    .restart local v2    # "uuid":Ljava/util/UUID;
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v5, 0x1

    .end local v5    # "offset":I
    .restart local v12    # "offset":I
    add-int/2addr v3, v5

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 4442
    :goto_f
    const/16 v3, 0x2c

    if-ne v1, v3, :cond_22

    .line 4443
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v12

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4444
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 4445
    const/4 v3, 0x3

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4446
    return-object v2

    .line 4449
    :cond_22
    const/16 v4, 0x5d

    if-ne v1, v4, :cond_27

    .line 4450
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v12, 0x1

    .end local v12    # "offset":I
    .local v6, "offset":I
    add-int/2addr v5, v12

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 4451
    if-ne v1, v3, :cond_23

    .line 4452
    const/16 v3, 0x10

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4453
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v6

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4454
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_10

    .line 4455
    :cond_23
    if-ne v1, v4, :cond_24

    .line 4456
    const/16 v3, 0xf

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4457
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v6

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4458
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_10

    .line 4459
    :cond_24
    const/16 v3, 0x7d

    if-ne v1, v3, :cond_25

    .line 4460
    const/16 v3, 0xd

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4461
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v3, v6

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4462
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_10

    .line 4463
    :cond_25
    const/16 v3, 0x1a

    if-ne v1, v3, :cond_26

    .line 4464
    const/16 v4, 0x14

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4465
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, -0x1

    add-int/2addr v4, v5

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4466
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 4471
    :goto_10
    const/4 v3, 0x4

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4477
    return-object v2

    .line 4468
    :cond_26
    const/4 v3, -0x1

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4469
    const/4 v4, 0x0

    return-object v4

    .line 4473
    .end local v6    # "offset":I
    .restart local v12    # "offset":I
    :cond_27
    const/4 v3, -0x1

    const/4 v4, 0x0

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4474
    return-object v4

    .line 4434
    .end local v2    # "uuid":Ljava/util/UUID;
    .end local v12    # "offset":I
    .restart local v5    # "offset":I
    :cond_28
    move v3, v5

    goto :goto_11

    .line 4433
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    :cond_29
    move v3, v4

    goto :goto_11

    .line 4431
    .end local v4    # "offset":I
    .restart local v22    # "offset":I
    :cond_2a
    move/from16 v3, v22

    .line 4438
    .end local v22    # "offset":I
    .restart local v3    # "offset":I
    :cond_2b
    :goto_11
    const/4 v2, -0x1

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4439
    const/4 v2, 0x0

    return-object v2
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .line 1027
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    .line 1028
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 1019
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    .line 1020
    return-void
.end method

.method public setToken(I)V
    .locals 0
    .param p1, "token"    # I

    .line 97
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 98
    return-void
.end method

.method protected skipComment()V
    .locals 4

    .line 563
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 564
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_2

    .line 566
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 567
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 568
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 569
    return-void

    .line 570
    :cond_1
    if-ne v0, v1, :cond_0

    .line 571
    return-void

    .line 574
    :cond_2
    const/16 v3, 0x2a

    if-ne v0, v3, :cond_6

    .line 575
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 577
    :cond_3
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v1, :cond_5

    .line 578
    if-ne v0, v3, :cond_4

    .line 579
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 580
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v2, :cond_3

    .line 581
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 582
    return-void

    .line 587
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 592
    :cond_5
    return-void

    .line 590
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "invalid comment"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final skipWhitespace()V
    .locals 3

    .line 4734
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_2

    .line 4735
    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 4738
    :cond_0
    if-ne v0, v1, :cond_2

    .line 4739
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipComment()V

    .line 4740
    goto :goto_0

    .line 4736
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4737
    goto :goto_0

    .line 4748
    :cond_2
    return-void
.end method

.method public final stringDefaultValue()Ljava/lang/String;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public abstract stringVal()Ljava/lang/String;
.end method

.method public abstract subString(II)Ljava/lang/String;
.end method

.method protected abstract sub_chars(II)[C
.end method

.method public final token()I
    .locals 1

    .line 398
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v0
.end method

.method public final tokenName()Ljava/lang/String;
    .locals 1

    .line 402
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
