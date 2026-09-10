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
            "Ljava/lang/ThreadLocal",
            "<[C>;"
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

    .prologue
    .line 70
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_LOCAL:Ljava/lang/ThreadLocal;

    .line 1104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    .line 5080
    const/16 v1, 0x67

    new-array v1, v1, [I

    sput-object v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

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
    :cond_0
    const/16 v0, 0x61

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
    :cond_1
    const/16 v0, 0x41

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
    :cond_2
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "features"    # I

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    .line 65
    sget-object v0, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    .line 66
    sget-object v0, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 72
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

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

    .prologue
    const/16 v0, 0x20

    .line 5074
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

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readString([CI)Ljava/lang/String;
    .locals 13
    .param p0, "chars"    # [C
    .param p1, "chars_len"    # I

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4630
    new-array v4, p1, [C

    .line 4631
    .local v4, "sbuf":[C
    const/4 v2, 0x0

    .line 4632
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, v2

    .end local v2    # "len":I
    .local v3, "len":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 4633
    aget-char v0, p0, v1

    .line 4635
    .local v0, "ch":C
    const/16 v5, 0x5c

    if-eq v0, v5, :cond_0

    .line 4636
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v0, v4, v3

    .line 4632
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "len":I
    .restart local v3    # "len":I
    goto :goto_0

    .line 4639
    :cond_0
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p0, v1

    .line 4641
    sparse-switch v0, :sswitch_data_0

    .line 4708
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v6, "unclosed.str.lit"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4643
    :sswitch_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v8, v4, v3

    goto :goto_1

    .line 4646
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_1
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v9, v4, v3

    goto :goto_1

    .line 4649
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_2
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v10, v4, v3

    goto :goto_1

    .line 4652
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_3
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v11, v4, v3

    goto :goto_1

    .line 4655
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_4
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v12, v4, v3

    goto :goto_1

    .line 4658
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_5
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/4 v5, 0x5

    aput-char v5, v4, v3

    goto :goto_1

    .line 4661
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_6
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/4 v5, 0x6

    aput-char v5, v4, v3

    goto :goto_1

    .line 4664
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_7
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/4 v5, 0x7

    aput-char v5, v4, v3

    goto :goto_1

    .line 4667
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_8
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x8

    aput-char v5, v4, v3

    goto :goto_1

    .line 4670
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_9
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x9

    aput-char v5, v4, v3

    goto :goto_1

    .line 4673
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_a
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0xa

    aput-char v5, v4, v3

    goto :goto_1

    .line 4676
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_b
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0xb

    aput-char v5, v4, v3

    goto :goto_1

    .line 4680
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_c
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0xc

    aput-char v5, v4, v3

    goto :goto_1

    .line 4683
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_d
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0xd

    aput-char v5, v4, v3

    goto :goto_1

    .line 4686
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_e
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x22

    aput-char v5, v4, v3

    goto :goto_1

    .line 4689
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_f
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x27

    aput-char v5, v4, v3

    goto :goto_1

    .line 4692
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_10
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x2f

    aput-char v5, v4, v3

    goto :goto_1

    .line 4695
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_11
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x5c

    aput-char v5, v4, v3

    goto/16 :goto_1

    .line 4698
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_12
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v1, v1, 0x1

    aget-char v6, p0, v1

    aget v5, v5, v6

    mul-int/lit8 v5, v5, 0x10

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aget v6, v6, v7

    add-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v3

    goto/16 :goto_1

    .line 4701
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_13
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    new-instance v5, Ljava/lang/String;

    new-array v6, v12, [C

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aput-char v7, v6, v8

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aput-char v7, v6, v9

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aput-char v7, v6, v10

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aput-char v7, v6, v11

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-char v5, v5

    aput-char v5, v4, v3

    goto/16 :goto_1

    .line 4711
    .end local v0    # "ch":C
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4, v8, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v5

    .line 4641
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_e
        0x27 -> :sswitch_f
        0x2f -> :sswitch_10
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x46 -> :sswitch_c
        0x5c -> :sswitch_11
        0x62 -> :sswitch_8
        0x66 -> :sswitch_c
        0x6e -> :sswitch_a
        0x72 -> :sswitch_d
        0x74 -> :sswitch_9
        0x75 -> :sswitch_13
        0x76 -> :sswitch_b
        0x78 -> :sswitch_12
    .end sparse-switch
.end method

.method private scanStringSingleQuote()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4751
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 4752
    iput-boolean v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 4755
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v0

    .line 4757
    .local v0, "chLocal":C
    const/16 v2, 0x27

    if-ne v0, v2, :cond_0

    .line 4867
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4868
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4869
    return-void

    .line 4761
    :cond_0
    const/16 v2, 0x1a

    if-ne v0, v2, :cond_2

    .line 4762
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4763
    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 4766
    :cond_1
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v3, "unclosed single-quote string"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4769
    :cond_2
    const/16 v2, 0x5c

    if-ne v0, v2, :cond_5

    .line 4770
    iget-boolean v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v2, :cond_4

    .line 4771
    iput-boolean v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 4773
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v3, v3

    if-le v2, v3, :cond_3

    .line 4774
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [C

    .line 4775
    .local v1, "newsbuf":[C
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v3, v3

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4776
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 4780
    .end local v1    # "newsbuf":[C
    :cond_3
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    invoke-virtual {p0, v2, v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->copyTo(II[C)V

    .line 4784
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v0

    .line 4786
    sparse-switch v0, :sswitch_data_0

    .line 4849
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 4850
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v3, "unclosed single-quote string"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4788
    :sswitch_0
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 4791
    :sswitch_1
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 4794
    :sswitch_2
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 4797
    :sswitch_3
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 4800
    :sswitch_4
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 4803
    :sswitch_5
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 4806
    :sswitch_6
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4809
    :sswitch_7
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4812
    :sswitch_8
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4815
    :sswitch_9
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4818
    :sswitch_a
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4821
    :sswitch_b
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4825
    :sswitch_c
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4828
    :sswitch_d
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4831
    :sswitch_e
    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4834
    :sswitch_f
    const/16 v2, 0x27

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4837
    :sswitch_10
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4840
    :sswitch_11
    const/16 v2, 0x5c

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4843
    :sswitch_12
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

    goto/16 :goto_0

    .line 4846
    :sswitch_13
    new-instance v2, Ljava/lang/String;

    new-array v3, v7, [C

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    aput-char v4, v3, v5

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    aput-char v4, v3, v6

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    aput-char v4, v3, v8

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v4

    aput-char v4, v3, v9

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4855
    :cond_5
    iget-boolean v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v2, :cond_6

    .line 4856
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto/16 :goto_0

    .line 4860
    :cond_6
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v3, v3

    if-ne v2, v3, :cond_7

    .line 4861
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 4863
    :cond_7
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char v0, v2, v3

    goto/16 :goto_0

    .line 4786
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_e
        0x27 -> :sswitch_f
        0x2f -> :sswitch_10
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x46 -> :sswitch_c
        0x5c -> :sswitch_11
        0x62 -> :sswitch_8
        0x66 -> :sswitch_c
        0x6e -> :sswitch_a
        0x72 -> :sswitch_d
        0x74 -> :sswitch_9
        0x75 -> :sswitch_13
        0x76 -> :sswitch_b
        0x78 -> :sswitch_12
    .end sparse-switch
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
    .locals 2

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v0, v0

    const/16 v1, 0x2000

    if-gt v0, v1, :cond_0

    .line 1088
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->SBUF_LOCAL:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

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

    .prologue
    .line 523
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    invoke-static {v0, p1, p2}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    .line 525
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

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

    .prologue
    .line 5050
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 5052
    .local v0, "chLocal":C
    const/16 v2, 0x46

    if-ne v0, v2, :cond_0

    .line 5053
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 5063
    :goto_0
    return-object v2

    .line 5056
    :cond_0
    const/16 v2, 0x44

    if-ne v0, v2, :cond_1

    .line 5057
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    .line 5060
    :cond_1
    if-eqz p1, :cond_2

    .line 5061
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_0

    .line 5063
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 5065
    :catch_0
    move-exception v1

    .line 5066
    .local v1, "ex":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public abstract decimalValue()Ljava/math/BigDecimal;
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 6

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v2

    .line 508
    .local v2, "strVal":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 509
    .local v1, "floatValue":F
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_0

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v3, v1, v3

    if-nez v3, :cond_1

    .line 510
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 511
    .local v0, "c0":C
    const/16 v3, 0x30

    if-le v0, v3, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    .line 512
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "float overflow : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 515
    .end local v0    # "c0":C
    :cond_1
    return v1
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public final getCurrent()C
    .locals 1

    .prologue
    .line 547
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    return v0
.end method

.method public getFeatures()I
    .locals 1

    .prologue
    .line 5111
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public abstract indexOf(CI)I
.end method

.method public info()Ljava/lang/String;
    .locals 1

    .prologue
    .line 816
    const-string v0, ""

    return-object v0
.end method

.method public final intValue()I
    .locals 12

    .prologue
    .line 1031
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    .line 1032
    const/4 v10, 0x0

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 1035
    :cond_0
    const/4 v9, 0x0

    .line 1036
    .local v9, "result":I
    const/4 v8, 0x0

    .line 1037
    .local v8, "negative":Z
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .local v2, "i":I
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int v5, v10, v11

    .line 1041
    .local v5, "max":I
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_3

    .line 1042
    const/4 v8, 0x1

    .line 1043
    const/high16 v4, -0x80000000

    .line 1044
    .local v4, "limit":I
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 1048
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    const-wide/32 v6, -0xccccccc

    .line 1049
    .local v6, "multmin":J
    if-ge v3, v5, :cond_1

    .line 1050
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    add-int/lit8 v1, v10, -0x30

    .line 1051
    .local v1, "digit":I
    neg-int v9, v1

    move v3, v2

    .line 1053
    .end local v1    # "digit":I
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_1
    :goto_1
    if-ge v3, v5, :cond_9

    .line 1055
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1057
    .local v0, "chLocal":C
    const/16 v10, 0x4c

    if-eq v0, v10, :cond_2

    const/16 v10, 0x53

    if-eq v0, v10, :cond_2

    const/16 v10, 0x42

    if-ne v0, v10, :cond_4

    .line 1073
    .end local v0    # "chLocal":C
    :cond_2
    :goto_2
    if-eqz v8, :cond_8

    .line 1074
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v10, v10, 0x1

    if-le v2, v10, :cond_7

    .line 1080
    .end local v9    # "result":I
    :goto_3
    return v9

    .line 1046
    .end local v4    # "limit":I
    .end local v6    # "multmin":J
    .restart local v9    # "result":I
    :cond_3
    const v4, -0x7fffffff

    .restart local v4    # "limit":I
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 1061
    .end local v3    # "i":I
    .restart local v0    # "chLocal":C
    .restart local v2    # "i":I
    .restart local v6    # "multmin":J
    :cond_4
    add-int/lit8 v1, v0, -0x30

    .line 1063
    .restart local v1    # "digit":I
    int-to-long v10, v9

    cmp-long v10, v10, v6

    if-gez v10, :cond_5

    .line 1064
    new-instance v10, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1066
    :cond_5
    mul-int/lit8 v9, v9, 0xa

    .line 1067
    add-int v10, v4, v1

    if-ge v9, v10, :cond_6

    .line 1068
    new-instance v10, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1070
    :cond_6
    sub-int/2addr v9, v1

    move v3, v2

    .line 1071
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 1077
    .end local v0    # "chLocal":C
    .end local v1    # "digit":I
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_7
    new-instance v10, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1080
    :cond_8
    neg-int v9, v9

    goto :goto_3

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_9
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_2
.end method

.method public final integerValue()Ljava/lang/Number;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 414
    const-wide/16 v10, 0x0

    .line 415
    .local v10, "result":J
    const/4 v8, 0x0

    .line 416
    .local v8, "negative":Z
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_0

    .line 417
    const/4 v12, 0x0

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 419
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .local v1, "i":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int v3, v12, v13

    .line 424
    .local v3, "max":I
    const/16 v9, 0x20

    .line 426
    .local v9, "type":C
    add-int/lit8 v12, v3, -0x1

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    sparse-switch v12, :sswitch_data_0

    .line 443
    :goto_0
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_2

    .line 444
    const/4 v8, 0x1

    .line 445
    const-wide/high16 v4, -0x8000000000000000L

    .line 446
    .local v4, "limit":J
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .line 450
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    const-wide v6, -0xcccccccccccccccL

    .line 451
    .local v6, "multmin":J
    if-ge v2, v3, :cond_1

    .line 452
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    add-int/lit8 v0, v12, -0x30

    .line 453
    .local v0, "digit":I
    neg-int v12, v0

    int-to-long v10, v12

    move v2, v1

    .line 455
    .end local v0    # "digit":I
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_1
    :goto_2
    if-ge v2, v3, :cond_5

    .line 457
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    add-int/lit8 v0, v12, -0x30

    .line 458
    .restart local v0    # "digit":I
    cmp-long v12, v10, v6

    if-gez v12, :cond_3

    .line 459
    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 498
    .end local v0    # "digit":I
    :goto_3
    return-object v12

    .line 428
    .end local v4    # "limit":J
    .end local v6    # "multmin":J
    :sswitch_0
    add-int/lit8 v3, v3, -0x1

    .line 429
    const/16 v9, 0x4c

    .line 430
    goto :goto_0

    .line 432
    :sswitch_1
    add-int/lit8 v3, v3, -0x1

    .line 433
    const/16 v9, 0x53

    .line 434
    goto :goto_0

    .line 436
    :sswitch_2
    add-int/lit8 v3, v3, -0x1

    .line 437
    const/16 v9, 0x42

    .line 438
    goto :goto_0

    .line 448
    :cond_2
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .restart local v4    # "limit":J
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 461
    .end local v2    # "i":I
    .restart local v0    # "digit":I
    .restart local v1    # "i":I
    .restart local v6    # "multmin":J
    :cond_3
    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    .line 462
    int-to-long v12, v0

    add-long/2addr v12, v4

    cmp-long v12, v10, v12

    if-gez v12, :cond_4

    .line 463
    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 465
    :cond_4
    int-to-long v12, v0

    sub-long/2addr v10, v12

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 468
    .end local v0    # "digit":I
    :cond_5
    if-eqz v8, :cond_a

    .line 469
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v12, v12, 0x1

    if-le v2, v12, :cond_9

    .line 470
    const-wide/32 v12, -0x80000000

    cmp-long v12, v10, v12

    if-ltz v12, :cond_8

    const/16 v12, 0x4c

    if-eq v9, v12, :cond_8

    .line 471
    const/16 v12, 0x53

    if-ne v9, v12, :cond_6

    .line 472
    long-to-int v12, v10

    int-to-short v12, v12

    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    .line 475
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_6
    const/16 v12, 0x42

    if-ne v9, v12, :cond_7

    .line 476
    long-to-int v12, v10

    int-to-byte v12, v12

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    .line 479
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_7
    long-to-int v12, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    .line 481
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_8
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    .line 483
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_9
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 486
    :cond_a
    neg-long v10, v10

    .line 487
    const-wide/32 v12, 0x7fffffff

    cmp-long v12, v10, v12

    if-gtz v12, :cond_d

    const/16 v12, 0x4c

    if-eq v9, v12, :cond_d

    .line 488
    const/16 v12, 0x53

    if-ne v9, v12, :cond_b

    .line 489
    long-to-int v12, v10

    int-to-short v12, v12

    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_3

    .line 492
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_b
    const/16 v12, 0x42

    if-ne v9, v12, :cond_c

    .line 493
    long-to-int v12, v10

    int-to-byte v12, v12

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_3

    .line 496
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_c
    long-to-int v12, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_3

    .line 498
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_d
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_3

    .line 426
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x4c -> :sswitch_0
        0x53 -> :sswitch_1
    .end sparse-switch
.end method

.method public isBlankInput()Z
    .locals 3

    .prologue
    .line 4717
    const/4 v1, 0x0

    .line 4718
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 4719
    .local v0, "chLocal":C
    const/16 v2, 0x1a

    if-ne v0, v2, :cond_0

    .line 4720
    const/16 v2, 0x14

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4729
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 4724
    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4725
    const/4 v2, 0x0

    goto :goto_1

    .line 4717
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public abstract isEOF()Z
.end method

.method public final isEnabled(I)Z
    .locals 1
    .param p1, "feature"    # I

    .prologue
    .line 535
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEnabled(II)Z
    .locals 1
    .param p1, "features"    # I
    .param p2, "feature"    # I

    .prologue
    .line 539
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->features:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    and-int v0, p1, p2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 1
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;

    .prologue
    .line 531
    iget v0, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final isRef()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1094
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 1098
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x24

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x2

    .line 1099
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x3

    .line 1100
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v1, v1, 0x4

    .line 1101
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected varargs lexError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
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

    .prologue
    .line 4996
    const-wide/16 v10, 0x0

    .line 4997
    .local v10, "result":J
    const/4 v7, 0x0

    .line 5001
    .local v7, "negative":Z
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_0

    .line 5002
    const/4 v12, 0x0

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 5005
    :cond_0
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .local v2, "i":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int v6, v12, v13

    .line 5007
    .local v6, "max":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_3

    .line 5008
    const/4 v7, 0x1

    .line 5009
    const-wide/high16 v4, -0x8000000000000000L

    .line 5010
    .local v4, "limit":J
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 5014
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    const-wide v8, -0xcccccccccccccccL

    .line 5015
    .local v8, "multmin":J
    if-ge v3, v6, :cond_1

    .line 5016
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    add-int/lit8 v1, v12, -0x30

    .line 5017
    .local v1, "digit":I
    neg-int v12, v1

    int-to-long v10, v12

    move v3, v2

    .line 5019
    .end local v1    # "digit":I
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_1
    :goto_1
    if-ge v3, v6, :cond_9

    .line 5021
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 5023
    .local v0, "chLocal":C
    const/16 v12, 0x4c

    if-eq v0, v12, :cond_2

    const/16 v12, 0x53

    if-eq v0, v12, :cond_2

    const/16 v12, 0x42

    if-ne v0, v12, :cond_4

    .line 5038
    .end local v0    # "chLocal":C
    :cond_2
    :goto_2
    if-eqz v7, :cond_8

    .line 5039
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v12, v12, 0x1

    if-le v2, v12, :cond_7

    .line 5045
    .end local v10    # "result":J
    :goto_3
    return-wide v10

    .line 5012
    .end local v4    # "limit":J
    .end local v8    # "multmin":J
    .restart local v10    # "result":J
    :cond_3
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .restart local v4    # "limit":J
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 5027
    .end local v3    # "i":I
    .restart local v0    # "chLocal":C
    .restart local v2    # "i":I
    .restart local v8    # "multmin":J
    :cond_4
    add-int/lit8 v1, v0, -0x30

    .line 5028
    .restart local v1    # "digit":I
    cmp-long v12, v10, v8

    if-gez v12, :cond_5

    .line 5029
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 5031
    :cond_5
    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    .line 5032
    int-to-long v12, v1

    add-long/2addr v12, v4

    cmp-long v12, v10, v12

    if-gez v12, :cond_6

    .line 5033
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 5035
    :cond_6
    int-to-long v12, v1

    sub-long/2addr v10, v12

    move v3, v2

    .line 5036
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 5042
    .end local v0    # "chLocal":C
    .end local v1    # "digit":I
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_7
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 5045
    :cond_8
    neg-long v10, v10

    goto :goto_3

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_9
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_2
.end method

.method public final matchField([C)Z
    .locals 3
    .param p1, "fieldName"    # [C

    .prologue
    const/16 v2, 0x5b

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

    goto :goto_0

    .line 1163
    :cond_0
    const/4 v0, 0x0

    .line 1186
    :goto_1
    return v0

    .line 1169
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1170
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1172
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_2

    .line 1173
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1174
    const/16 v0, 0xc

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1186
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    .line 1175
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v2, :cond_3

    .line 1176
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1177
    const/16 v0, 0xe

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_2

    .line 1178
    :cond_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x53

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    const/16 v1, 0x74

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_4

    .line 1179
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1180
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1181
    const/16 v0, 0x15

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_2

    .line 1183
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto :goto_2
.end method

.method public matchField2([C)Z
    .locals 1
    .param p1, "fieldName"    # [C

    .prologue
    .line 5107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final matchStat()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    return v0
.end method

.method public newCollectionByType(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1530
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/util/HashSet;

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1531
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1539
    :goto_0
    return-object v2

    .line 1533
    :cond_0
    const-class v4, Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1534
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "list2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v2, v3

    .line 1535
    goto :goto_0

    .line 1538
    .end local v3    # "list2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v2, v1

    .line 1539
    goto :goto_0

    .line 1540
    .end local v1    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 1541
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public abstract next()C
.end method

.method public final nextIdent()V
    .locals 2

    .prologue
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

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x24

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 368
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanIdent()V

    .line 372
    :goto_1
    return-void

    .line 370
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto :goto_1
.end method

.method public final nextToken()V
    .locals 4

    .prologue
    const/16 v2, 0x14

    const/4 v3, 0x0

    .line 101
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 104
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 106
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipComment()V

    goto :goto_0

    .line 111
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    .line 223
    :goto_1
    return-void

    .line 116
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 118
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 122
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_3

    .line 123
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    goto :goto_1

    .line 127
    :cond_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_4

    .line 128
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    goto :goto_1

    .line 132
    :cond_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    sparse-switch v0, :sswitch_data_0

    .line 206
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 207
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-ne v0, v2, :cond_6

    .line 208
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "EOF error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :sswitch_0
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 135
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "Feature.AllowSingleQuotes is false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_5
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanStringSingleQuote()V

    goto :goto_1

    .line 145
    :sswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 148
    :sswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanTrue()V

    goto :goto_1

    .line 151
    :sswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFalse()V

    goto :goto_1

    .line 154
    :sswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNullOrNew()V

    goto :goto_1

    .line 160
    :sswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanIdent()V

    goto :goto_1

    .line 163
    :sswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 164
    const/16 v0, 0xa

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 167
    :sswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 168
    const/16 v0, 0xb

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 171
    :sswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 172
    const/16 v0, 0xe

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 175
    :sswitch_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 176
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_1

    .line 179
    :sswitch_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 180
    const/16 v0, 0xc

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_1

    .line 183
    :sswitch_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 184
    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_1

    .line 187
    :sswitch_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 188
    const/16 v0, 0x11

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_1

    .line 191
    :sswitch_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 192
    const/16 v0, 0x18

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_1

    .line 195
    :sswitch_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 196
    const/16 v0, 0x19

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_1

    .line 199
    :sswitch_f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 200
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    goto/16 :goto_1

    .line 203
    :sswitch_10
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanHex()V

    goto/16 :goto_1

    .line 211
    :cond_6
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 212
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->eofPos:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    goto/16 :goto_1

    .line 214
    :cond_7
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1f

    if-le v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_9

    .line 215
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_0

    .line 219
    :cond_9
    const-string v0, "illegal.char"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_1

    .line 132
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x27 -> :sswitch_0
        0x28 -> :sswitch_6
        0x29 -> :sswitch_7
        0x2b -> :sswitch_f
        0x2e -> :sswitch_e
        0x3a -> :sswitch_c
        0x3b -> :sswitch_d
        0x4e -> :sswitch_5
        0x53 -> :sswitch_5
        0x54 -> :sswitch_5
        0x5b -> :sswitch_8
        0x5d -> :sswitch_9
        0x66 -> :sswitch_3
        0x6e -> :sswitch_4
        0x74 -> :sswitch_2
        0x75 -> :sswitch_5
        0x78 -> :sswitch_10
        0x7b -> :sswitch_a
        0x7d -> :sswitch_b
    .end sparse-switch
.end method

.method public final nextToken(I)V
    .locals 7
    .param p1, "expect"    # I

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0x7b

    const/16 v4, 0x5b

    const/16 v3, 0xe

    const/16 v2, 0xc

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 233
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 353
    :cond_0
    :pswitch_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v6, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v2, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    .line 354
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 235
    :pswitch_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v5, :cond_2

    .line 236
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 237
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 361
    :goto_1
    return-void

    .line 240
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v4, :cond_0

    .line 241
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 242
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 247
    :pswitch_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_3

    .line 248
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 249
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 253
    :cond_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_4

    .line 254
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 255
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 259
    :cond_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_5

    .line 260
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 261
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 265
    :cond_5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 266
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_1

    .line 271
    :pswitch_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_6

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_6

    .line 272
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 273
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    goto :goto_1

    .line 277
    :cond_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_7

    .line 278
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 279
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    goto :goto_1

    .line 283
    :cond_7
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v4, :cond_8

    .line 284
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 285
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 289
    :cond_8
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v5, :cond_0

    .line 290
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 291
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 297
    :pswitch_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_9

    .line 298
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 299
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanString()V

    goto/16 :goto_1

    .line 303
    :cond_9
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_a

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_a

    .line 304
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    .line 305
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanNumber()V

    goto/16 :goto_1

    .line 309
    :cond_a
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v4, :cond_b

    .line 310
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 311
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_1

    .line 315
    :cond_b
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v5, :cond_0

    .line 316
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 317
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_1

    .line 322
    :pswitch_5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v4, :cond_c

    .line 323
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 324
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_1

    .line 328
    :cond_c
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v5, :cond_0

    .line 329
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 330
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_1

    .line 335
    :pswitch_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_d

    .line 336
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 337
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto/16 :goto_1

    .line 341
    :cond_d
    :pswitch_7
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 342
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_1

    .line 347
    :pswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextIdent()V

    goto/16 :goto_1

    .line 358
    :cond_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto/16 :goto_1

    .line 233
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public final nextTokenWithChar(C)V
    .locals 3
    .param p1, "expect"    # C

    .prologue
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
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 389
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 393
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", info : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final nextTokenWithColon()V
    .locals 1

    .prologue
    .line 375
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithChar(C)V

    .line 376
    return-void
.end method

.method public final nextTokenWithColon(I)V
    .locals 1
    .param p1, "expect"    # I

    .prologue
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

    .prologue
    .line 406
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    return v0
.end method

.method protected final putChar(C)V
    .locals 4
    .param p1, "ch"    # C

    .prologue
    const/4 v3, 0x0

    .line 4875
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 4876
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [C

    .line 4877
    .local v0, "newsbuf":[C
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4878
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 4880
    .end local v0    # "newsbuf":[C
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char p1, v1, v2

    .line 4881
    return-void
.end method

.method public final resetStringPosition()V
    .locals 1

    .prologue
    .line 812
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 813
    return-void
.end method

.method public scanBoolean(C)Z
    .locals 9
    .param p1, "expectNext"    # C

    .prologue
    const/16 v8, 0x65

    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 1974
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1976
    const/4 v1, 0x0

    .line 1977
    .local v1, "offset":I
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1979
    .local v0, "chLocal":C
    const/4 v3, 0x0

    .line 1980
    .local v3, "value":Z
    const/16 v5, 0x74

    if-ne v0, v5, :cond_1

    .line 1981
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v6, 0x72

    if-ne v5, v6, :cond_0

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    .line 1982
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v6, 0x75

    if-ne v5, v6, :cond_0

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x2

    .line 1983
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_0

    .line 1984
    add-int/lit8 v1, v2, 0x3

    .line 1985
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1986
    const/4 v3, 0x1

    move v4, v3

    .end local v3    # "value":Z
    .local v4, "value":Z
    move v2, v1

    .line 2012
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    :goto_0
    if-ne v0, p1, :cond_5

    .line 2013
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2014
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2015
    const/4 v5, 0x3

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .end local v4    # "value":Z
    .restart local v3    # "value":Z
    move v1, v2

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    move v5, v4

    .line 2023
    :goto_1
    return v5

    .line 1988
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    :cond_0
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v1, v2

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    move v5, v4

    .line 1989
    goto :goto_1

    .line 1991
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    :cond_1
    const/16 v5, 0x66

    if-ne v0, v5, :cond_3

    .line 1992
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v6, 0x61

    if-ne v5, v6, :cond_2

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    .line 1993
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v6, 0x6c

    if-ne v5, v6, :cond_2

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x2

    .line 1994
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v6, 0x73

    if-ne v5, v6, :cond_2

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x3

    .line 1995
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_2

    .line 1996
    add-int/lit8 v1, v2, 0x4

    .line 1997
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v5, 0x5

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1998
    const/4 v3, 0x0

    move v4, v3

    .end local v3    # "value":Z
    .restart local v4    # "value":Z
    move v2, v1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_0

    .line 2000
    .end local v4    # "value":Z
    .restart local v3    # "value":Z
    :cond_2
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v1, v2

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    move v5, v4

    .line 2001
    goto :goto_1

    .line 2003
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    :cond_3
    const/16 v5, 0x31

    if-ne v0, v5, :cond_4

    .line 2004
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2005
    const/4 v3, 0x1

    move v4, v3

    .end local v3    # "value":Z
    .restart local v4    # "value":Z
    move v2, v1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_0

    .line 2006
    .end local v4    # "value":Z
    .restart local v3    # "value":Z
    :cond_4
    const/16 v5, 0x30

    if-ne v0, v5, :cond_7

    .line 2007
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2008
    const/4 v3, 0x0

    move v4, v3

    .end local v3    # "value":Z
    .restart local v4    # "value":Z
    move v2, v1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_0

    .line 2018
    :cond_5
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2019
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v2, v1

    .line 2020
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_0

    .line 2022
    :cond_6
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .end local v4    # "value":Z
    .restart local v3    # "value":Z
    move v1, v2

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    move v5, v4

    .line 2023
    goto/16 :goto_1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    :cond_7
    move v4, v3

    .end local v3    # "value":Z
    .restart local v4    # "value":Z
    goto/16 :goto_0
.end method

.method public scanDate(C)Ljava/util/Date;
    .locals 26
    .param p1, "seperator"    # C

    .prologue
    .line 3937
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3939
    const/4 v15, 0x0

    .line 3940
    .local v15, "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .local v16, "offset":I
    add-int v21, v21, v15

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 3943
    .local v5, "chLocal":C
    const/16 v21, 0x22

    move/from16 v0, v21

    if-ne v5, v0, :cond_5

    .line 3944
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v18, v21, 0x1

    .line 3945
    .local v18, "startIndex":I
    const/16 v21, 0x22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v10

    .line 3946
    .local v10, "endIndex":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v10, v0, :cond_0

    .line 3947
    new-instance v21, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v22, "unclosed str"

    invoke-direct/range {v21 .. v22}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 3950
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v19, v21, 0x1

    .line 3951
    .local v19, "startIndex2":I
    sub-int v21, v10, v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v20

    .line 3952
    .local v20, "stringVal":Ljava/lang/String;
    const/16 v21, 0x5c

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 3954
    :goto_0
    const/16 v17, 0x0

    .line 3955
    .local v17, "slashCount":I
    add-int/lit8 v11, v10, -0x1

    .local v11, "i":I
    :goto_1
    if-ltz v11, :cond_1

    .line 3956
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v21

    const/16 v22, 0x5c

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 3957
    add-int/lit8 v17, v17, 0x1

    .line 3955
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 3962
    :cond_1
    rem-int/lit8 v21, v17, 0x2

    if-nez v21, :cond_3

    .line 3968
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    sub-int v7, v10, v21

    .line 3969
    .local v7, "chars_len":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v6

    .line 3971
    .local v6, "chars":[C
    invoke-static {v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v20

    .line 3974
    .end local v6    # "chars":[C
    .end local v7    # "chars_len":I
    .end local v11    # "i":I
    .end local v17    # "slashCount":I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    sub-int v21, v10, v21

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v15, v21, 0x1

    .line 3975
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v21, v21, v15

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 3977
    new-instance v8, Lcom/alibaba/fastjson/parser/JSONScanner;

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 3979
    .local v8, "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    const/16 v21, 0x0

    :try_start_0
    move/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 3980
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v4

    .line 3981
    .local v4, "calendar":Ljava/util/Calendar;
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 3987
    .local v9, "dateVal":Ljava/util/Date;
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 4030
    .end local v4    # "calendar":Ljava/util/Calendar;
    .end local v8    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v10    # "endIndex":I
    .end local v18    # "startIndex":I
    .end local v19    # "startIndex2":I
    .end local v20    # "stringVal":Ljava/lang/String;
    :goto_2
    const/16 v21, 0x2c

    move/from16 v0, v21

    if-ne v5, v0, :cond_d

    .line 4031
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int v21, v21, v16

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4032
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 4033
    const/16 v21, 0x3

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4034
    const/16 v21, 0x10

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    move/from16 v15, v16

    .line 4066
    .end local v9    # "dateVal":Ljava/util/Date;
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    :goto_3
    return-object v9

    .line 3965
    .end local v15    # "offset":I
    .restart local v10    # "endIndex":I
    .restart local v11    # "i":I
    .restart local v16    # "offset":I
    .restart local v17    # "slashCount":I
    .restart local v18    # "startIndex":I
    .restart local v19    # "startIndex2":I
    .restart local v20    # "stringVal":Ljava/lang/String;
    :cond_3
    const/16 v21, 0x22

    add-int/lit8 v22, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v10

    .line 3966
    goto/16 :goto_0

    .line 3983
    .end local v11    # "i":I
    .end local v17    # "slashCount":I
    .restart local v8    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :cond_4
    const/16 v21, -0x1

    :try_start_1
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3984
    const/4 v9, 0x0

    .line 3987
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    move/from16 v15, v16

    .line 3984
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto :goto_3

    .line 3987
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :catchall_0
    move-exception v21

    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v21

    .line 3989
    .end local v8    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v10    # "endIndex":I
    .end local v18    # "startIndex":I
    .end local v19    # "startIndex2":I
    .end local v20    # "stringVal":Ljava/lang/String;
    :cond_5
    const/16 v21, 0x2d

    move/from16 v0, v21

    if-eq v5, v0, :cond_6

    const/16 v21, 0x30

    move/from16 v0, v21

    if-lt v5, v0, :cond_b

    const/16 v21, 0x39

    move/from16 v0, v21

    if-gt v5, v0, :cond_b

    .line 3990
    :cond_6
    const-wide/16 v12, 0x0

    .line 3992
    .local v12, "millis":J
    const/4 v14, 0x0

    .line 3993
    .local v14, "negative":Z
    const/16 v21, 0x2d

    move/from16 v0, v21

    if-ne v5, v0, :cond_13

    .line 3994
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 3995
    const/4 v14, 0x1

    .line 3998
    :goto_4
    const/16 v21, 0x30

    move/from16 v0, v21

    if-lt v5, v0, :cond_8

    const/16 v21, 0x39

    move/from16 v0, v21

    if-gt v5, v0, :cond_8

    .line 3999
    add-int/lit8 v21, v5, -0x30

    move/from16 v0, v21

    int-to-long v12, v0

    .line 4001
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v21, v21, v15

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 4002
    const/16 v21, 0x30

    move/from16 v0, v21

    if-lt v5, v0, :cond_7

    const/16 v21, 0x39

    move/from16 v0, v21

    if-gt v5, v0, :cond_7

    .line 4003
    const-wide/16 v22, 0xa

    mul-long v22, v22, v12

    add-int/lit8 v21, v5, -0x30

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v12, v22, v24

    move/from16 v15, v16

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto :goto_5

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_7
    move/from16 v15, v16

    .line 4010
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    :cond_8
    const-wide/16 v22, 0x0

    cmp-long v21, v12, v22

    if-gez v21, :cond_9

    .line 4011
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4012
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 4015
    :cond_9
    if-eqz v14, :cond_a

    .line 4016
    neg-long v12, v12

    .line 4019
    :cond_a
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v12, v13}, Ljava/util/Date;-><init>(J)V

    .restart local v9    # "dateVal":Ljava/util/Date;
    move/from16 v16, v15

    .line 4020
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    goto/16 :goto_2

    .end local v9    # "dateVal":Ljava/util/Date;
    .end local v12    # "millis":J
    .end local v14    # "negative":Z
    :cond_b
    const/16 v21, 0x6e

    move/from16 v0, v21

    if-ne v5, v0, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v21

    const/16 v22, 0x75

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v21

    const/16 v22, 0x6c

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v21, v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v21

    const/16 v22, 0x6c

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 4021
    const/16 v21, 0x5

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4022
    const/4 v9, 0x0

    .line 4023
    .restart local v9    # "dateVal":Ljava/util/Date;
    add-int/lit8 v15, v16, 0x3

    .line 4024
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v21, v21, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    move/from16 v16, v15

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    goto/16 :goto_2

    .line 4026
    .end local v9    # "dateVal":Ljava/util/Date;
    :cond_c
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4027
    const/4 v9, 0x0

    move/from16 v15, v16

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto/16 :goto_3

    .line 4038
    .end local v15    # "offset":I
    .restart local v9    # "dateVal":Ljava/util/Date;
    .restart local v16    # "offset":I
    :cond_d
    const/16 v21, 0x5d

    move/from16 v0, v21

    if-ne v5, v0, :cond_12

    .line 4039
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int v21, v21, v16

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 4040
    const/16 v21, 0x2c

    move/from16 v0, v21

    if-ne v5, v0, :cond_e

    .line 4041
    const/16 v21, 0x10

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4042
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int v21, v21, v15

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4043
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 4060
    :goto_6
    const/16 v21, 0x4

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_3

    .line 4044
    :cond_e
    const/16 v21, 0x5d

    move/from16 v0, v21

    if-ne v5, v0, :cond_f

    .line 4045
    const/16 v21, 0xf

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4046
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int v21, v21, v15

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4047
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    .line 4048
    :cond_f
    const/16 v21, 0x7d

    move/from16 v0, v21

    if-ne v5, v0, :cond_10

    .line 4049
    const/16 v21, 0xd

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4050
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int v21, v21, v15

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4051
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    .line 4052
    :cond_10
    const/16 v21, 0x1a

    move/from16 v0, v21

    if-ne v5, v0, :cond_11

    .line 4053
    const/16 v21, 0x14

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4054
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v22, v15, -0x1

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4055
    const/16 v21, 0x1a

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto/16 :goto_6

    .line 4057
    :cond_11
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4058
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 4062
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_12
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4063
    const/4 v9, 0x0

    move/from16 v15, v16

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto/16 :goto_3

    .end local v9    # "dateVal":Ljava/util/Date;
    .end local v15    # "offset":I
    .restart local v12    # "millis":J
    .restart local v14    # "negative":Z
    .restart local v16    # "offset":I
    :cond_13
    move/from16 v15, v16

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto/16 :goto_4
.end method

.method public scanDecimal(C)Ljava/math/BigDecimal;
    .locals 13
    .param p1, "seperator"    # C

    .prologue
    .line 2851
    const/4 v11, 0x0

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2853
    const/4 v5, 0x0

    .line 2854
    .local v5, "offset":I
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    add-int/2addr v11, v5

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2855
    .local v0, "chLocal":C
    const/16 v11, 0x22

    if-ne v0, v11, :cond_1

    const/4 v7, 0x1

    .line 2856
    .local v7, "quote":Z
    :goto_0
    if-eqz v7, :cond_0

    .line 2857
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v6, v5

    .line 2860
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_0
    const/16 v11, 0x2d

    if-ne v0, v11, :cond_2

    const/4 v4, 0x1

    .line 2861
    .local v4, "negative":Z
    :goto_1
    if-eqz v4, :cond_1a

    .line 2862
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v11, v6

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2866
    :goto_2
    const/16 v11, 0x30

    if-lt v0, v11, :cond_d

    const/16 v11, 0x39

    if-gt v0, v11, :cond_d

    .line 2868
    :goto_3
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v11, v5

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2869
    const/16 v11, 0x30

    if-lt v0, v11, :cond_3

    const/16 v11, 0x39

    if-gt v0, v11, :cond_3

    move v5, v6

    .line 2870
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_3

    .line 2855
    .end local v4    # "negative":Z
    .end local v5    # "offset":I
    .end local v7    # "quote":Z
    .restart local v6    # "offset":I
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 2860
    .restart local v7    # "quote":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 2876
    .restart local v4    # "negative":Z
    :cond_3
    const/16 v11, 0x2e

    if-ne v0, v11, :cond_4

    const/4 v8, 0x1

    .line 2877
    .local v8, "small":Z
    :goto_4
    if-eqz v8, :cond_6

    .line 2878
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v11, v6

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2879
    const/16 v11, 0x30

    if-lt v0, v11, :cond_5

    const/16 v11, 0x39

    if-gt v0, v11, :cond_5

    .line 2881
    :goto_5
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v11, v5

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2882
    const/16 v11, 0x30

    if-lt v0, v11, :cond_6

    const/16 v11, 0x39

    if-gt v0, v11, :cond_6

    move v5, v6

    .line 2883
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_5

    .line 2876
    .end local v5    # "offset":I
    .end local v8    # "small":Z
    .restart local v6    # "offset":I
    :cond_4
    const/4 v8, 0x0

    goto :goto_4

    .line 2889
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    .restart local v8    # "small":Z
    :cond_5
    const/4 v11, -0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2890
    const/4 v10, 0x0

    .line 2998
    .end local v8    # "small":Z
    :goto_6
    return-object v10

    .line 2894
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    .restart local v8    # "small":Z
    :cond_6
    const/16 v11, 0x65

    if-eq v0, v11, :cond_7

    const/16 v11, 0x45

    if-ne v0, v11, :cond_9

    :cond_7
    const/4 v3, 0x1

    .line 2895
    .local v3, "exp":Z
    :goto_7
    if-eqz v3, :cond_a

    .line 2896
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v11, v6

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2897
    const/16 v11, 0x2b

    if-eq v0, v11, :cond_8

    const/16 v11, 0x2d

    if-ne v0, v11, :cond_19

    .line 2898
    :cond_8
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v11, v5

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2901
    :goto_8
    const/16 v11, 0x30

    if-lt v0, v11, :cond_a

    const/16 v11, 0x39

    if-gt v0, v11, :cond_a

    .line 2902
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v11, v6

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_8

    .line 2894
    .end local v3    # "exp":Z
    :cond_9
    const/4 v3, 0x0

    goto :goto_7

    .line 2910
    .restart local v3    # "exp":Z
    :cond_a
    if-eqz v7, :cond_c

    .line 2911
    const/16 v11, 0x22

    if-eq v0, v11, :cond_b

    .line 2912
    const/4 v11, -0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2913
    const/4 v10, 0x0

    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_6

    .line 2915
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_b
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v11, v6

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2917
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v9, v11, 0x1

    .line 2918
    .local v9, "start":I
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v5

    sub-int/2addr v11, v9

    add-int/lit8 v2, v11, -0x2

    .line 2924
    .local v2, "count":I
    :goto_9
    invoke-virtual {p0, v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v1

    .line 2925
    .local v1, "chars":[C
    new-instance v10, Ljava/math/BigDecimal;

    invoke-direct {v10, v1}, Ljava/math/BigDecimal;-><init>([C)V

    .line 2962
    .local v10, "value":Ljava/math/BigDecimal;
    const/16 v11, 0x2c

    if-ne v0, v11, :cond_13

    .line 2963
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v5

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2964
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    iput-char v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2965
    const/4 v11, 0x3

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2966
    const/16 v11, 0x10

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_6

    .line 2920
    .end local v1    # "chars":[C
    .end local v2    # "count":I
    .end local v5    # "offset":I
    .end local v9    # "start":I
    .end local v10    # "value":Ljava/math/BigDecimal;
    .restart local v6    # "offset":I
    :cond_c
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2921
    .restart local v9    # "start":I
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v6

    sub-int/2addr v11, v9

    add-int/lit8 v2, v11, -0x1

    .restart local v2    # "count":I
    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_9

    .line 2926
    .end local v2    # "count":I
    .end local v3    # "exp":Z
    .end local v8    # "small":Z
    .end local v9    # "start":I
    :cond_d
    const/16 v11, 0x6e

    if-ne v0, v11, :cond_12

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v5

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    const/16 v12, 0x75

    if-ne v11, v12, :cond_12

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v5

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    const/16 v12, 0x6c

    if-ne v11, v12, :cond_12

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v5

    add-int/lit8 v11, v11, 0x2

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    const/16 v12, 0x6c

    if-ne v11, v12, :cond_12

    .line 2927
    const/4 v11, 0x5

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2928
    const/4 v10, 0x0

    .line 2929
    .restart local v10    # "value":Ljava/math/BigDecimal;
    add-int/lit8 v5, v5, 0x3

    .line 2930
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v11, v5

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2932
    if-eqz v7, :cond_e

    const/16 v11, 0x22

    if-ne v0, v11, :cond_e

    .line 2933
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v11, v6

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v6, v5

    .line 2937
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_e
    :goto_a
    const/16 v11, 0x2c

    if-ne v0, v11, :cond_f

    .line 2938
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v6

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2939
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    iput-char v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2940
    const/4 v11, 0x5

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2941
    const/16 v11, 0x10

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    move v5, v6

    .line 2942
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_6

    .line 2943
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_f
    const/16 v11, 0x7d

    if-ne v0, v11, :cond_10

    .line 2944
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v6

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2945
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    iput-char v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2946
    const/4 v11, 0x5

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2947
    const/16 v11, 0xd

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    move v5, v6

    .line 2948
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_6

    .line 2949
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_10
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2950
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v11, v6

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v6, v5

    .line 2951
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_a

    .line 2955
    :cond_11
    const/4 v11, -0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2956
    const/4 v10, 0x0

    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_6

    .line 2958
    .end local v10    # "value":Ljava/math/BigDecimal;
    :cond_12
    const/4 v11, -0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2959
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 2970
    .restart local v1    # "chars":[C
    .restart local v2    # "count":I
    .restart local v3    # "exp":Z
    .restart local v8    # "small":Z
    .restart local v9    # "start":I
    .restart local v10    # "value":Ljava/math/BigDecimal;
    :cond_13
    const/16 v11, 0x5d

    if-ne v0, v11, :cond_18

    .line 2971
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v11, v5

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2972
    const/16 v11, 0x2c

    if-ne v0, v11, :cond_14

    .line 2973
    const/16 v11, 0x10

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2974
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v6

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2975
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    iput-char v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2992
    :goto_b
    const/4 v11, 0x4

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v5, v6

    .line 2998
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_6

    .line 2976
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_14
    const/16 v11, 0x5d

    if-ne v0, v11, :cond_15

    .line 2977
    const/16 v11, 0xf

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2978
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v6

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2979
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    iput-char v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_b

    .line 2980
    :cond_15
    const/16 v11, 0x7d

    if-ne v0, v11, :cond_16

    .line 2981
    const/16 v11, 0xd

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2982
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v6

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2983
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    iput-char v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_b

    .line 2984
    :cond_16
    const/16 v11, 0x1a

    if-ne v0, v11, :cond_17

    .line 2985
    const/16 v11, 0x14

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2986
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v6, -0x1

    add-int/2addr v11, v12

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2987
    const/16 v11, 0x1a

    iput-char v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_b

    .line 2989
    :cond_17
    const/4 v11, -0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2990
    const/4 v10, 0x0

    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_6

    .line 2994
    :cond_18
    const/4 v11, -0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2995
    const/4 v10, 0x0

    goto/16 :goto_6

    .end local v1    # "chars":[C
    .end local v2    # "count":I
    .end local v9    # "start":I
    .end local v10    # "value":Ljava/math/BigDecimal;
    :cond_19
    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_8

    .end local v3    # "exp":Z
    .end local v8    # "small":Z
    :cond_1a
    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_2
.end method

.method public scanDouble(C)D
    .locals 22
    .param p1, "seperator"    # C

    .prologue
    .line 2713
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2715
    const/4 v8, 0x0

    .line 2716
    .local v8, "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .local v9, "offset":I
    add-int v18, v18, v8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2717
    .local v2, "chLocal":C
    const/16 v18, 0x22

    move/from16 v0, v18

    if-ne v2, v0, :cond_1

    const/4 v12, 0x1

    .line 2718
    .local v12, "quote":Z
    :goto_0
    if-eqz v12, :cond_0

    .line 2719
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v9, v8

    .line 2722
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_0
    const/16 v18, 0x2d

    move/from16 v0, v18

    if-ne v2, v0, :cond_2

    const/4 v5, 0x1

    .line 2723
    .local v5, "negative":Z
    :goto_1
    if-eqz v5, :cond_17

    .line 2724
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v18, v18, v9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2728
    :goto_2
    const/16 v18, 0x30

    move/from16 v0, v18

    if-lt v2, v0, :cond_f

    const/16 v18, 0x39

    move/from16 v0, v18

    if-gt v2, v0, :cond_f

    .line 2729
    add-int/lit8 v18, v2, -0x30

    move/from16 v0, v18

    int-to-long v6, v0

    .line 2731
    .local v6, "intVal":J
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    add-int v18, v18, v8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2732
    const/16 v18, 0x30

    move/from16 v0, v18

    if-lt v2, v0, :cond_3

    const/16 v18, 0x39

    move/from16 v0, v18

    if-gt v2, v0, :cond_3

    .line 2733
    const-wide/16 v18, 0xa

    mul-long v18, v18, v6

    add-int/lit8 v20, v2, -0x30

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v6, v18, v20

    move v8, v9

    .line 2734
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_3

    .line 2717
    .end local v5    # "negative":Z
    .end local v6    # "intVal":J
    .end local v8    # "offset":I
    .end local v12    # "quote":Z
    .restart local v9    # "offset":I
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 2722
    .restart local v12    # "quote":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 2740
    .restart local v5    # "negative":Z
    .restart local v6    # "intVal":J
    :cond_3
    const-wide/16 v10, 0x1

    .line 2741
    .local v10, "power":J
    const/16 v18, 0x2e

    move/from16 v0, v18

    if-ne v2, v0, :cond_4

    const/4 v13, 0x1

    .line 2742
    .local v13, "small":Z
    :goto_4
    if-eqz v13, :cond_6

    .line 2743
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v18, v18, v9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2744
    const/16 v18, 0x30

    move/from16 v0, v18

    if-lt v2, v0, :cond_5

    const/16 v18, 0x39

    move/from16 v0, v18

    if-gt v2, v0, :cond_5

    .line 2745
    const-wide/16 v18, 0xa

    mul-long v18, v18, v6

    add-int/lit8 v20, v2, -0x30

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v6, v18, v20

    .line 2746
    const-wide/16 v10, 0xa

    .line 2748
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    add-int v18, v18, v8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2749
    const/16 v18, 0x30

    move/from16 v0, v18

    if-lt v2, v0, :cond_6

    const/16 v18, 0x39

    move/from16 v0, v18

    if-gt v2, v0, :cond_6

    .line 2750
    const-wide/16 v18, 0xa

    mul-long v18, v18, v6

    add-int/lit8 v20, v2, -0x30

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v6, v18, v20

    .line 2751
    const-wide/16 v18, 0xa

    mul-long v10, v10, v18

    move v8, v9

    .line 2752
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_5

    .line 2741
    .end local v8    # "offset":I
    .end local v13    # "small":Z
    .restart local v9    # "offset":I
    :cond_4
    const/4 v13, 0x0

    goto :goto_4

    .line 2758
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    .restart local v13    # "small":Z
    :cond_5
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2759
    const-wide/16 v16, 0x0

    .line 2846
    .end local v6    # "intVal":J
    .end local v10    # "power":J
    .end local v13    # "small":Z
    :goto_6
    return-wide v16

    .line 2763
    .end local v8    # "offset":I
    .restart local v6    # "intVal":J
    .restart local v9    # "offset":I
    .restart local v10    # "power":J
    .restart local v13    # "small":Z
    :cond_6
    const/16 v18, 0x65

    move/from16 v0, v18

    if-eq v2, v0, :cond_7

    const/16 v18, 0x45

    move/from16 v0, v18

    if-ne v2, v0, :cond_9

    :cond_7
    const/4 v4, 0x1

    .line 2764
    .local v4, "exp":Z
    :goto_7
    if-eqz v4, :cond_a

    .line 2765
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v18, v18, v9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2766
    const/16 v18, 0x2b

    move/from16 v0, v18

    if-eq v2, v0, :cond_8

    const/16 v18, 0x2d

    move/from16 v0, v18

    if-ne v2, v0, :cond_16

    .line 2767
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    add-int v18, v18, v8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2770
    :goto_8
    const/16 v18, 0x30

    move/from16 v0, v18

    if-lt v2, v0, :cond_a

    const/16 v18, 0x39

    move/from16 v0, v18

    if-gt v2, v0, :cond_a

    .line 2771
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v18, v18, v9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v9, v8

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto :goto_8

    .line 2763
    .end local v4    # "exp":Z
    :cond_9
    const/4 v4, 0x0

    goto :goto_7

    .line 2779
    .restart local v4    # "exp":Z
    :cond_a
    if-eqz v12, :cond_d

    .line 2780
    const/16 v18, 0x22

    move/from16 v0, v18

    if-eq v2, v0, :cond_b

    .line 2781
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2782
    const-wide/16 v16, 0x0

    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_6

    .line 2784
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v18, v18, v9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2786
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int/lit8 v14, v18, 0x1

    .line 2787
    .local v14, "start":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v8

    sub-int v18, v18, v14

    add-int/lit8 v3, v18, -0x2

    .line 2793
    .local v3, "count":I
    :goto_9
    if-nez v4, :cond_e

    const/16 v18, 0x14

    move/from16 v0, v18

    if-ge v3, v0, :cond_e

    .line 2794
    long-to-double v0, v6

    move-wide/from16 v18, v0

    long-to-double v0, v10

    move-wide/from16 v20, v0

    div-double v16, v18, v20

    .line 2795
    .local v16, "value":D
    if-eqz v5, :cond_c

    .line 2796
    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    .line 2838
    :cond_c
    :goto_a
    move/from16 v0, p1

    if-ne v2, v0, :cond_15

    .line 2839
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v8

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2840
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2841
    const/16 v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2842
    const/16 v18, 0x10

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_6

    .line 2789
    .end local v3    # "count":I
    .end local v8    # "offset":I
    .end local v14    # "start":I
    .end local v16    # "value":D
    .restart local v9    # "offset":I
    :cond_d
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2790
    .restart local v14    # "start":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v9

    sub-int v18, v18, v14

    add-int/lit8 v3, v18, -0x1

    .restart local v3    # "count":I
    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_9

    .line 2799
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v15

    .line 2800
    .local v15, "text":Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .restart local v16    # "value":D
    goto :goto_a

    .line 2802
    .end local v3    # "count":I
    .end local v4    # "exp":Z
    .end local v6    # "intVal":J
    .end local v10    # "power":J
    .end local v13    # "small":Z
    .end local v14    # "start":I
    .end local v15    # "text":Ljava/lang/String;
    .end local v16    # "value":D
    :cond_f
    const/16 v18, 0x6e

    move/from16 v0, v18

    if-ne v2, v0, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v18

    const/16 v19, 0x75

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v8

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v18

    const/16 v19, 0x6c

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v8

    add-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v18

    const/16 v19, 0x6c

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    .line 2803
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2804
    const-wide/16 v16, 0x0

    .line 2805
    .restart local v16    # "value":D
    add-int/lit8 v8, v8, 0x3

    .line 2806
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    add-int v18, v18, v8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2808
    if-eqz v12, :cond_10

    const/16 v18, 0x22

    move/from16 v0, v18

    if-ne v2, v0, :cond_10

    .line 2809
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v18, v18, v9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v9, v8

    .line 2813
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_10
    :goto_b
    const/16 v18, 0x2c

    move/from16 v0, v18

    if-ne v2, v0, :cond_11

    .line 2814
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v9

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2815
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2816
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2817
    const/16 v18, 0x10

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    move v8, v9

    .line 2818
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_6

    .line 2819
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_11
    const/16 v18, 0x5d

    move/from16 v0, v18

    if-ne v2, v0, :cond_12

    .line 2820
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v9

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2821
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2822
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2823
    const/16 v18, 0xf

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    move v8, v9

    .line 2824
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_6

    .line 2825
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_12
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 2826
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v18, v18, v9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v9, v8

    .line 2827
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto/16 :goto_b

    .line 2831
    :cond_13
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2832
    const-wide/16 v16, 0x0

    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_6

    .line 2834
    .end local v16    # "value":D
    :cond_14
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2835
    const-wide/16 v16, 0x0

    goto/16 :goto_6

    .line 2845
    .restart local v3    # "count":I
    .restart local v4    # "exp":Z
    .restart local v6    # "intVal":J
    .restart local v10    # "power":J
    .restart local v13    # "small":Z
    .restart local v14    # "start":I
    .restart local v16    # "value":D
    :cond_15
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_6

    .end local v3    # "count":I
    .end local v14    # "start":I
    .end local v16    # "value":D
    :cond_16
    move v9, v8

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto/16 :goto_8

    .end local v4    # "exp":Z
    .end local v6    # "intVal":J
    .end local v10    # "power":J
    .end local v13    # "small":Z
    :cond_17
    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_2
.end method

.method public scanEnum(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/Enum;
    .locals 2
    .param p2, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;
    .param p3, "serperator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/parser/SymbolTable;",
            "C)",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1450
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbolWithSeperator(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    .line 1451
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1452
    const/4 v1, 0x0

    .line 1454
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    goto :goto_0
.end method

.method public final scanFalse()V
    .locals 2

    .prologue
    .line 4555
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    .line 4556
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4558
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4560
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x61

    if-eq v0, v1, :cond_1

    .line 4561
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4563
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4565
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_2

    .line 4566
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4568
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4570
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x73

    if-eq v0, v1, :cond_3

    .line 4571
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4573
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4575
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x65

    if-eq v0, v1, :cond_4

    .line 4576
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4578
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4580
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_6

    .line 4582
    :cond_5
    const/4 v0, 0x7

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4586
    return-void

    .line 4584
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan false error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scanFieldBigInteger([C)Ljava/math/BigInteger;
    .locals 18
    .param p1, "fieldName"    # [C

    .prologue
    .line 3671
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3673
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v13

    if-nez v13, :cond_0

    .line 3674
    const/4 v13, -0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3675
    const/4 v12, 0x0

    .line 3799
    :goto_0
    return-object v12

    .line 3678
    :cond_0
    move-object/from16 v0, p1

    array-length v7, v0

    .line 3679
    .local v7, "offset":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .local v8, "offset":I
    add-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3680
    .local v2, "chLocal":C
    const/16 v13, 0x22

    if-ne v2, v13, :cond_2

    const/4 v9, 0x1

    .line 3681
    .local v9, "quote":Z
    :goto_1
    if-eqz v9, :cond_1

    .line 3682
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v13, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v8, v7

    .line 3685
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    :cond_1
    const/16 v13, 0x2d

    if-ne v2, v13, :cond_3

    const/4 v6, 0x1

    .line 3686
    .local v6, "negative":Z
    :goto_2
    if-eqz v6, :cond_16

    .line 3687
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v13, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3691
    :goto_3
    const/16 v13, 0x30

    if-lt v2, v13, :cond_a

    const/16 v13, 0x39

    if-gt v2, v13, :cond_a

    .line 3692
    add-int/lit8 v13, v2, -0x30

    int-to-long v4, v13

    .line 3694
    .local v4, "intVal":J
    :goto_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3695
    const/16 v13, 0x30

    if-lt v2, v13, :cond_4

    const/16 v13, 0x39

    if-gt v2, v13, :cond_4

    .line 3696
    const-wide/16 v14, 0xa

    mul-long/2addr v14, v4

    add-int/lit8 v13, v2, -0x30

    int-to-long v0, v13

    move-wide/from16 v16, v0

    add-long v4, v14, v16

    move v7, v8

    .line 3697
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    goto :goto_4

    .line 3680
    .end local v4    # "intVal":J
    .end local v6    # "negative":Z
    .end local v7    # "offset":I
    .end local v9    # "quote":Z
    .restart local v8    # "offset":I
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 3685
    .restart local v9    # "quote":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 3704
    .restart local v4    # "intVal":J
    .restart local v6    # "negative":Z
    :cond_4
    if-eqz v9, :cond_8

    .line 3705
    const/16 v13, 0x22

    if-eq v2, v13, :cond_5

    .line 3706
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3707
    const/4 v12, 0x0

    goto :goto_0

    .line 3709
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v13, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3711
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move-object/from16 v0, p1

    array-length v14, v0

    add-int/2addr v13, v14

    add-int/lit8 v10, v13, 0x1

    .line 3712
    .local v10, "start":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v7

    sub-int/2addr v13, v10

    add-int/lit8 v3, v13, -0x2

    .local v3, "count":I
    move v8, v7

    .line 3718
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    :goto_5
    const/16 v13, 0x14

    if-lt v3, v13, :cond_6

    if-eqz v6, :cond_9

    const/16 v13, 0x15

    if-ge v3, v13, :cond_9

    .line 3719
    :cond_6
    if-eqz v6, :cond_7

    neg-long v4, v4

    .end local v4    # "intVal":J
    :cond_7
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v12

    .line 3763
    .local v12, "value":Ljava/math/BigInteger;
    :goto_6
    const/16 v13, 0x2c

    if-ne v2, v13, :cond_10

    .line 3764
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v8

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3765
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v13

    move-object/from16 v0, p0

    iput-char v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3766
    const/4 v13, 0x3

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3767
    const/16 v13, 0x10

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_0

    .line 3714
    .end local v3    # "count":I
    .end local v10    # "start":I
    .end local v12    # "value":Ljava/math/BigInteger;
    .restart local v4    # "intVal":J
    :cond_8
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move-object/from16 v0, p1

    array-length v14, v0

    add-int v10, v13, v14

    .line 3715
    .restart local v10    # "start":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v8

    sub-int/2addr v13, v10

    add-int/lit8 v3, v13, -0x1

    .restart local v3    # "count":I
    goto :goto_5

    .line 3724
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v11

    .line 3725
    .local v11, "strVal":Ljava/lang/String;
    new-instance v12, Ljava/math/BigInteger;

    invoke-direct {v12, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .restart local v12    # "value":Ljava/math/BigInteger;
    goto :goto_6

    .line 3727
    .end local v3    # "count":I
    .end local v4    # "intVal":J
    .end local v8    # "offset":I
    .end local v10    # "start":I
    .end local v11    # "strVal":Ljava/lang/String;
    .end local v12    # "value":Ljava/math/BigInteger;
    .restart local v7    # "offset":I
    :cond_a
    const/16 v13, 0x6e

    if-ne v2, v13, :cond_f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v13

    const/16 v14, 0x75

    if-ne v13, v14, :cond_f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v7

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v13

    const/16 v14, 0x6c

    if-ne v13, v14, :cond_f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v7

    add-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v13

    const/16 v14, 0x6c

    if-ne v13, v14, :cond_f

    .line 3728
    const/4 v13, 0x5

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3729
    const/4 v12, 0x0

    .line 3730
    .restart local v12    # "value":Ljava/math/BigInteger;
    add-int/lit8 v7, v7, 0x3

    .line 3731
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3733
    if-eqz v9, :cond_b

    const/16 v13, 0x22

    if-ne v2, v13, :cond_b

    .line 3734
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v13, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v8, v7

    .line 3738
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    :cond_b
    :goto_7
    const/16 v13, 0x2c

    if-ne v2, v13, :cond_c

    .line 3739
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v8

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3740
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v13

    move-object/from16 v0, p0

    iput-char v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3741
    const/4 v13, 0x5

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3742
    const/16 v13, 0x10

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_0

    .line 3744
    :cond_c
    const/16 v13, 0x7d

    if-ne v2, v13, :cond_d

    .line 3745
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v8

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3746
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v13

    move-object/from16 v0, p0

    iput-char v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3747
    const/4 v13, 0x5

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3748
    const/16 v13, 0xd

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_0

    .line 3750
    :cond_d
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 3751
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v13, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v8, v7

    .line 3752
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_7

    .line 3756
    :cond_e
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3757
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 3759
    .end local v8    # "offset":I
    .end local v12    # "value":Ljava/math/BigInteger;
    .restart local v7    # "offset":I
    :cond_f
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3760
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 3771
    .end local v7    # "offset":I
    .restart local v3    # "count":I
    .restart local v8    # "offset":I
    .restart local v10    # "start":I
    .restart local v12    # "value":Ljava/math/BigInteger;
    :cond_10
    const/16 v13, 0x7d

    if-ne v2, v13, :cond_15

    .line 3772
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v13, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3773
    const/16 v13, 0x2c

    if-ne v2, v13, :cond_11

    .line 3774
    const/16 v13, 0x10

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3775
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v7

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3776
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v13

    move-object/from16 v0, p0

    iput-char v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3793
    :goto_8
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0

    .line 3777
    :cond_11
    const/16 v13, 0x5d

    if-ne v2, v13, :cond_12

    .line 3778
    const/16 v13, 0xf

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3779
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v7

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3780
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v13

    move-object/from16 v0, p0

    iput-char v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_8

    .line 3781
    :cond_12
    const/16 v13, 0x7d

    if-ne v2, v13, :cond_13

    .line 3782
    const/16 v13, 0xd

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3783
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v7

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3784
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v13

    move-object/from16 v0, p0

    iput-char v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_8

    .line 3785
    :cond_13
    const/16 v13, 0x1a

    if-ne v2, v13, :cond_14

    .line 3786
    const/16 v13, 0x14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3787
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v7, -0x1

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3788
    const/16 v13, 0x1a

    move-object/from16 v0, p0

    iput-char v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_8

    .line 3790
    :cond_14
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3791
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 3795
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    :cond_15
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3796
    const/4 v12, 0x0

    goto/16 :goto_0

    .end local v3    # "count":I
    .end local v10    # "start":I
    .end local v12    # "value":Ljava/math/BigInteger;
    :cond_16
    move v7, v8

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    goto/16 :goto_3
.end method

.method public scanFieldBoolean([C)Z
    .locals 11
    .param p1, "fieldName"    # [C

    .prologue
    const/16 v10, 0x2c

    const/16 v9, 0x1a

    const/16 v8, 0x10

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 2117
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2119
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2120
    const/4 v5, -0x2

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 2205
    :goto_0
    return v3

    .line 2124
    :cond_0
    array-length v1, p1

    .line 2125
    .local v1, "offset":I
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2128
    .local v0, "chLocal":C
    const/16 v5, 0x74

    if-ne v0, v5, :cond_4

    .line 2129
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v6, 0x72

    if-eq v5, v6, :cond_1

    .line 2130
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 2131
    goto :goto_0

    .line 2133
    :cond_1
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v6, 0x75

    if-eq v5, v6, :cond_2

    .line 2134
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 2135
    goto :goto_0

    .line 2137
    :cond_2
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v6, 0x65

    if-eq v5, v6, :cond_3

    .line 2138
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 2139
    goto :goto_0

    .line 2142
    :cond_3
    const/4 v3, 0x1

    .line 2167
    .local v3, "value":Z
    :goto_1
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2168
    if-ne v0, v10, :cond_a

    .line 2169
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2170
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2171
    const/4 v4, 0x3

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2172
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 2143
    .end local v3    # "value":Z
    :cond_4
    const/16 v5, 0x66

    if-ne v0, v5, :cond_9

    .line 2144
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v6, 0x61

    if-eq v5, v6, :cond_5

    .line 2145
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 2146
    goto :goto_0

    .line 2148
    :cond_5
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v6, 0x6c

    if-eq v5, v6, :cond_6

    .line 2149
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 2150
    goto/16 :goto_0

    .line 2152
    :cond_6
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v6, 0x73

    if-eq v5, v6, :cond_7

    .line 2153
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 2154
    goto/16 :goto_0

    .line 2156
    :cond_7
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    const/16 v6, 0x65

    if-eq v5, v6, :cond_8

    .line 2157
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 2158
    goto/16 :goto_0

    .line 2161
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "value":Z
    move v1, v2

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_1

    .line 2163
    .end local v1    # "offset":I
    .end local v3    # "value":Z
    .restart local v2    # "offset":I
    :cond_9
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 2164
    goto/16 :goto_0

    .line 2177
    .restart local v3    # "value":Z
    :cond_a
    const/16 v5, 0x7d

    if-ne v0, v5, :cond_f

    .line 2178
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2179
    if-ne v0, v10, :cond_b

    .line 2180
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2181
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2182
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2199
    :goto_2
    const/4 v4, 0x4

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0

    .line 2183
    :cond_b
    const/16 v5, 0x5d

    if-ne v0, v5, :cond_c

    .line 2184
    const/16 v4, 0xf

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2185
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2186
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    .line 2187
    :cond_c
    const/16 v5, 0x7d

    if-ne v0, v5, :cond_d

    .line 2188
    const/16 v4, 0xd

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2189
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2190
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    .line 2191
    :cond_d
    if-ne v0, v9, :cond_e

    .line 2192
    const/16 v4, 0x14

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2193
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v1, -0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2194
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    .line 2196
    :cond_e
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 2197
    goto/16 :goto_0

    .line 2201
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    :cond_f
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 2202
    goto/16 :goto_0
.end method

.method public scanFieldDate([C)Ljava/util/Date;
    .locals 26
    .param p1, "fieldName"    # [C

    .prologue
    .line 3803
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3805
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v21

    if-nez v21, :cond_0

    .line 3806
    const/16 v21, -0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3807
    const/4 v9, 0x0

    .line 3933
    :goto_0
    return-object v9

    .line 3812
    :cond_0
    move-object/from16 v0, p1

    array-length v15, v0

    .line 3813
    .local v15, "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .local v16, "offset":I
    add-int v21, v21, v15

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 3816
    .local v5, "chLocal":C
    const/16 v21, 0x22

    move/from16 v0, v21

    if-ne v5, v0, :cond_6

    .line 3817
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    add-int/lit8 v18, v21, 0x1

    .line 3818
    .local v18, "startIndex":I
    const/16 v21, 0x22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v10

    .line 3819
    .local v10, "endIndex":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v10, v0, :cond_1

    .line 3820
    new-instance v21, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v22, "unclosed str"

    invoke-direct/range {v21 .. v22}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 3823
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    add-int/lit8 v19, v21, 0x1

    .line 3824
    .local v19, "startIndex2":I
    sub-int v21, v10, v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v20

    .line 3825
    .local v20, "stringVal":Ljava/lang/String;
    const/16 v21, 0x5c

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 3827
    :goto_1
    const/16 v17, 0x0

    .line 3828
    .local v17, "slashCount":I
    add-int/lit8 v11, v10, -0x1

    .local v11, "i":I
    :goto_2
    if-ltz v11, :cond_2

    .line 3829
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v21

    const/16 v22, 0x5c

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 3830
    add-int/lit8 v17, v17, 0x1

    .line 3828
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .line 3835
    :cond_2
    rem-int/lit8 v21, v17, 0x2

    if-nez v21, :cond_4

    .line 3841
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    add-int/lit8 v21, v21, 0x1

    sub-int v7, v10, v21

    .line 3842
    .local v7, "chars_len":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v6

    .line 3844
    .local v6, "chars":[C
    invoke-static {v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v20

    .line 3847
    .end local v6    # "chars":[C
    .end local v7    # "chars_len":I
    .end local v11    # "i":I
    .end local v17    # "slashCount":I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    add-int/lit8 v21, v21, 0x1

    sub-int v21, v10, v21

    add-int/lit8 v21, v21, 0x1

    add-int v15, v16, v21

    .line 3848
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v21, v21, v15

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 3850
    new-instance v8, Lcom/alibaba/fastjson/parser/JSONScanner;

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 3852
    .local v8, "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    const/16 v21, 0x0

    :try_start_0
    move/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 3853
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v4

    .line 3854
    .local v4, "calendar":Ljava/util/Calendar;
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 3860
    .local v9, "dateVal":Ljava/util/Date;
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 3898
    .end local v4    # "calendar":Ljava/util/Calendar;
    .end local v8    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v10    # "endIndex":I
    .end local v18    # "startIndex":I
    .end local v19    # "startIndex2":I
    .end local v20    # "stringVal":Ljava/lang/String;
    :goto_3
    const/16 v21, 0x2c

    move/from16 v0, v21

    if-ne v5, v0, :cond_d

    .line 3899
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int v21, v21, v16

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3900
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3901
    const/16 v21, 0x3

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0

    .line 3838
    .end local v9    # "dateVal":Ljava/util/Date;
    .restart local v10    # "endIndex":I
    .restart local v11    # "i":I
    .restart local v17    # "slashCount":I
    .restart local v18    # "startIndex":I
    .restart local v19    # "startIndex2":I
    .restart local v20    # "stringVal":Ljava/lang/String;
    :cond_4
    const/16 v21, 0x22

    add-int/lit8 v22, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v10

    .line 3839
    goto/16 :goto_1

    .line 3856
    .end local v11    # "i":I
    .end local v17    # "slashCount":I
    .restart local v8    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :cond_5
    const/16 v21, -0x1

    :try_start_1
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3857
    const/4 v9, 0x0

    .line 3860
    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v21

    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v21

    .line 3862
    .end local v8    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v10    # "endIndex":I
    .end local v18    # "startIndex":I
    .end local v19    # "startIndex2":I
    .end local v20    # "stringVal":Ljava/lang/String;
    :cond_6
    const/16 v21, 0x2d

    move/from16 v0, v21

    if-eq v5, v0, :cond_7

    const/16 v21, 0x30

    move/from16 v0, v21

    if-lt v5, v0, :cond_c

    const/16 v21, 0x39

    move/from16 v0, v21

    if-gt v5, v0, :cond_c

    .line 3863
    :cond_7
    const-wide/16 v12, 0x0

    .line 3865
    .local v12, "millis":J
    const/4 v14, 0x0

    .line 3866
    .local v14, "negative":Z
    const/16 v21, 0x2d

    move/from16 v0, v21

    if-ne v5, v0, :cond_13

    .line 3867
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int v21, v21, v16

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 3868
    const/4 v14, 0x1

    .line 3871
    :goto_4
    const/16 v21, 0x30

    move/from16 v0, v21

    if-lt v5, v0, :cond_9

    const/16 v21, 0x39

    move/from16 v0, v21

    if-gt v5, v0, :cond_9

    .line 3872
    add-int/lit8 v21, v5, -0x30

    move/from16 v0, v21

    int-to-long v12, v0

    .line 3874
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v21, v21, v15

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 3875
    const/16 v21, 0x30

    move/from16 v0, v21

    if-lt v5, v0, :cond_8

    const/16 v21, 0x39

    move/from16 v0, v21

    if-gt v5, v0, :cond_8

    .line 3876
    const-wide/16 v22, 0xa

    mul-long v22, v22, v12

    add-int/lit8 v21, v5, -0x30

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v12, v22, v24

    move/from16 v15, v16

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto :goto_5

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_8
    move/from16 v15, v16

    .line 3883
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    :cond_9
    const-wide/16 v22, 0x0

    cmp-long v21, v12, v22

    if-gez v21, :cond_a

    .line 3884
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3885
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 3888
    :cond_a
    if-eqz v14, :cond_b

    .line 3889
    neg-long v12, v12

    .line 3892
    :cond_b
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v12, v13}, Ljava/util/Date;-><init>(J)V

    .restart local v9    # "dateVal":Ljava/util/Date;
    move/from16 v16, v15

    .line 3893
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    goto/16 :goto_3

    .line 3894
    .end local v9    # "dateVal":Ljava/util/Date;
    .end local v12    # "millis":J
    .end local v14    # "negative":Z
    :cond_c
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3895
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 3905
    .restart local v9    # "dateVal":Ljava/util/Date;
    :cond_d
    const/16 v21, 0x7d

    move/from16 v0, v21

    if-ne v5, v0, :cond_12

    .line 3906
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int v21, v21, v16

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    .line 3907
    const/16 v21, 0x2c

    move/from16 v0, v21

    if-ne v5, v0, :cond_e

    .line 3908
    const/16 v21, 0x10

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3909
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int v21, v21, v15

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3910
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3927
    :goto_6
    const/16 v21, 0x4

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0

    .line 3911
    :cond_e
    const/16 v21, 0x5d

    move/from16 v0, v21

    if-ne v5, v0, :cond_f

    .line 3912
    const/16 v21, 0xf

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3913
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int v21, v21, v15

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3914
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    .line 3915
    :cond_f
    const/16 v21, 0x7d

    move/from16 v0, v21

    if-ne v5, v0, :cond_10

    .line 3916
    const/16 v21, 0xd

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3917
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int v21, v21, v15

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3918
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    .line 3919
    :cond_10
    const/16 v21, 0x1a

    move/from16 v0, v21

    if-ne v5, v0, :cond_11

    .line 3920
    const/16 v21, 0x14

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3921
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v22, v15, -0x1

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3922
    const/16 v21, 0x1a

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto/16 :goto_6

    .line 3924
    :cond_11
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3925
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 3929
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_12
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3930
    const/4 v9, 0x0

    goto/16 :goto_0

    .end local v9    # "dateVal":Ljava/util/Date;
    .restart local v12    # "millis":J
    .restart local v14    # "negative":Z
    :cond_13
    move/from16 v15, v16

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto/16 :goto_4
.end method

.method public scanFieldDecimal([C)Ljava/math/BigDecimal;
    .locals 13
    .param p1, "fieldName"    # [C

    .prologue
    .line 3515
    const/4 v11, 0x0

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3517
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v11

    if-nez v11, :cond_0

    .line 3518
    const/4 v11, -0x2

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3519
    const/4 v10, 0x0

    .line 3667
    :goto_0
    return-object v10

    .line 3522
    :cond_0
    array-length v5, p1

    .line 3523
    .local v5, "offset":I
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    add-int/2addr v11, v5

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 3524
    .local v0, "chLocal":C
    const/16 v11, 0x22

    if-ne v0, v11, :cond_2

    const/4 v7, 0x1

    .line 3525
    .local v7, "quote":Z
    :goto_1
    if-eqz v7, :cond_1

    .line 3526
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v11, v6

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v6, v5

    .line 3529
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_1
    const/16 v11, 0x2d

    if-ne v0, v11, :cond_3

    const/4 v4, 0x1

    .line 3530
    .local v4, "negative":Z
    :goto_2
    if-eqz v4, :cond_1b

    .line 3531
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v11, v6

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 3535
    :goto_3
    const/16 v11, 0x30

    if-lt v0, v11, :cond_e

    const/16 v11, 0x39

    if-gt v0, v11, :cond_e

    .line 3537
    :goto_4
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v11, v5

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 3538
    const/16 v11, 0x30

    if-lt v0, v11, :cond_4

    const/16 v11, 0x39

    if-gt v0, v11, :cond_4

    move v5, v6

    .line 3539
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_4

    .line 3524
    .end local v4    # "negative":Z
    .end local v5    # "offset":I
    .end local v7    # "quote":Z
    .restart local v6    # "offset":I
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 3529
    .restart local v7    # "quote":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 3545
    .restart local v4    # "negative":Z
    :cond_4
    const/16 v11, 0x2e

    if-ne v0, v11, :cond_5

    const/4 v8, 0x1

    .line 3546
    .local v8, "small":Z
    :goto_5
    if-eqz v8, :cond_7

    .line 3547
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v11, v6

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 3548
    const/16 v11, 0x30

    if-lt v0, v11, :cond_6

    const/16 v11, 0x39

    if-gt v0, v11, :cond_6

    .line 3550
    :goto_6
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v11, v5

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 3551
    const/16 v11, 0x30

    if-lt v0, v11, :cond_7

    const/16 v11, 0x39

    if-gt v0, v11, :cond_7

    move v5, v6

    .line 3552
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_6

    .line 3545
    .end local v5    # "offset":I
    .end local v8    # "small":Z
    .restart local v6    # "offset":I
    :cond_5
    const/4 v8, 0x0

    goto :goto_5

    .line 3558
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    .restart local v8    # "small":Z
    :cond_6
    const/4 v11, -0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3559
    const/4 v10, 0x0

    goto :goto_0

    .line 3563
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_7
    const/16 v11, 0x65

    if-eq v0, v11, :cond_8

    const/16 v11, 0x45

    if-ne v0, v11, :cond_a

    :cond_8
    const/4 v3, 0x1

    .line 3564
    .local v3, "exp":Z
    :goto_7
    if-eqz v3, :cond_b

    .line 3565
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v11, v6

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 3566
    const/16 v11, 0x2b

    if-eq v0, v11, :cond_9

    const/16 v11, 0x2d

    if-ne v0, v11, :cond_1a

    .line 3567
    :cond_9
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v11, v5

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 3570
    :goto_8
    const/16 v11, 0x30

    if-lt v0, v11, :cond_b

    const/16 v11, 0x39

    if-gt v0, v11, :cond_b

    .line 3571
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v11, v6

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_8

    .line 3563
    .end local v3    # "exp":Z
    :cond_a
    const/4 v3, 0x0

    goto :goto_7

    .line 3579
    .restart local v3    # "exp":Z
    :cond_b
    if-eqz v7, :cond_d

    .line 3580
    const/16 v11, 0x22

    if-eq v0, v11, :cond_c

    .line 3581
    const/4 v11, -0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3582
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 3584
    :cond_c
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v11, v6

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 3586
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v12, p1

    add-int/2addr v11, v12

    add-int/lit8 v9, v11, 0x1

    .line 3587
    .local v9, "start":I
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v5

    sub-int/2addr v11, v9

    add-int/lit8 v2, v11, -0x2

    .line 3593
    .local v2, "count":I
    :goto_9
    invoke-virtual {p0, v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v1

    .line 3594
    .local v1, "chars":[C
    new-instance v10, Ljava/math/BigDecimal;

    invoke-direct {v10, v1}, Ljava/math/BigDecimal;-><init>([C)V

    .line 3631
    .local v10, "value":Ljava/math/BigDecimal;
    const/16 v11, 0x2c

    if-ne v0, v11, :cond_14

    .line 3632
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v5

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3633
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    iput-char v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3634
    const/4 v11, 0x3

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3635
    const/16 v11, 0x10

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_0

    .line 3589
    .end local v1    # "chars":[C
    .end local v2    # "count":I
    .end local v5    # "offset":I
    .end local v9    # "start":I
    .end local v10    # "value":Ljava/math/BigDecimal;
    .restart local v6    # "offset":I
    :cond_d
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v12, p1

    add-int v9, v11, v12

    .line 3590
    .restart local v9    # "start":I
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v6

    sub-int/2addr v11, v9

    add-int/lit8 v2, v11, -0x1

    .restart local v2    # "count":I
    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_9

    .line 3595
    .end local v2    # "count":I
    .end local v3    # "exp":Z
    .end local v8    # "small":Z
    .end local v9    # "start":I
    :cond_e
    const/16 v11, 0x6e

    if-ne v0, v11, :cond_13

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v5

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    const/16 v12, 0x75

    if-ne v11, v12, :cond_13

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v5

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    const/16 v12, 0x6c

    if-ne v11, v12, :cond_13

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v5

    add-int/lit8 v11, v11, 0x2

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    const/16 v12, 0x6c

    if-ne v11, v12, :cond_13

    .line 3596
    const/4 v11, 0x5

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3597
    const/4 v10, 0x0

    .line 3598
    .restart local v10    # "value":Ljava/math/BigDecimal;
    add-int/lit8 v5, v5, 0x3

    .line 3599
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v11, v5

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 3601
    if-eqz v7, :cond_f

    const/16 v11, 0x22

    if-ne v0, v11, :cond_f

    .line 3602
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v11, v6

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v6, v5

    .line 3606
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_f
    :goto_a
    const/16 v11, 0x2c

    if-ne v0, v11, :cond_10

    .line 3607
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v6

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3608
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    iput-char v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3609
    const/4 v11, 0x5

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3610
    const/16 v11, 0x10

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_0

    .line 3612
    :cond_10
    const/16 v11, 0x7d

    if-ne v0, v11, :cond_11

    .line 3613
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v6

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3614
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    iput-char v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3615
    const/4 v11, 0x5

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3616
    const/16 v11, 0xd

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_0

    .line 3618
    :cond_11
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 3619
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v11, v6

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v6, v5

    .line 3620
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_a

    .line 3624
    :cond_12
    const/4 v11, -0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3625
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 3627
    .end local v6    # "offset":I
    .end local v10    # "value":Ljava/math/BigDecimal;
    .restart local v5    # "offset":I
    :cond_13
    const/4 v11, -0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3628
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 3639
    .restart local v1    # "chars":[C
    .restart local v2    # "count":I
    .restart local v3    # "exp":Z
    .restart local v8    # "small":Z
    .restart local v9    # "start":I
    .restart local v10    # "value":Ljava/math/BigDecimal;
    :cond_14
    const/16 v11, 0x7d

    if-ne v0, v11, :cond_19

    .line 3640
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v11, v5

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 3641
    const/16 v11, 0x2c

    if-ne v0, v11, :cond_15

    .line 3642
    const/16 v11, 0x10

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3643
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v6

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3644
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    iput-char v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3661
    :goto_b
    const/4 v11, 0x4

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0

    .line 3645
    :cond_15
    const/16 v11, 0x5d

    if-ne v0, v11, :cond_16

    .line 3646
    const/16 v11, 0xf

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3647
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v6

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3648
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    iput-char v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_b

    .line 3649
    :cond_16
    const/16 v11, 0x7d

    if-ne v0, v11, :cond_17

    .line 3650
    const/16 v11, 0xd

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3651
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v6

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3652
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    iput-char v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_b

    .line 3653
    :cond_17
    const/16 v11, 0x1a

    if-ne v0, v11, :cond_18

    .line 3654
    const/16 v11, 0x14

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3655
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v12, v6, -0x1

    add-int/2addr v11, v12

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3656
    const/16 v11, 0x1a

    iput-char v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_b

    .line 3658
    :cond_18
    const/4 v11, -0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3659
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 3663
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    :cond_19
    const/4 v11, -0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3664
    const/4 v10, 0x0

    goto/16 :goto_0

    .end local v1    # "chars":[C
    .end local v2    # "count":I
    .end local v9    # "start":I
    .end local v10    # "value":Ljava/math/BigDecimal;
    :cond_1a
    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_8

    .end local v3    # "exp":Z
    .end local v8    # "small":Z
    :cond_1b
    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_3
.end method

.method public final scanFieldDouble([C)D
    .locals 22
    .param p1, "fieldName"    # [C

    .prologue
    .line 3344
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3346
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v18

    if-nez v18, :cond_0

    .line 3347
    const/16 v18, -0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3348
    const-wide/16 v16, 0x0

    .line 3511
    :goto_0
    return-wide v16

    .line 3351
    :cond_0
    move-object/from16 v0, p1

    array-length v8, v0

    .line 3352
    .local v8, "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .local v9, "offset":I
    add-int v18, v18, v8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3353
    .local v2, "chLocal":C
    const/16 v18, 0x22

    move/from16 v0, v18

    if-ne v2, v0, :cond_2

    const/4 v12, 0x1

    .line 3354
    .local v12, "quote":Z
    :goto_1
    if-eqz v12, :cond_1

    .line 3355
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v18, v18, v9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v9, v8

    .line 3358
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_1
    const/16 v18, 0x2d

    move/from16 v0, v18

    if-ne v2, v0, :cond_3

    const/4 v5, 0x1

    .line 3359
    .local v5, "negative":Z
    :goto_2
    if-eqz v5, :cond_1d

    .line 3360
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v18, v18, v9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3364
    :goto_3
    const/16 v18, 0x30

    move/from16 v0, v18

    if-lt v2, v0, :cond_10

    const/16 v18, 0x39

    move/from16 v0, v18

    if-gt v2, v0, :cond_10

    .line 3365
    add-int/lit8 v18, v2, -0x30

    move/from16 v0, v18

    int-to-long v6, v0

    .line 3368
    .local v6, "intVal":J
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    add-int v18, v18, v8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3369
    const/16 v18, 0x30

    move/from16 v0, v18

    if-lt v2, v0, :cond_4

    const/16 v18, 0x39

    move/from16 v0, v18

    if-gt v2, v0, :cond_4

    .line 3370
    const-wide/16 v18, 0xa

    mul-long v18, v18, v6

    add-int/lit8 v20, v2, -0x30

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v6, v18, v20

    move v8, v9

    .line 3371
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_4

    .line 3353
    .end local v5    # "negative":Z
    .end local v6    # "intVal":J
    .end local v8    # "offset":I
    .end local v12    # "quote":Z
    .restart local v9    # "offset":I
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 3358
    .restart local v12    # "quote":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 3377
    .restart local v5    # "negative":Z
    .restart local v6    # "intVal":J
    :cond_4
    const-wide/16 v10, 0x1

    .line 3378
    .local v10, "power":J
    const/16 v18, 0x2e

    move/from16 v0, v18

    if-ne v2, v0, :cond_5

    const/4 v13, 0x1

    .line 3379
    .local v13, "small":Z
    :goto_5
    if-eqz v13, :cond_7

    .line 3380
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v18, v18, v9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3381
    const/16 v18, 0x30

    move/from16 v0, v18

    if-lt v2, v0, :cond_6

    const/16 v18, 0x39

    move/from16 v0, v18

    if-gt v2, v0, :cond_6

    .line 3382
    const-wide/16 v18, 0xa

    mul-long v18, v18, v6

    add-int/lit8 v20, v2, -0x30

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v6, v18, v20

    .line 3383
    const-wide/16 v10, 0xa

    .line 3385
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    add-int v18, v18, v8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3386
    const/16 v18, 0x30

    move/from16 v0, v18

    if-lt v2, v0, :cond_7

    const/16 v18, 0x39

    move/from16 v0, v18

    if-gt v2, v0, :cond_7

    .line 3387
    const-wide/16 v18, 0xa

    mul-long v18, v18, v6

    add-int/lit8 v20, v2, -0x30

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v6, v18, v20

    .line 3388
    const-wide/16 v18, 0xa

    mul-long v10, v10, v18

    move v8, v9

    .line 3389
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_6

    .line 3378
    .end local v8    # "offset":I
    .end local v13    # "small":Z
    .restart local v9    # "offset":I
    :cond_5
    const/4 v13, 0x0

    goto :goto_5

    .line 3395
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    .restart local v13    # "small":Z
    :cond_6
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3396
    const-wide/16 v16, 0x0

    goto/16 :goto_0

    .line 3400
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_7
    const/16 v18, 0x65

    move/from16 v0, v18

    if-eq v2, v0, :cond_8

    const/16 v18, 0x45

    move/from16 v0, v18

    if-ne v2, v0, :cond_a

    :cond_8
    const/4 v4, 0x1

    .line 3401
    .local v4, "exp":Z
    :goto_7
    if-eqz v4, :cond_b

    .line 3402
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v18, v18, v9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3403
    const/16 v18, 0x2b

    move/from16 v0, v18

    if-eq v2, v0, :cond_9

    const/16 v18, 0x2d

    move/from16 v0, v18

    if-ne v2, v0, :cond_1c

    .line 3404
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    add-int v18, v18, v8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3407
    :goto_8
    const/16 v18, 0x30

    move/from16 v0, v18

    if-lt v2, v0, :cond_b

    const/16 v18, 0x39

    move/from16 v0, v18

    if-gt v2, v0, :cond_b

    .line 3408
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v18, v18, v9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v9, v8

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto :goto_8

    .line 3400
    .end local v4    # "exp":Z
    :cond_a
    const/4 v4, 0x0

    goto :goto_7

    .line 3416
    .restart local v4    # "exp":Z
    :cond_b
    if-eqz v12, :cond_e

    .line 3417
    const/16 v18, 0x22

    move/from16 v0, v18

    if-eq v2, v0, :cond_c

    .line 3418
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3419
    const-wide/16 v16, 0x0

    goto/16 :goto_0

    .line 3421
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v18, v18, v9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3423
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    add-int/lit8 v14, v18, 0x1

    .line 3424
    .local v14, "start":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v8

    sub-int v18, v18, v14

    add-int/lit8 v3, v18, -0x2

    .local v3, "count":I
    move v9, v8

    .line 3430
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :goto_9
    if-nez v4, :cond_f

    const/16 v18, 0x14

    move/from16 v0, v18

    if-ge v3, v0, :cond_f

    .line 3431
    long-to-double v0, v6

    move-wide/from16 v18, v0

    long-to-double v0, v10

    move-wide/from16 v20, v0

    div-double v16, v18, v20

    .line 3432
    .local v16, "value":D
    if-eqz v5, :cond_d

    .line 3433
    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    .line 3475
    :cond_d
    :goto_a
    const/16 v18, 0x2c

    move/from16 v0, v18

    if-ne v2, v0, :cond_16

    .line 3476
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v9

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3477
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3478
    const/16 v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3479
    const/16 v18, 0x10

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_0

    .line 3426
    .end local v3    # "count":I
    .end local v14    # "start":I
    .end local v16    # "value":D
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    add-int v14, v18, v19

    .line 3427
    .restart local v14    # "start":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v9

    sub-int v18, v18, v14

    add-int/lit8 v3, v18, -0x1

    .restart local v3    # "count":I
    goto :goto_9

    .line 3436
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v15

    .line 3437
    .local v15, "text":Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .restart local v16    # "value":D
    goto :goto_a

    .line 3439
    .end local v3    # "count":I
    .end local v4    # "exp":Z
    .end local v6    # "intVal":J
    .end local v9    # "offset":I
    .end local v10    # "power":J
    .end local v13    # "small":Z
    .end local v14    # "start":I
    .end local v15    # "text":Ljava/lang/String;
    .end local v16    # "value":D
    .restart local v8    # "offset":I
    :cond_10
    const/16 v18, 0x6e

    move/from16 v0, v18

    if-ne v2, v0, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v18

    const/16 v19, 0x75

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v8

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v18

    const/16 v19, 0x6c

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v8

    add-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v18

    const/16 v19, 0x6c

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    .line 3440
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3441
    const-wide/16 v16, 0x0

    .line 3442
    .restart local v16    # "value":D
    add-int/lit8 v8, v8, 0x3

    .line 3443
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    add-int v18, v18, v8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3445
    if-eqz v12, :cond_11

    const/16 v18, 0x22

    move/from16 v0, v18

    if-ne v2, v0, :cond_11

    .line 3446
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v18, v18, v9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v9, v8

    .line 3450
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_11
    :goto_b
    const/16 v18, 0x2c

    move/from16 v0, v18

    if-ne v2, v0, :cond_12

    .line 3451
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v9

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3452
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3453
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3454
    const/16 v18, 0x10

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_0

    .line 3456
    :cond_12
    const/16 v18, 0x7d

    move/from16 v0, v18

    if-ne v2, v0, :cond_13

    .line 3457
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v9

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3458
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3459
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3460
    const/16 v18, 0xd

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_0

    .line 3462
    :cond_13
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 3463
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v18, v18, v9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v9, v8

    .line 3464
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto/16 :goto_b

    .line 3468
    :cond_14
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3469
    const-wide/16 v16, 0x0

    goto/16 :goto_0

    .line 3471
    .end local v9    # "offset":I
    .end local v16    # "value":D
    .restart local v8    # "offset":I
    :cond_15
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3472
    const-wide/16 v16, 0x0

    goto/16 :goto_0

    .line 3483
    .end local v8    # "offset":I
    .restart local v3    # "count":I
    .restart local v4    # "exp":Z
    .restart local v6    # "intVal":J
    .restart local v9    # "offset":I
    .restart local v10    # "power":J
    .restart local v13    # "small":Z
    .restart local v14    # "start":I
    .restart local v16    # "value":D
    :cond_16
    const/16 v18, 0x7d

    move/from16 v0, v18

    if-ne v2, v0, :cond_1b

    .line 3484
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v18, v18, v9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 3485
    const/16 v18, 0x2c

    move/from16 v0, v18

    if-ne v2, v0, :cond_17

    .line 3486
    const/16 v18, 0x10

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3487
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v8

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3488
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 3505
    :goto_c
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0

    .line 3489
    :cond_17
    const/16 v18, 0x5d

    move/from16 v0, v18

    if-ne v2, v0, :cond_18

    .line 3490
    const/16 v18, 0xf

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3491
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v8

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3492
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_c

    .line 3493
    :cond_18
    const/16 v18, 0x7d

    move/from16 v0, v18

    if-ne v2, v0, :cond_19

    .line 3494
    const/16 v18, 0xd

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3495
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v8

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3496
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_c

    .line 3497
    :cond_19
    const/16 v18, 0x1a

    move/from16 v0, v18

    if-ne v2, v0, :cond_1a

    .line 3498
    const/16 v18, 0x14

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3499
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v18, v0

    add-int/lit8 v19, v8, -0x1

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3500
    const/16 v18, 0x1a

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto/16 :goto_c

    .line 3502
    :cond_1a
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3503
    const-wide/16 v16, 0x0

    goto/16 :goto_0

    .line 3507
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_1b
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3508
    const-wide/16 v16, 0x0

    goto/16 :goto_0

    .end local v3    # "count":I
    .end local v9    # "offset":I
    .end local v14    # "start":I
    .end local v16    # "value":D
    .restart local v8    # "offset":I
    :cond_1c
    move v9, v8

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto/16 :goto_8

    .end local v4    # "exp":Z
    .end local v6    # "intVal":J
    .end local v10    # "power":J
    .end local v13    # "small":Z
    :cond_1d
    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_3
.end method

.method public final scanFieldFloat([C)F
    .locals 16
    .param p1, "fieldName"    # [C

    .prologue
    .line 2389
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2391
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v14

    if-nez v14, :cond_0

    .line 2392
    const/4 v14, -0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2393
    const/4 v13, 0x0

    .line 2556
    :goto_0
    return v13

    .line 2396
    :cond_0
    move-object/from16 v0, p1

    array-length v6, v0

    .line 2397
    .local v6, "offset":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .local v7, "offset":I
    add-int/2addr v14, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2399
    .local v1, "chLocal":C
    const/16 v14, 0x22

    if-ne v1, v14, :cond_2

    const/4 v9, 0x1

    .line 2400
    .local v9, "quote":Z
    :goto_1
    if-eqz v9, :cond_1

    .line 2401
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v14, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v7, v6

    .line 2404
    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    :cond_1
    const/16 v14, 0x2d

    if-ne v1, v14, :cond_3

    const/4 v5, 0x1

    .line 2405
    .local v5, "negative":Z
    :goto_2
    if-eqz v5, :cond_1d

    .line 2406
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v14, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2410
    :goto_3
    const/16 v14, 0x30

    if-lt v1, v14, :cond_10

    const/16 v14, 0x39

    if-gt v1, v14, :cond_10

    .line 2411
    add-int/lit8 v4, v1, -0x30

    .line 2413
    .local v4, "intVal":I
    :goto_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v14, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2414
    const/16 v14, 0x30

    if-lt v1, v14, :cond_4

    const/16 v14, 0x39

    if-gt v1, v14, :cond_4

    .line 2415
    mul-int/lit8 v14, v4, 0xa

    add-int/lit8 v15, v1, -0x30

    add-int v4, v14, v15

    move v6, v7

    .line 2416
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_4

    .line 2399
    .end local v4    # "intVal":I
    .end local v5    # "negative":Z
    .end local v6    # "offset":I
    .end local v9    # "quote":Z
    .restart local v7    # "offset":I
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 2404
    .restart local v9    # "quote":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 2422
    .restart local v4    # "intVal":I
    .restart local v5    # "negative":Z
    :cond_4
    const/4 v8, 0x1

    .line 2423
    .local v8, "power":I
    const/16 v14, 0x2e

    if-ne v1, v14, :cond_5

    const/4 v10, 0x1

    .line 2424
    .local v10, "small":Z
    :goto_5
    if-eqz v10, :cond_7

    .line 2425
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v14, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2426
    const/16 v14, 0x30

    if-lt v1, v14, :cond_6

    const/16 v14, 0x39

    if-gt v1, v14, :cond_6

    .line 2427
    mul-int/lit8 v14, v4, 0xa

    add-int/lit8 v15, v1, -0x30

    add-int v4, v14, v15

    .line 2428
    const/16 v8, 0xa

    .line 2430
    :goto_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v14, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2431
    const/16 v14, 0x30

    if-lt v1, v14, :cond_7

    const/16 v14, 0x39

    if-gt v1, v14, :cond_7

    .line 2432
    mul-int/lit8 v14, v4, 0xa

    add-int/lit8 v15, v1, -0x30

    add-int v4, v14, v15

    .line 2433
    mul-int/lit8 v8, v8, 0xa

    move v6, v7

    .line 2434
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_6

    .line 2423
    .end local v6    # "offset":I
    .end local v10    # "small":Z
    .restart local v7    # "offset":I
    :cond_5
    const/4 v10, 0x0

    goto :goto_5

    .line 2440
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    .restart local v10    # "small":Z
    :cond_6
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2441
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 2445
    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    :cond_7
    const/16 v14, 0x65

    if-eq v1, v14, :cond_8

    const/16 v14, 0x45

    if-ne v1, v14, :cond_a

    :cond_8
    const/4 v3, 0x1

    .line 2446
    .local v3, "exp":Z
    :goto_7
    if-eqz v3, :cond_b

    .line 2447
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v14, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2448
    const/16 v14, 0x2b

    if-eq v1, v14, :cond_9

    const/16 v14, 0x2d

    if-ne v1, v14, :cond_1c

    .line 2449
    :cond_9
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v14, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2452
    :goto_8
    const/16 v14, 0x30

    if-lt v1, v14, :cond_b

    const/16 v14, 0x39

    if-gt v1, v14, :cond_b

    .line 2453
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v14, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v7, v6

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    goto :goto_8

    .line 2445
    .end local v3    # "exp":Z
    :cond_a
    const/4 v3, 0x0

    goto :goto_7

    .line 2461
    .restart local v3    # "exp":Z
    :cond_b
    if-eqz v9, :cond_e

    .line 2462
    const/16 v14, 0x22

    if-eq v1, v14, :cond_c

    .line 2463
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2464
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 2466
    :cond_c
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v14, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2468
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move-object/from16 v0, p1

    array-length v15, v0

    add-int/2addr v14, v15

    add-int/lit8 v11, v14, 0x1

    .line 2469
    .local v11, "start":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v6

    sub-int/2addr v14, v11

    add-int/lit8 v2, v14, -0x2

    .local v2, "count":I
    move v7, v6

    .line 2475
    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    :goto_9
    if-nez v3, :cond_f

    const/16 v14, 0x14

    if-ge v2, v14, :cond_f

    .line 2476
    int-to-float v14, v4

    int-to-float v15, v8

    div-float v13, v14, v15

    .line 2477
    .local v13, "value":F
    if-eqz v5, :cond_d

    .line 2478
    neg-float v13, v13

    .line 2520
    :cond_d
    :goto_a
    const/16 v14, 0x2c

    if-ne v1, v14, :cond_16

    .line 2521
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v7

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2522
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2523
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2524
    const/16 v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_0

    .line 2471
    .end local v2    # "count":I
    .end local v11    # "start":I
    .end local v13    # "value":F
    :cond_e
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move-object/from16 v0, p1

    array-length v15, v0

    add-int v11, v14, v15

    .line 2472
    .restart local v11    # "start":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v7

    sub-int/2addr v14, v11

    add-int/lit8 v2, v14, -0x1

    .restart local v2    # "count":I
    goto :goto_9

    .line 2481
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v12

    .line 2482
    .local v12, "text":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    .restart local v13    # "value":F
    goto :goto_a

    .line 2484
    .end local v2    # "count":I
    .end local v3    # "exp":Z
    .end local v4    # "intVal":I
    .end local v7    # "offset":I
    .end local v8    # "power":I
    .end local v10    # "small":Z
    .end local v11    # "start":I
    .end local v12    # "text":Ljava/lang/String;
    .end local v13    # "value":F
    .restart local v6    # "offset":I
    :cond_10
    const/16 v14, 0x6e

    if-ne v1, v14, :cond_15

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    const/16 v15, 0x75

    if-ne v14, v15, :cond_15

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v6

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    const/16 v15, 0x6c

    if-ne v14, v15, :cond_15

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v6

    add-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    const/16 v15, 0x6c

    if-ne v14, v15, :cond_15

    .line 2485
    const/4 v14, 0x5

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2486
    const/4 v13, 0x0

    .line 2487
    .restart local v13    # "value":F
    add-int/lit8 v6, v6, 0x3

    .line 2488
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v14, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2490
    if-eqz v9, :cond_11

    const/16 v14, 0x22

    if-ne v1, v14, :cond_11

    .line 2491
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v14, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v7, v6

    .line 2495
    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    :cond_11
    :goto_b
    const/16 v14, 0x2c

    if-ne v1, v14, :cond_12

    .line 2496
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v7

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2497
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2498
    const/4 v14, 0x5

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2499
    const/16 v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_0

    .line 2501
    :cond_12
    const/16 v14, 0x7d

    if-ne v1, v14, :cond_13

    .line 2502
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v7

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2503
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2504
    const/4 v14, 0x5

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2505
    const/16 v14, 0xd

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_0

    .line 2507
    :cond_13
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 2508
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v14, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v7, v6

    .line 2509
    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    goto :goto_b

    .line 2513
    :cond_14
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2514
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 2516
    .end local v7    # "offset":I
    .end local v13    # "value":F
    .restart local v6    # "offset":I
    :cond_15
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2517
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 2528
    .end local v6    # "offset":I
    .restart local v2    # "count":I
    .restart local v3    # "exp":Z
    .restart local v4    # "intVal":I
    .restart local v7    # "offset":I
    .restart local v8    # "power":I
    .restart local v10    # "small":Z
    .restart local v11    # "start":I
    .restart local v13    # "value":F
    :cond_16
    const/16 v14, 0x7d

    if-ne v1, v14, :cond_1b

    .line 2529
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v14, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 2530
    const/16 v14, 0x2c

    if-ne v1, v14, :cond_17

    .line 2531
    const/16 v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2532
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v6

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2533
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2550
    :goto_c
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0

    .line 2534
    :cond_17
    const/16 v14, 0x5d

    if-ne v1, v14, :cond_18

    .line 2535
    const/16 v14, 0xf

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2536
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v6

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2537
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_c

    .line 2538
    :cond_18
    const/16 v14, 0x7d

    if-ne v1, v14, :cond_19

    .line 2539
    const/16 v14, 0xd

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2540
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v14, v6

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2541
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_c

    .line 2542
    :cond_19
    const/16 v14, 0x1a

    if-ne v1, v14, :cond_1a

    .line 2543
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v15, v6, -0x1

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2544
    const/16 v14, 0x14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2545
    const/16 v14, 0x1a

    move-object/from16 v0, p0

    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_c

    .line 2547
    :cond_1a
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2548
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 2552
    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    :cond_1b
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2553
    const/4 v13, 0x0

    goto/16 :goto_0

    .end local v2    # "count":I
    .end local v7    # "offset":I
    .end local v11    # "start":I
    .end local v13    # "value":F
    .restart local v6    # "offset":I
    :cond_1c
    move v7, v6

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    goto/16 :goto_8

    .end local v3    # "exp":Z
    .end local v4    # "intVal":I
    .end local v8    # "power":I
    .end local v10    # "small":Z
    :cond_1d
    move v6, v7

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_3
.end method

.method public final scanFieldFloatArray([C)[F
    .locals 21
    .param p1, "fieldName"    # [C

    .prologue
    .line 3002
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3004
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v19

    if-nez v19, :cond_0

    .line 3005
    const/16 v19, -0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3006
    const/4 v3, 0x0

    .line 3154
    :goto_0
    return-object v3

    .line 3009
    :cond_0
    move-object/from16 v0, p1

    array-length v11, v0

    .line 3010
    .local v11, "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v19, v0

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "offset":I
    .local v12, "offset":I
    add-int v19, v19, v11

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    .line 3011
    .local v6, "chLocal":C
    const/16 v19, 0x5b

    move/from16 v0, v19

    if-eq v6, v0, :cond_1

    .line 3012
    const/16 v19, -0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3013
    const/4 v3, 0x0

    goto :goto_0

    .line 3015
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v19, v0

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "offset":I
    .restart local v11    # "offset":I
    add-int v19, v19, v12

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    .line 3017
    const/16 v19, 0x10

    move/from16 v0, v19

    new-array v3, v0, [F

    .line 3018
    .local v3, "array":[F
    const/4 v4, 0x0

    .line 3021
    .local v4, "arrayIndex":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v19, v0

    add-int v19, v19, v11

    add-int/lit8 v15, v19, -0x1

    .line 3023
    .local v15, "start":I
    const/16 v19, 0x2d

    move/from16 v0, v19

    if-ne v6, v0, :cond_3

    const/4 v10, 0x1

    .line 3024
    .local v10, "negative":Z
    :goto_2
    if-eqz v10, :cond_2

    .line 3025
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v19, v0

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "offset":I
    .restart local v12    # "offset":I
    add-int v19, v19, v11

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    move v11, v12

    .line 3028
    .end local v12    # "offset":I
    .restart local v11    # "offset":I
    :cond_2
    const/16 v19, 0x30

    move/from16 v0, v19

    if-lt v6, v0, :cond_12

    const/16 v19, 0x39

    move/from16 v0, v19

    if-gt v6, v0, :cond_12

    .line 3029
    add-int/lit8 v9, v6, -0x30

    .line 3031
    .local v9, "intVal":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v19, v0

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "offset":I
    .restart local v12    # "offset":I
    add-int v19, v19, v11

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    .line 3032
    const/16 v19, 0x30

    move/from16 v0, v19

    if-lt v6, v0, :cond_4

    const/16 v19, 0x39

    move/from16 v0, v19

    if-gt v6, v0, :cond_4

    .line 3033
    mul-int/lit8 v19, v9, 0xa

    add-int/lit8 v20, v6, -0x30

    add-int v9, v19, v20

    move v11, v12

    .line 3034
    .end local v12    # "offset":I
    .restart local v11    # "offset":I
    goto :goto_3

    .line 3023
    .end local v9    # "intVal":I
    .end local v10    # "negative":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 3040
    .end local v11    # "offset":I
    .restart local v9    # "intVal":I
    .restart local v10    # "negative":Z
    .restart local v12    # "offset":I
    :cond_4
    const/4 v13, 0x1

    .line 3041
    .local v13, "power":I
    const/16 v19, 0x2e

    move/from16 v0, v19

    if-ne v6, v0, :cond_5

    const/4 v14, 0x1

    .line 3042
    .local v14, "small":Z
    :goto_4
    if-eqz v14, :cond_7

    .line 3043
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v19, v0

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "offset":I
    .restart local v11    # "offset":I
    add-int v19, v19, v12

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    .line 3044
    const/16 v13, 0xa

    .line 3045
    const/16 v19, 0x30

    move/from16 v0, v19

    if-lt v6, v0, :cond_6

    const/16 v19, 0x39

    move/from16 v0, v19

    if-gt v6, v0, :cond_6

    .line 3046
    mul-int/lit8 v19, v9, 0xa

    add-int/lit8 v20, v6, -0x30

    add-int v9, v19, v20

    .line 3048
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v19, v0

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "offset":I
    .restart local v12    # "offset":I
    add-int v19, v19, v11

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    .line 3050
    const/16 v19, 0x30

    move/from16 v0, v19

    if-lt v6, v0, :cond_7

    const/16 v19, 0x39

    move/from16 v0, v19

    if-gt v6, v0, :cond_7

    .line 3051
    mul-int/lit8 v19, v9, 0xa

    add-int/lit8 v20, v6, -0x30

    add-int v9, v19, v20

    .line 3052
    mul-int/lit8 v13, v13, 0xa

    move v11, v12

    .line 3053
    .end local v12    # "offset":I
    .restart local v11    # "offset":I
    goto :goto_5

    .line 3041
    .end local v11    # "offset":I
    .end local v14    # "small":Z
    .restart local v12    # "offset":I
    :cond_5
    const/4 v14, 0x0

    goto :goto_4

    .line 3059
    .end local v12    # "offset":I
    .restart local v11    # "offset":I
    .restart local v14    # "small":Z
    :cond_6
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3060
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 3064
    .end local v11    # "offset":I
    .restart local v12    # "offset":I
    :cond_7
    const/16 v19, 0x65

    move/from16 v0, v19

    if-eq v6, v0, :cond_8

    const/16 v19, 0x45

    move/from16 v0, v19

    if-ne v6, v0, :cond_a

    :cond_8
    const/4 v8, 0x1

    .line 3065
    .local v8, "exp":Z
    :goto_6
    if-eqz v8, :cond_b

    .line 3066
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v19, v0

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "offset":I
    .restart local v11    # "offset":I
    add-int v19, v19, v12

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    .line 3067
    const/16 v19, 0x2b

    move/from16 v0, v19

    if-eq v6, v0, :cond_9

    const/16 v19, 0x2d

    move/from16 v0, v19

    if-ne v6, v0, :cond_19

    .line 3068
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v19, v0

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "offset":I
    .restart local v12    # "offset":I
    add-int v19, v19, v11

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    .line 3071
    :goto_7
    const/16 v19, 0x30

    move/from16 v0, v19

    if-lt v6, v0, :cond_b

    const/16 v19, 0x39

    move/from16 v0, v19

    if-gt v6, v0, :cond_b

    .line 3072
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v19, v0

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "offset":I
    .restart local v11    # "offset":I
    add-int v19, v19, v12

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    move v12, v11

    .end local v11    # "offset":I
    .restart local v12    # "offset":I
    goto :goto_7

    .line 3064
    .end local v8    # "exp":Z
    :cond_a
    const/4 v8, 0x0

    goto :goto_6

    .restart local v8    # "exp":Z
    :cond_b
    move v11, v12

    .line 3079
    .end local v12    # "offset":I
    .restart local v11    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v19, v0

    add-int v19, v19, v11

    sub-int v19, v19, v15

    add-int/lit8 v7, v19, -0x1

    .line 3082
    .local v7, "count":I
    if-nez v8, :cond_f

    const/16 v19, 0xa

    move/from16 v0, v19

    if-ge v7, v0, :cond_f

    .line 3083
    int-to-float v0, v9

    move/from16 v19, v0

    int-to-float v0, v13

    move/from16 v20, v0

    div-float v18, v19, v20

    .line 3084
    .local v18, "value":F
    if-eqz v10, :cond_c

    .line 3085
    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    .line 3092
    :cond_c
    :goto_8
    array-length v0, v3

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v4, v0, :cond_d

    .line 3093
    array-length v0, v3

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x3

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 3094
    .local v17, "tmp":[F
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-static {v3, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3095
    move-object/from16 v3, v17

    .line 3097
    .end local v17    # "tmp":[F
    :cond_d
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "arrayIndex":I
    .local v5, "arrayIndex":I
    aput v18, v3, v4

    .line 3099
    const/16 v19, 0x2c

    move/from16 v0, v19

    if-ne v6, v0, :cond_10

    .line 3100
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v19, v0

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "offset":I
    .restart local v12    # "offset":I
    add-int v19, v19, v11

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    move v11, v12

    .end local v12    # "offset":I
    .restart local v11    # "offset":I
    :cond_e
    move v4, v5

    .line 3109
    .end local v5    # "arrayIndex":I
    .restart local v4    # "arrayIndex":I
    goto/16 :goto_1

    .line 3088
    .end local v18    # "value":F
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v16

    .line 3089
    .local v16, "text":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    .restart local v18    # "value":F
    goto :goto_8

    .line 3101
    .end local v4    # "arrayIndex":I
    .end local v16    # "text":Ljava/lang/String;
    .restart local v5    # "arrayIndex":I
    :cond_10
    const/16 v19, 0x5d

    move/from16 v0, v19

    if-ne v6, v0, :cond_e

    .line 3102
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v19, v0

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "offset":I
    .restart local v12    # "offset":I
    add-int v19, v19, v11

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    .line 3112
    array-length v0, v3

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v5, v0, :cond_11

    .line 3113
    new-array v0, v5, [F

    move-object/from16 v17, v0

    .line 3114
    .restart local v17    # "tmp":[F
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-static {v3, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3115
    move-object/from16 v3, v17

    .line 3118
    .end local v17    # "tmp":[F
    :cond_11
    const/16 v19, 0x2c

    move/from16 v0, v19

    if-ne v6, v0, :cond_13

    .line 3119
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v19, v0

    add-int/lit8 v20, v12, -0x1

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3120
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3121
    const/16 v19, 0x3

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3122
    const/16 v19, 0x10

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_0

    .line 3106
    .end local v5    # "arrayIndex":I
    .end local v7    # "count":I
    .end local v8    # "exp":Z
    .end local v9    # "intVal":I
    .end local v12    # "offset":I
    .end local v13    # "power":I
    .end local v14    # "small":Z
    .end local v18    # "value":F
    .restart local v4    # "arrayIndex":I
    .restart local v11    # "offset":I
    :cond_12
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3107
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 3126
    .end local v4    # "arrayIndex":I
    .end local v11    # "offset":I
    .restart local v5    # "arrayIndex":I
    .restart local v7    # "count":I
    .restart local v8    # "exp":Z
    .restart local v9    # "intVal":I
    .restart local v12    # "offset":I
    .restart local v13    # "power":I
    .restart local v14    # "small":Z
    .restart local v18    # "value":F
    :cond_13
    const/16 v19, 0x7d

    move/from16 v0, v19

    if-ne v6, v0, :cond_18

    .line 3127
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v19, v0

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "offset":I
    .restart local v11    # "offset":I
    add-int v19, v19, v12

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    .line 3128
    const/16 v19, 0x2c

    move/from16 v0, v19

    if-ne v6, v0, :cond_14

    .line 3129
    const/16 v19, 0x10

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3130
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v19, v0

    add-int/lit8 v20, v11, -0x1

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3131
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3148
    :goto_9
    const/16 v19, 0x4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0

    .line 3132
    :cond_14
    const/16 v19, 0x5d

    move/from16 v0, v19

    if-ne v6, v0, :cond_15

    .line 3133
    const/16 v19, 0xf

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3134
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v19, v0

    add-int/lit8 v20, v11, -0x1

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3135
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_9

    .line 3136
    :cond_15
    const/16 v19, 0x7d

    move/from16 v0, v19

    if-ne v6, v0, :cond_16

    .line 3137
    const/16 v19, 0xd

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3138
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v19, v0

    add-int/lit8 v20, v11, -0x1

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3139
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_9

    .line 3140
    :cond_16
    const/16 v19, 0x1a

    move/from16 v0, v19

    if-ne v6, v0, :cond_17

    .line 3141
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v19, v0

    add-int/lit8 v20, v11, -0x1

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3142
    const/16 v19, 0x14

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3143
    const/16 v19, 0x1a

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_9

    .line 3145
    :cond_17
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3146
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 3150
    .end local v11    # "offset":I
    .restart local v12    # "offset":I
    :cond_18
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3151
    const/4 v3, 0x0

    goto/16 :goto_0

    .end local v5    # "arrayIndex":I
    .end local v7    # "count":I
    .end local v12    # "offset":I
    .end local v18    # "value":F
    .restart local v4    # "arrayIndex":I
    .restart local v11    # "offset":I
    :cond_19
    move v12, v11

    .end local v11    # "offset":I
    .restart local v12    # "offset":I
    goto/16 :goto_7
.end method

.method public final scanFieldFloatArray2([C)[[F
    .locals 23
    .param p1, "fieldName"    # [C

    .prologue
    .line 3158
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3160
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v21

    if-nez v21, :cond_0

    .line 3161
    const/16 v21, -0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3162
    const/16 v21, 0x0

    check-cast v21, [[F

    .line 3340
    :goto_0
    return-object v21

    .line 3165
    :cond_0
    move-object/from16 v0, p1

    array-length v14, v0

    .line 3166
    .local v14, "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "offset":I
    .local v15, "offset":I
    add-int v21, v21, v14

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    .line 3168
    .local v9, "chLocal":C
    const/16 v21, 0x5b

    move/from16 v0, v21

    if-eq v9, v0, :cond_1

    .line 3169
    const/16 v21, -0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3170
    const/16 v21, 0x0

    check-cast v21, [[F

    goto :goto_0

    .line 3172
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    add-int v21, v21, v15

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    .line 3174
    const/16 v21, 0x10

    move/from16 v0, v21

    new-array v6, v0, [[F

    .line 3175
    .local v6, "arrayarray":[[F
    const/4 v7, 0x0

    .local v7, "arrayarrayIndex":I
    move v8, v7

    .end local v7    # "arrayarrayIndex":I
    .local v8, "arrayarrayIndex":I
    move v15, v14

    .line 3178
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    :cond_2
    :goto_1
    const/16 v21, 0x5b

    move/from16 v0, v21

    if-ne v9, v0, :cond_2

    .line 3179
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    add-int v21, v21, v15

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    .line 3181
    const/16 v21, 0x10

    move/from16 v0, v21

    new-array v3, v0, [F

    .line 3182
    .local v3, "array":[F
    const/4 v4, 0x0

    .line 3185
    .local v4, "arrayIndex":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int v21, v21, v14

    add-int/lit8 v17, v21, -0x1

    .line 3186
    .local v17, "start":I
    const/16 v21, 0x2d

    move/from16 v0, v21

    if-ne v9, v0, :cond_4

    const/4 v13, 0x1

    .line 3187
    .local v13, "negative":Z
    :goto_3
    if-eqz v13, :cond_3

    .line 3188
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    add-int v21, v21, v14

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    move v14, v15

    .line 3191
    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    :cond_3
    const/16 v21, 0x30

    move/from16 v0, v21

    if-lt v9, v0, :cond_13

    const/16 v21, 0x39

    move/from16 v0, v21

    if-gt v9, v0, :cond_13

    .line 3192
    add-int/lit8 v12, v9, -0x30

    .line 3194
    .local v12, "intVal":I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    add-int v21, v21, v14

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    .line 3196
    const/16 v21, 0x30

    move/from16 v0, v21

    if-lt v9, v0, :cond_5

    const/16 v21, 0x39

    move/from16 v0, v21

    if-gt v9, v0, :cond_5

    .line 3197
    mul-int/lit8 v21, v12, 0xa

    add-int/lit8 v22, v9, -0x30

    add-int v12, v21, v22

    move v14, v15

    .line 3198
    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    goto :goto_4

    .line 3186
    .end local v12    # "intVal":I
    .end local v13    # "negative":Z
    :cond_4
    const/4 v13, 0x0

    goto :goto_3

    .line 3204
    .end local v14    # "offset":I
    .restart local v12    # "intVal":I
    .restart local v13    # "negative":Z
    .restart local v15    # "offset":I
    :cond_5
    const/16 v16, 0x1

    .line 3205
    .local v16, "power":I
    const/16 v21, 0x2e

    move/from16 v0, v21

    if-ne v9, v0, :cond_7

    .line 3206
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    add-int v21, v21, v15

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    .line 3208
    const/16 v21, 0x30

    move/from16 v0, v21

    if-lt v9, v0, :cond_6

    const/16 v21, 0x39

    move/from16 v0, v21

    if-gt v9, v0, :cond_6

    .line 3209
    mul-int/lit8 v21, v12, 0xa

    add-int/lit8 v22, v9, -0x30

    add-int v12, v21, v22

    .line 3210
    const/16 v16, 0xa

    .line 3212
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    add-int v21, v21, v14

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    .line 3214
    const/16 v21, 0x30

    move/from16 v0, v21

    if-lt v9, v0, :cond_7

    const/16 v21, 0x39

    move/from16 v0, v21

    if-gt v9, v0, :cond_7

    .line 3215
    mul-int/lit8 v21, v12, 0xa

    add-int/lit8 v22, v9, -0x30

    add-int v12, v21, v22

    .line 3216
    mul-int/lit8 v16, v16, 0xa

    move v14, v15

    .line 3217
    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    goto :goto_5

    .line 3223
    :cond_6
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3224
    const/16 v21, 0x0

    check-cast v21, [[F

    goto/16 :goto_0

    .line 3228
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    :cond_7
    const/16 v21, 0x65

    move/from16 v0, v21

    if-eq v9, v0, :cond_8

    const/16 v21, 0x45

    move/from16 v0, v21

    if-ne v9, v0, :cond_a

    :cond_8
    const/4 v11, 0x1

    .line 3229
    .local v11, "exp":Z
    :goto_6
    if-eqz v11, :cond_b

    .line 3230
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    add-int v21, v21, v15

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    .line 3231
    const/16 v21, 0x2b

    move/from16 v0, v21

    if-eq v9, v0, :cond_9

    const/16 v21, 0x2d

    move/from16 v0, v21

    if-ne v9, v0, :cond_1d

    .line 3232
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    add-int v21, v21, v14

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    .line 3235
    :goto_7
    const/16 v21, 0x30

    move/from16 v0, v21

    if-lt v9, v0, :cond_b

    const/16 v21, 0x39

    move/from16 v0, v21

    if-gt v9, v0, :cond_b

    .line 3236
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    add-int v21, v21, v15

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    move v15, v14

    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    goto :goto_7

    .line 3228
    .end local v11    # "exp":Z
    :cond_a
    const/4 v11, 0x0

    goto :goto_6

    .restart local v11    # "exp":Z
    :cond_b
    move v14, v15

    .line 3243
    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int v21, v21, v14

    sub-int v21, v21, v17

    add-int/lit8 v10, v21, -0x1

    .line 3245
    .local v10, "count":I
    if-nez v11, :cond_f

    const/16 v21, 0xa

    move/from16 v0, v21

    if-ge v10, v0, :cond_f

    .line 3246
    int-to-float v0, v12

    move/from16 v21, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v20, v21, v22

    .line 3247
    .local v20, "value":F
    if-eqz v13, :cond_c

    .line 3248
    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    .line 3255
    :cond_c
    :goto_8
    array-length v0, v3

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v4, v0, :cond_d

    .line 3256
    array-length v0, v3

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x3

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v19, v0

    .line 3257
    .local v19, "tmp":[F
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-static {v3, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3258
    move-object/from16 v3, v19

    .line 3260
    .end local v19    # "tmp":[F
    :cond_d
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "arrayIndex":I
    .local v5, "arrayIndex":I
    aput v20, v3, v4

    .line 3262
    const/16 v21, 0x2c

    move/from16 v0, v21

    if-ne v9, v0, :cond_10

    .line 3263
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    add-int v21, v21, v14

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    move v14, v15

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    :cond_e
    move v4, v5

    .line 3272
    .end local v5    # "arrayIndex":I
    .restart local v4    # "arrayIndex":I
    goto/16 :goto_2

    .line 3251
    .end local v20    # "value":F
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v18

    .line 3252
    .local v18, "text":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    .restart local v20    # "value":F
    goto :goto_8

    .line 3264
    .end local v4    # "arrayIndex":I
    .end local v18    # "text":Ljava/lang/String;
    .restart local v5    # "arrayIndex":I
    :cond_10
    const/16 v21, 0x5d

    move/from16 v0, v21

    if-ne v9, v0, :cond_e

    .line 3265
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    add-int v21, v21, v14

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    .line 3275
    array-length v0, v3

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v5, v0, :cond_11

    .line 3276
    new-array v0, v5, [F

    move-object/from16 v19, v0

    .line 3277
    .restart local v19    # "tmp":[F
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-static {v3, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3278
    move-object/from16 v3, v19

    .line 3281
    .end local v19    # "tmp":[F
    :cond_11
    array-length v0, v6

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v8, v0, :cond_12

    .line 3282
    array-length v0, v6

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x3

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [[F

    move-object/from16 v19, v0

    .line 3283
    .local v19, "tmp":[[F
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-static {v3, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3284
    move-object/from16 v6, v19

    .line 3286
    .end local v19    # "tmp":[[F
    :cond_12
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "arrayarrayIndex":I
    .restart local v7    # "arrayarrayIndex":I
    aput-object v3, v6, v8

    .line 3288
    const/16 v21, 0x2c

    move/from16 v0, v21

    if-ne v9, v0, :cond_14

    .line 3289
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    add-int v21, v21, v15

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    :goto_9
    move v8, v7

    .end local v7    # "arrayarrayIndex":I
    .restart local v8    # "arrayarrayIndex":I
    move v15, v14

    .line 3294
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    goto/16 :goto_1

    .line 3269
    .end local v5    # "arrayIndex":I
    .end local v10    # "count":I
    .end local v11    # "exp":Z
    .end local v12    # "intVal":I
    .end local v15    # "offset":I
    .end local v16    # "power":I
    .end local v20    # "value":F
    .restart local v4    # "arrayIndex":I
    .restart local v14    # "offset":I
    :cond_13
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3270
    const/16 v21, 0x0

    check-cast v21, [[F

    goto/16 :goto_0

    .line 3290
    .end local v4    # "arrayIndex":I
    .end local v8    # "arrayarrayIndex":I
    .end local v14    # "offset":I
    .restart local v5    # "arrayIndex":I
    .restart local v7    # "arrayarrayIndex":I
    .restart local v10    # "count":I
    .restart local v11    # "exp":Z
    .restart local v12    # "intVal":I
    .restart local v15    # "offset":I
    .restart local v16    # "power":I
    .restart local v20    # "value":F
    :cond_14
    const/16 v21, 0x5d

    move/from16 v0, v21

    if-ne v9, v0, :cond_1c

    .line 3291
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    add-int v21, v21, v15

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    .line 3298
    array-length v0, v6

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v7, v0, :cond_15

    .line 3299
    new-array v0, v7, [[F

    move-object/from16 v19, v0

    .line 3300
    .restart local v19    # "tmp":[[F
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-static {v6, v0, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3301
    move-object/from16 v6, v19

    .line 3304
    .end local v19    # "tmp":[[F
    :cond_15
    const/16 v21, 0x2c

    move/from16 v0, v21

    if-ne v9, v0, :cond_16

    .line 3305
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v22, v14, -0x1

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3306
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3307
    const/16 v21, 0x3

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3308
    const/16 v21, 0x10

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    move-object/from16 v21, v6

    .line 3309
    goto/16 :goto_0

    .line 3312
    :cond_16
    const/16 v21, 0x7d

    move/from16 v0, v21

    if-ne v9, v0, :cond_1b

    .line 3313
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    add-int v21, v21, v14

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v9

    .line 3314
    const/16 v21, 0x2c

    move/from16 v0, v21

    if-ne v9, v0, :cond_17

    .line 3315
    const/16 v21, 0x10

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3316
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v22, v15, -0x1

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3317
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 3334
    :goto_a
    const/16 v21, 0x4

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-object/from16 v21, v6

    .line 3340
    goto/16 :goto_0

    .line 3318
    :cond_17
    const/16 v21, 0x5d

    move/from16 v0, v21

    if-ne v9, v0, :cond_18

    .line 3319
    const/16 v21, 0xf

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3320
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v22, v15, -0x1

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3321
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_a

    .line 3322
    :cond_18
    const/16 v21, 0x7d

    move/from16 v0, v21

    if-ne v9, v0, :cond_19

    .line 3323
    const/16 v21, 0xd

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3324
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v22, v15, -0x1

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3325
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_a

    .line 3326
    :cond_19
    const/16 v21, 0x1a

    move/from16 v0, v21

    if-ne v9, v0, :cond_1a

    .line 3327
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    add-int/lit8 v22, v15, -0x1

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 3328
    const/16 v21, 0x14

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 3329
    const/16 v21, 0x1a

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_a

    .line 3331
    :cond_1a
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3332
    const/16 v21, 0x0

    check-cast v21, [[F

    goto/16 :goto_0

    .line 3336
    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    :cond_1b
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 3337
    const/16 v21, 0x0

    check-cast v21, [[F

    goto/16 :goto_0

    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    :cond_1c
    move v14, v15

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    goto/16 :goto_9

    .end local v5    # "arrayIndex":I
    .end local v7    # "arrayarrayIndex":I
    .end local v10    # "count":I
    .end local v20    # "value":F
    .restart local v4    # "arrayIndex":I
    .restart local v8    # "arrayarrayIndex":I
    :cond_1d
    move v15, v14

    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    goto/16 :goto_7
.end method

.method public scanFieldInt([C)I
    .locals 12
    .param p1, "fieldName"    # [C

    .prologue
    const/16 v11, 0x2c

    const/16 v10, 0x1a

    const/16 v9, 0x10

    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 1784
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1786
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1787
    const/4 v6, -0x2

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v4, v5

    .line 1863
    :cond_0
    :goto_0
    return v4

    .line 1791
    :cond_1
    array-length v2, p1

    .line 1792
    .local v2, "offset":I
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1794
    .local v0, "chLocal":C
    const/16 v6, 0x2d

    if-ne v0, v6, :cond_2

    const/4 v1, 0x1

    .line 1795
    .local v1, "negative":Z
    :goto_1
    if-eqz v1, :cond_f

    .line 1796
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v6, v3

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1800
    :goto_2
    const/16 v6, 0x30

    if-lt v0, v6, :cond_7

    const/16 v6, 0x39

    if-gt v0, v6, :cond_7

    .line 1801
    add-int/lit8 v4, v0, -0x30

    .line 1803
    .local v4, "value":I
    :goto_3
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1804
    const/16 v6, 0x30

    if-lt v0, v6, :cond_3

    const/16 v6, 0x39

    if-gt v0, v6, :cond_3

    .line 1805
    mul-int/lit8 v6, v4, 0xa

    add-int/lit8 v7, v0, -0x30

    add-int v4, v6, v7

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_3

    .end local v1    # "negative":Z
    .end local v2    # "offset":I
    .end local v4    # "value":I
    .restart local v3    # "offset":I
    :cond_2
    move v1, v5

    .line 1794
    goto :goto_1

    .line 1806
    .restart local v1    # "negative":Z
    .restart local v4    # "value":I
    :cond_3
    const/16 v6, 0x2e

    if-ne v0, v6, :cond_4

    .line 1807
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v4, v5

    .line 1808
    goto :goto_0

    .line 1813
    :cond_4
    if-ltz v4, :cond_5

    array-length v6, p1

    add-int/lit8 v6, v6, 0xe

    if-le v3, v6, :cond_8

    .line 1815
    :cond_5
    const/high16 v6, -0x80000000

    if-ne v4, v6, :cond_6

    const/16 v6, 0x11

    if-ne v3, v6, :cond_6

    if-nez v1, :cond_8

    .line 1818
    :cond_6
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v4, v5

    .line 1819
    goto :goto_0

    .line 1823
    .end local v3    # "offset":I
    .end local v4    # "value":I
    .restart local v2    # "offset":I
    :cond_7
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v4, v5

    .line 1824
    goto :goto_0

    .line 1827
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v4    # "value":I
    :cond_8
    if-ne v0, v11, :cond_9

    .line 1828
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1829
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1830
    const/4 v5, 0x3

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1831
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1832
    if-eqz v1, :cond_0

    neg-int v4, v4

    goto :goto_0

    .line 1835
    :cond_9
    const/16 v6, 0x7d

    if-ne v0, v6, :cond_e

    .line 1836
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v6, v3

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1837
    if-ne v0, v11, :cond_a

    .line 1838
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1839
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1840
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1857
    :goto_4
    const/4 v5, 0x4

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1863
    if-eqz v1, :cond_0

    neg-int v4, v4

    goto/16 :goto_0

    .line 1841
    :cond_a
    const/16 v6, 0x5d

    if-ne v0, v6, :cond_b

    .line 1842
    const/16 v5, 0xf

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1843
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1844
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_4

    .line 1845
    :cond_b
    const/16 v6, 0x7d

    if-ne v0, v6, :cond_c

    .line 1846
    const/16 v5, 0xd

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1847
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1848
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_4

    .line 1849
    :cond_c
    if-ne v0, v10, :cond_d

    .line 1850
    const/16 v5, 0x14

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1851
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v2, -0x1

    add-int/2addr v5, v6

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1852
    iput-char v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_4

    .line 1854
    :cond_d
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v4, v5

    .line 1855
    goto/16 :goto_0

    .line 1859
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_e
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v4, v5

    .line 1860
    goto/16 :goto_0

    .end local v4    # "value":I
    :cond_f
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_2
.end method

.method public final scanFieldIntArray([C)[I
    .locals 11
    .param p1, "fieldName"    # [C

    .prologue
    .line 1867
    const/4 v9, 0x0

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1869
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1870
    const/4 v9, -0x2

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1871
    const/4 v0, 0x0

    .line 1970
    :goto_0
    return-object v0

    .line 1874
    :cond_0
    array-length v5, p1

    .line 1875
    .local v5, "offset":I
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    add-int/2addr v9, v5

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 1877
    .local v3, "chLocal":C
    const/16 v9, 0x5b

    if-eq v3, v9, :cond_1

    .line 1878
    const/4 v9, -0x2

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1879
    const/4 v0, 0x0

    goto :goto_0

    .line 1881
    :cond_1
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v9, v6

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 1883
    const/16 v9, 0x10

    new-array v0, v9, [I

    .line 1884
    .local v0, "array":[I
    const/4 v1, 0x0

    .line 1886
    .local v1, "arrayIndex":I
    const/16 v9, 0x5d

    if-ne v3, v9, :cond_10

    .line 1887
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v9, v5

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v5, v6

    .line 1928
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    :goto_1
    array-length v9, v0

    if-eq v1, v9, :cond_2

    .line 1929
    new-array v7, v1, [I

    .line 1930
    .local v7, "tmp":[I
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v0, v9, v7, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1931
    move-object v0, v7

    .line 1934
    .end local v7    # "tmp":[I
    :cond_2
    const/16 v9, 0x2c

    if-ne v3, v9, :cond_8

    .line 1935
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v5, -0x1

    add-int/2addr v9, v10

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1936
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1937
    const/4 v9, 0x3

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1938
    const/16 v9, 0x10

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 1907
    .end local v1    # "arrayIndex":I
    .end local v5    # "offset":I
    .local v2, "arrayIndex":I
    .local v4, "nagative":Z
    .restart local v6    # "offset":I
    .local v8, "value":I
    :cond_3
    array-length v9, v0

    if-lt v2, v9, :cond_4

    .line 1908
    array-length v9, v0

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x2

    new-array v7, v9, [I

    .line 1909
    .restart local v7    # "tmp":[I
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v0, v9, v7, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1910
    move-object v0, v7

    .line 1912
    .end local v7    # "tmp":[I
    :cond_4
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "arrayIndex":I
    .restart local v1    # "arrayIndex":I
    if-eqz v4, :cond_5

    neg-int v8, v8

    .end local v8    # "value":I
    :cond_5
    aput v8, v0, v2

    .line 1914
    const/16 v9, 0x2c

    if-ne v3, v9, :cond_6

    .line 1915
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v9, v6

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    :goto_2
    move v2, v1

    .end local v1    # "arrayIndex":I
    .restart local v2    # "arrayIndex":I
    move v6, v5

    .line 1890
    .end local v4    # "nagative":Z
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :goto_3
    const/4 v4, 0x0

    .line 1891
    .restart local v4    # "nagative":Z
    const/16 v9, 0x2d

    if-ne v3, v9, :cond_f

    .line 1892
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v9, v6

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 1893
    const/4 v4, 0x1

    .line 1895
    :goto_4
    const/16 v9, 0x30

    if-lt v3, v9, :cond_7

    const/16 v9, 0x39

    if-gt v3, v9, :cond_7

    .line 1896
    add-int/lit8 v8, v3, -0x30

    .line 1898
    .restart local v8    # "value":I
    :goto_5
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v9, v5

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 1900
    const/16 v9, 0x30

    if-lt v3, v9, :cond_3

    const/16 v9, 0x39

    if-gt v3, v9, :cond_3

    .line 1901
    mul-int/lit8 v9, v8, 0xa

    add-int/lit8 v10, v3, -0x30

    add-int v8, v9, v10

    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_5

    .line 1916
    .end local v2    # "arrayIndex":I
    .end local v5    # "offset":I
    .end local v8    # "value":I
    .restart local v1    # "arrayIndex":I
    .restart local v6    # "offset":I
    :cond_6
    const/16 v9, 0x5d

    if-ne v3, v9, :cond_e

    .line 1917
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v9, v6

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 1918
    goto/16 :goto_1

    .line 1921
    .end local v1    # "arrayIndex":I
    .restart local v2    # "arrayIndex":I
    :cond_7
    const/4 v9, -0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1922
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1942
    .end local v2    # "arrayIndex":I
    .end local v4    # "nagative":Z
    .restart local v1    # "arrayIndex":I
    :cond_8
    const/16 v9, 0x7d

    if-ne v3, v9, :cond_d

    .line 1943
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v9, v5

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 1944
    const/16 v9, 0x2c

    if-ne v3, v9, :cond_9

    .line 1945
    const/16 v9, 0x10

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1946
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v6, -0x1

    add-int/2addr v9, v10

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1947
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 1964
    :goto_6
    const/4 v9, 0x4

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0

    .line 1948
    :cond_9
    const/16 v9, 0x5d

    if-ne v3, v9, :cond_a

    .line 1949
    const/16 v9, 0xf

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1950
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v6, -0x1

    add-int/2addr v9, v10

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1951
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_6

    .line 1952
    :cond_a
    const/16 v9, 0x7d

    if-ne v3, v9, :cond_b

    .line 1953
    const/16 v9, 0xd

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1954
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v6, -0x1

    add-int/2addr v9, v10

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1955
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_6

    .line 1956
    :cond_b
    const/16 v9, 0x1a

    if-ne v3, v9, :cond_c

    .line 1957
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v6, -0x1

    add-int/2addr v9, v10

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1958
    const/16 v9, 0x14

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1959
    const/16 v9, 0x1a

    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    .line 1961
    :cond_c
    const/4 v9, -0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1962
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1966
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    :cond_d
    const/4 v9, -0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1967
    const/4 v0, 0x0

    goto/16 :goto_0

    .end local v5    # "offset":I
    .restart local v4    # "nagative":Z
    .restart local v6    # "offset":I
    :cond_e
    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_2

    .end local v1    # "arrayIndex":I
    .end local v5    # "offset":I
    .restart local v2    # "arrayIndex":I
    .restart local v6    # "offset":I
    :cond_f
    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_4

    .end local v2    # "arrayIndex":I
    .end local v4    # "nagative":Z
    .restart local v1    # "arrayIndex":I
    :cond_10
    move v2, v1

    .end local v1    # "arrayIndex":I
    .restart local v2    # "arrayIndex":I
    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_3
.end method

.method public scanFieldLong([C)J
    .locals 12
    .param p1, "fieldName"    # [C

    .prologue
    .line 2209
    const/4 v5, 0x0

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2211
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2212
    const/4 v5, -0x2

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2213
    const-wide/16 v6, 0x0

    .line 2287
    :cond_0
    :goto_0
    return-wide v6

    .line 2216
    :cond_1
    array-length v2, p1

    .line 2217
    .local v2, "offset":I
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2219
    .local v0, "chLocal":C
    const/4 v1, 0x0

    .line 2220
    .local v1, "negative":Z
    const/16 v5, 0x2d

    if-ne v0, v5, :cond_e

    .line 2221
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v5, v3

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2222
    const/4 v1, 0x1

    .line 2226
    :goto_1
    const/16 v5, 0x30

    if-lt v0, v5, :cond_6

    const/16 v5, 0x39

    if-gt v0, v5, :cond_6

    .line 2227
    add-int/lit8 v5, v0, -0x30

    int-to-long v6, v5

    .line 2229
    .local v6, "value":J
    :goto_2
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2230
    const/16 v5, 0x30

    if-lt v0, v5, :cond_2

    const/16 v5, 0x39

    if-gt v0, v5, :cond_2

    .line 2231
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v6

    add-int/lit8 v5, v0, -0x30

    int-to-long v10, v5

    add-long v6, v8, v10

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_2

    .line 2232
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_2
    const/16 v5, 0x2e

    if-ne v0, v5, :cond_3

    .line 2233
    const/4 v5, -0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2234
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 2240
    :cond_3
    array-length v5, p1

    sub-int v5, v3, v5

    const/16 v8, 0x15

    if-ge v5, v8, :cond_5

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_4

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v5, v6, v8

    if-nez v5, :cond_5

    if-eqz v1, :cond_5

    :cond_4
    const/4 v4, 0x1

    .line 2242
    .local v4, "valid":Z
    :goto_3
    if-nez v4, :cond_7

    .line 2243
    const/4 v5, -0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2244
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 2240
    .end local v4    # "valid":Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 2247
    .end local v3    # "offset":I
    .end local v6    # "value":J
    .restart local v2    # "offset":I
    :cond_6
    const/4 v5, -0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2248
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 2251
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v4    # "valid":Z
    .restart local v6    # "value":J
    :cond_7
    const/16 v5, 0x2c

    if-ne v0, v5, :cond_8

    .line 2252
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2253
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2254
    const/4 v5, 0x3

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2255
    const/16 v5, 0x10

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2256
    if-eqz v1, :cond_0

    neg-long v6, v6

    goto/16 :goto_0

    .line 2259
    :cond_8
    const/16 v5, 0x7d

    if-ne v0, v5, :cond_d

    .line 2260
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v5, v3

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2261
    const/16 v5, 0x2c

    if-ne v0, v5, :cond_9

    .line 2262
    const/16 v5, 0x10

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2263
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2264
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2281
    :goto_4
    const/4 v5, 0x4

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2287
    if-eqz v1, :cond_0

    neg-long v6, v6

    goto/16 :goto_0

    .line 2265
    :cond_9
    const/16 v5, 0x5d

    if-ne v0, v5, :cond_a

    .line 2266
    const/16 v5, 0xf

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2267
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2268
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_4

    .line 2269
    :cond_a
    const/16 v5, 0x7d

    if-ne v0, v5, :cond_b

    .line 2270
    const/16 v5, 0xd

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2271
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2272
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_4

    .line 2273
    :cond_b
    const/16 v5, 0x1a

    if-ne v0, v5, :cond_c

    .line 2274
    const/16 v5, 0x14

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2275
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v2, -0x1

    add-int/2addr v5, v8

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2276
    const/16 v5, 0x1a

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_4

    .line 2278
    :cond_c
    const/4 v5, -0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2279
    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .line 2283
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_d
    const/4 v5, -0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2284
    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .end local v4    # "valid":Z
    .end local v6    # "value":J
    :cond_e
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_1
.end method

.method public scanFieldString([C)Ljava/lang/String;
    .locals 14
    .param p1, "fieldName"    # [C

    .prologue
    .line 1194
    const/4 v12, 0x0

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1196
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1197
    const/4 v12, -0x2

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1198
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v10

    .line 1284
    :goto_0
    return-object v10

    .line 1203
    :cond_0
    array-length v5, p1

    .line 1204
    .local v5, "offset":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    add-int/2addr v12, v5

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1206
    .local v0, "chLocal":C
    const/16 v12, 0x22

    if-eq v0, v12, :cond_1

    .line 1207
    const/4 v12, -0x1

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1209
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 1214
    :cond_1
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v13, p1

    add-int/2addr v12, v13

    add-int/lit8 v8, v12, 0x1

    .line 1215
    .local v8, "startIndex":I
    const/16 v12, 0x22

    invoke-virtual {p0, v12, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v3

    .line 1216
    .local v3, "endIndex":I
    const/4 v12, -0x1

    if-ne v3, v12, :cond_2

    .line 1217
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v13, "unclosed str"

    invoke-direct {v12, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1220
    :cond_2
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v13, p1

    add-int/2addr v12, v13

    add-int/lit8 v9, v12, 0x1

    .line 1221
    .local v9, "startIndex2":I
    sub-int v12, v3, v9

    invoke-virtual {p0, v9, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v11

    .line 1222
    .local v11, "stringVal":Ljava/lang/String;
    const/16 v12, 0x5c

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_4

    .line 1224
    :goto_1
    const/4 v7, 0x0

    .line 1225
    .local v7, "slashCount":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_3

    .line 1226
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    const/16 v13, 0x5c

    if-ne v12, v13, :cond_3

    .line 1227
    add-int/lit8 v7, v7, 0x1

    .line 1225
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1232
    :cond_3
    rem-int/lit8 v12, v7, 0x2

    if-nez v12, :cond_5

    .line 1238
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v13, p1

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    sub-int v2, v3, v12

    .line 1239
    .local v2, "chars_len":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v13, p1

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {p0, v12, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v1

    .line 1241
    .local v1, "chars":[C
    invoke-static {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v11

    .line 1244
    .end local v1    # "chars":[C
    .end local v2    # "chars_len":I
    .end local v4    # "i":I
    .end local v7    # "slashCount":I
    :cond_4
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    array-length v13, p1

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x1

    sub-int v12, v3, v12

    add-int/lit8 v12, v12, 0x1

    add-int v5, v6, v12

    .line 1245
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v12, v5

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1246
    move-object v10, v11

    .line 1249
    .local v10, "strVal":Ljava/lang/String;
    const/16 v12, 0x2c

    if-ne v0, v12, :cond_6

    .line 1250
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v12, v6

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1251
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    iput-char v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1252
    const/4 v12, 0x3

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0

    .line 1235
    .end local v10    # "strVal":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v7    # "slashCount":I
    :cond_5
    const/16 v12, 0x22

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {p0, v12, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v3

    .line 1236
    goto :goto_1

    .line 1256
    .end local v4    # "i":I
    .end local v7    # "slashCount":I
    .restart local v10    # "strVal":Ljava/lang/String;
    :cond_6
    const/16 v12, 0x7d

    if-ne v0, v12, :cond_b

    .line 1257
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v12, v6

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1258
    const/16 v12, 0x2c

    if-ne v0, v12, :cond_7

    .line 1259
    const/16 v12, 0x10

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1260
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v12, v5

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1261
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    iput-char v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1278
    :goto_3
    const/4 v12, 0x4

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0

    .line 1262
    :cond_7
    const/16 v12, 0x5d

    if-ne v0, v12, :cond_8

    .line 1263
    const/16 v12, 0xf

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1264
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v12, v5

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1265
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    iput-char v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    .line 1266
    :cond_8
    const/16 v12, 0x7d

    if-ne v0, v12, :cond_9

    .line 1267
    const/16 v12, 0xd

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1268
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v12, v5

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1269
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v12

    iput-char v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    .line 1270
    :cond_9
    const/16 v12, 0x1a

    if-ne v0, v12, :cond_a

    .line 1271
    const/16 v12, 0x14

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1272
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v13, v5, -0x1

    add-int/2addr v12, v13

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1273
    const/16 v12, 0x1a

    iput-char v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_3

    .line 1275
    :cond_a
    const/4 v12, -0x1

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1276
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 1280
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_b
    const/4 v12, -0x1

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1281
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0
.end method

.method public scanFieldStringArray([CLjava/lang/Class;)Ljava/util/Collection;
    .locals 15
    .param p1, "fieldName"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1548
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v13, 0x0

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1550
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v13

    if-nez v13, :cond_0

    .line 1551
    const/4 v13, -0x2

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1552
    const/4 v6, 0x0

    .line 1681
    :goto_0
    return-object v6

    .line 1555
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->newCollectionByType(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v6

    .line 1571
    .local v6, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    array-length v7, v0

    .line 1572
    .local v7, "offset":I
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .local v8, "offset":I
    add-int/2addr v13, v7

    invoke-virtual {p0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1574
    .local v1, "chLocal":C
    const/16 v13, 0x5b

    if-eq v1, v13, :cond_1

    .line 1575
    const/4 v13, -0x1

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1576
    const/4 v6, 0x0

    goto :goto_0

    .line 1579
    :cond_1
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v13, v8

    invoke-virtual {p0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v8, v7

    .line 1583
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    :goto_1
    const/16 v13, 0x22

    if-ne v1, v13, :cond_6

    .line 1584
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v10, v13, v8

    .line 1585
    .local v10, "startIndex":I
    const/16 v13, 0x22

    invoke-virtual {p0, v13, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v4

    .line 1586
    .local v4, "endIndex":I
    const/4 v13, -0x1

    if-ne v4, v13, :cond_2

    .line 1587
    new-instance v13, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v14, "unclosed str"

    invoke-direct {v13, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1590
    :cond_2
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v11, v13, v8

    .line 1591
    .local v11, "startIndex2":I
    sub-int v13, v4, v11

    invoke-virtual {p0, v11, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v12

    .line 1592
    .local v12, "stringVal":Ljava/lang/String;
    const/16 v13, 0x5c

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_4

    .line 1594
    :goto_2
    const/4 v9, 0x0

    .line 1595
    .local v9, "slashCount":I
    add-int/lit8 v5, v4, -0x1

    .local v5, "i":I
    :goto_3
    if-ltz v5, :cond_3

    .line 1596
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v13

    const/16 v14, 0x5c

    if-ne v13, v14, :cond_3

    .line 1597
    add-int/lit8 v9, v9, 0x1

    .line 1595
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 1602
    :cond_3
    rem-int/lit8 v13, v9, 0x2

    if-nez v13, :cond_5

    .line 1608
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v8

    sub-int v3, v4, v13

    .line 1609
    .local v3, "chars_len":I
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v8

    invoke-virtual {p0, v13, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v2

    .line 1611
    .local v2, "chars":[C
    invoke-static {v2, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v12

    .line 1614
    .end local v2    # "chars":[C
    .end local v3    # "chars_len":I
    .end local v5    # "i":I
    .end local v9    # "slashCount":I
    :cond_4
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v8

    sub-int v13, v4, v13

    add-int/lit8 v13, v13, 0x1

    add-int v7, v8, v13

    .line 1615
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v13, v7

    invoke-virtual {p0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1617
    invoke-interface {v6, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1632
    .end local v4    # "endIndex":I
    .end local v10    # "startIndex":I
    .end local v11    # "startIndex2":I
    .end local v12    # "stringVal":Ljava/lang/String;
    :goto_4
    const/16 v13, 0x2c

    if-ne v1, v13, :cond_9

    .line 1633
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v13, v8

    invoke-virtual {p0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v8, v7

    .line 1634
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_1

    .line 1605
    .restart local v4    # "endIndex":I
    .restart local v5    # "i":I
    .restart local v9    # "slashCount":I
    .restart local v10    # "startIndex":I
    .restart local v11    # "startIndex2":I
    .restart local v12    # "stringVal":Ljava/lang/String;
    :cond_5
    const/16 v13, 0x22

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {p0, v13, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v4

    .line 1606
    goto :goto_2

    .line 1618
    .end local v4    # "endIndex":I
    .end local v5    # "i":I
    .end local v9    # "slashCount":I
    .end local v10    # "startIndex":I
    .end local v11    # "startIndex2":I
    .end local v12    # "stringVal":Ljava/lang/String;
    :cond_6
    const/16 v13, 0x6e

    if-ne v1, v13, :cond_7

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v8

    .line 1619
    invoke-virtual {p0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v13

    const/16 v14, 0x75

    if-ne v13, v14, :cond_7

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v8

    add-int/lit8 v13, v13, 0x1

    .line 1620
    invoke-virtual {p0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v13

    const/16 v14, 0x6c

    if-ne v13, v14, :cond_7

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v8

    add-int/lit8 v13, v13, 0x2

    .line 1621
    invoke-virtual {p0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v13

    const/16 v14, 0x6c

    if-ne v13, v14, :cond_7

    .line 1622
    add-int/lit8 v7, v8, 0x3

    .line 1623
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v13, v7

    invoke-virtual {p0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1624
    const/4 v13, 0x0

    invoke-interface {v6, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1625
    :cond_7
    const/16 v13, 0x5d

    if-ne v1, v13, :cond_8

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v13

    if-nez v13, :cond_8

    .line 1626
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v13, v8

    invoke-virtual {p0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v8, v7

    .line 1646
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    :goto_5
    const/16 v13, 0x2c

    if-ne v1, v13, :cond_b

    .line 1647
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v8

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1648
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v13

    iput-char v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1649
    const/4 v13, 0x3

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0

    .line 1629
    :cond_8
    new-instance v13, Lcom/alibaba/fastjson/JSONException;

    const-string v14, "illega str"

    invoke-direct {v13, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1637
    :cond_9
    const/16 v13, 0x5d

    if-ne v1, v13, :cond_a

    .line 1638
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v13, v8

    invoke-virtual {p0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    move v8, v7

    .line 1639
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_5

    .line 1642
    :cond_a
    const/4 v13, -0x1

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1643
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1653
    :cond_b
    const/16 v13, 0x7d

    if-ne v1, v13, :cond_10

    .line 1654
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v13, v8

    invoke-virtual {p0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v1

    .line 1655
    const/16 v13, 0x2c

    if-ne v1, v13, :cond_c

    .line 1656
    const/16 v13, 0x10

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1657
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v7

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1658
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v13

    iput-char v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1675
    :goto_6
    const/4 v13, 0x4

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0

    .line 1659
    :cond_c
    const/16 v13, 0x5d

    if-ne v1, v13, :cond_d

    .line 1660
    const/16 v13, 0xf

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1661
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v7

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1662
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v13

    iput-char v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    .line 1663
    :cond_d
    const/16 v13, 0x7d

    if-ne v1, v13, :cond_e

    .line 1664
    const/16 v13, 0xd

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1665
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v13, v7

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1666
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v13

    iput-char v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    .line 1667
    :cond_e
    const/16 v13, 0x1a

    if-ne v1, v13, :cond_f

    .line 1668
    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v14, v7, -0x1

    add-int/2addr v13, v14

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1669
    const/16 v13, 0x14

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1670
    const/16 v13, 0x1a

    iput-char v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_6

    .line 1672
    :cond_f
    const/4 v13, -0x1

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1673
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1677
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    :cond_10
    const/4 v13, -0x1

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1678
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public scanFieldStringArray([CILcom/alibaba/fastjson/parser/SymbolTable;)[Ljava/lang/String;
    .locals 1
    .param p1, "fieldName"    # [C
    .param p2, "argTypesCount"    # I
    .param p3, "typeSymbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .prologue
    .line 5103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public scanFieldSymbol([C)J
    .locals 14
    .param p1, "fieldName"    # [C

    .prologue
    const/16 v13, 0x2c

    const/16 v12, 0x22

    const/16 v11, 0x1a

    const/4 v10, -0x1

    const-wide/16 v6, 0x0

    .line 1378
    const/4 v5, 0x0

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1380
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1381
    const/4 v5, -0x2

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-wide v2, v6

    .line 1445
    :goto_0
    return-wide v2

    .line 1385
    :cond_0
    array-length v1, p1

    .line 1386
    .local v1, "offset":I
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "offset":I
    .local v4, "offset":I
    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1388
    .local v0, "chLocal":C
    if-eq v0, v12, :cond_1

    .line 1389
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-wide v2, v6

    .line 1390
    goto :goto_0

    .line 1393
    :cond_1
    const-wide v2, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .local v2, "hash":J
    move v1, v4

    .line 1395
    .end local v4    # "offset":I
    .restart local v1    # "offset":I
    :goto_1
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "offset":I
    .restart local v4    # "offset":I
    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1396
    if-ne v0, v12, :cond_2

    .line 1397
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v4, 0x1

    .end local v4    # "offset":I
    .restart local v1    # "offset":I
    add-int/2addr v5, v4

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1410
    if-ne v0, v13, :cond_3

    .line 1411
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1412
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1413
    const/4 v5, 0x3

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_0

    .line 1401
    .end local v1    # "offset":I
    .restart local v4    # "offset":I
    :cond_2
    int-to-long v8, v0

    xor-long/2addr v2, v8

    .line 1402
    const-wide v8, 0x100000001b3L

    mul-long/2addr v2, v8

    .line 1404
    const/16 v5, 0x5c

    if-ne v0, v5, :cond_9

    .line 1405
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-wide v2, v6

    .line 1406
    goto :goto_0

    .line 1417
    .end local v4    # "offset":I
    .restart local v1    # "offset":I
    :cond_3
    const/16 v5, 0x7d

    if-ne v0, v5, :cond_8

    .line 1418
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "offset":I
    .restart local v4    # "offset":I
    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1419
    if-ne v0, v13, :cond_4

    .line 1420
    const/16 v5, 0x10

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1421
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1422
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1439
    :goto_2
    const/4 v5, 0x4

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_0

    .line 1423
    :cond_4
    const/16 v5, 0x5d

    if-ne v0, v5, :cond_5

    .line 1424
    const/16 v5, 0xf

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1425
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1426
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    .line 1427
    :cond_5
    const/16 v5, 0x7d

    if-ne v0, v5, :cond_6

    .line 1428
    const/16 v5, 0xd

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1429
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1430
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    .line 1431
    :cond_6
    if-ne v0, v11, :cond_7

    .line 1432
    const/16 v5, 0x14

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1433
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v4, -0x1

    add-int/2addr v5, v6

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1434
    iput-char v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    .line 1436
    :cond_7
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-wide v2, v6

    .line 1437
    goto/16 :goto_0

    .line 1441
    .end local v4    # "offset":I
    .restart local v1    # "offset":I
    :cond_8
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move-wide v2, v6

    .line 1442
    goto/16 :goto_0

    .end local v1    # "offset":I
    .restart local v4    # "offset":I
    :cond_9
    move v1, v4

    .end local v4    # "offset":I
    .restart local v1    # "offset":I
    goto/16 :goto_1
.end method

.method public scanFieldUUID([C)Ljava/util/UUID;
    .locals 20
    .param p1, "fieldName"    # [C

    .prologue
    .line 4070
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4072
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v17

    if-nez v17, :cond_0

    .line 4073
    const/16 v17, -0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4074
    const/16 v16, 0x0

    .line 4274
    :goto_0
    return-object v16

    .line 4079
    :cond_0
    move-object/from16 v0, p1

    array-length v12, v0

    .line 4080
    .local v12, "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .local v13, "offset":I
    add-int v17, v17, v12

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 4083
    .local v3, "chLocal":C
    const/16 v17, 0x22

    move/from16 v0, v17

    if-ne v3, v0, :cond_20

    .line 4084
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int/lit8 v14, v17, 0x1

    .line 4085
    .local v14, "startIndex":I
    const/16 v17, 0x22

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v4

    .line 4086
    .local v4, "endIndex":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_1

    .line 4087
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v18, "unclosed str"

    invoke-direct/range {v17 .. v18}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 4090
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int/lit8 v15, v17, 0x1

    .line 4091
    .local v15, "startIndex2":I
    sub-int v8, v4, v15

    .line 4092
    .local v8, "len":I
    const/16 v17, 0x24

    move/from16 v0, v17

    if-ne v8, v0, :cond_16

    .line 4093
    const-wide/16 v10, 0x0

    .local v10, "mostSigBits":J
    const-wide/16 v6, 0x0

    .line 4094
    .local v6, "leastSigBits":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/16 v17, 0x8

    move/from16 v0, v17

    if-ge v5, v0, :cond_5

    .line 4095
    add-int v17, v15, v5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4097
    .local v2, "ch":C
    const/16 v17, 0x30

    move/from16 v0, v17

    if-lt v2, v0, :cond_2

    const/16 v17, 0x39

    move/from16 v0, v17

    if-gt v2, v0, :cond_2

    .line 4098
    add-int/lit8 v9, v2, -0x30

    .line 4108
    .local v9, "num":I
    :goto_2
    const/16 v17, 0x4

    shl-long v10, v10, v17

    .line 4109
    int-to-long v0, v9

    move-wide/from16 v18, v0

    or-long v10, v10, v18

    .line 4094
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4099
    .end local v9    # "num":I
    :cond_2
    const/16 v17, 0x61

    move/from16 v0, v17

    if-lt v2, v0, :cond_3

    const/16 v17, 0x66

    move/from16 v0, v17

    if-gt v2, v0, :cond_3

    .line 4100
    add-int/lit8 v17, v2, -0x61

    add-int/lit8 v9, v17, 0xa

    .restart local v9    # "num":I
    goto :goto_2

    .line 4101
    .end local v9    # "num":I
    :cond_3
    const/16 v17, 0x41

    move/from16 v0, v17

    if-lt v2, v0, :cond_4

    const/16 v17, 0x46

    move/from16 v0, v17

    if-gt v2, v0, :cond_4

    .line 4102
    add-int/lit8 v17, v2, -0x41

    add-int/lit8 v9, v17, 0xa

    .restart local v9    # "num":I
    goto :goto_2

    .line 4104
    .end local v9    # "num":I
    :cond_4
    const/16 v17, -0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4105
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 4111
    .end local v2    # "ch":C
    :cond_5
    const/16 v5, 0x9

    :goto_3
    const/16 v17, 0xd

    move/from16 v0, v17

    if-ge v5, v0, :cond_9

    .line 4112
    add-int v17, v15, v5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4114
    .restart local v2    # "ch":C
    const/16 v17, 0x30

    move/from16 v0, v17

    if-lt v2, v0, :cond_6

    const/16 v17, 0x39

    move/from16 v0, v17

    if-gt v2, v0, :cond_6

    .line 4115
    add-int/lit8 v9, v2, -0x30

    .line 4125
    .restart local v9    # "num":I
    :goto_4
    const/16 v17, 0x4

    shl-long v10, v10, v17

    .line 4126
    int-to-long v0, v9

    move-wide/from16 v18, v0

    or-long v10, v10, v18

    .line 4111
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 4116
    .end local v9    # "num":I
    :cond_6
    const/16 v17, 0x61

    move/from16 v0, v17

    if-lt v2, v0, :cond_7

    const/16 v17, 0x66

    move/from16 v0, v17

    if-gt v2, v0, :cond_7

    .line 4117
    add-int/lit8 v17, v2, -0x61

    add-int/lit8 v9, v17, 0xa

    .restart local v9    # "num":I
    goto :goto_4

    .line 4118
    .end local v9    # "num":I
    :cond_7
    const/16 v17, 0x41

    move/from16 v0, v17

    if-lt v2, v0, :cond_8

    const/16 v17, 0x46

    move/from16 v0, v17

    if-gt v2, v0, :cond_8

    .line 4119
    add-int/lit8 v17, v2, -0x41

    add-int/lit8 v9, v17, 0xa

    .restart local v9    # "num":I
    goto :goto_4

    .line 4121
    .end local v9    # "num":I
    :cond_8
    const/16 v17, -0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4122
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 4128
    .end local v2    # "ch":C
    :cond_9
    const/16 v5, 0xe

    :goto_5
    const/16 v17, 0x12

    move/from16 v0, v17

    if-ge v5, v0, :cond_d

    .line 4129
    add-int v17, v15, v5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4131
    .restart local v2    # "ch":C
    const/16 v17, 0x30

    move/from16 v0, v17

    if-lt v2, v0, :cond_a

    const/16 v17, 0x39

    move/from16 v0, v17

    if-gt v2, v0, :cond_a

    .line 4132
    add-int/lit8 v9, v2, -0x30

    .line 4142
    .restart local v9    # "num":I
    :goto_6
    const/16 v17, 0x4

    shl-long v10, v10, v17

    .line 4143
    int-to-long v0, v9

    move-wide/from16 v18, v0

    or-long v10, v10, v18

    .line 4128
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 4133
    .end local v9    # "num":I
    :cond_a
    const/16 v17, 0x61

    move/from16 v0, v17

    if-lt v2, v0, :cond_b

    const/16 v17, 0x66

    move/from16 v0, v17

    if-gt v2, v0, :cond_b

    .line 4134
    add-int/lit8 v17, v2, -0x61

    add-int/lit8 v9, v17, 0xa

    .restart local v9    # "num":I
    goto :goto_6

    .line 4135
    .end local v9    # "num":I
    :cond_b
    const/16 v17, 0x41

    move/from16 v0, v17

    if-lt v2, v0, :cond_c

    const/16 v17, 0x46

    move/from16 v0, v17

    if-gt v2, v0, :cond_c

    .line 4136
    add-int/lit8 v17, v2, -0x41

    add-int/lit8 v9, v17, 0xa

    .restart local v9    # "num":I
    goto :goto_6

    .line 4138
    .end local v9    # "num":I
    :cond_c
    const/16 v17, -0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4139
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 4145
    .end local v2    # "ch":C
    :cond_d
    const/16 v5, 0x13

    :goto_7
    const/16 v17, 0x17

    move/from16 v0, v17

    if-ge v5, v0, :cond_11

    .line 4146
    add-int v17, v15, v5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4148
    .restart local v2    # "ch":C
    const/16 v17, 0x30

    move/from16 v0, v17

    if-lt v2, v0, :cond_e

    const/16 v17, 0x39

    move/from16 v0, v17

    if-gt v2, v0, :cond_e

    .line 4149
    add-int/lit8 v9, v2, -0x30

    .line 4159
    .restart local v9    # "num":I
    :goto_8
    const/16 v17, 0x4

    shl-long v6, v6, v17

    .line 4160
    int-to-long v0, v9

    move-wide/from16 v18, v0

    or-long v6, v6, v18

    .line 4145
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 4150
    .end local v9    # "num":I
    :cond_e
    const/16 v17, 0x61

    move/from16 v0, v17

    if-lt v2, v0, :cond_f

    const/16 v17, 0x66

    move/from16 v0, v17

    if-gt v2, v0, :cond_f

    .line 4151
    add-int/lit8 v17, v2, -0x61

    add-int/lit8 v9, v17, 0xa

    .restart local v9    # "num":I
    goto :goto_8

    .line 4152
    .end local v9    # "num":I
    :cond_f
    const/16 v17, 0x41

    move/from16 v0, v17

    if-lt v2, v0, :cond_10

    const/16 v17, 0x46

    move/from16 v0, v17

    if-gt v2, v0, :cond_10

    .line 4153
    add-int/lit8 v17, v2, -0x41

    add-int/lit8 v9, v17, 0xa

    .restart local v9    # "num":I
    goto :goto_8

    .line 4155
    .end local v9    # "num":I
    :cond_10
    const/16 v17, -0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4156
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 4162
    .end local v2    # "ch":C
    :cond_11
    const/16 v5, 0x18

    :goto_9
    const/16 v17, 0x24

    move/from16 v0, v17

    if-ge v5, v0, :cond_15

    .line 4163
    add-int v17, v15, v5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4165
    .restart local v2    # "ch":C
    const/16 v17, 0x30

    move/from16 v0, v17

    if-lt v2, v0, :cond_12

    const/16 v17, 0x39

    move/from16 v0, v17

    if-gt v2, v0, :cond_12

    .line 4166
    add-int/lit8 v9, v2, -0x30

    .line 4176
    .restart local v9    # "num":I
    :goto_a
    const/16 v17, 0x4

    shl-long v6, v6, v17

    .line 4177
    int-to-long v0, v9

    move-wide/from16 v18, v0

    or-long v6, v6, v18

    .line 4162
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 4167
    .end local v9    # "num":I
    :cond_12
    const/16 v17, 0x61

    move/from16 v0, v17

    if-lt v2, v0, :cond_13

    const/16 v17, 0x66

    move/from16 v0, v17

    if-gt v2, v0, :cond_13

    .line 4168
    add-int/lit8 v17, v2, -0x61

    add-int/lit8 v9, v17, 0xa

    .restart local v9    # "num":I
    goto :goto_a

    .line 4169
    .end local v9    # "num":I
    :cond_13
    const/16 v17, 0x41

    move/from16 v0, v17

    if-lt v2, v0, :cond_14

    const/16 v17, 0x46

    move/from16 v0, v17

    if-gt v2, v0, :cond_14

    .line 4170
    add-int/lit8 v17, v2, -0x41

    add-int/lit8 v9, v17, 0xa

    .restart local v9    # "num":I
    goto :goto_a

    .line 4172
    .end local v9    # "num":I
    :cond_14
    const/16 v17, -0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4173
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 4179
    .end local v2    # "ch":C
    :cond_15
    new-instance v16, Ljava/util/UUID;

    move-object/from16 v0, v16

    invoke-direct {v0, v10, v11, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    .line 4181
    .local v16, "uuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int/lit8 v17, v17, 0x1

    sub-int v17, v4, v17

    add-int/lit8 v17, v17, 0x1

    add-int v12, v13, v17

    .line 4182
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    add-int v17, v17, v12

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v12, v13

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    :goto_b
    move v13, v12

    .line 4239
    .end local v4    # "endIndex":I
    .end local v5    # "i":I
    .end local v6    # "leastSigBits":J
    .end local v8    # "len":I
    .end local v10    # "mostSigBits":J
    .end local v12    # "offset":I
    .end local v14    # "startIndex":I
    .end local v15    # "startIndex2":I
    .restart local v13    # "offset":I
    :goto_c
    const/16 v17, 0x2c

    move/from16 v0, v17

    if-ne v3, v0, :cond_23

    .line 4240
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int v17, v17, v13

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4241
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 4242
    const/16 v17, 0x3

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0

    .line 4183
    .end local v16    # "uuid":Ljava/util/UUID;
    .restart local v4    # "endIndex":I
    .restart local v8    # "len":I
    .restart local v14    # "startIndex":I
    .restart local v15    # "startIndex2":I
    :cond_16
    const/16 v17, 0x20

    move/from16 v0, v17

    if-ne v8, v0, :cond_1f

    .line 4184
    const-wide/16 v10, 0x0

    .restart local v10    # "mostSigBits":J
    const-wide/16 v6, 0x0

    .line 4185
    .restart local v6    # "leastSigBits":J
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_d
    const/16 v17, 0x10

    move/from16 v0, v17

    if-ge v5, v0, :cond_1a

    .line 4186
    add-int v17, v15, v5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4188
    .restart local v2    # "ch":C
    const/16 v17, 0x30

    move/from16 v0, v17

    if-lt v2, v0, :cond_17

    const/16 v17, 0x39

    move/from16 v0, v17

    if-gt v2, v0, :cond_17

    .line 4189
    add-int/lit8 v9, v2, -0x30

    .line 4199
    .restart local v9    # "num":I
    :goto_e
    const/16 v17, 0x4

    shl-long v10, v10, v17

    .line 4200
    int-to-long v0, v9

    move-wide/from16 v18, v0

    or-long v10, v10, v18

    .line 4185
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 4190
    .end local v9    # "num":I
    :cond_17
    const/16 v17, 0x61

    move/from16 v0, v17

    if-lt v2, v0, :cond_18

    const/16 v17, 0x66

    move/from16 v0, v17

    if-gt v2, v0, :cond_18

    .line 4191
    add-int/lit8 v17, v2, -0x61

    add-int/lit8 v9, v17, 0xa

    .restart local v9    # "num":I
    goto :goto_e

    .line 4192
    .end local v9    # "num":I
    :cond_18
    const/16 v17, 0x41

    move/from16 v0, v17

    if-lt v2, v0, :cond_19

    const/16 v17, 0x46

    move/from16 v0, v17

    if-gt v2, v0, :cond_19

    .line 4193
    add-int/lit8 v17, v2, -0x41

    add-int/lit8 v9, v17, 0xa

    .restart local v9    # "num":I
    goto :goto_e

    .line 4195
    .end local v9    # "num":I
    :cond_19
    const/16 v17, -0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4196
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 4202
    .end local v2    # "ch":C
    :cond_1a
    const/16 v5, 0x10

    :goto_f
    const/16 v17, 0x20

    move/from16 v0, v17

    if-ge v5, v0, :cond_1e

    .line 4203
    add-int v17, v15, v5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4205
    .restart local v2    # "ch":C
    const/16 v17, 0x30

    move/from16 v0, v17

    if-lt v2, v0, :cond_1b

    const/16 v17, 0x39

    move/from16 v0, v17

    if-gt v2, v0, :cond_1b

    .line 4206
    add-int/lit8 v9, v2, -0x30

    .line 4216
    .restart local v9    # "num":I
    :goto_10
    const/16 v17, 0x4

    shl-long v6, v6, v17

    .line 4217
    int-to-long v0, v9

    move-wide/from16 v18, v0

    or-long v6, v6, v18

    .line 4202
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 4207
    .end local v9    # "num":I
    :cond_1b
    const/16 v17, 0x61

    move/from16 v0, v17

    if-lt v2, v0, :cond_1c

    const/16 v17, 0x66

    move/from16 v0, v17

    if-gt v2, v0, :cond_1c

    .line 4208
    add-int/lit8 v17, v2, -0x61

    add-int/lit8 v9, v17, 0xa

    .restart local v9    # "num":I
    goto :goto_10

    .line 4209
    .end local v9    # "num":I
    :cond_1c
    const/16 v17, 0x41

    move/from16 v0, v17

    if-lt v2, v0, :cond_1d

    const/16 v17, 0x46

    move/from16 v0, v17

    if-gt v2, v0, :cond_1d

    .line 4210
    add-int/lit8 v17, v2, -0x41

    add-int/lit8 v9, v17, 0xa

    .restart local v9    # "num":I
    goto :goto_10

    .line 4212
    .end local v9    # "num":I
    :cond_1d
    const/16 v17, -0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4213
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 4220
    .end local v2    # "ch":C
    :cond_1e
    new-instance v16, Ljava/util/UUID;

    move-object/from16 v0, v16

    invoke-direct {v0, v10, v11, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    .line 4222
    .restart local v16    # "uuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int/lit8 v17, v17, 0x1

    sub-int v17, v4, v17

    add-int/lit8 v17, v17, 0x1

    add-int v12, v13, v17

    .line 4223
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    add-int v17, v17, v12

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v12, v13

    .line 4224
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto/16 :goto_b

    .line 4225
    .end local v5    # "i":I
    .end local v6    # "leastSigBits":J
    .end local v10    # "mostSigBits":J
    .end local v12    # "offset":I
    .end local v16    # "uuid":Ljava/util/UUID;
    .restart local v13    # "offset":I
    :cond_1f
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4226
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 4228
    .end local v4    # "endIndex":I
    .end local v8    # "len":I
    .end local v14    # "startIndex":I
    .end local v15    # "startIndex2":I
    :cond_20
    const/16 v17, 0x6e

    move/from16 v0, v17

    if-ne v3, v0, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    add-int v17, v17, v13

    .line 4229
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v17

    const/16 v18, 0x75

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    add-int v17, v17, v12

    .line 4230
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v17

    const/16 v18, 0x6c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    add-int v17, v17, v13

    .line 4231
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v17

    const/16 v18, 0x6c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_22

    .line 4232
    const/16 v16, 0x0

    .line 4233
    .restart local v16    # "uuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    add-int v17, v17, v12

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    goto/16 :goto_c

    .end local v16    # "uuid":Ljava/util/UUID;
    :cond_21
    move v12, v13

    .line 4235
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    :cond_22
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4236
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 4246
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    .restart local v16    # "uuid":Ljava/util/UUID;
    :cond_23
    const/16 v17, 0x7d

    move/from16 v0, v17

    if-ne v3, v0, :cond_28

    .line 4247
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    add-int v17, v17, v13

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 4248
    const/16 v17, 0x2c

    move/from16 v0, v17

    if-ne v3, v0, :cond_24

    .line 4249
    const/16 v17, 0x10

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4250
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int v17, v17, v12

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4251
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 4268
    :goto_11
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0

    .line 4252
    :cond_24
    const/16 v17, 0x5d

    move/from16 v0, v17

    if-ne v3, v0, :cond_25

    .line 4253
    const/16 v17, 0xf

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4254
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int v17, v17, v12

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4255
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_11

    .line 4256
    :cond_25
    const/16 v17, 0x7d

    move/from16 v0, v17

    if-ne v3, v0, :cond_26

    .line 4257
    const/16 v17, 0xd

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4258
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int v17, v17, v12

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4259
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_11

    .line 4260
    :cond_26
    const/16 v17, 0x1a

    move/from16 v0, v17

    if-ne v3, v0, :cond_27

    .line 4261
    const/16 v17, 0x14

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4262
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v18, v12, -0x1

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4263
    const/16 v17, 0x1a

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto/16 :goto_11

    .line 4265
    :cond_27
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4266
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 4270
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_28
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4271
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method public final scanFloat(C)F
    .locals 22
    .param p1, "seperator"    # C

    .prologue
    .line 2560
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2562
    const/4 v8, 0x0

    .line 2563
    .local v8, "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .local v9, "offset":I
    add-int v17, v17, v8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2564
    .local v2, "chLocal":C
    const/16 v17, 0x22

    move/from16 v0, v17

    if-ne v2, v0, :cond_1

    const/4 v12, 0x1

    .line 2565
    .local v12, "quote":Z
    :goto_0
    if-eqz v12, :cond_0

    .line 2566
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v9, v8

    .line 2569
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_0
    const/16 v17, 0x2d

    move/from16 v0, v17

    if-ne v2, v0, :cond_2

    const/4 v5, 0x1

    .line 2570
    .local v5, "negative":Z
    :goto_1
    if-eqz v5, :cond_17

    .line 2571
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v17, v17, v9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2575
    :goto_2
    const/16 v17, 0x30

    move/from16 v0, v17

    if-lt v2, v0, :cond_f

    const/16 v17, 0x39

    move/from16 v0, v17

    if-gt v2, v0, :cond_f

    .line 2576
    add-int/lit8 v17, v2, -0x30

    move/from16 v0, v17

    int-to-long v6, v0

    .line 2578
    .local v6, "intVal":J
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    add-int v17, v17, v8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2579
    const/16 v17, 0x30

    move/from16 v0, v17

    if-lt v2, v0, :cond_3

    const/16 v17, 0x39

    move/from16 v0, v17

    if-gt v2, v0, :cond_3

    .line 2580
    const-wide/16 v18, 0xa

    mul-long v18, v18, v6

    add-int/lit8 v17, v2, -0x30

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v6, v18, v20

    move v8, v9

    .line 2581
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_3

    .line 2564
    .end local v5    # "negative":Z
    .end local v6    # "intVal":J
    .end local v8    # "offset":I
    .end local v12    # "quote":Z
    .restart local v9    # "offset":I
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 2569
    .restart local v12    # "quote":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 2587
    .restart local v5    # "negative":Z
    .restart local v6    # "intVal":J
    :cond_3
    const-wide/16 v10, 0x1

    .line 2588
    .local v10, "power":J
    const/16 v17, 0x2e

    move/from16 v0, v17

    if-ne v2, v0, :cond_4

    const/4 v13, 0x1

    .line 2589
    .local v13, "small":Z
    :goto_4
    if-eqz v13, :cond_6

    .line 2590
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v17, v17, v9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2591
    const/16 v17, 0x30

    move/from16 v0, v17

    if-lt v2, v0, :cond_5

    const/16 v17, 0x39

    move/from16 v0, v17

    if-gt v2, v0, :cond_5

    .line 2592
    const-wide/16 v18, 0xa

    mul-long v18, v18, v6

    add-int/lit8 v17, v2, -0x30

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v6, v18, v20

    .line 2593
    const-wide/16 v10, 0xa

    .line 2595
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    add-int v17, v17, v8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2596
    const/16 v17, 0x30

    move/from16 v0, v17

    if-lt v2, v0, :cond_6

    const/16 v17, 0x39

    move/from16 v0, v17

    if-gt v2, v0, :cond_6

    .line 2597
    const-wide/16 v18, 0xa

    mul-long v18, v18, v6

    add-int/lit8 v17, v2, -0x30

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v6, v18, v20

    .line 2598
    const-wide/16 v18, 0xa

    mul-long v10, v10, v18

    move v8, v9

    .line 2599
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_5

    .line 2588
    .end local v8    # "offset":I
    .end local v13    # "small":Z
    .restart local v9    # "offset":I
    :cond_4
    const/4 v13, 0x0

    goto :goto_4

    .line 2605
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    .restart local v13    # "small":Z
    :cond_5
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2606
    const/16 v16, 0x0

    .line 2708
    .end local v6    # "intVal":J
    .end local v10    # "power":J
    .end local v13    # "small":Z
    :goto_6
    return v16

    .line 2610
    .end local v8    # "offset":I
    .restart local v6    # "intVal":J
    .restart local v9    # "offset":I
    .restart local v10    # "power":J
    .restart local v13    # "small":Z
    :cond_6
    const/16 v17, 0x65

    move/from16 v0, v17

    if-eq v2, v0, :cond_7

    const/16 v17, 0x45

    move/from16 v0, v17

    if-ne v2, v0, :cond_9

    :cond_7
    const/4 v4, 0x1

    .line 2611
    .local v4, "exp":Z
    :goto_7
    if-eqz v4, :cond_a

    .line 2612
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v17, v17, v9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2613
    const/16 v17, 0x2b

    move/from16 v0, v17

    if-eq v2, v0, :cond_8

    const/16 v17, 0x2d

    move/from16 v0, v17

    if-ne v2, v0, :cond_16

    .line 2614
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    add-int v17, v17, v8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2617
    :goto_8
    const/16 v17, 0x30

    move/from16 v0, v17

    if-lt v2, v0, :cond_a

    const/16 v17, 0x39

    move/from16 v0, v17

    if-gt v2, v0, :cond_a

    .line 2618
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v17, v17, v9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v9, v8

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto :goto_8

    .line 2610
    .end local v4    # "exp":Z
    :cond_9
    const/4 v4, 0x0

    goto :goto_7

    .line 2641
    .restart local v4    # "exp":Z
    :cond_a
    if-eqz v12, :cond_d

    .line 2642
    const/16 v17, 0x22

    move/from16 v0, v17

    if-eq v2, v0, :cond_b

    .line 2643
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2644
    const/16 v16, 0x0

    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_6

    .line 2646
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v17, v17, v9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2648
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v14, v17, 0x1

    .line 2649
    .local v14, "start":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int v17, v17, v8

    sub-int v17, v17, v14

    add-int/lit8 v3, v17, -0x2

    .line 2655
    .local v3, "count":I
    :goto_9
    if-nez v4, :cond_e

    const/16 v17, 0x14

    move/from16 v0, v17

    if-ge v3, v0, :cond_e

    .line 2656
    long-to-float v0, v6

    move/from16 v17, v0

    long-to-float v0, v10

    move/from16 v18, v0

    div-float v16, v17, v18

    .line 2657
    .local v16, "value":F
    if-eqz v5, :cond_c

    .line 2658
    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    .line 2700
    :cond_c
    :goto_a
    move/from16 v0, p1

    if-ne v2, v0, :cond_15

    .line 2701
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int v17, v17, v8

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2702
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2703
    const/16 v17, 0x3

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2704
    const/16 v17, 0x10

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_6

    .line 2651
    .end local v3    # "count":I
    .end local v8    # "offset":I
    .end local v14    # "start":I
    .end local v16    # "value":F
    .restart local v9    # "offset":I
    :cond_d
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2652
    .restart local v14    # "start":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int v17, v17, v9

    sub-int v17, v17, v14

    add-int/lit8 v3, v17, -0x1

    .restart local v3    # "count":I
    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_9

    .line 2661
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v15

    .line 2662
    .local v15, "text":Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    .restart local v16    # "value":F
    goto :goto_a

    .line 2664
    .end local v3    # "count":I
    .end local v4    # "exp":Z
    .end local v6    # "intVal":J
    .end local v10    # "power":J
    .end local v13    # "small":Z
    .end local v14    # "start":I
    .end local v15    # "text":Ljava/lang/String;
    .end local v16    # "value":F
    :cond_f
    const/16 v17, 0x6e

    move/from16 v0, v17

    if-ne v2, v0, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int v17, v17, v8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v17

    const/16 v18, 0x75

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int v17, v17, v8

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v17

    const/16 v18, 0x6c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int v17, v17, v8

    add-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v17

    const/16 v18, 0x6c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 2665
    const/16 v17, 0x5

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2666
    const/16 v16, 0x0

    .line 2667
    .restart local v16    # "value":F
    add-int/lit8 v8, v8, 0x3

    .line 2668
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    add-int v17, v17, v8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 2670
    if-eqz v12, :cond_10

    const/16 v17, 0x22

    move/from16 v0, v17

    if-ne v2, v0, :cond_10

    .line 2671
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v17, v17, v9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v9, v8

    .line 2675
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_10
    :goto_b
    const/16 v17, 0x2c

    move/from16 v0, v17

    if-ne v2, v0, :cond_11

    .line 2676
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int v17, v17, v9

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2677
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2678
    const/16 v17, 0x5

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2679
    const/16 v17, 0x10

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    move v8, v9

    .line 2680
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_6

    .line 2681
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_11
    const/16 v17, 0x5d

    move/from16 v0, v17

    if-ne v2, v0, :cond_12

    .line 2682
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int v17, v17, v9

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2683
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2684
    const/16 v17, 0x5

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2685
    const/16 v17, 0xf

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    move v8, v9

    .line 2686
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_6

    .line 2687
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_12
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 2688
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v17, v17, v9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    move v9, v8

    .line 2689
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto/16 :goto_b

    .line 2693
    :cond_13
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2694
    const/16 v16, 0x0

    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_6

    .line 2696
    .end local v16    # "value":F
    :cond_14
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2697
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 2707
    .restart local v3    # "count":I
    .restart local v4    # "exp":Z
    .restart local v6    # "intVal":J
    .restart local v10    # "power":J
    .restart local v13    # "small":Z
    .restart local v14    # "start":I
    .restart local v16    # "value":F
    :cond_15
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_6

    .end local v3    # "count":I
    .end local v14    # "start":I
    .end local v16    # "value":F
    :cond_16
    move v9, v8

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto/16 :goto_8

    .end local v4    # "exp":Z
    .end local v6    # "intVal":J
    .end local v10    # "power":J
    .end local v13    # "small":Z
    :cond_17
    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_2
.end method

.method public final scanHex()V
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 4884
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v3, 0x78

    if-eq v2, v3, :cond_0

    .line 4885
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal state. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4887
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4888
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v2, v4, :cond_1

    .line 4889
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal state. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4892
    :cond_1
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 4893
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4895
    const/4 v1, 0x0

    .line 4896
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v0

    .line 4897
    .local v0, "ch":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_2

    const/16 v2, 0x39

    if-le v0, v2, :cond_3

    :cond_2
    const/16 v2, 0x41

    if-lt v0, v2, :cond_4

    const/16 v2, 0x46

    if-gt v0, v2, :cond_4

    .line 4898
    :cond_3
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4895
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4900
    :cond_4
    if-ne v0, v4, :cond_5

    .line 4901
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4902
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4908
    const/16 v2, 0x1a

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4909
    return-void

    .line 4905
    :cond_5
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal state. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final scanIdent()V
    .locals 2

    .prologue
    .line 4589
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 4590
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 4593
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4595
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4596
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4600
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

    .line 4619
    :goto_0
    return-void

    .line 4604
    :cond_1
    const-string v1, "new"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4605
    const/16 v1, 0x9

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 4606
    :cond_2
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4607
    const/4 v1, 0x6

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 4608
    :cond_3
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4609
    const/4 v1, 0x7

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 4610
    :cond_4
    const-string/jumbo v1, "undefined"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4611
    const/16 v1, 0x17

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 4612
    :cond_5
    const-string v1, "Set"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4613
    const/16 v1, 0x15

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 4614
    :cond_6
    const-string v1, "TreeSet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4615
    const/16 v1, 0x16

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 4617
    :cond_7
    const/16 v1, 0x12

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0
.end method

.method public scanInt(C)I
    .locals 12
    .param p1, "expectNext"    # C

    .prologue
    const/16 v11, 0x10

    const/4 v1, 0x1

    const/4 v10, 0x5

    const/4 v9, -0x1

    const/4 v6, 0x0

    .line 2029
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2031
    const/4 v2, 0x0

    .line 2032
    .local v2, "offset":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    add-int/2addr v7, v2

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2034
    .local v0, "chLocal":C
    const/16 v7, 0x22

    if-ne v0, v7, :cond_1

    move v4, v1

    .line 2035
    .local v4, "quote":Z
    :goto_0
    if-eqz v4, :cond_0

    .line 2036
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v3, v2

    .line 2039
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_0
    const/16 v7, 0x2d

    if-ne v0, v7, :cond_2

    .line 2040
    .local v1, "negative":Z
    :goto_1
    if-eqz v1, :cond_10

    .line 2041
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v7, v3

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2045
    :goto_2
    const/16 v7, 0x30

    if-lt v0, v7, :cond_5

    const/16 v7, 0x39

    if-gt v0, v7, :cond_5

    .line 2046
    add-int/lit8 v5, v0, -0x30

    .line 2048
    .local v5, "value":I
    :goto_3
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v7, v2

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2049
    const/16 v7, 0x30

    if-lt v0, v7, :cond_3

    const/16 v7, 0x39

    if-gt v0, v7, :cond_3

    .line 2050
    mul-int/lit8 v7, v5, 0xa

    add-int/lit8 v8, v0, -0x30

    add-int v5, v7, v8

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_3

    .end local v1    # "negative":Z
    .end local v2    # "offset":I
    .end local v4    # "quote":Z
    .end local v5    # "value":I
    .restart local v3    # "offset":I
    :cond_1
    move v4, v6

    .line 2034
    goto :goto_0

    .restart local v4    # "quote":Z
    :cond_2
    move v1, v6

    .line 2039
    goto :goto_1

    .line 2051
    .restart local v1    # "negative":Z
    .restart local v5    # "value":I
    :cond_3
    const/16 v7, 0x2e

    if-ne v0, v7, :cond_4

    .line 2052
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    move v5, v6

    .line 2111
    .end local v5    # "value":I
    :goto_4
    return v5

    .line 2058
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v5    # "value":I
    :cond_4
    if-gez v5, :cond_c

    .line 2059
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    move v5, v6

    .line 2060
    goto :goto_4

    .line 2062
    .end local v5    # "value":I
    :cond_5
    const/16 v7, 0x6e

    if-ne v0, v7, :cond_a

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v2

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v8, 0x75

    if-ne v7, v8, :cond_a

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v8, 0x6c

    if-ne v7, v8, :cond_a

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v8, 0x6c

    if-ne v7, v8, :cond_a

    .line 2063
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2064
    const/4 v5, 0x0

    .line 2065
    .restart local v5    # "value":I
    add-int/lit8 v2, v2, 0x3

    .line 2066
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v7, v2

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2068
    if-eqz v4, :cond_6

    const/16 v7, 0x22

    if-ne v0, v7, :cond_6

    .line 2069
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v7, v3

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v3, v2

    .line 2073
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_6
    :goto_5
    const/16 v7, 0x2c

    if-ne v0, v7, :cond_7

    .line 2074
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2075
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2076
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2077
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    move v2, v3

    .line 2078
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_4

    .line 2079
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_7
    const/16 v7, 0x5d

    if-ne v0, v7, :cond_8

    .line 2080
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2081
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2082
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2083
    const/16 v6, 0xf

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    move v2, v3

    .line 2084
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_4

    .line 2085
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_8
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2086
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v7, v3

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v3, v2

    .line 2087
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_5

    .line 2091
    :cond_9
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    move v5, v6

    .line 2092
    goto/16 :goto_4

    .line 2094
    .end local v5    # "value":I
    :cond_a
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v5, v6

    .line 2095
    goto/16 :goto_4

    .line 2106
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v5    # "value":I
    :cond_b
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2107
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v6, v3

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v3, v2

    .line 2099
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_c
    if-ne v0, p1, :cond_b

    .line 2100
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2101
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v6

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2102
    const/4 v6, 0x3

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2103
    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2104
    if-eqz v1, :cond_d

    neg-int v5, v5

    .end local v5    # "value":I
    :cond_d
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_4

    .line 2110
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v5    # "value":I
    :cond_e
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2111
    if-eqz v1, :cond_f

    neg-int v5, v5

    .end local v5    # "value":I
    :cond_f
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_4

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_10
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_2
.end method

.method public scanLong(C)J
    .locals 14
    .param p1, "expectNextChar"    # C

    .prologue
    .line 2291
    const/4 v7, 0x0

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2293
    const/4 v2, 0x0

    .line 2294
    .local v2, "offset":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    add-int/2addr v7, v2

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2295
    .local v0, "chLocal":C
    const/16 v7, 0x22

    if-ne v0, v7, :cond_1

    const/4 v4, 0x1

    .line 2296
    .local v4, "quote":Z
    :goto_0
    if-eqz v4, :cond_0

    .line 2297
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v3, v2

    .line 2300
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_0
    const/16 v7, 0x2d

    if-ne v0, v7, :cond_2

    const/4 v1, 0x1

    .line 2301
    .local v1, "negative":Z
    :goto_1
    if-eqz v1, :cond_13

    .line 2302
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v7, v3

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2306
    :goto_2
    const/16 v7, 0x30

    if-lt v0, v7, :cond_7

    const/16 v7, 0x39

    if-gt v0, v7, :cond_7

    .line 2307
    add-int/lit8 v7, v0, -0x30

    int-to-long v8, v7

    .line 2309
    .local v8, "value":J
    :goto_3
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v7, v2

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2310
    const/16 v7, 0x30

    if-lt v0, v7, :cond_3

    const/16 v7, 0x39

    if-gt v0, v7, :cond_3

    .line 2311
    const-wide/16 v10, 0xa

    mul-long/2addr v10, v8

    add-int/lit8 v7, v0, -0x30

    int-to-long v12, v7

    add-long v8, v10, v12

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_3

    .line 2295
    .end local v1    # "negative":Z
    .end local v2    # "offset":I
    .end local v4    # "quote":Z
    .end local v8    # "value":J
    .restart local v3    # "offset":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 2300
    .restart local v4    # "quote":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 2312
    .restart local v1    # "negative":Z
    .restart local v8    # "value":J
    :cond_3
    const/16 v7, 0x2e

    if-ne v0, v7, :cond_4

    .line 2313
    const/4 v7, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2314
    const-wide/16 v8, 0x0

    move v2, v3

    .line 2383
    .end local v3    # "offset":I
    .end local v8    # "value":J
    .restart local v2    # "offset":I
    :goto_4
    return-wide v8

    .line 2319
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v8    # "value":J
    :cond_4
    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_5

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v7, v8, v10

    if-nez v7, :cond_6

    if-eqz v1, :cond_6

    :cond_5
    const/4 v6, 0x1

    .line 2320
    .local v6, "valid":Z
    :goto_5
    if-nez v6, :cond_d

    .line 2321
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v3, -0x1

    invoke-virtual {p0, v7, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v5

    .line 2322
    .local v5, "val":Ljava/lang/String;
    new-instance v7, Ljava/lang/NumberFormatException;

    invoke-direct {v7, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2319
    .end local v5    # "val":Ljava/lang/String;
    .end local v6    # "valid":Z
    :cond_6
    const/4 v6, 0x0

    goto :goto_5

    .line 2324
    .end local v3    # "offset":I
    .end local v8    # "value":J
    .restart local v2    # "offset":I
    :cond_7
    const/16 v7, 0x6e

    if-ne v0, v7, :cond_c

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v2

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v10, 0x75

    if-ne v7, v10, :cond_c

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v10, 0x6c

    if-ne v7, v10, :cond_c

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v10, 0x6c

    if-ne v7, v10, :cond_c

    .line 2325
    const/4 v7, 0x5

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2326
    const-wide/16 v8, 0x0

    .line 2327
    .restart local v8    # "value":J
    add-int/lit8 v2, v2, 0x3

    .line 2328
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v7, v2

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 2330
    if-eqz v4, :cond_8

    const/16 v7, 0x22

    if-ne v0, v7, :cond_8

    .line 2331
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v7, v3

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v3, v2

    .line 2335
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_8
    :goto_6
    const/16 v7, 0x2c

    if-ne v0, v7, :cond_9

    .line 2336
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2337
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2338
    const/4 v7, 0x5

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2339
    const/16 v7, 0x10

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    move v2, v3

    .line 2340
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_4

    .line 2341
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_9
    const/16 v7, 0x5d

    if-ne v0, v7, :cond_a

    .line 2342
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2343
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2344
    const/4 v7, 0x5

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2345
    const/16 v7, 0xf

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    move v2, v3

    .line 2346
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_4

    .line 2347
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_a
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2348
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v7, v3

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v3, v2

    .line 2349
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_6

    .line 2353
    :cond_b
    const/4 v7, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2354
    const-wide/16 v8, 0x0

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_4

    .line 2356
    .end local v8    # "value":J
    :cond_c
    const/4 v7, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2357
    const-wide/16 v8, 0x0

    goto/16 :goto_4

    .line 2360
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v6    # "valid":Z
    .restart local v8    # "value":J
    :cond_d
    if-eqz v4, :cond_f

    .line 2361
    const/16 v7, 0x22

    if-eq v0, v7, :cond_e

    .line 2362
    const/4 v7, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2363
    const-wide/16 v8, 0x0

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_4

    .line 2365
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_e
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v7, v3

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v3, v2

    .line 2370
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_f
    :goto_7
    if-ne v0, p1, :cond_11

    .line 2371
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 2372
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 2373
    const/4 v7, 0x3

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 2374
    const/16 v7, 0x10

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 2375
    if-eqz v1, :cond_10

    neg-long v8, v8

    .end local v8    # "value":J
    :cond_10
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_4

    .line 2377
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v8    # "value":J
    :cond_11
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 2378
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v7, v3

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v3, v2

    .line 2379
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_7

    .line 2382
    :cond_12
    const/4 v7, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v2, v3

    .line 2383
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_4

    .end local v2    # "offset":I
    .end local v6    # "valid":Z
    .end local v8    # "value":J
    .restart local v3    # "offset":I
    :cond_13
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_2
.end method

.method public final scanNullOrNew()V
    .locals 7

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xc

    const/16 v4, 0xa

    const/16 v3, 0x9

    const/16 v2, 0x8

    .line 4510
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_0

    .line 4511
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse null or new"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4513
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4515
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x75

    if-ne v0, v1, :cond_5

    .line 4516
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4517
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_1

    .line 4518
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse null"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4520
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4522
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_2

    .line 4523
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse null"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4525
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4527
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v4, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v6, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v3, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v5, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v2, :cond_4

    .line 4529
    :cond_3
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4552
    :goto_0
    return-void

    .line 4531
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan null error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4536
    :cond_5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x65

    if-eq v0, v1, :cond_6

    .line 4537
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse new"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4539
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4541
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x77

    if-eq v0, v1, :cond_7

    .line 4542
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse new"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4544
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4546
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v4, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v6, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v3, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v5, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v2, :cond_9

    .line 4548
    :cond_8
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 4550
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan new error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanNumber()V
    .locals 8

    .prologue
    const/16 v7, 0x46

    const/16 v6, 0x44

    const/16 v5, 0x2d

    const/16 v4, 0x39

    const/16 v3, 0x30

    .line 4912
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 4914
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v5, :cond_0

    .line 4915
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4916
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4920
    :cond_0
    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v1, v3, :cond_1

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-gt v1, v4, :cond_1

    .line 4921
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4925
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 4928
    :cond_1
    const/4 v0, 0x0

    .line 4930
    .local v0, "isDouble":Z
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_2

    .line 4931
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4932
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4933
    const/4 v0, 0x1

    .line 4936
    :goto_1
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v1, v3, :cond_2

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-gt v1, v4, :cond_2

    .line 4937
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4941
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 4945
    :cond_2
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_4

    .line 4946
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4947
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4988
    :cond_3
    :goto_2
    if-eqz v0, :cond_f

    .line 4989
    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4993
    :goto_3
    return-void

    .line 4948
    :cond_4
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x53

    if-ne v1, v2, :cond_5

    .line 4949
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4950
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_2

    .line 4951
    :cond_5
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x42

    if-ne v1, v2, :cond_6

    .line 4952
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4953
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_2

    .line 4954
    :cond_6
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v7, :cond_7

    .line 4955
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4956
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4957
    const/4 v0, 0x1

    goto :goto_2

    .line 4958
    :cond_7
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v6, :cond_8

    .line 4959
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4960
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4961
    const/4 v0, 0x1

    goto :goto_2

    .line 4962
    :cond_8
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x65

    if-eq v1, v2, :cond_9

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x45

    if-ne v1, v2, :cond_3

    .line 4963
    :cond_9
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4964
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4966
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_a

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v5, :cond_b

    .line 4967
    :cond_a
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4968
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4972
    :cond_b
    :goto_4
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-lt v1, v3, :cond_c

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-gt v1, v4, :cond_c

    .line 4973
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4977
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_4

    .line 4980
    :cond_c
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v1, v6, :cond_d

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v7, :cond_e

    .line 4981
    :cond_d
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 4982
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4985
    :cond_e
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 4991
    :cond_f
    const/4 v1, 0x2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto/16 :goto_3
.end method

.method public scanString(C)Ljava/lang/String;
    .locals 13
    .param p1, "expectNextChar"    # C

    .prologue
    .line 1288
    const/4 v11, 0x0

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1290
    const/4 v5, 0x0

    .line 1291
    .local v5, "offset":I
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    add-int/2addr v11, v5

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1293
    .local v0, "chLocal":C
    const/16 v11, 0x6e

    if-ne v0, v11, :cond_3

    .line 1294
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    const/16 v12, 0x75

    if-ne v11, v12, :cond_0

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    const/16 v12, 0x6c

    if-ne v11, v12, :cond_0

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v11, v11, 0x2

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    const/16 v12, 0x6c

    if-ne v11, v12, :cond_0

    .line 1295
    add-int/lit8 v5, v6, 0x3

    .line 1296
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v11, v11, 0x4

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1302
    if-ne v0, p1, :cond_1

    .line 1303
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v11, 0x5

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1304
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    iput-char v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1305
    const/4 v11, 0x3

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1306
    const/4 v9, 0x0

    .line 1372
    :goto_0
    return-object v9

    .line 1298
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_0
    const/4 v11, -0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1299
    const/4 v9, 0x0

    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_0

    .line 1308
    :cond_1
    const/4 v11, -0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1309
    const/4 v9, 0x0

    goto :goto_0

    .line 1351
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_2
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1352
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v11, v6

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v6, v5

    .line 1317
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_3
    const/16 v11, 0x22

    if-ne v0, v11, :cond_2

    .line 1318
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v8, v11, v6

    .line 1319
    .local v8, "startIndex":I
    const/16 v11, 0x22

    invoke-virtual {p0, v11, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v3

    .line 1320
    .local v3, "endIndex":I
    const/4 v11, -0x1

    if-ne v3, v11, :cond_4

    .line 1321
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v12, "unclosed str"

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1324
    :cond_4
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v6

    sub-int v12, v3, v8

    invoke-virtual {p0, v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v10

    .line 1325
    .local v10, "stringVal":Ljava/lang/String;
    const/16 v11, 0x5c

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_6

    .line 1327
    :goto_1
    const/4 v7, 0x0

    .line 1328
    .local v7, "slashCount":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_5

    .line 1329
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    const/16 v12, 0x5c

    if-ne v11, v12, :cond_5

    .line 1330
    add-int/lit8 v7, v7, 0x1

    .line 1328
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1335
    :cond_5
    rem-int/lit8 v11, v7, 0x2

    if-nez v11, :cond_7

    .line 1341
    sub-int v2, v3, v8

    .line 1342
    .local v2, "chars_len":I
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p0, v11, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v1

    .line 1344
    .local v1, "chars":[C
    invoke-static {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v10

    .line 1347
    .end local v1    # "chars":[C
    .end local v2    # "chars_len":I
    .end local v4    # "i":I
    .end local v7    # "slashCount":I
    :cond_6
    sub-int v11, v3, v8

    add-int/lit8 v11, v11, 0x1

    add-int v5, v6, v11

    .line 1348
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v11, v5

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1349
    move-object v9, v10

    .line 1362
    .local v9, "strVal":Ljava/lang/String;
    :goto_3
    if-ne v0, p1, :cond_9

    .line 1363
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v11, v6

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1364
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v11

    iput-char v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1365
    const/4 v11, 0x3

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v5, v6

    .line 1366
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_0

    .line 1338
    .end local v5    # "offset":I
    .end local v9    # "strVal":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v6    # "offset":I
    .restart local v7    # "slashCount":I
    :cond_7
    const/16 v11, 0x22

    add-int/lit8 v12, v3, 0x1

    invoke-virtual {p0, v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v3

    .line 1339
    goto :goto_1

    .line 1355
    .end local v3    # "endIndex":I
    .end local v4    # "i":I
    .end local v7    # "slashCount":I
    .end local v8    # "startIndex":I
    .end local v10    # "stringVal":Ljava/lang/String;
    :cond_8
    const/4 v11, -0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1357
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringDefaultValue()Ljava/lang/String;

    move-result-object v9

    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_0

    .line 1367
    .end local v5    # "offset":I
    .restart local v3    # "endIndex":I
    .restart local v6    # "offset":I
    .restart local v8    # "startIndex":I
    .restart local v9    # "strVal":Ljava/lang/String;
    .restart local v10    # "stringVal":Ljava/lang/String;
    :cond_9
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1368
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v11, v6

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v6, v5

    .line 1369
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_3

    .line 1371
    :cond_a
    const/4 v11, -0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v5, v6

    .line 1372
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_0
.end method

.method public final scanString()V
    .locals 17

    .prologue
    .line 876
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 877
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 880
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 882
    .local v1, "ch":C
    const/16 v13, 0x22

    if-ne v1, v13, :cond_0

    .line 1006
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1007
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v13

    move-object/from16 v0, p0

    iput-char v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1008
    return-void

    .line 886
    :cond_0
    const/16 v13, 0x1a

    if-ne v1, v13, :cond_2

    .line 887
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEOF()Z

    move-result v13

    if-nez v13, :cond_1

    .line 888
    const/16 v13, 0x1a

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto :goto_0

    .line 891
    :cond_1
    new-instance v13, Lcom/alibaba/fastjson/JSONException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unclosed string : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 894
    :cond_2
    const/16 v13, 0x5c

    if-ne v1, v13, :cond_6

    .line 895
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v13, :cond_5

    .line 896
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    .line 898
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v14, v14

    if-lt v13, v14, :cond_4

    .line 899
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v13, v13

    mul-int/lit8 v2, v13, 0x2

    .line 900
    .local v2, "newCapcity":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    if-le v13, v2, :cond_3

    .line 901
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 903
    :cond_3
    new-array v3, v2, [C

    .line 904
    .local v3, "newsbuf":[C
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v13, v14, v3, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 905
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 908
    .end local v2    # "newCapcity":I
    .end local v3    # "newsbuf":[C
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->copyTo(II[C)V

    .line 913
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 915
    sparse-switch v1, :sswitch_data_0

    .line 988
    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 989
    new-instance v13, Lcom/alibaba/fastjson/JSONException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unclosed string : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 917
    :sswitch_0
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 920
    :sswitch_1
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 923
    :sswitch_2
    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 926
    :sswitch_3
    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 929
    :sswitch_4
    const/4 v13, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 932
    :sswitch_5
    const/4 v13, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 935
    :sswitch_6
    const/4 v13, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 938
    :sswitch_7
    const/4 v13, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 941
    :sswitch_8
    const/16 v13, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 944
    :sswitch_9
    const/16 v13, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 947
    :sswitch_a
    const/16 v13, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 950
    :sswitch_b
    const/16 v13, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 954
    :sswitch_c
    const/16 v13, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 957
    :sswitch_d
    const/16 v13, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 960
    :sswitch_e
    const/16 v13, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 963
    :sswitch_f
    const/16 v13, 0x27

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 966
    :sswitch_10
    const/16 v13, 0x2f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 969
    :sswitch_11
    const/16 v13, 0x5c

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 972
    :sswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    move v9, v1

    .line 973
    .local v9, "x1":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    move v10, v1

    .line 975
    .local v10, "x2":C
    sget-object v13, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v13, v13, v9

    mul-int/lit8 v13, v13, 0x10

    sget-object v14, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v14, v14, v10

    add-int v12, v13, v14

    .line 976
    .local v12, "x_val":I
    int-to-char v11, v12

    .line 977
    .local v11, "x_char":C
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 980
    .end local v9    # "x1":C
    .end local v10    # "x2":C
    .end local v11    # "x_char":C
    .end local v12    # "x_val":I
    :sswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    move v4, v1

    .line 981
    .local v4, "u1":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    move v5, v1

    .line 982
    .local v5, "u2":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    move v6, v1

    .line 983
    .local v6, "u3":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    move v7, v1

    .line 984
    .local v7, "u4":C
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x4

    new-array v14, v14, [C

    const/4 v15, 0x0

    aput-char v4, v14, v15

    const/4 v15, 0x1

    aput-char v5, v14, v15

    const/4 v15, 0x2

    aput-char v6, v14, v15

    const/4 v15, 0x3

    aput-char v7, v14, v15

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([C)V

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 985
    .local v8, "val":I
    int-to-char v13, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 994
    .end local v4    # "u1":C
    .end local v5    # "u2":C
    .end local v6    # "u3":C
    .end local v7    # "u4":C
    .end local v8    # "val":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->hasSpecial:Z

    if-nez v13, :cond_7

    .line 995
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto/16 :goto_0

    .line 999
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    array-length v14, v14

    if-ne v13, v14, :cond_8

    .line 1000
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 1002
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char v1, v13, v14

    goto/16 :goto_0

    .line 915
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_e
        0x27 -> :sswitch_f
        0x2f -> :sswitch_10
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x46 -> :sswitch_c
        0x5c -> :sswitch_11
        0x62 -> :sswitch_8
        0x66 -> :sswitch_c
        0x6e -> :sswitch_a
        0x72 -> :sswitch_d
        0x74 -> :sswitch_9
        0x75 -> :sswitch_13
        0x76 -> :sswitch_b
        0x78 -> :sswitch_12
    .end sparse-switch
.end method

.method public scanStringArray(Ljava/util/Collection;C)V
    .locals 12
    .param p2, "seperator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;C)V"
        }
    .end annotation

    .prologue
    .line 1685
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v10, 0x0

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1687
    const/4 v5, 0x0

    .line 1688
    .local v5, "offset":I
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    add-int/2addr v10, v5

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1690
    .local v0, "chLocal":C
    const/16 v10, 0x6e

    if-ne v0, v10, :cond_0

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v10, 0x1

    .line 1691
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    const/16 v11, 0x75

    if-ne v10, v11, :cond_0

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v10, v10, 0x1

    .line 1692
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    const/16 v11, 0x6c

    if-ne v10, v11, :cond_0

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v10, v10, 0x2

    .line 1693
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    const/16 v11, 0x6c

    if-ne v10, v11, :cond_0

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v10, v10, 0x3

    .line 1694
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    if-ne v10, p2, :cond_0

    .line 1696
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v10, v10, 0x5

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1697
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    iput-char v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1698
    const/4 v10, 0x5

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v5, v6

    .line 1779
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    :goto_0
    return-void

    .line 1702
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_0
    const/16 v10, 0x5b

    if-eq v0, v10, :cond_1

    .line 1703
    const/4 v10, -0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v5, v6

    .line 1704
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_0

    .line 1707
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_1
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v6, v5

    .line 1710
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :goto_1
    const/16 v10, 0x6e

    if-ne v0, v10, :cond_2

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v10, v6

    .line 1711
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    const/16 v11, 0x75

    if-ne v10, v11, :cond_2

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v10, v6

    add-int/lit8 v10, v10, 0x1

    .line 1712
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    const/16 v11, 0x6c

    if-ne v10, v11, :cond_2

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v10, v6

    add-int/lit8 v10, v10, 0x2

    .line 1713
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    const/16 v11, 0x6c

    if-ne v10, v11, :cond_2

    .line 1714
    add-int/lit8 v5, v6, 0x3

    .line 1715
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v10, v5

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1716
    const/4 v10, 0x0

    invoke-interface {p1, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1758
    :goto_2
    const/16 v10, 0x2c

    if-ne v0, v10, :cond_9

    .line 1759
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v10, v6

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v6, v5

    .line 1760
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_1

    .line 1717
    :cond_2
    const/16 v10, 0x5d

    if-ne v0, v10, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v10

    if-nez v10, :cond_3

    .line 1718
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v10, v6

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1772
    :goto_3
    if-ne v0, p2, :cond_b

    .line 1773
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v10, v5

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1774
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    iput-char v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1775
    const/4 v10, 0x3

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0

    .line 1720
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_3
    const/16 v10, 0x22

    if-eq v0, v10, :cond_4

    .line 1721
    const/4 v10, -0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v5, v6

    .line 1722
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_0

    .line 1724
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_4
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int v8, v10, v6

    .line 1725
    .local v8, "startIndex":I
    const/16 v10, 0x22

    invoke-virtual {p0, v10, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v3

    .line 1726
    .local v3, "endIndex":I
    const/4 v10, -0x1

    if-ne v3, v10, :cond_5

    .line 1727
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v11, "unclosed str"

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1730
    :cond_5
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v10, v6

    sub-int v11, v3, v8

    invoke-virtual {p0, v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v9

    .line 1731
    .local v9, "stringVal":Ljava/lang/String;
    const/16 v10, 0x5c

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_7

    .line 1733
    :goto_4
    const/4 v7, 0x0

    .line 1734
    .local v7, "slashCount":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_5
    if-ltz v4, :cond_6

    .line 1735
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v10

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_6

    .line 1736
    add-int/lit8 v7, v7, 0x1

    .line 1734
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    .line 1741
    :cond_6
    rem-int/lit8 v10, v7, 0x2

    if-nez v10, :cond_8

    .line 1747
    sub-int v2, v3, v8

    .line 1748
    .local v2, "chars_len":I
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v10, v6

    invoke-virtual {p0, v10, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sub_chars(II)[C

    move-result-object v1

    .line 1750
    .local v1, "chars":[C
    invoke-static {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->readString([CI)Ljava/lang/String;

    move-result-object v9

    .line 1753
    .end local v1    # "chars":[C
    .end local v2    # "chars_len":I
    .end local v4    # "i":I
    .end local v7    # "slashCount":I
    :cond_7
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v10, v6

    sub-int v10, v3, v10

    add-int/lit8 v10, v10, 0x1

    add-int v5, v6, v10

    .line 1754
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v10, v5

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1755
    invoke-interface {p1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1744
    .restart local v4    # "i":I
    .restart local v7    # "slashCount":I
    :cond_8
    const/16 v10, 0x22

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v3

    .line 1745
    goto :goto_4

    .line 1763
    .end local v3    # "endIndex":I
    .end local v4    # "i":I
    .end local v7    # "slashCount":I
    .end local v8    # "startIndex":I
    .end local v9    # "stringVal":Ljava/lang/String;
    :cond_9
    const/16 v10, 0x5d

    if-ne v0, v10, :cond_a

    .line 1764
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v10, v6

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1765
    goto/16 :goto_3

    .line 1768
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_a
    const/4 v10, -0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v5, v6

    .line 1769
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_0

    .line 1778
    :cond_b
    const/4 v10, -0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_0
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 4
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .prologue
    const/16 v3, 0x27

    const/16 v2, 0x22

    const/4 v0, 0x0

    .line 595
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 597
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v2, :cond_0

    .line 598
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    .line 630
    :goto_0
    return-object v0

    .line 601
    :cond_0
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v1, v3, :cond_2

    .line 602
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 603
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 609
    :cond_2
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_3

    .line 610
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 611
    const/16 v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 615
    :cond_3
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_4

    .line 616
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 617
    const/16 v1, 0x10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 621
    :cond_4
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_5

    .line 622
    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 626
    :cond_5
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 627
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :cond_6
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .locals 25
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;
    .param p2, "quote"    # C

    .prologue
    .line 638
    const/4 v11, 0x0

    .line 640
    .local v11, "hash":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 641
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 642
    const/4 v10, 0x0

    .line 645
    .local v10, "hasSpecial":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v9

    .line 647
    .local v9, "chLocal":C
    move/from16 v0, p2

    if-ne v9, v0, :cond_0

    .line 789
    const/16 v21, 0x4

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 792
    if-nez v10, :cond_9

    .line 795
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 796
    const/4 v14, 0x0

    .line 800
    .local v14, "offset":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v14, v1, v11, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v16

    .line 805
    .end local v14    # "offset":I
    .local v16, "value":Ljava/lang/String;
    :goto_2
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 806
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 808
    return-object v16

    .line 651
    .end local v16    # "value":Ljava/lang/String;
    :cond_0
    const/16 v21, 0x1a

    move/from16 v0, v21

    if-ne v9, v0, :cond_1

    .line 652
    new-instance v21, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v22, "unclosed.str"

    invoke-direct/range {v21 .. v22}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 655
    :cond_1
    const/16 v21, 0x5c

    move/from16 v0, v21

    if-ne v9, v0, :cond_5

    .line 656
    if-nez v10, :cond_4

    .line 657
    const/4 v10, 0x1

    .line 659
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_3

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    mul-int/lit8 v12, v21, 0x2

    .line 661
    .local v12, "newCapcity":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v0, v12, :cond_2

    .line 662
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 664
    :cond_2
    new-array v13, v12, [C

    .line 665
    .local v13, "newsbuf":[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v13, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 666
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    .line 671
    .end local v12    # "newCapcity":I
    .end local v13    # "newsbuf":[C
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->arrayCopy(I[CII)V

    .line 674
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v9

    .line 676
    sparse-switch v9, :sswitch_data_0

    .line 769
    move-object/from16 v0, p0

    iput-char v9, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 770
    new-instance v21, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v22, "unclosed.str.lit"

    invoke-direct/range {v21 .. v22}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 678
    :sswitch_0
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 679
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 682
    :sswitch_1
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 683
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 686
    :sswitch_2
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 687
    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 690
    :sswitch_3
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 691
    const/16 v21, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 694
    :sswitch_4
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 695
    const/16 v21, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 698
    :sswitch_5
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 699
    const/16 v21, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 702
    :sswitch_6
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 703
    const/16 v21, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 706
    :sswitch_7
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 707
    const/16 v21, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 710
    :sswitch_8
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0x8

    .line 711
    const/16 v21, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 714
    :sswitch_9
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0x9

    .line 715
    const/16 v21, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 718
    :sswitch_a
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0xa

    .line 719
    const/16 v21, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 722
    :sswitch_b
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0xb

    .line 723
    const/16 v21, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 727
    :sswitch_c
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0xc

    .line 728
    const/16 v21, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 731
    :sswitch_d
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0xd

    .line 732
    const/16 v21, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 735
    :sswitch_e
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0x22

    .line 736
    const/16 v21, 0x22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 739
    :sswitch_f
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0x27

    .line 740
    const/16 v21, 0x27

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 743
    :sswitch_10
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0x2f

    .line 744
    const/16 v21, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 747
    :sswitch_11
    mul-int/lit8 v21, v11, 0x1f

    add-int/lit8 v11, v21, 0x5c

    .line 748
    const/16 v21, 0x5c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 751
    :sswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 752
    .local v17, "x1":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 754
    .local v18, "x2":C
    sget-object v21, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v21, v21, v17

    mul-int/lit8 v21, v21, 0x10

    sget-object v22, Lcom/alibaba/fastjson/parser/JSONLexerBase;->digits:[I

    aget v22, v22, v18

    add-int v20, v21, v22

    .line 755
    .local v20, "x_val":I
    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v19, v0

    .line 756
    .local v19, "x_char":C
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v19

    .line 757
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 760
    .end local v17    # "x1":C
    .end local v18    # "x2":C
    .end local v19    # "x_char":C
    .end local v20    # "x_val":I
    :sswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v9

    move v5, v9

    .line 761
    .local v5, "c1":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v9

    move v6, v9

    .line 762
    .local v6, "c2":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v9

    move v7, v9

    .line 763
    .local v7, "c3":C
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v9

    move v8, v9

    .line 764
    .local v8, "c4":C
    new-instance v21, Ljava/lang/String;

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [C

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-char v5, v22, v23

    const/16 v23, 0x1

    aput-char v6, v22, v23

    const/16 v23, 0x2

    aput-char v7, v22, v23

    const/16 v23, 0x3

    aput-char v8, v22, v23

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>([C)V

    const/16 v22, 0x10

    invoke-static/range {v21 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    .line 765
    .local v15, "val":I
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v15

    .line 766
    int-to-char v0, v15

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 775
    .end local v5    # "c1":C
    .end local v6    # "c2":C
    .end local v7    # "c3":C
    .end local v8    # "c4":C
    .end local v15    # "val":I
    :cond_5
    mul-int/lit8 v21, v11, 0x1f

    add-int v11, v21, v9

    .line 777
    if-nez v10, :cond_6

    .line 778
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto/16 :goto_0

    .line 782
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 783
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->putChar(C)V

    goto/16 :goto_0

    .line 785
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v22, v0

    add-int/lit8 v23, v22, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    aput-char v9, v21, v22

    goto/16 :goto_0

    .line 798
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    move/from16 v21, v0

    add-int/lit8 v14, v21, 0x1

    .restart local v14    # "offset":I
    goto/16 :goto_1

    .line 802
    .end local v14    # "offset":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sbuf:[C

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v11}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "value":Ljava/lang/String;
    goto/16 :goto_2

    .line 676
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_e
        0x27 -> :sswitch_f
        0x2f -> :sswitch_10
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x46 -> :sswitch_c
        0x5c -> :sswitch_11
        0x62 -> :sswitch_8
        0x66 -> :sswitch_c
        0x6e -> :sswitch_a
        0x72 -> :sswitch_d
        0x74 -> :sswitch_9
        0x75 -> :sswitch_13
        0x76 -> :sswitch_b
        0x78 -> :sswitch_12
    .end sparse-switch
.end method

.method public final scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 11
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .prologue
    const/16 v10, 0x6c

    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 820
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    if-ne v8, v7, :cond_0

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos:I

    if-nez v8, :cond_0

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    if-ne v8, v7, :cond_0

    .line 821
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 823
    :cond_0
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    .line 824
    .local v4, "firstIdentifierFlags":[Z
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 826
    .local v2, "first":C
    iget-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    array-length v9, v4

    if-ge v8, v9, :cond_1

    aget-boolean v8, v4, v2

    if-eqz v8, :cond_2

    :cond_1
    move v3, v7

    .line 827
    .local v3, "firstFlag":Z
    :cond_2
    if-nez v3, :cond_3

    .line 828
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal identifier : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 829
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->info()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 832
    :cond_3
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    .line 834
    .local v6, "identifierFlags":[Z
    move v5, v2

    .line 836
    .local v5, "hash":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    .line 837
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    .line 840
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    move-result v1

    .line 842
    .local v1, "chLocal":C
    array-length v7, v6

    if-ge v1, v7, :cond_4

    .line 843
    aget-boolean v7, v6, v1

    if-nez v7, :cond_4

    .line 854
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 855
    const/16 v7, 0x12

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 857
    const v0, 0x33c587

    .line 858
    .local v0, "NULL_HASH":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    const v7, 0x33c587

    if-ne v5, v7, :cond_5

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v8, 0x6e

    if-ne v7, v8, :cond_5

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v8, 0x75

    if-ne v7, v8, :cond_5

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_5

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    add-int/lit8 v7, v7, 0x3

    .line 859
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_5

    .line 860
    const/4 v7, 0x0

    .line 869
    :goto_1
    return-object v7

    .line 848
    .end local v0    # "NULL_HASH":I
    :cond_4
    mul-int/lit8 v7, v5, 0x1f

    add-int v5, v7, v1

    .line 850
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    goto :goto_0

    .line 865
    .restart local v0    # "NULL_HASH":I
    :cond_5
    if-nez p1, :cond_6

    .line 866
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p0, v7, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->subString(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 869
    :cond_6
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->np:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->sp:I

    invoke-virtual {p0, v7, v8, v5, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method public scanSymbolWithSeperator(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .locals 12
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;
    .param p2, "serperator"    # C

    .prologue
    const/16 v11, 0x6c

    const/16 v8, 0x22

    const/4 v10, 0x3

    const/4 v6, 0x0

    const/4 v9, -0x1

    .line 1458
    const/4 v7, 0x0

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1460
    const/4 v3, 0x0

    .line 1461
    .local v3, "offset":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .local v4, "offset":I
    add-int/2addr v7, v3

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1463
    .local v0, "chLocal":C
    const/16 v7, 0x6e

    if-ne v0, v7, :cond_2

    .line 1464
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    const/16 v8, 0x75

    if-ne v7, v8, :cond_0

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_0

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_0

    .line 1465
    add-int/lit8 v3, v4, 0x3

    .line 1466
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v7, v7, 0x4

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1472
    if-ne v0, p2, :cond_1

    .line 1473
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v7, 0x5

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1474
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1475
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1524
    :goto_0
    return-object v6

    .line 1468
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_0
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 1469
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 1478
    :cond_1
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_0

    .line 1483
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_2
    if-eq v0, v8, :cond_3

    .line 1484
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 1485
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 1490
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_3
    const/4 v1, 0x0

    .local v1, "hash":I
    move v3, v4

    .line 1492
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :goto_1
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    add-int/2addr v7, v3

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    .line 1493
    if-ne v0, v8, :cond_4

    .line 1496
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v7, v7, 0x0

    add-int/lit8 v5, v7, 0x1

    .line 1497
    .local v5, "start":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v4

    sub-int/2addr v7, v5

    add-int/lit8 v2, v7, -0x1

    .line 1498
    .local v2, "len":I
    invoke-virtual {p0, v5, v2, v1, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v6

    .line 1499
    .local v6, "strVal":Ljava/lang/String;
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v7, v4

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v4, v3

    .line 1512
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :goto_2
    if-ne v0, p2, :cond_5

    .line 1513
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1514
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1515
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 1516
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 1503
    .end local v2    # "len":I
    .end local v3    # "offset":I
    .end local v5    # "start":I
    .end local v6    # "strVal":Ljava/lang/String;
    .restart local v4    # "offset":I
    :cond_4
    mul-int/lit8 v7, v1, 0x1f

    add-int v1, v7, v0

    .line 1505
    const/16 v7, 0x5c

    if-ne v0, v7, :cond_7

    .line 1506
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 1507
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 1518
    .end local v3    # "offset":I
    .restart local v2    # "len":I
    .restart local v4    # "offset":I
    .restart local v5    # "start":I
    .restart local v6    # "strVal":Ljava/lang/String;
    :cond_5
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1519
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v7, v4

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v0

    move v4, v3

    .line 1520
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_2

    .line 1523
    :cond_6
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v3, v4

    .line 1524
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .end local v2    # "len":I
    .end local v3    # "offset":I
    .end local v5    # "start":I
    .end local v6    # "strVal":Ljava/lang/String;
    .restart local v4    # "offset":I
    :cond_7
    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_1
.end method

.method public final scanTrue()V
    .locals 2

    .prologue
    .line 4481
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x74

    if-eq v0, v1, :cond_0

    .line 4482
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4484
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4486
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x72

    if-eq v0, v1, :cond_1

    .line 4487
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4489
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4491
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x75

    if-eq v0, v1, :cond_2

    .line 4492
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4494
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4496
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x65

    if-eq v0, v1, :cond_3

    .line 4497
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4499
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 4501
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_5

    .line 4503
    :cond_4
    const/4 v0, 0x6

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4507
    return-void

    .line 4505
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanType(Ljava/lang/String;)I
    .locals 9
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x7d

    const/16 v7, 0x2c

    const/16 v6, 0x10

    const/4 v3, -0x1

    .line 1107
    const/4 v4, 0x0

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1109
    sget-object v4, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charArrayCompare([C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1110
    const/4 v3, -0x2

    .line 1153
    :cond_0
    :goto_0
    return v3

    .line 1113
    :cond_1
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexerBase;->typeFieldName:[C

    array-length v5, v5

    add-int v0, v4, v5

    .line 1115
    .local v0, "bpLocal":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1116
    .local v2, "typeLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1117
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v5, v0, v1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1116
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1121
    :cond_2
    add-int/2addr v0, v2

    .line 1122
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    const/16 v5, 0x22

    if-ne v4, v5, :cond_0

    .line 1126
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1128
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v4, v7, :cond_3

    .line 1129
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1130
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1131
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1132
    const/4 v3, 0x3

    goto :goto_0

    .line 1133
    :cond_3
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v4, v8, :cond_4

    .line 1134
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1135
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v4, v7, :cond_5

    .line 1136
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1137
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 1149
    :goto_2
    const/4 v3, 0x4

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 1152
    :cond_4
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 1153
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto :goto_0

    .line 1138
    :cond_5
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_6

    .line 1139
    const/16 v3, 0xf

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1140
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    .line 1141
    :cond_6
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v4, v8, :cond_7

    .line 1142
    const/16 v3, 0xd

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 1143
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_2

    .line 1144
    :cond_7
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v5, 0x1a

    if-ne v4, v5, :cond_0

    .line 1145
    const/16 v3, 0x14

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_2
.end method

.method public scanUUID(C)Ljava/util/UUID;
    .locals 20
    .param p1, "seperator"    # C

    .prologue
    .line 4278
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4282
    const/4 v12, 0x0

    .line 4283
    .local v12, "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .local v13, "offset":I
    add-int v17, v17, v12

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 4286
    .local v3, "chLocal":C
    const/16 v17, 0x22

    move/from16 v0, v17

    if-ne v3, v0, :cond_1f

    .line 4287
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v14, v17, 0x1

    .line 4288
    .local v14, "startIndex":I
    const/16 v17, 0x22

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->indexOf(CI)I

    move-result v4

    .line 4289
    .local v4, "endIndex":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_0

    .line 4290
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v18, "unclosed str"

    invoke-direct/range {v17 .. v18}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 4293
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v15, v17, 0x1

    .line 4294
    .local v15, "startIndex2":I
    sub-int v8, v4, v15

    .line 4295
    .local v8, "len":I
    const/16 v17, 0x24

    move/from16 v0, v17

    if-ne v8, v0, :cond_15

    .line 4296
    const-wide/16 v10, 0x0

    .local v10, "mostSigBits":J
    const-wide/16 v6, 0x0

    .line 4297
    .local v6, "leastSigBits":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v17, 0x8

    move/from16 v0, v17

    if-ge v5, v0, :cond_4

    .line 4298
    add-int v17, v15, v5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4300
    .local v2, "ch":C
    const/16 v17, 0x30

    move/from16 v0, v17

    if-lt v2, v0, :cond_1

    const/16 v17, 0x39

    move/from16 v0, v17

    if-gt v2, v0, :cond_1

    .line 4301
    add-int/lit8 v9, v2, -0x30

    .line 4311
    .local v9, "num":I
    :goto_1
    const/16 v17, 0x4

    shl-long v10, v10, v17

    .line 4312
    int-to-long v0, v9

    move-wide/from16 v18, v0

    or-long v10, v10, v18

    .line 4297
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4302
    .end local v9    # "num":I
    :cond_1
    const/16 v17, 0x61

    move/from16 v0, v17

    if-lt v2, v0, :cond_2

    const/16 v17, 0x66

    move/from16 v0, v17

    if-gt v2, v0, :cond_2

    .line 4303
    add-int/lit8 v17, v2, -0x61

    add-int/lit8 v9, v17, 0xa

    .restart local v9    # "num":I
    goto :goto_1

    .line 4304
    .end local v9    # "num":I
    :cond_2
    const/16 v17, 0x41

    move/from16 v0, v17

    if-lt v2, v0, :cond_3

    const/16 v17, 0x46

    move/from16 v0, v17

    if-gt v2, v0, :cond_3

    .line 4305
    add-int/lit8 v17, v2, -0x41

    add-int/lit8 v9, v17, 0xa

    .restart local v9    # "num":I
    goto :goto_1

    .line 4307
    .end local v9    # "num":I
    :cond_3
    const/16 v17, -0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4308
    const/16 v16, 0x0

    move v12, v13

    .line 4477
    .end local v2    # "ch":C
    .end local v4    # "endIndex":I
    .end local v5    # "i":I
    .end local v6    # "leastSigBits":J
    .end local v8    # "len":I
    .end local v10    # "mostSigBits":J
    .end local v13    # "offset":I
    .end local v14    # "startIndex":I
    .end local v15    # "startIndex2":I
    .restart local v12    # "offset":I
    :goto_2
    return-object v16

    .line 4314
    .end local v12    # "offset":I
    .restart local v4    # "endIndex":I
    .restart local v5    # "i":I
    .restart local v6    # "leastSigBits":J
    .restart local v8    # "len":I
    .restart local v10    # "mostSigBits":J
    .restart local v13    # "offset":I
    .restart local v14    # "startIndex":I
    .restart local v15    # "startIndex2":I
    :cond_4
    const/16 v5, 0x9

    :goto_3
    const/16 v17, 0xd

    move/from16 v0, v17

    if-ge v5, v0, :cond_8

    .line 4315
    add-int v17, v15, v5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4317
    .restart local v2    # "ch":C
    const/16 v17, 0x30

    move/from16 v0, v17

    if-lt v2, v0, :cond_5

    const/16 v17, 0x39

    move/from16 v0, v17

    if-gt v2, v0, :cond_5

    .line 4318
    add-int/lit8 v9, v2, -0x30

    .line 4328
    .restart local v9    # "num":I
    :goto_4
    const/16 v17, 0x4

    shl-long v10, v10, v17

    .line 4329
    int-to-long v0, v9

    move-wide/from16 v18, v0

    or-long v10, v10, v18

    .line 4314
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 4319
    .end local v9    # "num":I
    :cond_5
    const/16 v17, 0x61

    move/from16 v0, v17

    if-lt v2, v0, :cond_6

    const/16 v17, 0x66

    move/from16 v0, v17

    if-gt v2, v0, :cond_6

    .line 4320
    add-int/lit8 v17, v2, -0x61

    add-int/lit8 v9, v17, 0xa

    .restart local v9    # "num":I
    goto :goto_4

    .line 4321
    .end local v9    # "num":I
    :cond_6
    const/16 v17, 0x41

    move/from16 v0, v17

    if-lt v2, v0, :cond_7

    const/16 v17, 0x46

    move/from16 v0, v17

    if-gt v2, v0, :cond_7

    .line 4322
    add-int/lit8 v17, v2, -0x41

    add-int/lit8 v9, v17, 0xa

    .restart local v9    # "num":I
    goto :goto_4

    .line 4324
    .end local v9    # "num":I
    :cond_7
    const/16 v17, -0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4325
    const/16 v16, 0x0

    move v12, v13

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto :goto_2

    .line 4331
    .end local v2    # "ch":C
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_8
    const/16 v5, 0xe

    :goto_5
    const/16 v17, 0x12

    move/from16 v0, v17

    if-ge v5, v0, :cond_c

    .line 4332
    add-int v17, v15, v5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4334
    .restart local v2    # "ch":C
    const/16 v17, 0x30

    move/from16 v0, v17

    if-lt v2, v0, :cond_9

    const/16 v17, 0x39

    move/from16 v0, v17

    if-gt v2, v0, :cond_9

    .line 4335
    add-int/lit8 v9, v2, -0x30

    .line 4345
    .restart local v9    # "num":I
    :goto_6
    const/16 v17, 0x4

    shl-long v10, v10, v17

    .line 4346
    int-to-long v0, v9

    move-wide/from16 v18, v0

    or-long v10, v10, v18

    .line 4331
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 4336
    .end local v9    # "num":I
    :cond_9
    const/16 v17, 0x61

    move/from16 v0, v17

    if-lt v2, v0, :cond_a

    const/16 v17, 0x66

    move/from16 v0, v17

    if-gt v2, v0, :cond_a

    .line 4337
    add-int/lit8 v17, v2, -0x61

    add-int/lit8 v9, v17, 0xa

    .restart local v9    # "num":I
    goto :goto_6

    .line 4338
    .end local v9    # "num":I
    :cond_a
    const/16 v17, 0x41

    move/from16 v0, v17

    if-lt v2, v0, :cond_b

    const/16 v17, 0x46

    move/from16 v0, v17

    if-gt v2, v0, :cond_b

    .line 4339
    add-int/lit8 v17, v2, -0x41

    add-int/lit8 v9, v17, 0xa

    .restart local v9    # "num":I
    goto :goto_6

    .line 4341
    .end local v9    # "num":I
    :cond_b
    const/16 v17, -0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4342
    const/16 v16, 0x0

    move v12, v13

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto/16 :goto_2

    .line 4348
    .end local v2    # "ch":C
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_c
    const/16 v5, 0x13

    :goto_7
    const/16 v17, 0x17

    move/from16 v0, v17

    if-ge v5, v0, :cond_10

    .line 4349
    add-int v17, v15, v5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4351
    .restart local v2    # "ch":C
    const/16 v17, 0x30

    move/from16 v0, v17

    if-lt v2, v0, :cond_d

    const/16 v17, 0x39

    move/from16 v0, v17

    if-gt v2, v0, :cond_d

    .line 4352
    add-int/lit8 v9, v2, -0x30

    .line 4362
    .restart local v9    # "num":I
    :goto_8
    const/16 v17, 0x4

    shl-long v6, v6, v17

    .line 4363
    int-to-long v0, v9

    move-wide/from16 v18, v0

    or-long v6, v6, v18

    .line 4348
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 4353
    .end local v9    # "num":I
    :cond_d
    const/16 v17, 0x61

    move/from16 v0, v17

    if-lt v2, v0, :cond_e

    const/16 v17, 0x66

    move/from16 v0, v17

    if-gt v2, v0, :cond_e

    .line 4354
    add-int/lit8 v17, v2, -0x61

    add-int/lit8 v9, v17, 0xa

    .restart local v9    # "num":I
    goto :goto_8

    .line 4355
    .end local v9    # "num":I
    :cond_e
    const/16 v17, 0x41

    move/from16 v0, v17

    if-lt v2, v0, :cond_f

    const/16 v17, 0x46

    move/from16 v0, v17

    if-gt v2, v0, :cond_f

    .line 4356
    add-int/lit8 v17, v2, -0x41

    add-int/lit8 v9, v17, 0xa

    .restart local v9    # "num":I
    goto :goto_8

    .line 4358
    .end local v9    # "num":I
    :cond_f
    const/16 v17, -0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4359
    const/16 v16, 0x0

    move v12, v13

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto/16 :goto_2

    .line 4365
    .end local v2    # "ch":C
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_10
    const/16 v5, 0x18

    :goto_9
    const/16 v17, 0x24

    move/from16 v0, v17

    if-ge v5, v0, :cond_14

    .line 4366
    add-int v17, v15, v5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4368
    .restart local v2    # "ch":C
    const/16 v17, 0x30

    move/from16 v0, v17

    if-lt v2, v0, :cond_11

    const/16 v17, 0x39

    move/from16 v0, v17

    if-gt v2, v0, :cond_11

    .line 4369
    add-int/lit8 v9, v2, -0x30

    .line 4379
    .restart local v9    # "num":I
    :goto_a
    const/16 v17, 0x4

    shl-long v6, v6, v17

    .line 4380
    int-to-long v0, v9

    move-wide/from16 v18, v0

    or-long v6, v6, v18

    .line 4365
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 4370
    .end local v9    # "num":I
    :cond_11
    const/16 v17, 0x61

    move/from16 v0, v17

    if-lt v2, v0, :cond_12

    const/16 v17, 0x66

    move/from16 v0, v17

    if-gt v2, v0, :cond_12

    .line 4371
    add-int/lit8 v17, v2, -0x61

    add-int/lit8 v9, v17, 0xa

    .restart local v9    # "num":I
    goto :goto_a

    .line 4372
    .end local v9    # "num":I
    :cond_12
    const/16 v17, 0x41

    move/from16 v0, v17

    if-lt v2, v0, :cond_13

    const/16 v17, 0x46

    move/from16 v0, v17

    if-gt v2, v0, :cond_13

    .line 4373
    add-int/lit8 v17, v2, -0x41

    add-int/lit8 v9, v17, 0xa

    .restart local v9    # "num":I
    goto :goto_a

    .line 4375
    .end local v9    # "num":I
    :cond_13
    const/16 v17, -0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4376
    const/16 v16, 0x0

    move v12, v13

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto/16 :goto_2

    .line 4382
    .end local v2    # "ch":C
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_14
    new-instance v16, Ljava/util/UUID;

    move-object/from16 v0, v16

    invoke-direct {v0, v10, v11, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    .line 4384
    .local v16, "uuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    sub-int v17, v4, v17

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v12, v17, 0x1

    .line 4385
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    add-int v17, v17, v12

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v12, v13

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    :goto_b
    move v13, v12

    .line 4442
    .end local v4    # "endIndex":I
    .end local v5    # "i":I
    .end local v6    # "leastSigBits":J
    .end local v8    # "len":I
    .end local v10    # "mostSigBits":J
    .end local v12    # "offset":I
    .end local v14    # "startIndex":I
    .end local v15    # "startIndex2":I
    .restart local v13    # "offset":I
    :goto_c
    const/16 v17, 0x2c

    move/from16 v0, v17

    if-ne v3, v0, :cond_22

    .line 4443
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int v17, v17, v13

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4444
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 4445
    const/16 v17, 0x3

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    move v12, v13

    .line 4446
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto/16 :goto_2

    .line 4386
    .end local v12    # "offset":I
    .end local v16    # "uuid":Ljava/util/UUID;
    .restart local v4    # "endIndex":I
    .restart local v8    # "len":I
    .restart local v13    # "offset":I
    .restart local v14    # "startIndex":I
    .restart local v15    # "startIndex2":I
    :cond_15
    const/16 v17, 0x20

    move/from16 v0, v17

    if-ne v8, v0, :cond_1e

    .line 4387
    const-wide/16 v10, 0x0

    .restart local v10    # "mostSigBits":J
    const-wide/16 v6, 0x0

    .line 4388
    .restart local v6    # "leastSigBits":J
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_d
    const/16 v17, 0x10

    move/from16 v0, v17

    if-ge v5, v0, :cond_19

    .line 4389
    add-int v17, v15, v5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4391
    .restart local v2    # "ch":C
    const/16 v17, 0x30

    move/from16 v0, v17

    if-lt v2, v0, :cond_16

    const/16 v17, 0x39

    move/from16 v0, v17

    if-gt v2, v0, :cond_16

    .line 4392
    add-int/lit8 v9, v2, -0x30

    .line 4402
    .restart local v9    # "num":I
    :goto_e
    const/16 v17, 0x4

    shl-long v10, v10, v17

    .line 4403
    int-to-long v0, v9

    move-wide/from16 v18, v0

    or-long v10, v10, v18

    .line 4388
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 4393
    .end local v9    # "num":I
    :cond_16
    const/16 v17, 0x61

    move/from16 v0, v17

    if-lt v2, v0, :cond_17

    const/16 v17, 0x66

    move/from16 v0, v17

    if-gt v2, v0, :cond_17

    .line 4394
    add-int/lit8 v17, v2, -0x61

    add-int/lit8 v9, v17, 0xa

    .restart local v9    # "num":I
    goto :goto_e

    .line 4395
    .end local v9    # "num":I
    :cond_17
    const/16 v17, 0x41

    move/from16 v0, v17

    if-lt v2, v0, :cond_18

    const/16 v17, 0x46

    move/from16 v0, v17

    if-gt v2, v0, :cond_18

    .line 4396
    add-int/lit8 v17, v2, -0x41

    add-int/lit8 v9, v17, 0xa

    .restart local v9    # "num":I
    goto :goto_e

    .line 4398
    .end local v9    # "num":I
    :cond_18
    const/16 v17, -0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4399
    const/16 v16, 0x0

    move v12, v13

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto/16 :goto_2

    .line 4405
    .end local v2    # "ch":C
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_19
    const/16 v5, 0x10

    :goto_f
    const/16 v17, 0x20

    move/from16 v0, v17

    if-ge v5, v0, :cond_1d

    .line 4406
    add-int v17, v15, v5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v2

    .line 4408
    .restart local v2    # "ch":C
    const/16 v17, 0x30

    move/from16 v0, v17

    if-lt v2, v0, :cond_1a

    const/16 v17, 0x39

    move/from16 v0, v17

    if-gt v2, v0, :cond_1a

    .line 4409
    add-int/lit8 v9, v2, -0x30

    .line 4419
    .restart local v9    # "num":I
    :goto_10
    const/16 v17, 0x4

    shl-long v6, v6, v17

    .line 4420
    int-to-long v0, v9

    move-wide/from16 v18, v0

    or-long v6, v6, v18

    .line 4405
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 4410
    .end local v9    # "num":I
    :cond_1a
    const/16 v17, 0x61

    move/from16 v0, v17

    if-lt v2, v0, :cond_1b

    const/16 v17, 0x66

    move/from16 v0, v17

    if-gt v2, v0, :cond_1b

    .line 4411
    add-int/lit8 v17, v2, -0x61

    add-int/lit8 v9, v17, 0xa

    .restart local v9    # "num":I
    goto :goto_10

    .line 4412
    .end local v9    # "num":I
    :cond_1b
    const/16 v17, 0x41

    move/from16 v0, v17

    if-lt v2, v0, :cond_1c

    const/16 v17, 0x46

    move/from16 v0, v17

    if-gt v2, v0, :cond_1c

    .line 4413
    add-int/lit8 v17, v2, -0x41

    add-int/lit8 v9, v17, 0xa

    .restart local v9    # "num":I
    goto :goto_10

    .line 4415
    .end local v9    # "num":I
    :cond_1c
    const/16 v17, -0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4416
    const/16 v16, 0x0

    move v12, v13

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto/16 :goto_2

    .line 4423
    .end local v2    # "ch":C
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_1d
    new-instance v16, Ljava/util/UUID;

    move-object/from16 v0, v16

    invoke-direct {v0, v10, v11, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    .line 4425
    .restart local v16    # "uuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    sub-int v17, v4, v17

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v12, v17, 0x1

    .line 4426
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    add-int v17, v17, v12

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v12, v13

    .line 4427
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto/16 :goto_b

    .line 4428
    .end local v5    # "i":I
    .end local v6    # "leastSigBits":J
    .end local v10    # "mostSigBits":J
    .end local v12    # "offset":I
    .end local v16    # "uuid":Ljava/util/UUID;
    .restart local v13    # "offset":I
    :cond_1e
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4429
    const/16 v16, 0x0

    move v12, v13

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto/16 :goto_2

    .line 4431
    .end local v4    # "endIndex":I
    .end local v8    # "len":I
    .end local v12    # "offset":I
    .end local v14    # "startIndex":I
    .end local v15    # "startIndex2":I
    .restart local v13    # "offset":I
    :cond_1f
    const/16 v17, 0x6e

    move/from16 v0, v17

    if-ne v3, v0, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    add-int/lit8 v17, v17, 0x1

    .line 4432
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v17

    const/16 v18, 0x75

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v17, v17, 0x2

    .line 4433
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v17

    const/16 v18, 0x6c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v17, v17, 0x3

    .line 4434
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v17

    const/16 v18, 0x6c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_21

    .line 4435
    const/16 v16, 0x0

    .line 4436
    .restart local v16    # "uuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v17, v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    move v13, v12

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    goto/16 :goto_c

    .end local v16    # "uuid":Ljava/util/UUID;
    :cond_20
    move v12, v13

    .line 4438
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    :cond_21
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4439
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 4449
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    .restart local v16    # "uuid":Ljava/util/UUID;
    :cond_22
    const/16 v17, 0x5d

    move/from16 v0, v17

    if-ne v3, v0, :cond_27

    .line 4450
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    add-int v17, v17, v13

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v3

    .line 4451
    const/16 v17, 0x2c

    move/from16 v0, v17

    if-ne v3, v0, :cond_23

    .line 4452
    const/16 v17, 0x10

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4453
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int v17, v17, v12

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4454
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    .line 4471
    :goto_11
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    goto/16 :goto_2

    .line 4455
    :cond_23
    const/16 v17, 0x5d

    move/from16 v0, v17

    if-ne v3, v0, :cond_24

    .line 4456
    const/16 v17, 0xf

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4457
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int v17, v17, v12

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4458
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_11

    .line 4459
    :cond_24
    const/16 v17, 0x7d

    move/from16 v0, v17

    if-ne v3, v0, :cond_25

    .line 4460
    const/16 v17, 0xd

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4461
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int v17, v17, v12

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4462
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto :goto_11

    .line 4463
    :cond_25
    const/16 v17, 0x1a

    move/from16 v0, v17

    if-ne v3, v0, :cond_26

    .line 4464
    const/16 v17, 0x14

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 4465
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    move/from16 v17, v0

    add-int/lit8 v18, v12, -0x1

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->bp:I

    .line 4466
    const/16 v17, 0x1a

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    goto/16 :goto_11

    .line 4468
    :cond_26
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4469
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 4473
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_27
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    .line 4474
    const/16 v16, 0x0

    move v12, v13

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto/16 :goto_2
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->locale:Ljava/util/Locale;

    .line 1028
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->timeZone:Ljava/util/TimeZone;

    .line 1020
    return-void
.end method

.method public setToken(I)V
    .locals 0
    .param p1, "token"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    .line 98
    return-void
.end method

.method protected skipComment()V
    .locals 4

    .prologue
    const/16 v3, 0x2f

    const/16 v1, 0x2a

    const/16 v2, 0x1a

    .line 563
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 564
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v3, :cond_3

    .line 566
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 567
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 568
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 592
    :cond_1
    :goto_0
    return-void

    .line 570
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 574
    :cond_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v1, :cond_6

    .line 575
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 577
    :cond_4
    :goto_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-eq v0, v2, :cond_1

    .line 578
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v1, :cond_5

    .line 579
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 580
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v3, :cond_4

    .line 581
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 587
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_1

    .line 590
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "invalid comment"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final skipWhitespace()V
    .locals 3

    .prologue
    const/16 v2, 0x2f

    .line 4734
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-gt v0, v2, :cond_2

    .line 4735
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 4736
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    goto :goto_0

    .line 4738
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->ch:C

    if-ne v0, v2, :cond_2

    .line 4739
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipComment()V

    goto :goto_0

    .line 4748
    :cond_2
    return-void
.end method

.method public final stringDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
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

    .prologue
    .line 398
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    return v0
.end method

.method public final tokenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
