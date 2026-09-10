.class public Lorg/apache/commons/lang3/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field public static final CR:Ljava/lang/String; = "\r"

.field public static final EMPTY:Ljava/lang/String; = ""

.field public static final INDEX_NOT_FOUND:I = -0x1

.field public static final LF:Ljava/lang/String; = "\n"

.field private static final PAD_LIMIT:I = 0x2000

.field public static final SPACE:Ljava/lang/String; = " "

.field private static final STRING_BUILDER_SIZE:I = 0x100


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    return-void
.end method

.method public static abbreviate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I

    .line 7731
    const-string v0, "..."

    .line 7732
    .local v0, "defaultAbbrevMarker":Ljava/lang/String;
    const-string v1, "..."

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, p1}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static abbreviate(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "maxWidth"    # I

    .line 7771
    const-string v0, "..."

    .line 7772
    .local v0, "defaultAbbrevMarker":Ljava/lang/String;
    const-string v1, "..."

    invoke-static {p0, v1, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static abbreviate(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "abbrevMarker"    # Ljava/lang/String;
    .param p2, "maxWidth"    # I

    .line 7812
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static abbreviate(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "abbrevMarker"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "maxWidth"    # I

    .line 7853
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 7857
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 7858
    .local v0, "abbrevMarkerLength":I
    add-int/lit8 v1, v0, 0x1

    .line 7859
    .local v1, "minAbbrevWidth":I
    add-int v2, v0, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 7861
    .local v2, "minAbbrevWidthOffset":I
    const/4 v4, 0x0

    if-lt p3, v1, :cond_7

    .line 7864
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, p3, :cond_1

    .line 7865
    return-object p0

    .line 7867
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-le p2, v5, :cond_2

    .line 7868
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    .line 7870
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, p2

    sub-int v6, p3, v0

    if-ge v5, v6, :cond_3

    .line 7871
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v6, p3, v0

    sub-int p2, v5, v6

    .line 7873
    :cond_3
    add-int/lit8 v5, v0, 0x1

    if-gt p2, v5, :cond_4

    .line 7874
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v5, p3, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 7876
    :cond_4
    if-lt p3, v2, :cond_6

    .line 7879
    add-int v3, p2, p3

    sub-int/2addr v3, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 7880
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sub-int v5, p3, v0

    invoke-static {v4, p1, v5}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 7882
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v5, p3, v0

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 7877
    :cond_6
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const-string v4, "Minimum abbreviation width with offset is %d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 7862
    :cond_7
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const-string v4, "Minimum abbreviation width is %d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 7854
    .end local v0    # "abbrevMarkerLength":I
    .end local v1    # "minAbbrevWidth":I
    .end local v2    # "minAbbrevWidthOffset":I
    :cond_8
    :goto_0
    return-object p0
.end method

.method public static abbreviateMiddle(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "middle"    # Ljava/lang/String;
    .param p2, "length"    # I

    .line 7915
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 7919
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    if-ge p2, v0, :cond_1

    goto :goto_0

    .line 7923
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p2, v0

    .line 7924
    .local v0, "targetSting":I
    div-int/lit8 v1, v0, 0x2

    rem-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    .line 7925
    .local v1, "startOffset":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    .line 7927
    .local v2, "endOffset":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7929
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7927
    return-object v3

    .line 7920
    .end local v0    # "targetSting":I
    .end local v1    # "startOffset":I
    .end local v2    # "endOffset":I
    :cond_2
    :goto_0
    return-object p0

    .line 7916
    :cond_3
    :goto_1
    return-object p0
.end method

.method private static varargs appendIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/CharSequence;
    .param p2, "ignoreCase"    # Z
    .param p3, "suffixes"    # [Ljava/lang/CharSequence;

    .line 8922
    if-eqz p0, :cond_3

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 8925
    :cond_0
    if-eqz p3, :cond_2

    array-length v0, p3

    if-lez v0, :cond_2

    .line 8926
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p3, v1

    .line 8927
    .local v2, "s":Ljava/lang/CharSequence;
    invoke-static {p0, v2, p2}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8928
    return-object p0

    .line 8926
    .end local v2    # "s":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8932
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 8923
    :cond_3
    :goto_1
    return-object p0
.end method

.method public static varargs appendIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/CharSequence;
    .param p2, "suffixes"    # [Ljava/lang/CharSequence;

    .line 8970
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->appendIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs appendIfMissingIgnoreCase(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/CharSequence;
    .param p2, "suffixes"    # [Ljava/lang/CharSequence;

    .line 9008
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->appendIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;

    .line 6805
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v0

    .local v1, "strLen":I
    if-nez v0, :cond_0

    goto :goto_1

    .line 6809
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 6810
    .local v2, "firstCodepoint":I
    invoke-static {v2}, Ljava/lang/Character;->toTitleCase(I)I

    move-result v3

    .line 6811
    .local v3, "newCodePoint":I
    if-ne v2, v3, :cond_1

    .line 6813
    return-object p0

    .line 6816
    :cond_1
    new-array v4, v1, [I

    .line 6817
    .local v4, "newCodePoints":[I
    const/4 v5, 0x0

    .line 6818
    .local v5, "outOffset":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "outOffset":I
    .local v6, "outOffset":I
    aput v3, v4, v5

    .line 6819
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    .local v5, "inOffset":I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 6820
    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    .line 6821
    .local v7, "codepoint":I
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "outOffset":I
    .local v8, "outOffset":I
    aput v7, v4, v6

    .line 6822
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 6823
    .end local v7    # "codepoint":I
    move v6, v8

    goto :goto_0

    .line 6824
    .end local v5    # "inOffset":I
    .end local v8    # "outOffset":I
    .restart local v6    # "outOffset":I
    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4, v0, v6}, Ljava/lang/String;-><init>([III)V

    return-object v5

    .line 6806
    .end local v1    # "strLen":I
    .end local v2    # "firstCodepoint":I
    .end local v3    # "newCodePoint":I
    .end local v4    # "newCodePoints":[I
    .end local v6    # "outOffset":I
    :cond_3
    :goto_1
    return-object p0
.end method

.method public static center(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .line 6598
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->center(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static center(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padChar"    # C

    .line 6626
    if-eqz p0, :cond_2

    if-gtz p1, :cond_0

    goto :goto_0

    .line 6629
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 6630
    .local v0, "strLen":I
    sub-int v1, p1, v0

    .line 6631
    .local v1, "pads":I
    if-gtz v1, :cond_1

    .line 6632
    return-object p0

    .line 6634
    :cond_1
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    invoke-static {p0, v2, p2}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    .line 6635
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    .line 6636
    return-object p0

    .line 6627
    .end local v0    # "strLen":I
    .end local v1    # "pads":I
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static center(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .line 6666
    if-eqz p0, :cond_3

    if-gtz p1, :cond_0

    goto :goto_0

    .line 6669
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6670
    const-string p2, " "

    .line 6672
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 6673
    .local v0, "strLen":I
    sub-int v1, p1, v0

    .line 6674
    .local v1, "pads":I
    if-gtz v1, :cond_2

    .line 6675
    return-object p0

    .line 6677
    :cond_2
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    invoke-static {p0, v2, p2}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6678
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6679
    return-object p0

    .line 6667
    .end local v0    # "strLen":I
    .end local v1    # "pads":I
    :cond_3
    :goto_0
    return-object p0
.end method

.method public static chomp(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .line 6110
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6111
    return-object p0

    .line 6114
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/16 v3, 0xd

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    .line 6115
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 6116
    .local v0, "ch":C
    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 6119
    :cond_1
    return-object p0

    .line 6117
    :cond_2
    :goto_0
    const-string v1, ""

    return-object v1

    .line 6122
    .end local v0    # "ch":C
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    .line 6123
    .local v0, "lastIdx":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 6125
    .local v4, "last":C
    if-ne v4, v2, :cond_4

    .line 6126
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_5

    .line 6127
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 6129
    :cond_4
    if-eq v4, v3, :cond_5

    .line 6130
    add-int/lit8 v0, v0, 0x1

    .line 6132
    :cond_5
    :goto_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static chomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6164
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static chop(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .line 6193
    if-nez p0, :cond_0

    .line 6194
    const/4 v0, 0x0

    return-object v0

    .line 6196
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 6197
    .local v0, "strLen":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 6198
    const-string v1, ""

    return-object v1

    .line 6200
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .line 6201
    .local v1, "lastIdx":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 6202
    .local v3, "ret":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 6203
    .local v4, "last":C
    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2

    .line 6204
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 6206
    :cond_2
    return-object v3
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .line 1084
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 2
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;
    .param p2, "nullIsLess"    # Z

    .line 1122
    if-ne p0, p1, :cond_0

    .line 1123
    const/4 v0, 0x0

    return v0

    .line 1125
    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-nez p0, :cond_2

    .line 1126
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1128
    :cond_2
    if-nez p1, :cond_4

    .line 1129
    if-eqz p2, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    .line 1131
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static compareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .line 1172
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->compareIgnoreCase(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static compareIgnoreCase(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 2
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;
    .param p2, "nullIsLess"    # Z

    .line 1215
    if-ne p0, p1, :cond_0

    .line 1216
    const/4 v0, 0x0

    return v0

    .line 1218
    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-nez p0, :cond_2

    .line 1219
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1221
    :cond_2
    if-nez p1, :cond_4

    .line 1222
    if-eqz p2, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    .line 1224
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static contains(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I

    .line 1953
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1954
    return v1

    .line 1956
    :cond_0
    invoke-static {p0, p1, v1}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;

    .line 1982
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1985
    :cond_0
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 1983
    :cond_2
    :goto_0
    return v0
.end method

.method public static containsAny(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # Ljava/lang/CharSequence;

    .line 2220
    if-nez p1, :cond_0

    .line 2221
    const/4 v0, 0x0

    return v0

    .line 2223
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSequenceUtils;->toCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->containsAny(Ljava/lang/CharSequence;[C)Z

    move-result v0

    return v0
.end method

.method public static varargs containsAny(Ljava/lang/CharSequence;[C)Z
    .locals 11
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # [C

    .line 2159
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2162
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2163
    .local v0, "csLength":I
    array-length v2, p1

    .line 2164
    .local v2, "searchLength":I
    add-int/lit8 v3, v0, -0x1

    .line 2165
    .local v3, "csLast":I
    add-int/lit8 v4, v2, -0x1

    .line 2166
    .local v4, "searchLast":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_5

    .line 2167
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 2168
    .local v6, "ch":C
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v2, :cond_4

    .line 2169
    aget-char v8, p1, v7

    if-ne v8, v6, :cond_3

    .line 2170
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    .line 2171
    if-ne v7, v4, :cond_1

    .line 2173
    return v9

    .line 2175
    :cond_1
    if-ge v5, v3, :cond_3

    add-int/lit8 v8, v7, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v10, v5, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v8, v10, :cond_3

    .line 2176
    return v9

    .line 2180
    :cond_2
    return v9

    .line 2168
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2166
    .end local v6    # "ch":C
    .end local v7    # "j":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2185
    .end local v5    # "i":I
    :cond_5
    return v1

    .line 2160
    .end local v0    # "csLength":I
    .end local v2    # "searchLength":I
    .end local v3    # "csLast":I
    .end local v4    # "searchLast":I
    :cond_6
    :goto_2
    return v1
.end method

.method public static varargs containsAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchCharSequences"    # [Ljava/lang/CharSequence;

    .line 2252
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2255
    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 2256
    .local v3, "searchCharSequence":Ljava/lang/CharSequence;
    invoke-static {p0, v3}, Lorg/apache/commons/lang3/StringUtils;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2257
    const/4 v0, 0x1

    return v0

    .line 2255
    .end local v3    # "searchCharSequence":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2260
    :cond_2
    return v1

    .line 2253
    :cond_3
    :goto_1
    return v1
.end method

.method public static containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 10
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;

    .line 2013
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 2016
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 2017
    .local v7, "len":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v8, v1, v7

    .line 2018
    .local v8, "max":I
    const/4 v1, 0x0

    move v9, v1

    .local v9, "i":I
    :goto_0
    if-gt v9, v8, :cond_2

    .line 2019
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v3, v9

    move-object v4, p1

    move v6, v7

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2020
    const/4 v0, 0x1

    return v0

    .line 2018
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2023
    .end local v9    # "i":I
    :cond_2
    return v0

    .line 2014
    .end local v7    # "len":I
    .end local v8    # "max":I
    :cond_3
    :goto_1
    return v0
.end method

.method public static containsNone(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "invalidChars"    # Ljava/lang/String;

    .line 2508
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2511
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->containsNone(Ljava/lang/CharSequence;[C)Z

    move-result v0

    return v0

    .line 2509
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static varargs containsNone(Ljava/lang/CharSequence;[C)Z
    .locals 11
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # [C

    .line 2455
    const/4 v0, 0x1

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_2

    .line 2458
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 2459
    .local v1, "csLen":I
    add-int/lit8 v2, v1, -0x1

    .line 2460
    .local v2, "csLast":I
    array-length v3, p1

    .line 2461
    .local v3, "searchLen":I
    add-int/lit8 v4, v3, -0x1

    .line 2462
    .local v4, "searchLast":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_5

    .line 2463
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 2464
    .local v6, "ch":C
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v3, :cond_4

    .line 2465
    aget-char v8, p1, v7

    if-ne v8, v6, :cond_3

    .line 2466
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    .line 2467
    if-ne v7, v4, :cond_1

    .line 2469
    return v9

    .line 2471
    :cond_1
    if-ge v5, v2, :cond_3

    add-int/lit8 v8, v7, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v10, v5, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v8, v10, :cond_3

    .line 2472
    return v9

    .line 2476
    :cond_2
    return v9

    .line 2464
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2462
    .end local v6    # "ch":C
    .end local v7    # "j":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2481
    .end local v5    # "i":I
    :cond_5
    return v0

    .line 2456
    .end local v1    # "csLen":I
    .end local v2    # "csLast":I
    .end local v3    # "searchLen":I
    .end local v4    # "searchLast":I
    :cond_6
    :goto_2
    return v0
.end method

.method public static containsOnly(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "validChars"    # Ljava/lang/String;

    .line 2423
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2426
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->containsOnly(Ljava/lang/CharSequence;[C)Z

    move-result v0

    return v0

    .line 2424
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs containsOnly(Ljava/lang/CharSequence;[C)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "valid"    # [C

    .line 2387
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p0, :cond_0

    goto :goto_0

    .line 2390
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2391
    return v2

    .line 2393
    :cond_1
    array-length v1, p1

    if-nez v1, :cond_2

    .line 2394
    return v0

    .line 2396
    :cond_2
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->indexOfAnyBut(Ljava/lang/CharSequence;[C)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    .line 2388
    :cond_4
    :goto_0
    return v0
.end method

.method public static containsWhitespace(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "seq"    # Ljava/lang/CharSequence;

    .line 2038
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2039
    return v1

    .line 2041
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2042
    .local v0, "strLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 2043
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2044
    const/4 v1, 0x1

    return v1

    .line 2042
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2047
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method private static convertRemainingAccentCharacters(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p0, "decomposed"    # Ljava/lang/StringBuilder;

    .line 966
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 967
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x141

    if-ne v1, v2, :cond_0

    .line 968
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 969
    const/16 v1, 0x4c

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 970
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x142

    if-ne v1, v2, :cond_1

    .line 971
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 972
    const/16 v1, 0x6c

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 966
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 975
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public static countMatches(Ljava/lang/CharSequence;C)I
    .locals 3
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C

    .line 6980
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6981
    const/4 v0, 0x0

    return v0

    .line 6983
    :cond_0
    const/4 v0, 0x0

    .line 6985
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 6986
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne p1, v2, :cond_1

    .line 6987
    add-int/lit8 v0, v0, 0x1

    .line 6985
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6990
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public static countMatches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 4
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "sub"    # Ljava/lang/CharSequence;

    .line 6948
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 6951
    :cond_0
    const/4 v0, 0x0

    .line 6952
    .local v0, "count":I
    const/4 v1, 0x0

    .line 6953
    .local v1, "idx":I
    :goto_0
    invoke-static {p0, p1, v1}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v2

    move v1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 6954
    add-int/lit8 v0, v0, 0x1

    .line 6955
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 6957
    :cond_1
    return v0

    .line 6949
    .end local v0    # "count":I
    .end local v1    # "idx":I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static defaultIfBlank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 7574
    .local p0, "str":Ljava/lang/CharSequence;, "TT;"
    .local p1, "defaultStr":Ljava/lang/CharSequence;, "TT;"
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static defaultIfEmpty(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 7596
    .local p0, "str":Ljava/lang/CharSequence;, "TT;"
    .local p1, "defaultStr":Ljava/lang/CharSequence;, "TT;"
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static defaultString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 7457
    const-string v0, ""

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultStr"    # Ljava/lang/String;

    .line 7478
    if-nez p0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .line 4866
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4867
    return-object p0

    .line 4869
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4870
    .local v0, "sz":I
    new-array v1, v0, [C

    .line 4871
    .local v1, "chs":[C
    const/4 v2, 0x0

    .line 4872
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 4873
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4874
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "count":I
    .local v4, "count":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v1, v2

    move v2, v4

    .line 4872
    .end local v4    # "count":I
    .restart local v2    # "count":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4877
    .end local v3    # "i":I
    :cond_2
    if-ne v2, v0, :cond_3

    .line 4878
    return-object p0

    .line 4880
    :cond_3
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v3
.end method

.method public static difference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .line 7963
    if-nez p0, :cond_0

    .line 7964
    return-object p1

    .line 7966
    :cond_0
    if-nez p1, :cond_1

    .line 7967
    return-object p0

    .line 7969
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 7970
    .local v0, "at":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 7971
    const-string v1, ""

    return-object v1

    .line 7973
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "suffix"    # Ljava/lang/CharSequence;

    .line 8753
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method private static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 8
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "suffix"    # Ljava/lang/CharSequence;
    .param p2, "ignoreCase"    # Z

    .line 8795
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 8798
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 8799
    return v0

    .line 8801
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 8802
    .local v0, "strOffset":I
    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object v2, p0

    move v3, p2

    move v4, v0

    move-object v5, p1

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v1

    return v1

    .line 8796
    .end local v0    # "strOffset":I
    :cond_2
    :goto_0
    if-ne p0, p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static varargs endsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "searchStrings"    # [Ljava/lang/CharSequence;

    .line 8899
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 8902
    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 8903
    .local v3, "searchString":Ljava/lang/CharSequence;
    invoke-static {p0, v3}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8904
    const/4 v0, 0x1

    return v0

    .line 8902
    .end local v3    # "searchString":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8907
    :cond_2
    return v1

    .line 8900
    :cond_3
    :goto_1
    return v1
.end method

.method public static endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "suffix"    # Ljava/lang/CharSequence;

    .line 8780
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 7
    .param p0, "cs1"    # Ljava/lang/CharSequence;
    .param p1, "cs2"    # Ljava/lang/CharSequence;

    .line 1001
    if-ne p0, p1, :cond_0

    .line 1002
    const/4 v0, 0x1

    return v0

    .line 1004
    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_1

    goto :goto_0

    .line 1007
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 1008
    return v0

    .line 1010
    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1011
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1013
    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object v1, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    return v0

    .line 1005
    :cond_4
    :goto_0
    return v0
.end method

.method public static varargs equalsAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "searchStrings"    # [Ljava/lang/CharSequence;

    .line 1247
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1248
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 1249
    .local v3, "next":Ljava/lang/CharSequence;
    invoke-static {p0, v3}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1250
    const/4 v0, 0x1

    return v0

    .line 1248
    .end local v3    # "next":Ljava/lang/CharSequence;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1254
    :cond_1
    return v1
.end method

.method public static varargs equalsAnyIgnoreCase(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "searchStrings"    # [Ljava/lang/CharSequence;

    .line 1278
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1279
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 1280
    .local v3, "next":Ljava/lang/CharSequence;
    invoke-static {p0, v3}, Lorg/apache/commons/lang3/StringUtils;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1281
    const/4 v0, 0x1

    return v0

    .line 1279
    .end local v3    # "next":Ljava/lang/CharSequence;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1285
    :cond_1
    return v1
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 9
    .param p0, "str1"    # Ljava/lang/CharSequence;
    .param p1, "str2"    # Ljava/lang/CharSequence;

    .line 1038
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 1040
    :cond_0
    if-ne p0, p1, :cond_1

    .line 1041
    return v0

    .line 1042
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 1043
    return v1

    .line 1045
    :cond_2
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    return v0

    .line 1039
    :cond_3
    :goto_0
    if-ne p0, p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static varargs firstNonBlank([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">([TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 7508
    .local p0, "values":[Ljava/lang/CharSequence;, "[TT;"
    if-eqz p0, :cond_1

    .line 7509
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 7510
    .local v2, "val":Ljava/lang/CharSequence;, "TT;"
    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7511
    return-object v2

    .line 7509
    .end local v2    # "val":Ljava/lang/CharSequence;, "TT;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7515
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static varargs firstNonEmpty([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">([TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 7543
    .local p0, "values":[Ljava/lang/CharSequence;, "[TT;"
    if-eqz p0, :cond_1

    .line 7544
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 7545
    .local v2, "val":Ljava/lang/CharSequence;, "TT;"
    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7546
    return-object v2

    .line 7544
    .end local v2    # "val":Ljava/lang/CharSequence;, "TT;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7550
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static varargs getCommonPrefix([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "strs"    # [Ljava/lang/String;

    .line 8144
    const-string v0, ""

    if-eqz p0, :cond_4

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    .line 8147
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->indexOfDifference([Ljava/lang/CharSequence;)I

    move-result v1

    .line 8148
    .local v1, "smallestIndexOfDiff":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 8150
    aget-object v2, p0, v3

    if-nez v2, :cond_1

    .line 8151
    return-object v0

    .line 8153
    :cond_1
    aget-object v0, p0, v3

    return-object v0

    .line 8154
    :cond_2
    if-nez v1, :cond_3

    .line 8156
    return-object v0

    .line 8159
    :cond_3
    aget-object v0, p0, v3

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 8145
    .end local v1    # "smallestIndexOfDiff":I
    :cond_4
    :goto_0
    return-object v0
.end method

.method public static getDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .line 7278
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7279
    return-object p0

    .line 7281
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 7282
    .local v0, "sz":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7283
    .local v1, "strDigits":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 7284
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 7285
    .local v3, "tempChar":C
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7286
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7283
    .end local v3    # "tempChar":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7289
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getFuzzyDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/Locale;)I
    .locals 10
    .param p0, "term"    # Ljava/lang/CharSequence;
    .param p1, "query"    # Ljava/lang/CharSequence;
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8563
    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    .line 8565
    if-eqz p2, :cond_4

    .line 8573
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 8574
    .local v0, "termLowerCase":Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 8577
    .local v1, "queryLowerCase":Ljava/lang/String;
    const/4 v2, 0x0

    .line 8581
    .local v2, "score":I
    const/4 v3, 0x0

    .line 8584
    .local v3, "termIndex":I
    const/high16 v4, -0x80000000

    .line 8586
    .local v4, "previousMatchingCharacterIndex":I
    const/4 v5, 0x0

    .local v5, "queryIndex":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 8587
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 8589
    .local v6, "queryChar":C
    const/4 v7, 0x0

    .line 8590
    .local v7, "termCharacterMatchFound":Z
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_2

    if-nez v7, :cond_2

    .line 8591
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 8593
    .local v8, "termChar":C
    if-ne v6, v8, :cond_1

    .line 8595
    add-int/lit8 v2, v2, 0x1

    .line 8599
    add-int/lit8 v9, v4, 0x1

    if-ne v9, v3, :cond_0

    .line 8600
    add-int/lit8 v2, v2, 0x2

    .line 8603
    :cond_0
    move v4, v3

    .line 8607
    const/4 v7, 0x1

    .line 8590
    .end local v8    # "termChar":C
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 8586
    .end local v6    # "queryChar":C
    .end local v7    # "termCharacterMatchFound":Z
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8612
    .end local v5    # "queryIndex":I
    :cond_3
    return v2

    .line 8566
    .end local v0    # "termLowerCase":Ljava/lang/String;
    .end local v1    # "queryLowerCase":Ljava/lang/String;
    .end local v2    # "score":I
    .end local v3    # "termIndex":I
    .end local v4    # "previousMatchingCharacterIndex":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Locale must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8564
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getJaroWinklerDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)D
    .locals 13
    .param p0, "first"    # Ljava/lang/CharSequence;
    .param p1, "second"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8460
    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 8462
    .local v0, "DEFAULT_SCALING_FACTOR":D
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 8466
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->matches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I

    move-result-object v2

    .line 8467
    .local v2, "mtp":[I
    const/4 v3, 0x0

    aget v3, v2, v3

    int-to-double v3, v3

    .line 8468
    .local v3, "m":D
    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-nez v7, :cond_0

    .line 8469
    return-wide v5

    .line 8471
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    int-to-double v5, v5

    div-double v5, v3, v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    int-to-double v7, v7

    div-double v7, v3, v7

    add-double/2addr v5, v7

    const/4 v7, 0x1

    aget v7, v2, v7

    int-to-double v7, v7

    sub-double v7, v3, v7

    div-double/2addr v7, v3

    add-double/2addr v5, v7

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    div-double/2addr v5, v7

    .line 8472
    .local v5, "j":D
    const-wide v7, 0x3fe6666666666666L    # 0.7

    cmpg-double v9, v5, v7

    if-gez v9, :cond_1

    move-wide v7, v5

    goto :goto_0

    :cond_1
    const-wide v7, 0x3fb999999999999aL    # 0.1

    const/4 v9, 0x3

    aget v9, v2, v9

    int-to-double v9, v9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    div-double v9, v11, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    const/4 v9, 0x2

    aget v9, v2, v9

    int-to-double v9, v9

    mul-double v7, v7, v9

    sub-double/2addr v11, v5

    mul-double v7, v7, v11

    add-double/2addr v7, v5

    .line 8473
    .local v7, "jw":D
    :goto_0
    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double v11, v7, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-double v11, v11

    div-double/2addr v11, v9

    return-wide v11

    .line 8463
    .end local v2    # "mtp":[I
    .end local v3    # "m":D
    .end local v5    # "j":D
    .end local v7    # "jw":D
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Strings must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 13
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "t"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8202
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    .line 8206
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 8207
    .local v0, "n":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 8209
    .local v1, "m":I
    if-nez v0, :cond_0

    .line 8210
    return v1

    .line 8211
    :cond_0
    if-nez v1, :cond_1

    .line 8212
    return v0

    .line 8215
    :cond_1
    if-le v0, v1, :cond_2

    .line 8217
    move-object v2, p0

    .line 8218
    .local v2, "tmp":Ljava/lang/CharSequence;
    move-object p0, p1

    .line 8219
    move-object p1, v2

    .line 8220
    move v0, v1

    .line 8221
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 8224
    .end local v2    # "tmp":Ljava/lang/CharSequence;
    :cond_2
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [I

    .line 8234
    .local v2, "p":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-gt v3, v0, :cond_3

    .line 8235
    aput v3, v2, v3

    .line 8234
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8238
    :cond_3
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_1
    if-gt v4, v1, :cond_6

    .line 8239
    const/4 v5, 0x0

    aget v6, v2, v5

    .line 8240
    .local v6, "upper_left":I
    add-int/lit8 v7, v4, -0x1

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 8241
    .local v7, "t_j":C
    aput v4, v2, v5

    .line 8243
    const/4 v3, 0x1

    :goto_2
    if-gt v3, v0, :cond_5

    .line 8244
    aget v8, v2, v3

    .line 8245
    .local v8, "upper":I
    add-int/lit8 v9, v3, -0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v7, :cond_4

    const/4 v9, 0x0

    goto :goto_3

    :cond_4
    const/4 v9, 0x1

    .line 8247
    .local v9, "cost":I
    :goto_3
    add-int/lit8 v11, v3, -0x1

    aget v11, v2, v11

    add-int/2addr v11, v10

    aget v12, v2, v3

    add-int/2addr v12, v10

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int v11, v6, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aput v10, v2, v3

    .line 8248
    move v6, v8

    .line 8243
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 8238
    .end local v8    # "upper":I
    .end local v9    # "cost":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 8252
    .end local v6    # "upper_left":I
    .end local v7    # "t_j":C
    :cond_6
    aget v5, v2, v0

    return v5

    .line 8203
    .end local v0    # "n":I
    .end local v1    # "m":I
    .end local v2    # "p":[I
    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 16
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "t"    # Ljava/lang/CharSequence;
    .param p2, "threshold"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8292
    move/from16 v0, p2

    if-eqz p0, :cond_f

    if-eqz p1, :cond_f

    .line 8295
    if-ltz v0, :cond_e

    .line 8343
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 8344
    .local v1, "n":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 8347
    .local v2, "m":I
    const/4 v3, -0x1

    if-nez v1, :cond_1

    .line 8348
    if-gt v2, v0, :cond_0

    move v3, v2

    :cond_0
    return v3

    .line 8349
    :cond_1
    if-nez v2, :cond_3

    .line 8350
    if-gt v1, v0, :cond_2

    move v3, v1

    :cond_2
    return v3

    .line 8351
    :cond_3
    sub-int v4, v1, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v0, :cond_4

    .line 8353
    return v3

    .line 8356
    :cond_4
    if-le v1, v2, :cond_5

    .line 8358
    move-object/from16 v4, p0

    .line 8359
    .local v4, "tmp":Ljava/lang/CharSequence;
    move-object/from16 v5, p1

    .line 8360
    .end local p0    # "s":Ljava/lang/CharSequence;
    .local v5, "s":Ljava/lang/CharSequence;
    move-object v6, v4

    .line 8361
    .end local p1    # "t":Ljava/lang/CharSequence;
    .local v6, "t":Ljava/lang/CharSequence;
    move v1, v2

    .line 8362
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v2

    goto :goto_0

    .line 8356
    .end local v4    # "tmp":Ljava/lang/CharSequence;
    .end local v5    # "s":Ljava/lang/CharSequence;
    .end local v6    # "t":Ljava/lang/CharSequence;
    .restart local p0    # "s":Ljava/lang/CharSequence;
    .restart local p1    # "t":Ljava/lang/CharSequence;
    :cond_5
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 8365
    .end local p0    # "s":Ljava/lang/CharSequence;
    .end local p1    # "t":Ljava/lang/CharSequence;
    .restart local v5    # "s":Ljava/lang/CharSequence;
    .restart local v6    # "t":Ljava/lang/CharSequence;
    :goto_0
    add-int/lit8 v4, v1, 0x1

    new-array v4, v4, [I

    .line 8366
    .local v4, "p":[I
    add-int/lit8 v7, v1, 0x1

    new-array v7, v7, [I

    .line 8370
    .local v7, "d":[I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    .line 8371
    .local v8, "boundary":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v8, :cond_6

    .line 8372
    aput v10, v4, v10

    .line 8371
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 8376
    .end local v10    # "i":I
    :cond_6
    array-length v10, v4

    const v11, 0x7fffffff

    invoke-static {v4, v8, v10, v11}, Ljava/util/Arrays;->fill([IIII)V

    .line 8377
    invoke-static {v7, v11}, Ljava/util/Arrays;->fill([II)V

    .line 8380
    const/4 v10, 0x1

    .local v10, "j":I
    :goto_2
    if-gt v10, v2, :cond_c

    .line 8381
    add-int/lit8 v12, v10, -0x1

    invoke-interface {v6, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    .line 8382
    .local v12, "t_j":C
    const/4 v13, 0x0

    aput v10, v7, v13

    .line 8385
    sub-int v13, v10, v0

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 8386
    .local v13, "min":I
    sub-int v14, v11, v0

    if-le v10, v14, :cond_7

    move v14, v1

    goto :goto_3

    :cond_7
    add-int v14, v10, v0

    invoke-static {v1, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 8389
    .local v14, "max":I
    :goto_3
    if-le v13, v14, :cond_8

    .line 8390
    return v3

    .line 8394
    :cond_8
    if-le v13, v9, :cond_9

    .line 8395
    add-int/lit8 v15, v13, -0x1

    aput v11, v7, v15

    .line 8399
    :cond_9
    move v15, v13

    .local v15, "i":I
    :goto_4
    if-gt v15, v14, :cond_b

    .line 8400
    add-int/lit8 v11, v15, -0x1

    invoke-interface {v5, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ne v11, v12, :cond_a

    .line 8402
    add-int/lit8 v11, v15, -0x1

    aget v11, v4, v11

    aput v11, v7, v15

    goto :goto_5

    .line 8405
    :cond_a
    add-int/lit8 v11, v15, -0x1

    aget v11, v7, v11

    aget v3, v4, v15

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v11, v15, -0x1

    aget v11, v4, v11

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v3, v9

    aput v3, v7, v15

    .line 8399
    :goto_5
    add-int/lit8 v15, v15, 0x1

    const/4 v3, -0x1

    const v11, 0x7fffffff

    goto :goto_4

    .line 8410
    .end local v15    # "i":I
    :cond_b
    move-object v3, v4

    .line 8411
    .local v3, "_d":[I
    move-object v4, v7

    .line 8412
    move-object v7, v3

    .line 8380
    .end local v12    # "t_j":C
    .end local v13    # "min":I
    .end local v14    # "max":I
    add-int/lit8 v10, v10, 0x1

    const/4 v3, -0x1

    const v11, 0x7fffffff

    goto :goto_2

    .line 8417
    .end local v3    # "_d":[I
    .end local v10    # "j":I
    :cond_c
    aget v3, v4, v1

    if-gt v3, v0, :cond_d

    .line 8418
    aget v3, v4, v1

    return v3

    .line 8420
    :cond_d
    const/4 v3, -0x1

    return v3

    .line 8296
    .end local v1    # "n":I
    .end local v2    # "m":I
    .end local v4    # "p":[I
    .end local v5    # "s":Ljava/lang/CharSequence;
    .end local v6    # "t":Ljava/lang/CharSequence;
    .end local v7    # "d":[I
    .end local v8    # "boundary":I
    .restart local p0    # "s":Ljava/lang/CharSequence;
    .restart local p1    # "t":Ljava/lang/CharSequence;
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Threshold must not be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8293
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Strings must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static indexOf(Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I

    .line 1328
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1329
    const/4 v0, -0x1

    return v0

    .line 1331
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;II)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I
    .param p2, "startPos"    # I

    .line 1388
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1389
    const/4 v0, -0x1

    return v0

    .line 1391
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;

    .line 1419
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1422
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0

    .line 1420
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;
    .param p2, "startPos"    # I

    .line 1459
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1462
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0

    .line 1460
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOfAny(Ljava/lang/CharSequence;Ljava/lang/String;)I
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # Ljava/lang/String;

    .line 2125
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2128
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->indexOfAny(Ljava/lang/CharSequence;[C)I

    move-result v0

    return v0

    .line 2126
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static varargs indexOfAny(Ljava/lang/CharSequence;[C)I
    .locals 10
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # [C

    .line 2076
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_5

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2079
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2080
    .local v0, "csLen":I
    add-int/lit8 v2, v0, -0x1

    .line 2081
    .local v2, "csLast":I
    array-length v3, p1

    .line 2082
    .local v3, "searchLen":I
    add-int/lit8 v4, v3, -0x1

    .line 2083
    .local v4, "searchLast":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_4

    .line 2084
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 2085
    .local v6, "ch":C
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v3, :cond_3

    .line 2086
    aget-char v8, p1, v7

    if-ne v8, v6, :cond_2

    .line 2087
    if-ge v5, v2, :cond_1

    if-ge v7, v4, :cond_1

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2089
    add-int/lit8 v8, v7, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v9, v5, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_2

    .line 2090
    return v5

    .line 2093
    :cond_1
    return v5

    .line 2085
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2083
    .end local v6    # "ch":C
    .end local v7    # "j":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2098
    .end local v5    # "i":I
    :cond_4
    return v1

    .line 2077
    .end local v0    # "csLen":I
    .end local v2    # "csLast":I
    .end local v3    # "searchLen":I
    .end local v4    # "searchLast":I
    :cond_5
    :goto_2
    return v1
.end method

.method public static varargs indexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I
    .locals 7
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStrs"    # [Ljava/lang/CharSequence;

    .line 2544
    const/4 v0, -0x1

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_3

    .line 2549
    :cond_0
    const v1, 0x7fffffff

    .line 2551
    .local v1, "ret":I
    const/4 v2, 0x0

    .line 2552
    .local v2, "tmp":I
    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, p1, v5

    .line 2553
    .local v6, "search":Ljava/lang/CharSequence;
    if-nez v6, :cond_1

    .line 2554
    goto :goto_1

    .line 2556
    :cond_1
    invoke-static {p0, v6, v4}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v2

    .line 2557
    if-ne v2, v0, :cond_2

    .line 2558
    goto :goto_1

    .line 2561
    :cond_2
    if-ge v2, v1, :cond_3

    .line 2562
    move v1, v2

    .line 2552
    .end local v6    # "search":Ljava/lang/CharSequence;
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2566
    :cond_4
    const v3, 0x7fffffff

    if-ne v1, v3, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    return v0

    .line 2545
    .end local v1    # "ret":I
    .end local v2    # "tmp":I
    :cond_6
    :goto_3
    return v0
.end method

.method public static indexOfAnyBut(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 7
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # Ljava/lang/CharSequence;

    .line 2340
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 2343
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2344
    .local v0, "strLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 2345
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 2346
    .local v3, "ch":C
    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v5

    if-ltz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 2347
    .local v5, "chFound":Z
    :goto_1
    add-int/lit8 v6, v2, 0x1

    if-ge v6, v0, :cond_3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2348
    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 2349
    .local v6, "ch2":C
    if-eqz v5, :cond_2

    invoke-static {p1, v6, v4}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v4

    if-gez v4, :cond_2

    .line 2350
    return v2

    .line 2352
    .end local v6    # "ch2":C
    :cond_2
    goto :goto_2

    .line 2353
    :cond_3
    if-nez v5, :cond_4

    .line 2354
    return v2

    .line 2344
    .end local v3    # "ch":C
    .end local v5    # "chFound":Z
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2358
    .end local v2    # "i":I
    :cond_5
    return v1

    .line 2341
    .end local v0    # "strLen":I
    :cond_6
    :goto_3
    return v1
.end method

.method public static varargs indexOfAnyBut(Ljava/lang/CharSequence;[C)I
    .locals 10
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # [C

    .line 2290
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_5

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2293
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2294
    .local v0, "csLen":I
    add-int/lit8 v2, v0, -0x1

    .line 2295
    .local v2, "csLast":I
    array-length v3, p1

    .line 2296
    .local v3, "searchLen":I
    add-int/lit8 v4, v3, -0x1

    .line 2298
    .local v4, "searchLast":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_4

    .line 2299
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 2300
    .local v6, "ch":C
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v3, :cond_3

    .line 2301
    aget-char v8, p1, v7

    if-ne v8, v6, :cond_2

    .line 2302
    if-ge v5, v2, :cond_1

    if-ge v7, v4, :cond_1

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2303
    add-int/lit8 v8, v7, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v9, v5, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_2

    .line 2298
    .end local v6    # "ch":C
    .end local v7    # "j":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2300
    .restart local v6    # "ch":C
    .restart local v7    # "j":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2311
    .end local v7    # "j":I
    :cond_3
    return v5

    .line 2313
    .end local v5    # "i":I
    .end local v6    # "ch":C
    :cond_4
    return v1

    .line 2291
    .end local v0    # "csLen":I
    .end local v2    # "csLast":I
    .end local v3    # "searchLen":I
    .end local v4    # "searchLast":I
    :cond_5
    :goto_2
    return v1
.end method

.method public static indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 4
    .param p0, "cs1"    # Ljava/lang/CharSequence;
    .param p1, "cs2"    # Ljava/lang/CharSequence;

    .line 8002
    const/4 v0, -0x1

    if-ne p0, p1, :cond_0

    .line 8003
    return v0

    .line 8005
    :cond_0
    if-eqz p0, :cond_6

    if-nez p1, :cond_1

    goto :goto_3

    .line 8009
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 8010
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_2

    .line 8011
    goto :goto_1

    .line 8009
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8014
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    goto :goto_2

    .line 8017
    :cond_4
    return v0

    .line 8015
    :cond_5
    :goto_2
    return v1

    .line 8006
    .end local v1    # "i":I
    :cond_6
    :goto_3
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs indexOfDifference([Ljava/lang/CharSequence;)I
    .locals 12
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .line 8053
    const/4 v0, -0x1

    if-eqz p0, :cond_b

    array-length v1, p0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    goto :goto_7

    .line 8056
    :cond_0
    const/4 v1, 0x0

    .line 8057
    .local v1, "anyStringNull":Z
    const/4 v2, 0x1

    .line 8058
    .local v2, "allStringsNull":Z
    array-length v3, p0

    .line 8059
    .local v3, "arrayLen":I
    const v4, 0x7fffffff

    .line 8060
    .local v4, "shortestStrLen":I
    const/4 v5, 0x0

    .line 8065
    .local v5, "longestStrLen":I
    array-length v6, p0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_2

    aget-object v9, p0, v8

    .line 8066
    .local v9, "cs":Ljava/lang/CharSequence;
    if-nez v9, :cond_1

    .line 8067
    const/4 v1, 0x1

    .line 8068
    const/4 v4, 0x0

    goto :goto_1

    .line 8070
    :cond_1
    const/4 v2, 0x0

    .line 8071
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 8072
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 8065
    .end local v9    # "cs":Ljava/lang/CharSequence;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 8077
    :cond_2
    if-nez v2, :cond_a

    if-nez v5, :cond_3

    if-nez v1, :cond_3

    goto :goto_6

    .line 8082
    :cond_3
    if-nez v4, :cond_4

    .line 8083
    return v7

    .line 8087
    :cond_4
    const/4 v6, -0x1

    .line 8088
    .local v6, "firstDiff":I
    const/4 v8, 0x0

    .local v8, "stringPos":I
    :goto_2
    if-ge v8, v4, :cond_8

    .line 8089
    aget-object v9, p0, v7

    invoke-interface {v9, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 8090
    .local v9, "comparisonChar":C
    const/4 v10, 0x1

    .local v10, "arrayPos":I
    :goto_3
    if-ge v10, v3, :cond_6

    .line 8091
    aget-object v11, p0, v10

    invoke-interface {v11, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-eq v11, v9, :cond_5

    .line 8092
    move v6, v8

    .line 8093
    goto :goto_4

    .line 8090
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 8096
    .end local v10    # "arrayPos":I
    :cond_6
    :goto_4
    if-eq v6, v0, :cond_7

    .line 8097
    goto :goto_5

    .line 8088
    .end local v9    # "comparisonChar":C
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 8101
    .end local v8    # "stringPos":I
    :cond_8
    :goto_5
    if-ne v6, v0, :cond_9

    if-eq v4, v5, :cond_9

    .line 8105
    return v4

    .line 8107
    :cond_9
    return v6

    .line 8078
    .end local v6    # "firstDiff":I
    :cond_a
    :goto_6
    return v0

    .line 8054
    .end local v1    # "anyStringNull":Z
    .end local v2    # "allStringsNull":Z
    .end local v3    # "arrayLen":I
    .end local v4    # "shortestStrLen":I
    .end local v5    # "longestStrLen":I
    :cond_b
    :goto_7
    return v0
.end method

.method public static indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;

    .line 1585
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 9
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "startPos"    # I

    .line 1621
    const/4 v0, -0x1

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_1

    .line 1624
    :cond_0
    if-gez p2, :cond_1

    .line 1625
    const/4 p2, 0x0

    .line 1627
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 1628
    .local v1, "endLimit":I
    if-le p2, v1, :cond_2

    .line 1629
    return v0

    .line 1631
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 1632
    return p2

    .line 1634
    :cond_3
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 1635
    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move-object v3, p0

    move v5, v2

    move-object v6, p1

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1636
    return v2

    .line 1634
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1639
    .end local v2    # "i":I
    :cond_5
    return v0

    .line 1622
    .end local v1    # "endLimit":I
    :cond_6
    :goto_1
    return v0
.end method

.method public static varargs isAllBlank([Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .line 460
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 461
    return v1

    .line 463
    :cond_0
    array-length v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p0, v3

    .line 464
    .local v4, "cs":Ljava/lang/CharSequence;
    invoke-static {v4}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 465
    return v2

    .line 463
    .end local v4    # "cs":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 468
    :cond_2
    return v1
.end method

.method public static varargs isAllEmpty([Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .line 311
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 312
    return v1

    .line 314
    :cond_0
    array-length v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p0, v3

    .line 315
    .local v4, "cs":Ljava/lang/CharSequence;
    invoke-static {v4}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 316
    return v2

    .line 314
    .end local v4    # "cs":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 319
    :cond_2
    return v1
.end method

.method public static isAllLowerCase(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 7350
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 7353
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7354
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 7355
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7356
    return v0

    .line 7354
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7359
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 7351
    .end local v1    # "sz":I
    :cond_3
    :goto_1
    return v0
.end method

.method public static isAllUpperCase(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 7385
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 7388
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7389
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 7390
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7391
    return v0

    .line 7389
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7394
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 7386
    .end local v1    # "sz":I
    :cond_3
    :goto_1
    return v0
.end method

.method public static isAlpha(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 7016
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7017
    return v1

    .line 7019
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 7020
    .local v0, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 7021
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7022
    return v1

    .line 7020
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7025
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public static isAlphaSpace(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 7051
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 7052
    return v0

    .line 7054
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7055
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 7056
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    .line 7057
    return v0

    .line 7055
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7060
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isAlphanumeric(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 7086
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7087
    return v1

    .line 7089
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 7090
    .local v0, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 7091
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7092
    return v1

    .line 7090
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7095
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public static isAlphanumericSpace(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 7121
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 7122
    return v0

    .line 7124
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7125
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 7126
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    .line 7127
    return v0

    .line 7125
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7130
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static varargs isAnyBlank([Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .line 400
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 401
    return v1

    .line 403
    :cond_0
    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 404
    .local v3, "cs":Ljava/lang/CharSequence;
    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 405
    const/4 v0, 0x1

    return v0

    .line 403
    .end local v3    # "cs":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 408
    :cond_2
    return v1
.end method

.method public static varargs isAnyEmpty([Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .line 256
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 257
    return v1

    .line 259
    :cond_0
    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 260
    .local v3, "cs":Ljava/lang/CharSequence;
    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 261
    const/4 v0, 0x1

    return v0

    .line 259
    .end local v3    # "cs":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    :cond_2
    return v1
.end method

.method public static isAsciiPrintable(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 7160
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 7161
    return v0

    .line 7163
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7164
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 7165
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/commons/lang3/CharUtils;->isAsciiPrintable(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7166
    return v0

    .line 7164
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7169
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isBlank(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 342
    const/4 v0, 0x1

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v2, v1

    .local v2, "strLen":I
    if-nez v1, :cond_0

    goto :goto_1

    .line 345
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 346
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 347
    const/4 v0, 0x0

    return v0

    .line 345
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    .end local v1    # "i":I
    :cond_2
    return v0

    .line 343
    .end local v2    # "strLen":I
    :cond_3
    :goto_1
    return v0
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 213
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

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

.method public static isMixedCase(Ljava/lang/CharSequence;)Z
    .locals 7
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 7420
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_2

    .line 7423
    :cond_0
    const/4 v0, 0x0

    .line 7424
    .local v0, "containsUppercase":Z
    const/4 v3, 0x0

    .line 7425
    .local v3, "containsLowercase":Z
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 7426
    .local v4, "sz":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_4

    .line 7427
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 7428
    return v2

    .line 7429
    :cond_1
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 7430
    const/4 v0, 0x1

    goto :goto_1

    .line 7431
    :cond_2
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 7432
    const/4 v3, 0x1

    .line 7426
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7435
    .end local v5    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1

    .line 7421
    .end local v0    # "containsUppercase":Z
    .end local v3    # "containsLowercase":Z
    .end local v4    # "sz":I
    :cond_6
    :goto_2
    return v1
.end method

.method public static varargs isNoneBlank([Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .line 435
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isAnyBlank([Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static varargs isNoneEmpty([Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .line 288
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isAnyEmpty([Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotBlank(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 373
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 232
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNumeric(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 7204
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7205
    return v1

    .line 7207
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 7208
    .local v0, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 7209
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7210
    return v1

    .line 7208
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7213
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public static isNumericSpace(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 7243
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 7244
    return v0

    .line 7246
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7247
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 7248
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    .line 7249
    return v0

    .line 7247
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7252
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isWhitespace(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 7315
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 7316
    return v0

    .line 7318
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7319
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 7320
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7321
    return v0

    .line 7319
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7324
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static join(Ljava/lang/Iterable;C)Ljava/lang/String;
    .locals 1
    .param p1, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4704
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-nez p0, :cond_0

    .line 4705
    const/4 v0, 0x0

    return-object v0

    .line 4707
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4725
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-nez p0, :cond_0

    .line 4726
    const/4 v0, 0x0

    return-object v0

    .line 4728
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/util/Iterator;C)Ljava/lang/String;
    .locals 3
    .param p1, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4616
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    if-nez p0, :cond_0

    .line 4617
    const/4 v0, 0x0

    return-object v0

    .line 4619
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    .line 4620
    return-object v1

    .line 4622
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4623
    .local v0, "first":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4624
    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4628
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4629
    .local v1, "buf":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_3

    .line 4630
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4633
    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4634
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4635
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4636
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_4

    .line 4637
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4639
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_4
    goto :goto_0

    .line 4641
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4660
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    if-nez p0, :cond_0

    .line 4661
    const/4 v0, 0x0

    return-object v0

    .line 4663
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    .line 4664
    return-object v1

    .line 4666
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4667
    .local v0, "first":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4668
    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4672
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4673
    .local v1, "buf":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_3

    .line 4674
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4677
    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4678
    if-eqz p1, :cond_4

    .line 4679
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4681
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4682
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_5

    .line 4683
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4685
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_5
    goto :goto_0

    .line 4686
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static join(Ljava/util/List;CII)Ljava/lang/String;
    .locals 3
    .param p1, "separator"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;CII)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4758
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez p0, :cond_0

    .line 4759
    const/4 v0, 0x0

    return-object v0

    .line 4761
    :cond_0
    sub-int v0, p3, p2

    .line 4762
    .local v0, "noOfItems":I
    if-gtz v0, :cond_1

    .line 4763
    const-string v1, ""

    return-object v1

    .line 4765
    :cond_1
    invoke-interface {p0, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 4766
    .local v1, "subList":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static join(Ljava/util/List;Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4796
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez p0, :cond_0

    .line 4797
    const/4 v0, 0x0

    return-object v0

    .line 4799
    :cond_0
    sub-int v0, p3, p2

    .line 4800
    .local v0, "noOfItems":I
    if-gtz v0, :cond_1

    .line 4801
    const-string v1, ""

    return-object v1

    .line 4803
    :cond_1
    invoke-interface {p0, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 4804
    .local v1, "subList":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static join([BC)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [B
    .param p1, "separator"    # C

    .line 4013
    if-nez p0, :cond_0

    .line 4014
    const/4 v0, 0x0

    return-object v0

    .line 4016
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([BCII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([BCII)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [B
    .param p1, "separator"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 4292
    if-nez p0, :cond_0

    .line 4293
    const/4 v0, 0x0

    return-object v0

    .line 4295
    :cond_0
    sub-int v0, p3, p2

    .line 4296
    .local v0, "noOfItems":I
    if-gtz v0, :cond_1

    .line 4297
    const-string v1, ""

    return-object v1

    .line 4299
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->newStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4300
    .local v1, "buf":Ljava/lang/StringBuilder;
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_3

    .line 4301
    if-le v2, p2, :cond_2

    .line 4302
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4304
    :cond_2
    aget-byte v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4300
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4306
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static join([CC)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [C
    .param p1, "separator"    # C

    .line 4045
    if-nez p0, :cond_0

    .line 4046
    const/4 v0, 0x0

    return-object v0

    .line 4048
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([CCII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([CCII)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [C
    .param p1, "separator"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 4390
    if-nez p0, :cond_0

    .line 4391
    const/4 v0, 0x0

    return-object v0

    .line 4393
    :cond_0
    sub-int v0, p3, p2

    .line 4394
    .local v0, "noOfItems":I
    if-gtz v0, :cond_1

    .line 4395
    const-string v1, ""

    return-object v1

    .line 4397
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->newStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4398
    .local v1, "buf":Ljava/lang/StringBuilder;
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_3

    .line 4399
    if-le v2, p2, :cond_2

    .line 4400
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4402
    :cond_2
    aget-char v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4398
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4404
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static join([DC)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [D
    .param p1, "separator"    # C

    .line 4109
    if-nez p0, :cond_0

    .line 4110
    const/4 v0, 0x0

    return-object v0

    .line 4112
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([DCII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([DCII)Ljava/lang/String;
    .locals 5
    .param p0, "array"    # [D
    .param p1, "separator"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 4439
    if-nez p0, :cond_0

    .line 4440
    const/4 v0, 0x0

    return-object v0

    .line 4442
    :cond_0
    sub-int v0, p3, p2

    .line 4443
    .local v0, "noOfItems":I
    if-gtz v0, :cond_1

    .line 4444
    const-string v1, ""

    return-object v1

    .line 4446
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->newStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4447
    .local v1, "buf":Ljava/lang/StringBuilder;
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_3

    .line 4448
    if-le v2, p2, :cond_2

    .line 4449
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4451
    :cond_2
    aget-wide v3, p0, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 4447
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4453
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static join([FC)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [F
    .param p1, "separator"    # C

    .line 4077
    if-nez p0, :cond_0

    .line 4078
    const/4 v0, 0x0

    return-object v0

    .line 4080
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([FCII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([FCII)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [F
    .param p1, "separator"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 4488
    if-nez p0, :cond_0

    .line 4489
    const/4 v0, 0x0

    return-object v0

    .line 4491
    :cond_0
    sub-int v0, p3, p2

    .line 4492
    .local v0, "noOfItems":I
    if-gtz v0, :cond_1

    .line 4493
    const-string v1, ""

    return-object v1

    .line 4495
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->newStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4496
    .local v1, "buf":Ljava/lang/StringBuilder;
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_3

    .line 4497
    if-le v2, p2, :cond_2

    .line 4498
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4500
    :cond_2
    aget v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 4496
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4502
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static join([IC)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [I
    .param p1, "separator"    # C

    .line 3949
    if-nez p0, :cond_0

    .line 3950
    const/4 v0, 0x0

    return-object v0

    .line 3952
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([ICII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([ICII)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [I
    .param p1, "separator"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 4243
    if-nez p0, :cond_0

    .line 4244
    const/4 v0, 0x0

    return-object v0

    .line 4246
    :cond_0
    sub-int v0, p3, p2

    .line 4247
    .local v0, "noOfItems":I
    if-gtz v0, :cond_1

    .line 4248
    const-string v1, ""

    return-object v1

    .line 4250
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->newStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4251
    .local v1, "buf":Ljava/lang/StringBuilder;
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_3

    .line 4252
    if-le v2, p2, :cond_2

    .line 4253
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4255
    :cond_2
    aget v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4251
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4257
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static join([JC)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [J
    .param p1, "separator"    # C

    .line 3917
    if-nez p0, :cond_0

    .line 3918
    const/4 v0, 0x0

    return-object v0

    .line 3920
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([JCII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([JCII)Ljava/lang/String;
    .locals 5
    .param p0, "array"    # [J
    .param p1, "separator"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 4194
    if-nez p0, :cond_0

    .line 4195
    const/4 v0, 0x0

    return-object v0

    .line 4197
    :cond_0
    sub-int v0, p3, p2

    .line 4198
    .local v0, "noOfItems":I
    if-gtz v0, :cond_1

    .line 4199
    const-string v1, ""

    return-object v1

    .line 4201
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->newStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4202
    .local v1, "buf":Ljava/lang/StringBuilder;
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_3

    .line 4203
    if-le v2, p2, :cond_2

    .line 4204
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4206
    :cond_2
    aget-wide v3, p0, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4202
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4208
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static varargs join([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 3859
    .local p0, "elements":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;C)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # C

    .line 3885
    if-nez p0, :cond_0

    .line 3886
    const/4 v0, 0x0

    return-object v0

    .line 3888
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;CII)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 4143
    if-nez p0, :cond_0

    .line 4144
    const/4 v0, 0x0

    return-object v0

    .line 4146
    :cond_0
    sub-int v0, p3, p2

    .line 4147
    .local v0, "noOfItems":I
    if-gtz v0, :cond_1

    .line 4148
    const-string v1, ""

    return-object v1

    .line 4150
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->newStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4151
    .local v1, "buf":Ljava/lang/StringBuilder;
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_4

    .line 4152
    if-le v2, p2, :cond_2

    .line 4153
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4155
    :cond_2
    aget-object v3, p0, v2

    if-eqz v3, :cond_3

    .line 4156
    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4151
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4159
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # Ljava/lang/String;

    .line 4530
    if-nez p0, :cond_0

    .line 4531
    const/4 v0, 0x0

    return-object v0

    .line 4533
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 4572
    if-nez p0, :cond_0

    .line 4573
    const/4 v0, 0x0

    return-object v0

    .line 4575
    :cond_0
    if-nez p1, :cond_1

    .line 4576
    const-string p1, ""

    .line 4581
    :cond_1
    sub-int v0, p3, p2

    .line 4582
    .local v0, "noOfItems":I
    if-gtz v0, :cond_2

    .line 4583
    const-string v1, ""

    return-object v1

    .line 4586
    :cond_2
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->newStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4588
    .local v1, "buf":Ljava/lang/StringBuilder;
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_5

    .line 4589
    if-le v2, p2, :cond_3

    .line 4590
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4592
    :cond_3
    aget-object v3, p0, v2

    if-eqz v3, :cond_4

    .line 4593
    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4588
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4596
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static join([SC)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [S
    .param p1, "separator"    # C

    .line 3981
    if-nez p0, :cond_0

    .line 3982
    const/4 v0, 0x0

    return-object v0

    .line 3984
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([SCII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([SCII)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [S
    .param p1, "separator"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 4341
    if-nez p0, :cond_0

    .line 4342
    const/4 v0, 0x0

    return-object v0

    .line 4344
    :cond_0
    sub-int v0, p3, p2

    .line 4345
    .local v0, "noOfItems":I
    if-gtz v0, :cond_1

    .line 4346
    const-string v1, ""

    return-object v1

    .line 4348
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->newStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4349
    .local v1, "buf":Ljava/lang/StringBuilder;
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_3

    .line 4350
    if-le v2, p2, :cond_2

    .line 4351
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4353
    :cond_2
    aget-short v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4349
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4355
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static varargs joinWith(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "objects"    # [Ljava/lang/Object;

    .line 4828
    if-eqz p1, :cond_2

    .line 4832
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4834
    .local v0, "sanitizedSeparator":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4836
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4837
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4838
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4839
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4841
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4842
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4844
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 4846
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4829
    .end local v0    # "sanitizedSeparator":Ljava/lang/String;
    .end local v1    # "result":Ljava/lang/StringBuilder;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object varargs must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I

    .line 1679
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1680
    const/4 v0, -0x1

    return v0

    .line 1682
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;II)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I
    .param p2, "startPos"    # I

    .line 1730
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1731
    const/4 v0, -0x1

    return v0

    .line 1733
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;

    .line 1760
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1763
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0

    .line 1761
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;
    .param p2, "startPos"    # I

    .line 1840
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1843
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0

    .line 1841
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static varargs lastIndexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I
    .locals 6
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStrs"    # [Ljava/lang/CharSequence;

    .line 2596
    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 2599
    :cond_0
    const/4 v0, -0x1

    .line 2600
    .local v0, "ret":I
    const/4 v1, 0x0

    .line 2601
    .local v1, "tmp":I
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p1, v3

    .line 2602
    .local v4, "search":Ljava/lang/CharSequence;
    if-nez v4, :cond_1

    .line 2603
    goto :goto_1

    .line 2605
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {p0, v4, v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    .line 2606
    if-le v1, v0, :cond_2

    .line 2607
    move v0, v1

    .line 2601
    .end local v4    # "search":Ljava/lang/CharSequence;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2610
    :cond_3
    return v0

    .line 2597
    .end local v0    # "ret":I
    .end local v1    # "tmp":I
    :cond_4
    :goto_2
    const/4 v0, -0x1

    return v0
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;

    .line 1870
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1873
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0

    .line 1871
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 8
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "startPos"    # I

    .line 1909
    const/4 v0, -0x1

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_1

    .line 1912
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_1

    .line 1913
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int p2, v1, v2

    .line 1915
    :cond_1
    if-gez p2, :cond_2

    .line 1916
    return v0

    .line 1918
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 1919
    return p2

    .line 1922
    :cond_3
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_5

    .line 1923
    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object v2, p0

    move v4, v1

    move-object v5, p1

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1924
    return v1

    .line 1922
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1927
    .end local v1    # "i":I
    :cond_5
    return v0

    .line 1910
    :cond_6
    :goto_1
    return v0
.end method

.method public static lastOrdinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "ordinal"    # I

    .line 1801
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I

    move-result v0

    return v0
.end method

.method public static left(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 2750
    if-nez p0, :cond_0

    .line 2751
    const/4 v0, 0x0

    return-object v0

    .line 2753
    :cond_0
    if-gez p1, :cond_1

    .line 2754
    const-string v0, ""

    return-object v0

    .line 2756
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_2

    .line 2757
    return-object p0

    .line 2759
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static leftPad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .line 6465
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static leftPad(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padChar"    # C

    .line 6490
    if-nez p0, :cond_0

    .line 6491
    const/4 v0, 0x0

    return-object v0

    .line 6493
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    .line 6494
    .local v0, "pads":I
    if-gtz v0, :cond_1

    .line 6495
    return-object p0

    .line 6497
    :cond_1
    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    .line 6498
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 6500
    :cond_2
    invoke-static {p2, v0}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .line 6527
    if-nez p0, :cond_0

    .line 6528
    const/4 v0, 0x0

    return-object v0

    .line 6530
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6531
    const-string p2, " "

    .line 6533
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 6534
    .local v0, "padLen":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 6535
    .local v1, "strLen":I
    sub-int v2, p1, v1

    .line 6536
    .local v2, "pads":I
    if-gtz v2, :cond_2

    .line 6537
    return-object p0

    .line 6539
    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    const/16 v4, 0x2000

    if-gt v2, v4, :cond_3

    .line 6540
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {p0, p1, v3}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 6543
    :cond_3
    if-ne v2, v0, :cond_4

    .line 6544
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 6545
    :cond_4
    if-ge v2, v0, :cond_5

    .line 6546
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 6548
    :cond_5
    new-array v3, v2, [C

    .line 6549
    .local v3, "padding":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 6550
    .local v4, "padChars":[C
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_6

    .line 6551
    rem-int v6, v5, v0

    aget-char v6, v4, v6

    aput-char v6, v3, v5

    .line 6550
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6553
    .end local v5    # "i":I
    :cond_6
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static length(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 6569
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static lowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 6753
    if-nez p0, :cond_0

    .line 6754
    const/4 v0, 0x0

    return-object v0

    .line 6756
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static lowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 6776
    if-nez p0, :cond_0

    .line 6777
    const/4 v0, 0x0

    return-object v0

    .line 6779
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static matches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I
    .locals 16
    .param p0, "first"    # Ljava/lang/CharSequence;
    .param p1, "second"    # Ljava/lang/CharSequence;

    .line 8478
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 8479
    move-object/from16 v0, p0

    .line 8480
    .local v0, "max":Ljava/lang/CharSequence;
    move-object/from16 v1, p1

    .local v1, "min":Ljava/lang/CharSequence;
    goto :goto_0

    .line 8482
    .end local v0    # "max":Ljava/lang/CharSequence;
    .end local v1    # "min":Ljava/lang/CharSequence;
    :cond_0
    move-object/from16 v0, p1

    .line 8483
    .restart local v0    # "max":Ljava/lang/CharSequence;
    move-object/from16 v1, p0

    .line 8485
    .restart local v1    # "min":Ljava/lang/CharSequence;
    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    const/4 v5, 0x0

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 8486
    .local v2, "range":I
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    new-array v6, v6, [I

    .line 8487
    .local v6, "matchIndexes":[I
    const/4 v7, -0x1

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([II)V

    .line 8488
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    new-array v8, v8, [Z

    .line 8489
    .local v8, "matchFlags":[Z
    const/4 v9, 0x0

    .line 8490
    .local v9, "matches":I
    const/4 v10, 0x0

    .local v10, "mi":I
    :goto_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ge v10, v11, :cond_3

    .line 8491
    invoke-interface {v1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    .line 8492
    .local v11, "c1":C
    sub-int v12, v10, v2

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    .local v12, "xi":I
    add-int v13, v10, v2

    add-int/2addr v13, v4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .local v13, "xn":I
    :goto_2
    if-ge v12, v13, :cond_2

    .line 8493
    aget-boolean v14, v8, v12

    if-nez v14, :cond_1

    invoke-interface {v0, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    if-ne v11, v14, :cond_1

    .line 8494
    aput v12, v6, v10

    .line 8495
    aput-boolean v4, v8, v12

    .line 8496
    add-int/lit8 v9, v9, 0x1

    .line 8497
    goto :goto_3

    .line 8492
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 8490
    .end local v11    # "c1":C
    .end local v12    # "xi":I
    .end local v13    # "xn":I
    :cond_2
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 8501
    .end local v10    # "mi":I
    :cond_3
    new-array v10, v9, [C

    .line 8502
    .local v10, "ms1":[C
    new-array v11, v9, [C

    .line 8503
    .local v11, "ms2":[C
    const/4 v12, 0x0

    .local v12, "i":I
    const/4 v13, 0x0

    .local v13, "si":I
    :goto_4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-ge v12, v14, :cond_5

    .line 8504
    aget v14, v6, v12

    if-eq v14, v7, :cond_4

    .line 8505
    invoke-interface {v1, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    aput-char v14, v10, v13

    .line 8506
    add-int/lit8 v13, v13, 0x1

    .line 8503
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 8509
    .end local v12    # "i":I
    .end local v13    # "si":I
    :cond_5
    const/4 v7, 0x0

    .local v7, "i":I
    const/4 v12, 0x0

    .local v12, "si":I
    :goto_5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-ge v7, v13, :cond_7

    .line 8510
    aget-boolean v13, v8, v7

    if-eqz v13, :cond_6

    .line 8511
    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    aput-char v13, v11, v12

    .line 8512
    add-int/lit8 v12, v12, 0x1

    .line 8509
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 8515
    .end local v7    # "i":I
    .end local v12    # "si":I
    :cond_7
    const/4 v7, 0x0

    .line 8516
    .local v7, "transpositions":I
    const/4 v12, 0x0

    .local v12, "mi":I
    :goto_6
    array-length v13, v10

    if-ge v12, v13, :cond_9

    .line 8517
    aget-char v13, v10, v12

    aget-char v14, v11, v12

    if-eq v13, v14, :cond_8

    .line 8518
    add-int/lit8 v7, v7, 0x1

    .line 8516
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 8521
    .end local v12    # "mi":I
    :cond_9
    const/4 v12, 0x0

    .line 8522
    .local v12, "prefix":I
    const/4 v13, 0x0

    .local v13, "mi":I
    :goto_7
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-ge v13, v14, :cond_a

    .line 8523
    move-object/from16 v14, p0

    invoke-interface {v14, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    move-object/from16 v3, p1

    invoke-interface {v3, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v15, v4, :cond_b

    .line 8524
    add-int/lit8 v12, v12, 0x1

    .line 8522
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    goto :goto_7

    :cond_a
    move-object/from16 v14, p0

    move-object/from16 v3, p1

    .line 8529
    .end local v13    # "mi":I
    :cond_b
    const/4 v4, 0x4

    new-array v4, v4, [I

    aput v9, v4, v5

    div-int/lit8 v5, v7, 0x2

    const/4 v13, 0x1

    aput v5, v4, v13

    const/4 v5, 0x2

    aput v12, v4, v5

    const/4 v5, 0x3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v13

    aput v13, v4, v5

    return-object v4
.end method

.method public static mid(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "len"    # I

    .line 2821
    if-nez p0, :cond_0

    .line 2822
    const/4 v0, 0x0

    return-object v0

    .line 2824
    :cond_0
    if-ltz p2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 2827
    :cond_1
    if-gez p1, :cond_2

    .line 2828
    const/4 p1, 0x0

    .line 2830
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p1, p2

    if-gt v0, v1, :cond_3

    .line 2831
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2833
    :cond_3
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2825
    :cond_4
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method private static newStringBuilder(I)Ljava/lang/StringBuilder;
    .locals 2
    .param p0, "noOfItems"    # I

    .line 2837
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p0, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    return-object v0
.end method

.method public static normalizeSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "str"    # Ljava/lang/String;

    .line 8849
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8850
    return-object p0

    .line 8852
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 8853
    .local v0, "size":I
    new-array v1, v0, [C

    .line 8854
    .local v1, "newChars":[C
    const/4 v2, 0x0

    .line 8855
    .local v2, "count":I
    const/4 v3, 0x0

    .line 8856
    .local v3, "whitespacesCount":I
    const/4 v4, 0x1

    .line 8857
    .local v4, "startWhitespaces":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v6, 0x0

    if-ge v5, v0, :cond_4

    .line 8858
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 8859
    .local v7, "actualChar":C
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    .line 8860
    .local v8, "isWhitespace":Z
    if-eqz v8, :cond_2

    .line 8861
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    .line 8862
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "count":I
    .local v9, "count":I
    const-string v10, " "

    invoke-virtual {v10, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v1, v2

    move v2, v9

    .line 8864
    .end local v9    # "count":I
    .restart local v2    # "count":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 8866
    :cond_2
    const/4 v4, 0x0

    .line 8867
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "count":I
    .local v6, "count":I
    const/16 v9, 0xa0

    if-ne v7, v9, :cond_3

    const/16 v9, 0x20

    goto :goto_1

    :cond_3
    move v9, v7

    :goto_1
    aput-char v9, v1, v2

    .line 8868
    const/4 v2, 0x0

    move v3, v2

    move v2, v6

    .line 8857
    .end local v6    # "count":I
    .end local v7    # "actualChar":C
    .end local v8    # "isWhitespace":Z
    .restart local v2    # "count":I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8871
    .end local v5    # "i":I
    :cond_4
    if-eqz v4, :cond_5

    .line 8872
    const-string v5, ""

    return-object v5

    .line 8874
    :cond_5
    new-instance v5, Ljava/lang/String;

    if-lez v3, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    :goto_3
    sub-int v7, v2, v7

    invoke-direct {v5, v1, v6, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "ordinal"    # I

    .line 1516
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I

    move-result v0

    return v0
.end method

.method private static ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I
    .locals 3
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "ordinal"    # I
    .param p3, "lastIndex"    # Z

    .line 1535
    const/4 v0, -0x1

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    if-gtz p2, :cond_0

    goto :goto_2

    .line 1538
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 1539
    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1541
    :cond_2
    const/4 v1, 0x0

    .line 1544
    .local v1, "found":I
    if-eqz p3, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1546
    .local v0, "index":I
    :cond_3
    if-eqz p3, :cond_4

    .line 1547
    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, p1, v2}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_1

    .line 1549
    :cond_4
    add-int/lit8 v2, v0, 0x1

    invoke-static {p0, p1, v2}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1551
    :goto_1
    if-gez v0, :cond_5

    .line 1552
    return v0

    .line 1554
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 1555
    if-lt v1, p2, :cond_3

    .line 1556
    return v0

    .line 1536
    .end local v0    # "index":I
    .end local v1    # "found":I
    :cond_6
    :goto_2
    return v0
.end method

.method public static overlay(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "overlay"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 6053
    if-nez p0, :cond_0

    .line 6054
    const/4 v0, 0x0

    return-object v0

    .line 6056
    :cond_0
    if-nez p1, :cond_1

    .line 6057
    const-string p1, ""

    .line 6059
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 6060
    .local v0, "len":I
    if-gez p2, :cond_2

    .line 6061
    const/4 p2, 0x0

    .line 6063
    :cond_2
    if-le p2, v0, :cond_3

    .line 6064
    move p2, v0

    .line 6066
    :cond_3
    if-gez p3, :cond_4

    .line 6067
    const/4 p3, 0x0

    .line 6069
    :cond_4
    if-le p3, v0, :cond_5

    .line 6070
    move p3, v0

    .line 6072
    :cond_5
    if-le p2, p3, :cond_6

    .line 6073
    move v1, p2

    .line 6074
    .local v1, "temp":I
    move p2, p3

    .line 6075
    move p3, v1

    .line 6077
    .end local v1    # "temp":I
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6079
    invoke-virtual {p0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6077
    return-object v1
.end method

.method private static varargs prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "ignoreCase"    # Z
    .param p3, "prefixes"    # [Ljava/lang/CharSequence;

    .line 9023
    if-eqz p0, :cond_3

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 9026
    :cond_0
    if-eqz p3, :cond_2

    array-length v0, p3

    if-lez v0, :cond_2

    .line 9027
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p3, v1

    .line 9028
    .local v2, "p":Ljava/lang/CharSequence;
    invoke-static {p0, v2, p2}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9029
    return-object p0

    .line 9027
    .end local v2    # "p":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9033
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9024
    :cond_3
    :goto_1
    return-object p0
.end method

.method public static varargs prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "prefixes"    # [Ljava/lang/CharSequence;

    .line 9071
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs prependIfMissingIgnoreCase(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "prefixes"    # [Ljava/lang/CharSequence;

    .line 9109
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static remove(Ljava/lang/String;C)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # C

    .line 5114
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 5117
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 5118
    .local v0, "chars":[C
    const/4 v1, 0x0

    .line 5119
    .local v1, "pos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 5120
    aget-char v3, v0, v2

    if-eq v3, p1, :cond_1

    .line 5121
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "pos":I
    .local v3, "pos":I
    aget-char v4, v0, v2

    aput-char v4, v0, v1

    move v1, v3

    .line 5119
    .end local v3    # "pos":I
    .restart local v1    # "pos":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5124
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 5115
    .end local v0    # "chars":[C
    .end local v1    # "pos":I
    :cond_3
    :goto_1
    return-object p0
.end method

.method public static remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 5048
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5051
    :cond_0
    const/4 v0, -0x1

    const-string v1, ""

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5049
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static removeAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5174
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RegExUtils;->removeAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 4979
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4982
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4983
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4985
    :cond_1
    return-object p0

    .line 4980
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static removeEndIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 5015
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5018
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5019
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5021
    :cond_1
    return-object p0

    .line 5016
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static removeFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5223
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 5088
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5091
    :cond_0
    const/4 v0, -0x1

    const-string v1, ""

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5089
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static removePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5364
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RegExUtils;->removePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 4910
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4913
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4914
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4916
    :cond_1
    return-object p0

    .line 4911
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static removeStartIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 4945
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4948
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4949
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4951
    :cond_1
    return-object p0

    .line 4946
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static repeat(CI)Ljava/lang/String;
    .locals 2
    .param p0, "ch"    # C
    .param p1, "repeat"    # I

    .line 6323
    if-gtz p1, :cond_0

    .line 6324
    const-string v0, ""

    return-object v0

    .line 6326
    :cond_0
    new-array v0, p1, [C

    .line 6327
    .local v0, "buf":[C
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 6328
    aput-char p0, v0, v1

    .line 6327
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6330
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "repeat"    # I

    .line 6235
    if-nez p0, :cond_0

    .line 6236
    const/4 v0, 0x0

    return-object v0

    .line 6238
    :cond_0
    if-gtz p1, :cond_1

    .line 6239
    const-string v0, ""

    return-object v0

    .line 6241
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 6242
    .local v0, "inputLength":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_8

    if-nez v0, :cond_2

    goto :goto_2

    .line 6245
    :cond_2
    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    const/16 v3, 0x2000

    if-gt p1, v3, :cond_3

    .line 6246
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, p1}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 6249
    :cond_3
    mul-int v3, v0, p1

    .line 6250
    .local v3, "outputLength":I
    if-eq v0, v1, :cond_7

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    .line 6263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6264
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_4

    .line 6265
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6264
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6267
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 6254
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    :cond_5
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 6255
    .local v2, "ch0":C
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 6256
    .local v1, "ch1":C
    new-array v5, v3, [C

    .line 6257
    .local v5, "output2":[C
    mul-int/lit8 v6, p1, 0x2

    sub-int/2addr v6, v4

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_6

    .line 6258
    aput-char v2, v5, v6

    .line 6259
    add-int/lit8 v4, v6, 0x1

    aput-char v1, v5, v4

    .line 6257
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 6261
    .end local v6    # "i":I
    :cond_6
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    return-object v4

    .line 6252
    .end local v1    # "ch1":C
    .end local v2    # "ch0":C
    .end local v5    # "output2":[C
    :cond_7
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, p1}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 6243
    .end local v3    # "outputLength":I
    :cond_8
    :goto_2
    return-object p0
.end method

.method public static repeat(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "repeat"    # I

    .line 6292
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 6296
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 6297
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 6293
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {p0, p2}, Lorg/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 5499
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .param p3, "max"    # I

    .line 5559
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 8
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .param p3, "max"    # I
    .param p4, "ignoreCase"    # Z

    .line 5594
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p2, :cond_8

    if-nez p3, :cond_0

    goto :goto_4

    .line 5597
    :cond_0
    move-object v0, p0

    .line 5598
    .local v0, "searchText":Ljava/lang/String;
    if-eqz p4, :cond_1

    .line 5599
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 5600
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 5602
    :cond_1
    const/4 v1, 0x0

    .line 5603
    .local v1, "start":I
    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 5604
    .local v2, "end":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 5605
    return-object p0

    .line 5607
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 5608
    .local v4, "replLength":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    .line 5609
    .local v5, "increase":I
    if-gez v5, :cond_3

    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    move v6, v5

    :goto_0
    move v5, v6

    .line 5610
    const/16 v6, 0x40

    if-gez p3, :cond_4

    const/16 v6, 0x10

    goto :goto_1

    :cond_4
    if-le p3, v6, :cond_5

    goto :goto_1

    :cond_5
    move v6, p3

    :goto_1
    mul-int v5, v5, v6

    .line 5611
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v5

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5612
    .local v6, "buf":Ljava/lang/StringBuilder;
    :goto_2
    if-eq v2, v3, :cond_7

    .line 5613
    invoke-virtual {v6, p0, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5614
    add-int v1, v2, v4

    .line 5615
    add-int/lit8 p3, p3, -0x1

    if-nez p3, :cond_6

    .line 5616
    goto :goto_3

    .line 5618
    :cond_6
    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_2

    .line 5620
    :cond_7
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v6, p0, v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 5621
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 5595
    .end local v0    # "searchText":Ljava/lang/String;
    .end local v1    # "start":I
    .end local v2    # "end":I
    .end local v4    # "replLength":I
    .end local v5    # "increase":I
    .end local v6    # "buf":Ljava/lang/StringBuilder;
    :cond_8
    :goto_4
    return-object p0
.end method

.method public static replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5419
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/RegExUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceChars(Ljava/lang/String;CC)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChar"    # C
    .param p2, "replaceChar"    # C

    .line 5950
    if-nez p0, :cond_0

    .line 5951
    const/4 v0, 0x0

    return-object v0

    .line 5953
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # Ljava/lang/String;
    .param p2, "replaceChars"    # Ljava/lang/String;

    .line 5993
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 5996
    :cond_0
    if-nez p2, :cond_1

    .line 5997
    const-string p2, ""

    .line 5999
    :cond_1
    const/4 v0, 0x0

    .line 6000
    .local v0, "modified":Z
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 6001
    .local v1, "replaceCharsLength":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 6002
    .local v2, "strLength":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6003
    .local v3, "buf":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 6004
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 6005
    .local v5, "ch":C
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 6006
    .local v6, "index":I
    if-ltz v6, :cond_2

    .line 6007
    const/4 v0, 0x1

    .line 6008
    if-ge v6, v1, :cond_3

    .line 6009
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 6012
    :cond_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6003
    .end local v5    # "ch":C
    .end local v6    # "index":I
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6015
    .end local v4    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    .line 6016
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 6018
    :cond_5
    return-object p0

    .line 5994
    .end local v0    # "modified":Z
    .end local v1    # "replaceCharsLength":I
    .end local v2    # "strLength":I
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    :cond_6
    :goto_2
    return-object p0
.end method

.method public static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;

    .line 5697
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 17
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;
    .param p3, "repeat"    # Z
    .param p4, "timeToLive"    # I

    .line 5805
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    if-eqz v0, :cond_17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_17

    if-eqz v1, :cond_17

    array-length v4, v1

    if-eqz v4, :cond_17

    if-eqz v2, :cond_17

    array-length v4, v2

    if-nez v4, :cond_0

    goto/16 :goto_9

    .line 5811
    :cond_0
    if-ltz p4, :cond_16

    .line 5816
    array-length v4, v1

    .line 5817
    .local v4, "searchLength":I
    array-length v5, v2

    .line 5820
    .local v5, "replacementLength":I
    if-ne v4, v5, :cond_15

    .line 5828
    new-array v6, v4, [Z

    .line 5831
    .local v6, "noMoreMatchesForReplIndex":[Z
    const/4 v7, -0x1

    .line 5832
    .local v7, "textIndex":I
    const/4 v8, -0x1

    .line 5833
    .local v8, "replaceIndex":I
    const/4 v9, -0x1

    .line 5837
    .local v9, "tempIndex":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/4 v11, -0x1

    const/4 v12, 0x1

    if-ge v10, v4, :cond_5

    .line 5838
    aget-boolean v13, v6, v10

    if-nez v13, :cond_4

    aget-object v13, v1, v10

    if-eqz v13, :cond_4

    aget-object v13, v1, v10

    .line 5839
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    aget-object v13, v2, v10

    if-nez v13, :cond_1

    .line 5840
    goto :goto_1

    .line 5842
    :cond_1
    aget-object v13, v1, v10

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 5845
    if-ne v9, v11, :cond_2

    .line 5846
    aput-boolean v12, v6, v10

    goto :goto_1

    .line 5848
    :cond_2
    if-eq v7, v11, :cond_3

    if-ge v9, v7, :cond_4

    .line 5849
    :cond_3
    move v7, v9

    .line 5850
    move v8, v10

    .line 5837
    :cond_4
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 5857
    .end local v10    # "i":I
    :cond_5
    if-ne v7, v11, :cond_6

    .line 5858
    return-object v0

    .line 5861
    :cond_6
    const/4 v10, 0x0

    .line 5864
    .local v10, "start":I
    const/4 v13, 0x0

    .line 5867
    .local v13, "increase":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    array-length v15, v1

    if-ge v14, v15, :cond_9

    .line 5868
    aget-object v15, v1, v14

    if-eqz v15, :cond_8

    aget-object v15, v2, v14

    if-nez v15, :cond_7

    .line 5869
    goto :goto_3

    .line 5871
    :cond_7
    aget-object v15, v2, v14

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    aget-object v16, v1, v14

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    sub-int v15, v15, v16

    .line 5872
    .local v15, "greater":I
    if-lez v15, :cond_8

    .line 5873
    mul-int/lit8 v16, v15, 0x3

    add-int v13, v13, v16

    .line 5867
    .end local v15    # "greater":I
    :cond_8
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 5877
    .end local v14    # "i":I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    div-int/lit8 v14, v14, 0x5

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 5879
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v13

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5881
    .local v14, "buf":Ljava/lang/StringBuilder;
    :goto_4
    if-eq v7, v11, :cond_12

    .line 5883
    move v15, v10

    .local v15, "i":I
    :goto_5
    if-ge v15, v7, :cond_a

    .line 5884
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5883
    add-int/lit8 v15, v15, 0x1

    const/4 v12, 0x1

    goto :goto_5

    .line 5886
    .end local v15    # "i":I
    :cond_a
    aget-object v12, v2, v8

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5888
    aget-object v12, v1, v8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int v10, v7, v12

    .line 5890
    const/4 v7, -0x1

    .line 5891
    const/4 v8, -0x1

    .line 5892
    const/4 v9, -0x1

    .line 5895
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_6
    if-ge v12, v4, :cond_11

    .line 5896
    aget-boolean v15, v6, v12

    if-nez v15, :cond_f

    aget-object v15, v1, v12

    if-eqz v15, :cond_f

    aget-object v15, v1, v12

    .line 5897
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_e

    aget-object v15, v2, v12

    if-nez v15, :cond_b

    .line 5898
    const/4 v15, 0x1

    goto :goto_7

    .line 5900
    :cond_b
    aget-object v15, v1, v12

    invoke-virtual {v0, v15, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 5903
    if-ne v9, v11, :cond_c

    .line 5904
    const/4 v15, 0x1

    aput-boolean v15, v6, v12

    goto :goto_7

    .line 5906
    :cond_c
    const/4 v15, 0x1

    if-eq v7, v11, :cond_d

    if-ge v9, v7, :cond_10

    .line 5907
    :cond_d
    move v7, v9

    .line 5908
    move v8, v12

    goto :goto_7

    .line 5897
    :cond_e
    const/4 v15, 0x1

    goto :goto_7

    .line 5896
    :cond_f
    const/4 v15, 0x1

    .line 5895
    :cond_10
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_11
    const/4 v15, 0x1

    const/4 v12, 0x1

    .end local v12    # "i":I
    goto :goto_4

    .line 5915
    :cond_12
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    .line 5916
    .local v11, "textLength":I
    move v12, v10

    .restart local v12    # "i":I
    :goto_8
    if-ge v12, v11, :cond_13

    .line 5917
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5916
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 5919
    .end local v12    # "i":I
    :cond_13
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 5920
    .local v12, "result":Ljava/lang/String;
    if-nez v3, :cond_14

    .line 5921
    return-object v12

    .line 5924
    :cond_14
    add-int/lit8 v15, p4, -0x1

    invoke-static {v12, v1, v2, v3, v15}, Lorg/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v15

    return-object v15

    .line 5821
    .end local v6    # "noMoreMatchesForReplIndex":[Z
    .end local v7    # "textIndex":I
    .end local v8    # "replaceIndex":I
    .end local v9    # "tempIndex":I
    .end local v10    # "start":I
    .end local v11    # "textLength":I
    .end local v12    # "result":Ljava/lang/String;
    .end local v13    # "increase":I
    .end local v14    # "buf":Ljava/lang/StringBuilder;
    :cond_15
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Search and Replace array lengths don\'t match: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " vs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 5812
    .end local v4    # "searchLength":I
    .end local v5    # "replacementLength":I
    :cond_16
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Aborting to protect against StackOverflowError - output of one loop is the input of another"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5807
    :cond_17
    :goto_9
    return-object v0
.end method

.method public static replaceEachRepeatedly(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;

    .line 5745
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p1

    .line 5746
    .local v0, "timeToLive":I
    :goto_0
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static replaceFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5472
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/RegExUtils;->replaceFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 5527
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .param p3, "max"    # I

    .line 5654
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 5252
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceOnceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 5281
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replacePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5327
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/RegExUtils;->replacePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reverse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 7661
    if-nez p0, :cond_0

    .line 7662
    const/4 v0, 0x0

    return-object v0

    .line 7664
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reverseDelimited(Ljava/lang/String;C)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .line 7687
    if-nez p0, :cond_0

    .line 7688
    const/4 v0, 0x0

    return-object v0

    .line 7692
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    .line 7693
    .local v0, "strs":[Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([Ljava/lang/Object;)V

    .line 7694
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static right(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 2783
    if-nez p0, :cond_0

    .line 2784
    const/4 v0, 0x0

    return-object v0

    .line 2786
    :cond_0
    if-gez p1, :cond_1

    .line 2787
    const-string v0, ""

    return-object v0

    .line 2789
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_2

    .line 2790
    return-object p0

    .line 2792
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rightPad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .line 6353
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rightPad(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padChar"    # C

    .line 6378
    if-nez p0, :cond_0

    .line 6379
    const/4 v0, 0x0

    return-object v0

    .line 6381
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    .line 6382
    .local v0, "pads":I
    if-gtz v0, :cond_1

    .line 6383
    return-object p0

    .line 6385
    :cond_1
    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    .line 6386
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 6388
    :cond_2
    invoke-static {p2, v0}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .line 6415
    if-nez p0, :cond_0

    .line 6416
    const/4 v0, 0x0

    return-object v0

    .line 6418
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6419
    const-string p2, " "

    .line 6421
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 6422
    .local v0, "padLen":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 6423
    .local v1, "strLen":I
    sub-int v2, p1, v1

    .line 6424
    .local v2, "pads":I
    if-gtz v2, :cond_2

    .line 6425
    return-object p0

    .line 6427
    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    const/16 v4, 0x2000

    if-gt v2, v4, :cond_3

    .line 6428
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {p0, p1, v3}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 6431
    :cond_3
    if-ne v2, v0, :cond_4

    .line 6432
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 6433
    :cond_4
    if-ge v2, v0, :cond_5

    .line 6434
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 6436
    :cond_5
    new-array v3, v2, [C

    .line 6437
    .local v3, "padding":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 6438
    .local v4, "padChars":[C
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_6

    .line 6439
    rem-int v6, v5, v0

    aget-char v6, v4, v6

    aput-char v6, v3, v5

    .line 6438
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6441
    .end local v5    # "i":I
    :cond_6
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static rotate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "shift"    # I

    .line 7628
    if-nez p0, :cond_0

    .line 7629
    const/4 v0, 0x0

    return-object v0

    .line 7632
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 7633
    .local v0, "strLen":I
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    rem-int v1, p1, v0

    if-nez v1, :cond_1

    goto :goto_0

    .line 7637
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7638
    .local v1, "builder":Ljava/lang/StringBuilder;
    rem-int v2, p1, v0

    neg-int v2, v2

    .line 7639
    .local v2, "offset":I
    invoke-static {p0, v2}, Lorg/apache/commons/lang3/StringUtils;->substring(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7640
    const/4 v3, 0x0

    invoke-static {p0, v3, v2}, Lorg/apache/commons/lang3/StringUtils;->substring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7641
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 7634
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "offset":I
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 3155
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .line 3183
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;

    .line 3212
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I

    .line 3246
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByCharacterType(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 3756
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "camelCase"    # Z

    .line 3802
    if-nez p0, :cond_0

    .line 3803
    const/4 v0, 0x0

    return-object v0

    .line 3805
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3806
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 3808
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3809
    .local v0, "c":[C
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3810
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 3811
    .local v2, "tokenStart":I
    aget-char v3, v0, v2

    invoke-static {v3}, Ljava/lang/Character;->getType(C)I

    move-result v3

    .line 3812
    .local v3, "currentType":I
    add-int/lit8 v4, v2, 0x1

    .local v4, "pos":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_5

    .line 3813
    aget-char v5, v0, v4

    invoke-static {v5}, Ljava/lang/Character;->getType(C)I

    move-result v5

    .line 3814
    .local v5, "type":I
    if-ne v5, v3, :cond_2

    .line 3815
    goto :goto_2

    .line 3817
    :cond_2
    if-eqz p1, :cond_4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    const/4 v6, 0x1

    if-ne v3, v6, :cond_4

    .line 3818
    add-int/lit8 v6, v4, -0x1

    .line 3819
    .local v6, "newTokenStart":I
    if-eq v6, v2, :cond_3

    .line 3820
    new-instance v7, Ljava/lang/String;

    sub-int v8, v6, v2

    invoke-direct {v7, v0, v2, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3821
    move v2, v6

    .line 3823
    .end local v6    # "newTokenStart":I
    :cond_3
    goto :goto_1

    .line 3824
    :cond_4
    new-instance v6, Ljava/lang/String;

    sub-int v7, v4, v2

    invoke-direct {v6, v0, v2, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3825
    move v2, v4

    .line 3827
    :goto_1
    move v3, v5

    .line 3812
    .end local v5    # "type":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3829
    .end local v4    # "pos":I
    :cond_5
    new-instance v4, Ljava/lang/String;

    array-length v5, v0

    sub-int/2addr v5, v2

    invoke-direct {v4, v0, v2, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3830
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public static splitByCharacterTypeCamelCase(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 3784
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 3273
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "max"    # I

    .line 3304
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 3333
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "max"    # I

    .line 3366
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "max"    # I
    .param p3, "preserveAllTokens"    # Z

    .line 3385
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 3386
    return-object v0

    .line 3389
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 3391
    .local v1, "len":I
    if-nez v1, :cond_1

    .line 3392
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 3395
    :cond_1
    if-eqz p1, :cond_9

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 3400
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 3402
    .local v0, "separatorLength":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3403
    .local v3, "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 3404
    .local v4, "numberOfSubstrings":I
    const/4 v5, 0x0

    .line 3405
    .local v5, "beg":I
    const/4 v6, 0x0

    .line 3406
    .local v6, "end":I
    :goto_0
    if-ge v6, v1, :cond_8

    .line 3407
    invoke-virtual {p0, p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 3409
    const/4 v7, -0x1

    if-le v6, v7, :cond_7

    .line 3410
    if-le v6, v5, :cond_4

    .line 3411
    add-int/lit8 v4, v4, 0x1

    .line 3413
    if-ne v4, p2, :cond_3

    .line 3414
    move v6, v1

    .line 3415
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3419
    :cond_3
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3424
    add-int v5, v6, v0

    goto :goto_0

    .line 3428
    :cond_4
    if-eqz p3, :cond_6

    .line 3429
    add-int/lit8 v4, v4, 0x1

    .line 3430
    if-ne v4, p2, :cond_5

    .line 3431
    move v6, v1

    .line 3432
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3434
    :cond_5
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3437
    :cond_6
    :goto_1
    add-int v5, v6, v0

    goto :goto_0

    .line 3441
    :cond_7
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3442
    move v6, v1

    goto :goto_0

    .line 3446
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2

    .line 3397
    .end local v0    # "separatorLength":I
    .end local v3    # "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "numberOfSubstrings":I
    .end local v5    # "beg":I
    .end local v6    # "end":I
    :cond_9
    :goto_2
    invoke-static {p0, v0, p2, p3}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 3475
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .line 3511
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;

    .line 3594
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I

    .line 3634
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C
    .param p2, "preserveAllTokens"    # Z

    .line 3529
    if-nez p0, :cond_0

    .line 3530
    const/4 v0, 0x0

    return-object v0

    .line 3532
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3533
    .local v0, "len":I
    if-nez v0, :cond_1

    .line 3534
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v1

    .line 3536
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3537
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .line 3538
    .local v3, "start":I
    const/4 v4, 0x0

    .line 3539
    .local v4, "match":Z
    const/4 v5, 0x0

    .line 3540
    .local v5, "lastMatch":Z
    :goto_0
    if-ge v2, v0, :cond_5

    .line 3541
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, p1, :cond_4

    .line 3542
    if-nez v4, :cond_2

    if-eqz p2, :cond_3

    .line 3543
    :cond_2
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3544
    const/4 v4, 0x0

    .line 3545
    const/4 v5, 0x1

    .line 3547
    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 3548
    goto :goto_0

    .line 3550
    :cond_4
    const/4 v5, 0x0

    .line 3551
    const/4 v4, 0x1

    .line 3552
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3554
    :cond_5
    if-nez v4, :cond_6

    if-eqz p2, :cond_7

    if-eqz v5, :cond_7

    .line 3555
    :cond_6
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3557
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    return-object v6
.end method

.method private static splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .locals 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I
    .param p3, "preserveAllTokens"    # Z

    .line 3656
    if-nez p0, :cond_0

    .line 3657
    const/4 v0, 0x0

    return-object v0

    .line 3659
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3660
    .local v0, "len":I
    if-nez v0, :cond_1

    .line 3661
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v1

    .line 3663
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3664
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 3665
    .local v2, "sizePlus1":I
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    .line 3666
    .local v4, "start":I
    const/4 v5, 0x0

    .line 3667
    .local v5, "match":Z
    const/4 v6, 0x0

    .line 3668
    .local v6, "lastMatch":Z
    const/4 v7, 0x1

    if-nez p1, :cond_6

    .line 3670
    :goto_0
    if-ge v3, v0, :cond_11

    .line 3671
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3672
    if-nez v5, :cond_2

    if-eqz p3, :cond_4

    .line 3673
    :cond_2
    const/4 v6, 0x1

    .line 3674
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "sizePlus1":I
    .local v8, "sizePlus1":I
    if-ne v2, p2, :cond_3

    .line 3675
    move v2, v0

    .line 3676
    .end local v3    # "i":I
    .local v2, "i":I
    const/4 v6, 0x0

    move v3, v2

    .line 3678
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_3
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3679
    const/4 v2, 0x0

    move v5, v2

    move v2, v8

    .line 3681
    .end local v8    # "sizePlus1":I
    .local v2, "sizePlus1":I
    :cond_4
    add-int/2addr v3, v7

    move v4, v3

    .line 3682
    goto :goto_0

    .line 3684
    :cond_5
    const/4 v6, 0x0

    .line 3685
    const/4 v5, 0x1

    .line 3686
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3688
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v7, :cond_c

    .line 3690
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 3691
    .local v8, "sep":C
    :goto_1
    if-ge v3, v0, :cond_b

    .line 3692
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_a

    .line 3693
    if-nez v5, :cond_7

    if-eqz p3, :cond_9

    .line 3694
    :cond_7
    const/4 v6, 0x1

    .line 3695
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "sizePlus1":I
    .local v9, "sizePlus1":I
    if-ne v2, p2, :cond_8

    .line 3696
    move v2, v0

    .line 3697
    .end local v3    # "i":I
    .local v2, "i":I
    const/4 v6, 0x0

    move v3, v2

    .line 3699
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_8
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3700
    const/4 v2, 0x0

    move v5, v2

    move v2, v9

    .line 3702
    .end local v9    # "sizePlus1":I
    .local v2, "sizePlus1":I
    :cond_9
    add-int/2addr v3, v7

    move v4, v3

    .line 3703
    goto :goto_1

    .line 3705
    :cond_a
    const/4 v6, 0x0

    .line 3706
    const/4 v5, 0x1

    .line 3707
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3709
    .end local v8    # "sep":C
    :cond_b
    goto :goto_3

    .line 3711
    :cond_c
    :goto_2
    if-ge v3, v0, :cond_11

    .line 3712
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_10

    .line 3713
    if-nez v5, :cond_d

    if-eqz p3, :cond_f

    .line 3714
    :cond_d
    const/4 v6, 0x1

    .line 3715
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "sizePlus1":I
    .local v8, "sizePlus1":I
    if-ne v2, p2, :cond_e

    .line 3716
    move v2, v0

    .line 3717
    .end local v3    # "i":I
    .local v2, "i":I
    const/4 v6, 0x0

    move v3, v2

    .line 3719
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_e
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3720
    const/4 v2, 0x0

    move v5, v2

    move v2, v8

    .line 3722
    .end local v8    # "sizePlus1":I
    .local v2, "sizePlus1":I
    :cond_f
    add-int/2addr v3, v7

    move v4, v3

    .line 3723
    goto :goto_2

    .line 3725
    :cond_10
    const/4 v6, 0x0

    .line 3726
    const/4 v5, 0x1

    .line 3727
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3730
    :cond_11
    :goto_3
    if-nez v5, :cond_12

    if-eqz p3, :cond_13

    if-eqz v6, :cond_13

    .line 3731
    :cond_12
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3733
    :cond_13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    return-object v7
.end method

.method public static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .line 8641
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method private static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 9
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "ignoreCase"    # Z

    .line 8682
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 8685
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 8686
    return v0

    .line 8688
    :cond_1
    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move-object v3, p0

    move v4, p2

    move-object v6, p1

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    return v0

    .line 8683
    :cond_2
    :goto_0
    if-ne p0, p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static varargs startsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "searchStrings"    # [Ljava/lang/CharSequence;

    .line 8714
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 8717
    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 8718
    .local v3, "searchString":Ljava/lang/CharSequence;
    invoke-static {p0, v3}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8719
    const/4 v0, 0x1

    return v0

    .line 8717
    .end local v3    # "searchString":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8722
    :cond_2
    return v1

    .line 8715
    :cond_3
    :goto_1
    return v1
.end method

.method public static startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .line 8667
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public static strip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 691
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .line 778
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    return-object p0

    .line 781
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 782
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripAccents(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # Ljava/lang/String;

    .line 955
    if-nez p0, :cond_0

    .line 956
    const/4 v0, 0x0

    return-object v0

    .line 958
    :cond_0
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 959
    .local v0, "pattern":Ljava/util/regex/Pattern;
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 960
    .local v1, "decomposed":Ljava/lang/StringBuilder;
    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->convertRemainingAccentCharacters(Ljava/lang/StringBuilder;)V

    .line 962
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static varargs stripAll([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "strs"    # [Ljava/lang/String;

    .line 896
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "strs"    # [Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .line 926
    if-eqz p0, :cond_2

    array-length v0, p0

    move v1, v0

    .local v1, "strsLen":I
    if-nez v0, :cond_0

    goto :goto_1

    .line 929
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    .line 930
    .local v0, "newArr":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 931
    aget-object v3, p0, v2

    invoke-static {v3, p1}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 930
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 933
    .end local v2    # "i":I
    :cond_1
    return-object v0

    .line 927
    .end local v0    # "newArr":[Ljava/lang/String;
    .end local v1    # "strsLen":I
    :cond_2
    :goto_1
    return-object p0
.end method

.method public static stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .line 856
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v0

    .local v1, "end":I
    if-nez v0, :cond_0

    goto :goto_2

    .line 860
    :cond_0
    if-nez p1, :cond_1

    .line 861
    :goto_0
    if-eqz v1, :cond_3

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 862
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 864
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 865
    return-object p0

    .line 867
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 868
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 871
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 857
    .end local v1    # "end":I
    :cond_4
    :goto_2
    return-object p0
.end method

.method public static stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .line 811
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v0

    .local v1, "strLen":I
    if-nez v0, :cond_0

    goto :goto_2

    .line 814
    :cond_0
    const/4 v0, 0x0

    .line 815
    .local v0, "start":I
    if-nez p1, :cond_1

    .line 816
    :goto_0
    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 817
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 819
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 820
    return-object p0

    .line 822
    :cond_2
    :goto_1
    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 823
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 826
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 812
    .end local v0    # "start":I
    .end local v1    # "strLen":I
    :cond_4
    :goto_2
    return-object p0
.end method

.method public static stripToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 748
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static stripToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 718
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 719
    return-object v0

    .line 721
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 722
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static substring(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # I

    .line 2640
    if-nez p0, :cond_0

    .line 2641
    const/4 v0, 0x0

    return-object v0

    .line 2645
    :cond_0
    if-gez p1, :cond_1

    .line 2646
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    .line 2649
    :cond_1
    if-gez p1, :cond_2

    .line 2650
    const/4 p1, 0x0

    .line 2652
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_3

    .line 2653
    const-string v0, ""

    return-object v0

    .line 2656
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substring(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 2695
    if-nez p0, :cond_0

    .line 2696
    const/4 v0, 0x0

    return-object v0

    .line 2700
    :cond_0
    if-gez p2, :cond_1

    .line 2701
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p2, v0

    .line 2703
    :cond_1
    if-gez p1, :cond_2

    .line 2704
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    .line 2708
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_3

    .line 2709
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    .line 2713
    :cond_3
    if-le p1, p2, :cond_4

    .line 2714
    const-string v0, ""

    return-object v0

    .line 2717
    :cond_4
    if-gez p1, :cond_5

    .line 2718
    const/4 p1, 0x0

    .line 2720
    :cond_5
    if-gez p2, :cond_6

    .line 2721
    const/4 p2, 0x0

    .line 2724
    :cond_6
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 2912
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2913
    return-object p0

    .line 2915
    :cond_0
    const-string v0, ""

    if-nez p1, :cond_1

    .line 2916
    return-object v0

    .line 2918
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2919
    .local v1, "pos":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 2920
    return-object v0

    .line 2922
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substringAfterLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 2993
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2994
    return-object p0

    .line 2996
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 2997
    return-object v1

    .line 2999
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 3000
    .local v0, "pos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 3003
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3001
    :cond_3
    :goto_0
    return-object v1
.end method

.method public static substringBefore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 2870
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 2873
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2874
    const-string v0, ""

    return-object v0

    .line 2876
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2877
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 2878
    return-object p0

    .line 2880
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2871
    .end local v0    # "pos":I
    :cond_3
    :goto_0
    return-object p0
.end method

.method public static substringBeforeLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 2953
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2956
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 2957
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2958
    return-object p0

    .line 2960
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2954
    .end local v0    # "pos":I
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .line 3030
    invoke-static {p0, p1, p1}, Lorg/apache/commons/lang3/StringUtils;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "open"    # Ljava/lang/String;
    .param p2, "close"    # Ljava/lang/String;

    .line 3061
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 3064
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 3065
    .local v1, "start":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 3066
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 3067
    .local v3, "end":I
    if-eq v3, v2, :cond_1

    .line 3068
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3071
    .end local v3    # "end":I
    :cond_1
    return-object v0

    .line 3062
    .end local v1    # "start":I
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static substringsBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "open"    # Ljava/lang/String;
    .param p2, "close"    # Ljava/lang/String;

    .line 3097
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 3100
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 3101
    .local v1, "strLen":I
    if-nez v1, :cond_1

    .line 3102
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 3104
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 3105
    .local v2, "closeLen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 3106
    .local v3, "openLen":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3107
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 3108
    .local v5, "pos":I
    :goto_0
    sub-int v6, v1, v2

    if-ge v5, v6, :cond_4

    .line 3109
    invoke-virtual {p0, p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 3110
    .local v6, "start":I
    if-gez v6, :cond_2

    .line 3111
    goto :goto_1

    .line 3113
    :cond_2
    add-int/2addr v6, v3

    .line 3114
    invoke-virtual {p0, p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 3115
    .local v7, "end":I
    if-gez v7, :cond_3

    .line 3116
    goto :goto_1

    .line 3118
    :cond_3
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3119
    add-int v5, v7, v2

    .line 3120
    .end local v6    # "start":I
    .end local v7    # "end":I
    goto :goto_0

    .line 3121
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3122
    return-object v0

    .line 3124
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 3098
    .end local v1    # "strLen":I
    .end local v2    # "closeLen":I
    .end local v3    # "openLen":I
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "pos":I
    :cond_6
    :goto_2
    return-object v0
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .line 6900
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6901
    return-object p0

    .line 6904
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 6905
    .local v0, "strLen":I
    new-array v1, v0, [I

    .line 6906
    .local v1, "newCodePoints":[I
    const/4 v2, 0x0

    .line 6907
    .local v2, "outOffset":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 6908
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 6910
    .local v4, "oldCodepoint":I
    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6911
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v5

    .local v5, "newCodePoint":I
    goto :goto_1

    .line 6912
    .end local v5    # "newCodePoint":I
    :cond_1
    invoke-static {v4}, Ljava/lang/Character;->isTitleCase(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6913
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v5

    .restart local v5    # "newCodePoint":I
    goto :goto_1

    .line 6914
    .end local v5    # "newCodePoint":I
    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6915
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v5

    .restart local v5    # "newCodePoint":I
    goto :goto_1

    .line 6917
    .end local v5    # "newCodePoint":I
    :cond_3
    move v5, v4

    .line 6919
    .restart local v5    # "newCodePoint":I
    :goto_1
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "outOffset":I
    .local v6, "outOffset":I
    aput v5, v1, v2

    .line 6920
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v3, v2

    .line 6921
    .end local v4    # "oldCodepoint":I
    .end local v5    # "newCodePoint":I
    move v2, v6

    goto :goto_0

    .line 6922
    .end local v3    # "i":I
    .end local v6    # "outOffset":I
    .restart local v2    # "outOffset":I
    :cond_4
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Ljava/lang/String;-><init>([III)V

    return-object v3
.end method

.method public static toCodePoints(Ljava/lang/CharSequence;)[I
    .locals 5
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 9400
    if-nez p0, :cond_0

    .line 9401
    const/4 v0, 0x0

    return-object v0

    .line 9403
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 9404
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object v0

    .line 9407
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9408
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    new-array v1, v1, [I

    .line 9409
    .local v1, "result":[I
    const/4 v2, 0x0

    .line 9410
    .local v2, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 9411
    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    aput v4, v1, v3

    .line 9412
    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 9410
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9414
    .end local v3    # "i":I
    :cond_2
    return-object v1
.end method

.method public static toEncodedString([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 9146
    new-instance v0, Ljava/lang/String;

    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    :goto_0
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9129
    new-instance v0, Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_0
    return-object v0
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 497
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static trimToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 549
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static trimToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 523
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, "ts":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public static truncate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I

    .line 584
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/StringUtils;->truncate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static truncate(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "maxWidth"    # I

    .line 647
    if-ltz p1, :cond_5

    .line 650
    if-ltz p2, :cond_4

    .line 653
    if-nez p0, :cond_0

    .line 654
    const/4 v0, 0x0

    return-object v0

    .line 656
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 657
    const-string v0, ""

    return-object v0

    .line 659
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_3

    .line 660
    add-int v0, p1, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_2
    add-int v0, p1, p2

    .line 661
    .local v0, "ix":I
    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 663
    .end local v0    # "ix":I
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 651
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxWith cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;

    .line 6850
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v0

    .local v1, "strLen":I
    if-nez v0, :cond_0

    goto :goto_1

    .line 6854
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 6855
    .local v2, "firstCodepoint":I
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v3

    .line 6856
    .local v3, "newCodePoint":I
    if-ne v2, v3, :cond_1

    .line 6858
    return-object p0

    .line 6861
    :cond_1
    new-array v4, v1, [I

    .line 6862
    .local v4, "newCodePoints":[I
    const/4 v5, 0x0

    .line 6863
    .local v5, "outOffset":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "outOffset":I
    .local v6, "outOffset":I
    aput v3, v4, v5

    .line 6864
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    .local v5, "inOffset":I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 6865
    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    .line 6866
    .local v7, "codepoint":I
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "outOffset":I
    .local v8, "outOffset":I
    aput v7, v4, v6

    .line 6867
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 6868
    .end local v7    # "codepoint":I
    move v6, v8

    goto :goto_0

    .line 6869
    .end local v5    # "inOffset":I
    .end local v8    # "outOffset":I
    .restart local v6    # "outOffset":I
    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4, v0, v6}, Ljava/lang/String;-><init>([III)V

    return-object v5

    .line 6851
    .end local v1    # "strLen":I
    .end local v2    # "firstCodepoint":I
    .end local v3    # "newCodePoint":I
    .end local v4    # "newCodePoints":[I
    .end local v6    # "outOffset":I
    :cond_3
    :goto_1
    return-object p0
.end method

.method public static unwrap(Ljava/lang/String;C)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapChar"    # C

    .line 9368
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 9372
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_1

    .line 9373
    const/4 v0, 0x0

    .line 9374
    .local v0, "startIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    .line 9375
    .local v2, "endIndex":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 9376
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 9380
    .end local v0    # "startIndex":I
    .end local v2    # "endIndex":I
    :cond_1
    return-object p0

    .line 9369
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static unwrap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapToken"    # Ljava/lang/String;

    .line 9327
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9331
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9332
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 9333
    .local v0, "startIndex":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 9334
    .local v1, "endIndex":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 9335
    .local v2, "wrapLength":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-eq v1, v3, :cond_1

    .line 9336
    add-int v3, v0, v2

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 9340
    .end local v0    # "startIndex":I
    .end local v1    # "endIndex":I
    .end local v2    # "wrapLength":I
    :cond_1
    return-object p0

    .line 9328
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static upperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 6704
    if-nez p0, :cond_0

    .line 6705
    const/4 v0, 0x0

    return-object v0

    .line 6707
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static upperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 6727
    if-nez p0, :cond_0

    .line 6728
    const/4 v0, 0x0

    return-object v0

    .line 6730
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/String;C)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapWith"    # C

    .line 9172
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 9176
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9173
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static wrap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapWith"    # Ljava/lang/String;

    .line 9210
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9214
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9211
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static wrapIfMissing(Ljava/lang/String;C)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapWith"    # C

    .line 9243
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 9246
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 9247
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, p1, :cond_1

    .line 9248
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9250
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9251
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, p1, :cond_2

    .line 9252
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9254
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 9244
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_3
    :goto_0
    return-object p0
.end method

.method public static wrapIfMissing(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapWith"    # Ljava/lang/String;

    .line 9287
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9290
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 9291
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9292
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9294
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9295
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 9296
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9298
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 9288
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_3
    :goto_0
    return-object p0
.end method
