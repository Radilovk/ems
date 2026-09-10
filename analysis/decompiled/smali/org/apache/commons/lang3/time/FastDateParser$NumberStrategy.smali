.class Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;
.super Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NumberStrategy"
.end annotation


# instance fields
.field private final field:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "field"    # I

    .prologue
    .line 741
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;-><init>(Lorg/apache/commons/lang3/time/FastDateParser$1;)V

    .line 742
    iput p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;->field:I

    .line 743
    return-void
.end method


# virtual methods
.method isNumber()Z
    .locals 1

    .prologue
    .line 750
    const/4 v0, 0x1

    return v0
.end method

.method modify(Lorg/apache/commons/lang3/time/FastDateParser;I)I
    .locals 0
    .param p1, "parser"    # Lorg/apache/commons/lang3/time/FastDateParser;
    .param p2, "iValue"    # I

    .prologue
    .line 800
    return p2
.end method

.method parse(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;Ljava/text/ParsePosition;I)Z
    .locals 7
    .param p1, "parser"    # Lorg/apache/commons/lang3/time/FastDateParser;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "pos"    # Ljava/text/ParsePosition;
    .param p5, "maxWidth"    # I

    .prologue
    .line 755
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    .line 756
    .local v2, "idx":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    .line 758
    .local v3, "last":I
    if-nez p5, :cond_4

    .line 760
    :goto_0
    if-ge v2, v3, :cond_0

    .line 761
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 762
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_3

    .line 766
    .end local v0    # "c":C
    :cond_0
    invoke-virtual {p4, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 774
    :cond_1
    :goto_1
    if-ge v2, v3, :cond_2

    .line 775
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 776
    .restart local v0    # "c":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_5

    .line 781
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    if-ne v5, v2, :cond_6

    .line 782
    invoke-virtual {p4, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 783
    const/4 v5, 0x0

    .line 790
    :goto_2
    return v5

    .line 760
    .restart local v0    # "c":C
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 768
    .end local v0    # "c":C
    :cond_4
    add-int v1, v2, p5

    .line 769
    .local v1, "end":I
    if-le v3, v1, :cond_1

    .line 770
    move v3, v1

    goto :goto_1

    .line 774
    .end local v1    # "end":I
    .restart local v0    # "c":C
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 786
    .end local v0    # "c":C
    :cond_6
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {p3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 787
    .local v4, "value":I
    invoke-virtual {p4, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 789
    iget v5, p0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;->field:I

    invoke-virtual {p0, p1, v4}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;->modify(Lorg/apache/commons/lang3/time/FastDateParser;I)I

    move-result v6

    invoke-virtual {p2, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 790
    const/4 v5, 0x1

    goto :goto_2
.end method
