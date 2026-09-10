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

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    return-void
.end method

.method public static abbreviate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I

    .prologue
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

    .prologue
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

    .prologue
    .line 7812
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static abbreviate(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "abbrevMarker"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "maxWidth"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 7853
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7882
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 7857
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 7858
    .local v0, "abbrevMarkerLength":I
    add-int/lit8 v1, v0, 0x1

    .line 7859
    .local v1, "minAbbrevWidth":I
    add-int v3, v0, v0

    add-int/lit8 v2, v3, 0x1

    .line 7861
    .local v2, "minAbbrevWidthOffset":I
    if-ge p3, v1, :cond_2

    .line 7862
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Minimum abbreviation width is %d"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 7864
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, p3, :cond_0

    .line 7867
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le p2, v3, :cond_3

    .line 7868
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    .line 7870
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, p2

    sub-int v4, p3, v0

    if-ge v3, v4, :cond_4

    .line 7871
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v4, p3, v0

    sub-int p2, v3, v4

    .line 7873
    :cond_4
    add-int/lit8 v3, v0, 0x1

    if-gt p2, v3, :cond_5

    .line 7874
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v4, p3, v0

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 7876
    :cond_5
    if-ge p3, v2, :cond_6

    .line 7877
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Minimum abbreviation width with offset is %d"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 7879
    :cond_6
    add-int v3, p2, p3

    sub-int/2addr v3, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 7880
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sub-int v5, p3, v0

    invoke-static {v4, p1, v5}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 7882
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v5, p3, v0

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static abbreviateMiddle(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "middle"    # Ljava/lang/String;
    .param p2, "length"    # I

    .prologue
    .line 7915
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7927
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 7919
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p2, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    if-lt p2, v3, :cond_0

    .line 7923
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v2, p2, v3

    .line 7924
    .local v2, "targetSting":I
    div-int/lit8 v3, v2, 0x2

    rem-int/lit8 v4, v2, 0x2

    add-int v1, v3, v4

    .line 7925
    .local v1, "startOffset":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v4, v2, 0x2

    sub-int v0, v3, v4

    .line 7927
    .local v0, "endOffset":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 7929
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static varargs appendIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/CharSequence;
    .param p2, "ignoreCase"    # Z
    .param p3, "suffixes"    # [Ljava/lang/CharSequence;

    .prologue
    .line 8922
    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8932
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 8925
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    if-eqz p3, :cond_2

    array-length v1, p3

    if-lez v1, :cond_2

    .line 8926
    array-length v2, p3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v0, p3, v1

    .line 8927
    .local v0, "s":Ljava/lang/CharSequence;
    invoke-static {p0, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8926
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8932
    .end local v0    # "s":Ljava/lang/CharSequence;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static varargs appendIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/CharSequence;
    .param p2, "suffixes"    # [Ljava/lang/CharSequence;

    .prologue
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

    .prologue
    .line 9008
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->appendIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 6805
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .local v7, "strLen":I
    if-nez v7, :cond_1

    .line 6824
    .end local v7    # "strLen":I
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 6809
    .restart local v7    # "strLen":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 6810
    .local v1, "firstCodepoint":I
    invoke-static {v1}, Ljava/lang/Character;->toTitleCase(I)I

    move-result v3

    .line 6811
    .local v3, "newCodePoint":I
    if-eq v1, v3, :cond_0

    .line 6816
    new-array v4, v7, [I

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
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    .local v2, "inOffset":I
    :goto_1
    if-ge v2, v7, :cond_2

    .line 6820
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 6821
    .local v0, "codepoint":I
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "outOffset":I
    .restart local v5    # "outOffset":I
    aput v0, v4, v6

    .line 6822
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v2, v8

    move v6, v5

    .line 6823
    .end local v5    # "outOffset":I
    .restart local v6    # "outOffset":I
    goto :goto_1

    .line 6824
    .end local v0    # "codepoint":I
    :cond_2
    new-instance p0, Ljava/lang/String;

    .end local p0    # "str":Ljava/lang/String;
    invoke-direct {p0, v4, v9, v6}, Ljava/lang/String;-><init>([III)V

    goto :goto_0
.end method

.method public static center(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
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

    .prologue
    .line 6626
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    .line 6636
    :cond_0
    :goto_0
    return-object p0

    .line 6629
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 6630
    .local v1, "strLen":I
    sub-int v0, p1, v1

    .line 6631
    .local v0, "pads":I
    if-lez v0, :cond_0

    .line 6634
    div-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v1

    invoke-static {p0, v2, p2}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    .line 6635
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    .line 6636
    goto :goto_0
.end method

.method public static center(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .prologue
    .line 6666
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    .line 6679
    :cond_0
    :goto_0
    return-object p0

    .line 6669
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6670
    const-string p2, " "

    .line 6672
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 6673
    .local v1, "strLen":I
    sub-int v0, p1, v1

    .line 6674
    .local v0, "pads":I
    if-lez v0, :cond_0

    .line 6677
    div-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v1

    invoke-static {p0, v2, p2}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6678
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6679
    goto :goto_0
.end method

.method public static chomp(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    const/16 v5, 0xd

    .line 6110
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6132
    .end local p0    # "str":Ljava/lang/String;
    .local v1, "last":C
    .local v2, "lastIdx":I
    :cond_0
    :goto_0
    return-object p0

    .line 6114
    .end local v1    # "last":C
    .end local v2    # "lastIdx":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 6115
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 6116
    .local v0, "ch":C
    if-eq v0, v5, :cond_2

    if-ne v0, v7, :cond_0

    .line 6117
    :cond_2
    const-string p0, ""

    goto :goto_0

    .line 6122
    .end local v0    # "ch":C
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 6123
    .restart local v2    # "lastIdx":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 6125
    .restart local v1    # "last":C
    if-ne v1, v7, :cond_5

    .line 6126
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_4

    .line 6127
    add-int/lit8 v2, v2, -0x1

    .line 6132
    :cond_4
    :goto_1
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6129
    :cond_5
    if-eq v1, v5, :cond_4

    .line 6130
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static chomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6164
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static chop(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 6193
    if-nez p0, :cond_1

    .line 6194
    const/4 v2, 0x0

    .line 6206
    :cond_0
    :goto_0
    return-object v2

    .line 6196
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 6197
    .local v3, "strLen":I
    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    .line 6198
    const-string v2, ""

    goto :goto_0

    .line 6200
    :cond_2
    add-int/lit8 v1, v3, -0x1

    .line 6201
    .local v1, "lastIdx":I
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 6202
    .local v2, "ret":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 6203
    .local v0, "last":C
    const/16 v4, 0xa

    if-ne v0, v4, :cond_0

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_0

    .line 6204
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .prologue
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

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 1122
    if-ne p0, p1, :cond_1

    .line 1123
    const/4 v0, 0x0

    .line 1131
    :cond_0
    :goto_0
    return v0

    .line 1125
    :cond_1
    if-nez p0, :cond_2

    .line 1126
    if-nez p2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1128
    :cond_2
    if-nez p1, :cond_4

    .line 1129
    if-eqz p2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    .line 1131
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static compareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .prologue
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

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 1215
    if-ne p0, p1, :cond_1

    .line 1216
    const/4 v0, 0x0

    .line 1224
    :cond_0
    :goto_0
    return v0

    .line 1218
    :cond_1
    if-nez p0, :cond_2

    .line 1219
    if-nez p2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1221
    :cond_2
    if-nez p1, :cond_4

    .line 1222
    if-eqz p2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    .line 1224
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static contains(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I

    .prologue
    const/4 v0, 0x0

    .line 1953
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1956
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 1982
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1985
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static containsAny(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # Ljava/lang/CharSequence;

    .prologue
    .line 2220
    if-nez p1, :cond_0

    .line 2221
    const/4 v0, 0x0

    .line 2223
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSequenceUtils;->toCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->containsAny(Ljava/lang/CharSequence;[C)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs containsAny(Ljava/lang/CharSequence;[C)Z
    .locals 11
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # [C

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2159
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    move v7, v8

    .line 2185
    :cond_1
    :goto_0
    return v7

    .line 2162
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 2163
    .local v2, "csLength":I
    array-length v6, p1

    .line 2164
    .local v6, "searchLength":I
    add-int/lit8 v1, v2, -0x1

    .line 2165
    .local v1, "csLast":I
    add-int/lit8 v5, v6, -0x1

    .line 2166
    .local v5, "searchLast":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_5

    .line 2167
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 2168
    .local v0, "ch":C
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v6, :cond_4

    .line 2169
    aget-char v9, p1, v4

    if-ne v9, v0, :cond_3

    .line 2170
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2171
    if-eq v4, v5, :cond_1

    .line 2175
    if-ge v3, v1, :cond_3

    add-int/lit8 v9, v4, 0x1

    aget-char v9, p1, v9

    add-int/lit8 v10, v3, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_1

    .line 2168
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2166
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "ch":C
    .end local v4    # "j":I
    :cond_5
    move v7, v8

    .line 2185
    goto :goto_0
.end method

.method public static varargs containsAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchCharSequences"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 2252
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2260
    :cond_0
    :goto_0
    return v1

    .line 2255
    :cond_1
    array-length v3, p1

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 2256
    .local v0, "searchCharSequence":Ljava/lang/CharSequence;
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2257
    const/4 v1, 0x1

    goto :goto_0

    .line 2255
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 7
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2013
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2023
    :cond_0
    :goto_0
    return v4

    .line 2016
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 2017
    .local v5, "len":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int v6, v0, v5

    .line 2018
    .local v6, "max":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-gt v2, v6, :cond_0

    move-object v0, p0

    move-object v3, p1

    .line 2019
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_2

    move v4, v1

    .line 2020
    goto :goto_0

    .line 2018
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static containsNone(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "invalidChars"    # Ljava/lang/String;

    .prologue
    .line 2508
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2509
    :cond_0
    const/4 v0, 0x1

    .line 2511
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->containsNone(Ljava/lang/CharSequence;[C)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs containsNone(Ljava/lang/CharSequence;[C)Z
    .locals 11
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # [C

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2455
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v7, v8

    .line 2481
    :cond_1
    :goto_0
    return v7

    .line 2458
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 2459
    .local v2, "csLen":I
    add-int/lit8 v1, v2, -0x1

    .line 2460
    .local v1, "csLast":I
    array-length v6, p1

    .line 2461
    .local v6, "searchLen":I
    add-int/lit8 v5, v6, -0x1

    .line 2462
    .local v5, "searchLast":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_5

    .line 2463
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 2464
    .local v0, "ch":C
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v6, :cond_4

    .line 2465
    aget-char v9, p1, v4

    if-ne v9, v0, :cond_3

    .line 2466
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2467
    if-eq v4, v5, :cond_1

    .line 2471
    if-ge v3, v1, :cond_3

    add-int/lit8 v9, v4, 0x1

    aget-char v9, p1, v9

    add-int/lit8 v10, v3, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_1

    .line 2464
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2462
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "ch":C
    .end local v4    # "j":I
    :cond_5
    move v7, v8

    .line 2481
    goto :goto_0
.end method

.method public static containsOnly(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "validChars"    # Ljava/lang/String;

    .prologue
    .line 2423
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2424
    :cond_0
    const/4 v0, 0x0

    .line 2426
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->containsOnly(Ljava/lang/CharSequence;[C)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs containsOnly(Ljava/lang/CharSequence;[C)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "valid"    # [C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2387
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v0, v1

    .line 2396
    :cond_1
    :goto_0
    return v0

    .line 2390
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2393
    array-length v2, p1

    if-nez v2, :cond_3

    move v0, v1

    .line 2394
    goto :goto_0

    .line 2396
    :cond_3
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->indexOfAnyBut(Ljava/lang/CharSequence;[C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public static containsWhitespace(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "seq"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 2038
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2047
    :cond_0
    :goto_0
    return v2

    .line 2041
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 2042
    .local v1, "strLen":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 2043
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2044
    const/4 v2, 0x1

    goto :goto_0

    .line 2042
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static convertRemainingAccentCharacters(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p0, "decomposed"    # Ljava/lang/StringBuilder;

    .prologue
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

    if-ne v1, v2, :cond_1

    .line 968
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 969
    const/16 v1, 0x4c

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 966
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 970
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x142

    if-ne v1, v2, :cond_0

    .line 971
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 972
    const/16 v1, 0x6c

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 975
    :cond_2
    return-void
.end method

.method public static countMatches(Ljava/lang/CharSequence;C)I
    .locals 3
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C

    .prologue
    .line 6980
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6981
    const/4 v0, 0x0

    .line 6990
    :cond_0
    return v0

    .line 6983
    :cond_1
    const/4 v0, 0x0

    .line 6985
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 6986
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne p1, v2, :cond_2

    .line 6987
    add-int/lit8 v0, v0, 0x1

    .line 6985
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static countMatches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 3
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "sub"    # Ljava/lang/CharSequence;

    .prologue
    .line 6948
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6949
    :cond_0
    const/4 v0, 0x0

    .line 6957
    :cond_1
    return v0

    .line 6951
    :cond_2
    const/4 v0, 0x0

    .line 6952
    .local v0, "count":I
    const/4 v1, 0x0

    .line 6953
    .local v1, "idx":I
    :goto_0
    invoke-static {p0, p1, v1}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 6954
    add-int/lit8 v0, v0, 0x1

    .line 6955
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
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

    .prologue
    .line 7574
    .local p0, "str":Ljava/lang/CharSequence;, "TT;"
    .local p1, "defaultStr":Ljava/lang/CharSequence;, "TT;"
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "defaultStr":Ljava/lang/CharSequence;, "TT;"
    :goto_0
    return-object p1

    .restart local p1    # "defaultStr":Ljava/lang/CharSequence;, "TT;"
    :cond_0
    move-object p1, p0

    goto :goto_0
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

    .prologue
    .line 7596
    .local p0, "str":Ljava/lang/CharSequence;, "TT;"
    .local p1, "defaultStr":Ljava/lang/CharSequence;, "TT;"
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "defaultStr":Ljava/lang/CharSequence;, "TT;"
    :goto_0
    return-object p1

    .restart local p1    # "defaultStr":Ljava/lang/CharSequence;, "TT;"
    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static defaultString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 7457
    const-string v0, ""

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultStr"    # Ljava/lang/String;

    .prologue
    .line 7478
    if-nez p0, :cond_0

    .end local p1    # "defaultStr":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultStr":Ljava/lang/String;
    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 4866
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4880
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 4869
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 4870
    .local v4, "sz":I
    new-array v0, v4, [C

    .line 4871
    .local v0, "chs":[C
    const/4 v1, 0x0

    .line 4872
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v2, v1

    .end local v1    # "count":I
    .local v2, "count":I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 4873
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4874
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v0, v2

    .line 4872
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    .line 4877
    :cond_2
    if-eq v2, v4, :cond_0

    .line 4880
    new-instance p0, Ljava/lang/String;

    .end local p0    # "str":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-direct {p0, v0, v5, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_3
    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_2
.end method

.method public static difference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .prologue
    .line 7963
    if-nez p0, :cond_0

    .line 7973
    .end local p1    # "str2":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 7966
    .restart local p1    # "str2":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    .line 7967
    goto :goto_0

    .line 7969
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 7970
    .local v0, "at":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 7971
    const-string p1, ""

    goto :goto_0

    .line 7973
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "suffix"    # Ljava/lang/CharSequence;

    .prologue
    .line 8753
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method private static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 6
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "suffix"    # Ljava/lang/CharSequence;
    .param p2, "ignoreCase"    # Z

    .prologue
    const/4 v4, 0x0

    .line 8795
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 8796
    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v4, 0x1

    .line 8802
    :cond_1
    :goto_0
    return v4

    .line 8798
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 8801
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v2, v0, v1

    .line 8802
    .local v2, "strOffset":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p2

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v4

    goto :goto_0
.end method

.method public static varargs endsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "searchStrings"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 8899
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8907
    :cond_0
    :goto_0
    return v1

    .line 8902
    :cond_1
    array-length v3, p1

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 8903
    .local v0, "searchString":Ljava/lang/CharSequence;
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8904
    const/4 v1, 0x1

    goto :goto_0

    .line 8902
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "suffix"    # Ljava/lang/CharSequence;

    .prologue
    .line 8780
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "cs1"    # Ljava/lang/CharSequence;
    .param p1, "cs2"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 1001
    if-ne p0, p1, :cond_1

    .line 1002
    const/4 v1, 0x1

    .line 1013
    :cond_0
    :goto_0
    return v1

    .line 1004
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1007
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1010
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1011
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 1013
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move v4, v1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v1

    goto :goto_0
.end method

.method public static varargs equalsAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "searchStrings"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 1247
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1248
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 1249
    .local v0, "next":Ljava/lang/CharSequence;
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1250
    const/4 v1, 0x1

    .line 1254
    .end local v0    # "next":Ljava/lang/CharSequence;
    :cond_0
    return v1

    .line 1248
    .restart local v0    # "next":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static varargs equalsAnyIgnoreCase(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "searchStrings"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 1278
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1279
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 1280
    .local v0, "next":Ljava/lang/CharSequence;
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1281
    const/4 v1, 0x1

    .line 1285
    .end local v0    # "next":Ljava/lang/CharSequence;
    :cond_0
    return v1

    .line 1279
    .restart local v0    # "next":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "str1"    # Ljava/lang/CharSequence;
    .param p1, "str2"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1038
    if-eqz p0, :cond_0

    if-nez p1, :cond_3

    .line 1039
    :cond_0
    if-ne p0, p1, :cond_2

    .line 1045
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 1039
    goto :goto_0

    .line 1040
    :cond_3
    if-eq p0, p1, :cond_1

    .line 1042
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v0, v3, :cond_4

    move v1, v2

    .line 1043
    goto :goto_0

    .line 1045
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v1

    goto :goto_0
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

    .prologue
    .line 7508
    .local p0, "values":[Ljava/lang/CharSequence;, "[TT;"
    if-eqz p0, :cond_1

    .line 7509
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p0, v1

    .line 7510
    .local v0, "val":Ljava/lang/CharSequence;, "TT;"
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7515
    .end local v0    # "val":Ljava/lang/CharSequence;, "TT;"
    :goto_1
    return-object v0

    .line 7509
    .restart local v0    # "val":Ljava/lang/CharSequence;, "TT;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7515
    .end local v0    # "val":Ljava/lang/CharSequence;, "TT;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
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

    .prologue
    .line 7543
    .local p0, "values":[Ljava/lang/CharSequence;, "[TT;"
    if-eqz p0, :cond_1

    .line 7544
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p0, v1

    .line 7545
    .local v0, "val":Ljava/lang/CharSequence;, "TT;"
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7550
    .end local v0    # "val":Ljava/lang/CharSequence;, "TT;"
    :goto_1
    return-object v0

    .line 7544
    .restart local v0    # "val":Ljava/lang/CharSequence;, "TT;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7550
    .end local v0    # "val":Ljava/lang/CharSequence;, "TT;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static varargs getCommonPrefix([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 8144
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 8145
    :cond_0
    const-string v1, ""

    .line 8159
    :goto_0
    return-object v1

    .line 8147
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->indexOfDifference([Ljava/lang/CharSequence;)I

    move-result v0

    .line 8148
    .local v0, "smallestIndexOfDiff":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 8150
    aget-object v1, p0, v2

    if-nez v1, :cond_2

    .line 8151
    const-string v1, ""

    goto :goto_0

    .line 8153
    :cond_2
    aget-object v1, p0, v2

    goto :goto_0

    .line 8154
    :cond_3
    if-nez v0, :cond_4

    .line 8156
    const-string v1, ""

    goto :goto_0

    .line 8159
    :cond_4
    aget-object v1, p0, v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 7278
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7289
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 7281
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 7282
    .local v2, "sz":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7283
    .local v1, "strDigits":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 7284
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 7285
    .local v3, "tempChar":C
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7286
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7283
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7289
    .end local v3    # "tempChar":C
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getFuzzyDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/Locale;)I
    .locals 11
    .param p0, "term"    # Ljava/lang/CharSequence;
    .param p1, "query"    # Ljava/lang/CharSequence;
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8563
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 8564
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Strings must not be null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 8565
    :cond_1
    if-nez p2, :cond_2

    .line 8566
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Locale must not be null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 8573
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 8574
    .local v8, "termLowerCase":Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 8577
    .local v3, "queryLowerCase":Ljava/lang/String;
    const/4 v4, 0x0

    .line 8581
    .local v4, "score":I
    const/4 v7, 0x0

    .line 8584
    .local v7, "termIndex":I
    const/high16 v0, -0x80000000

    .line 8586
    .local v0, "previousMatchingCharacterIndex":I
    const/4 v2, 0x0

    .local v2, "queryIndex":I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_6

    .line 8587
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 8589
    .local v1, "queryChar":C
    const/4 v6, 0x0

    .line 8590
    .local v6, "termCharacterMatchFound":Z
    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_5

    if-nez v6, :cond_5

    .line 8591
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 8593
    .local v5, "termChar":C
    if-ne v1, v5, :cond_4

    .line 8595
    add-int/lit8 v4, v4, 0x1

    .line 8599
    add-int/lit8 v9, v0, 0x1

    if-ne v9, v7, :cond_3

    .line 8600
    add-int/lit8 v4, v4, 0x2

    .line 8603
    :cond_3
    move v0, v7

    .line 8607
    const/4 v6, 0x1

    .line 8590
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 8586
    .end local v5    # "termChar":C
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8612
    .end local v1    # "queryChar":C
    .end local v6    # "termCharacterMatchFound":Z
    :cond_6
    return v4
.end method

.method public static getJaroWinklerDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)D
    .locals 16
    .param p0, "first"    # Ljava/lang/CharSequence;
    .param p1, "second"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8460
    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 8462
    .local v0, "DEFAULT_SCALING_FACTOR":D
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 8463
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Strings must not be null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 8466
    :cond_1
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/lang3/StringUtils;->matches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I

    move-result-object v8

    .line 8467
    .local v8, "mtp":[I
    const/4 v9, 0x0

    aget v9, v8, v9

    int-to-double v6, v9

    .line 8468
    .local v6, "m":D
    const-wide/16 v10, 0x0

    cmpl-double v9, v6, v10

    if-nez v9, :cond_2

    .line 8469
    const-wide/16 v10, 0x0

    .line 8473
    :goto_0
    return-wide v10

    .line 8471
    :cond_2
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    int-to-double v10, v9

    div-double v10, v6, v10

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    int-to-double v12, v9

    div-double v12, v6, v12

    add-double/2addr v10, v12

    const/4 v9, 0x1

    aget v9, v8, v9

    int-to-double v12, v9

    sub-double v12, v6, v12

    div-double/2addr v12, v6

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    div-double v2, v10, v12

    .line 8472
    .local v2, "j":D
    const-wide v10, 0x3fe6666666666666L    # 0.7

    cmpg-double v9, v2, v10

    if-gez v9, :cond_3

    move-wide v4, v2

    .line 8473
    .local v4, "jw":D
    :goto_1
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-double v10, v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v10, v12

    goto :goto_0

    .line 8472
    .end local v4    # "jw":D
    :cond_3
    const-wide v10, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const/4 v9, 0x3

    aget v9, v8, v9

    int-to-double v14, v9

    div-double/2addr v12, v14

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    const/4 v9, 0x2

    aget v9, v8, v9

    int-to-double v12, v9

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v2

    mul-double/2addr v10, v12

    add-double v4, v2, v10

    goto :goto_1
.end method

.method public static getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 14
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "t"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8202
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 8203
    :cond_0
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Strings must not be null"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 8206
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 8207
    .local v5, "n":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 8209
    .local v3, "m":I
    if-nez v5, :cond_2

    move v4, v3

    .end local v3    # "m":I
    .local v4, "m":I
    move v6, v5

    .end local v5    # "n":I
    .local v6, "n":I
    move v12, v3

    .line 8252
    :goto_0
    return v12

    .line 8211
    .end local v4    # "m":I
    .end local v6    # "n":I
    .restart local v3    # "m":I
    .restart local v5    # "n":I
    :cond_2
    if-nez v3, :cond_3

    move v4, v3

    .end local v3    # "m":I
    .restart local v4    # "m":I
    move v6, v5

    .end local v5    # "n":I
    .restart local v6    # "n":I
    move v12, v5

    .line 8212
    goto :goto_0

    .line 8215
    .end local v4    # "m":I
    .end local v6    # "n":I
    .restart local v3    # "m":I
    .restart local v5    # "n":I
    :cond_3
    if-le v5, v3, :cond_4

    .line 8217
    move-object v9, p0

    .line 8218
    .local v9, "tmp":Ljava/lang/CharSequence;
    move-object p0, p1

    .line 8219
    move-object p1, v9

    .line 8220
    move v5, v3

    .line 8221
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 8224
    .end local v9    # "tmp":Ljava/lang/CharSequence;
    :cond_4
    add-int/lit8 v12, v5, 0x1

    new-array v7, v12, [I

    .line 8234
    .local v7, "p":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-gt v1, v5, :cond_5

    .line 8235
    aput v1, v7, v1

    .line 8234
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8238
    :cond_5
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_2
    if-gt v2, v3, :cond_8

    .line 8239
    const/4 v12, 0x0

    aget v11, v7, v12

    .line 8240
    .local v11, "upper_left":I
    add-int/lit8 v12, v2, -0x1

    invoke-interface {p1, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 8241
    .local v8, "t_j":C
    const/4 v12, 0x0

    aput v2, v7, v12

    .line 8243
    const/4 v1, 0x1

    :goto_3
    if-gt v1, v5, :cond_7

    .line 8244
    aget v10, v7, v1

    .line 8245
    .local v10, "upper":I
    add-int/lit8 v12, v1, -0x1

    invoke-interface {p0, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-ne v12, v8, :cond_6

    const/4 v0, 0x0

    .line 8247
    .local v0, "cost":I
    :goto_4
    add-int/lit8 v12, v1, -0x1

    aget v12, v7, v12

    add-int/lit8 v12, v12, 0x1

    aget v13, v7, v1

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    add-int v13, v11, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    aput v12, v7, v1

    .line 8248
    move v11, v10

    .line 8243
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 8245
    .end local v0    # "cost":I
    :cond_6
    const/4 v0, 0x1

    goto :goto_4

    .line 8238
    .end local v10    # "upper":I
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 8252
    .end local v8    # "t_j":C
    .end local v11    # "upper_left":I
    :cond_8
    aget v12, v7, v5

    move v4, v3

    .end local v3    # "m":I
    .restart local v4    # "m":I
    move v6, v5

    .end local v5    # "n":I
    .restart local v6    # "n":I
    goto :goto_0
.end method

.method public static getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 15
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "t"    # Ljava/lang/CharSequence;
    .param p2, "threshold"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8292
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 8293
    :cond_0
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Strings must not be null"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 8295
    :cond_1
    if-gez p2, :cond_2

    .line 8296
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Threshold must not be negative"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 8343
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    .line 8344
    .local v9, "n":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 8347
    .local v6, "m":I
    if-nez v9, :cond_4

    .line 8348
    move/from16 v0, p2

    if-gt v6, v0, :cond_3

    move v13, v6

    .line 8420
    :goto_0
    return v13

    .line 8348
    :cond_3
    const/4 v13, -0x1

    goto :goto_0

    .line 8349
    :cond_4
    if-nez v6, :cond_6

    .line 8350
    move/from16 v0, p2

    if-gt v9, v0, :cond_5

    move v13, v9

    goto :goto_0

    :cond_5
    const/4 v13, -0x1

    goto :goto_0

    .line 8351
    :cond_6
    sub-int v13, v9, v6

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move/from16 v0, p2

    if-le v13, v0, :cond_7

    .line 8353
    const/4 v13, -0x1

    goto :goto_0

    .line 8356
    :cond_7
    if-le v9, v6, :cond_8

    .line 8358
    move-object v12, p0

    .line 8359
    .local v12, "tmp":Ljava/lang/CharSequence;
    move-object/from16 p0, p1

    .line 8360
    move-object/from16 p1, v12

    .line 8361
    move v9, v6

    .line 8362
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 8365
    .end local v12    # "tmp":Ljava/lang/CharSequence;
    :cond_8
    add-int/lit8 v13, v9, 0x1

    new-array v10, v13, [I

    .line 8366
    .local v10, "p":[I
    add-int/lit8 v13, v9, 0x1

    new-array v3, v13, [I

    .line 8370
    .local v3, "d":[I
    move/from16 v0, p2

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int/lit8 v2, v13, 0x1

    .line 8371
    .local v2, "boundary":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_9

    .line 8372
    aput v4, v10, v4

    .line 8371
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 8376
    :cond_9
    array-length v13, v10

    const v14, 0x7fffffff

    invoke-static {v10, v2, v13, v14}, Ljava/util/Arrays;->fill([IIII)V

    .line 8377
    const v13, 0x7fffffff

    invoke-static {v3, v13}, Ljava/util/Arrays;->fill([II)V

    .line 8380
    const/4 v5, 0x1

    .local v5, "j":I
    :goto_2
    if-gt v5, v6, :cond_f

    .line 8381
    add-int/lit8 v13, v5, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    .line 8382
    .local v11, "t_j":C
    const/4 v13, 0x0

    aput v5, v3, v13

    .line 8385
    const/4 v13, 0x1

    sub-int v14, v5, p2

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 8386
    .local v8, "min":I
    const v13, 0x7fffffff

    sub-int v13, v13, p2

    if-le v5, v13, :cond_a

    move v7, v9

    .line 8389
    .local v7, "max":I
    :goto_3
    if-le v8, v7, :cond_b

    .line 8390
    const/4 v13, -0x1

    goto :goto_0

    .line 8386
    .end local v7    # "max":I
    :cond_a
    add-int v13, v5, p2

    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_3

    .line 8394
    .restart local v7    # "max":I
    :cond_b
    const/4 v13, 0x1

    if-le v8, v13, :cond_c

    .line 8395
    add-int/lit8 v13, v8, -0x1

    const v14, 0x7fffffff

    aput v14, v3, v13

    .line 8399
    :cond_c
    move v4, v8

    :goto_4
    if-gt v4, v7, :cond_e

    .line 8400
    add-int/lit8 v13, v4, -0x1

    invoke-interface {p0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ne v13, v11, :cond_d

    .line 8402
    add-int/lit8 v13, v4, -0x1

    aget v13, v10, v13

    aput v13, v3, v4

    .line 8399
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 8405
    :cond_d
    add-int/lit8 v13, v4, -0x1

    aget v13, v3, v13

    aget v14, v10, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int/lit8 v14, v4, -0x1

    aget v14, v10, v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    aput v13, v3, v4

    goto :goto_5

    .line 8410
    :cond_e
    move-object v1, v10

    .line 8411
    .local v1, "_d":[I
    move-object v10, v3

    .line 8412
    move-object v3, v1

    .line 8380
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 8417
    .end local v1    # "_d":[I
    .end local v7    # "max":I
    .end local v8    # "min":I
    .end local v11    # "t_j":C
    :cond_f
    aget v13, v10, v9

    move/from16 v0, p2

    if-gt v13, v0, :cond_10

    .line 8418
    aget v13, v10, v9

    goto/16 :goto_0

    .line 8420
    :cond_10
    const/4 v13, -0x1

    goto/16 :goto_0
.end method

.method public static indexOf(Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I

    .prologue
    .line 1328
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1329
    const/4 v0, -0x1

    .line 1331
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/CharSequence;II)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I
    .param p2, "startPos"    # I

    .prologue
    .line 1388
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1389
    const/4 v0, -0x1

    .line 1391
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;

    .prologue
    .line 1419
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1420
    :cond_0
    const/4 v0, -0x1

    .line 1422
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;
    .param p2, "startPos"    # I

    .prologue
    .line 1459
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1460
    :cond_0
    const/4 v0, -0x1

    .line 1462
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0
.end method

.method public static indexOfAny(Ljava/lang/CharSequence;Ljava/lang/String;)I
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # Ljava/lang/String;

    .prologue
    .line 2125
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2126
    :cond_0
    const/4 v0, -0x1

    .line 2128
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->indexOfAny(Ljava/lang/CharSequence;[C)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs indexOfAny(Ljava/lang/CharSequence;[C)I
    .locals 10
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # [C

    .prologue
    const/4 v7, -0x1

    .line 2076
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    move v3, v7

    .line 2098
    :cond_1
    :goto_0
    return v3

    .line 2079
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 2080
    .local v2, "csLen":I
    add-int/lit8 v1, v2, -0x1

    .line 2081
    .local v1, "csLast":I
    array-length v6, p1

    .line 2082
    .local v6, "searchLen":I
    add-int/lit8 v5, v6, -0x1

    .line 2083
    .local v5, "searchLast":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_5

    .line 2084
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 2085
    .local v0, "ch":C
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v6, :cond_4

    .line 2086
    aget-char v8, p1, v4

    if-ne v8, v0, :cond_3

    .line 2087
    if-ge v3, v1, :cond_1

    if-ge v4, v5, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2089
    add-int/lit8 v8, v4, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v9, v3, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-eq v8, v9, :cond_1

    .line 2085
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2083
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "ch":C
    .end local v4    # "j":I
    :cond_5
    move v3, v7

    .line 2098
    goto :goto_0
.end method

.method public static varargs indexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I
    .locals 7
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStrs"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 2544
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v3

    .line 2566
    :cond_1
    :goto_0
    return v0

    .line 2549
    :cond_2
    const v0, 0x7fffffff

    .line 2551
    .local v0, "ret":I
    const/4 v2, 0x0

    .line 2552
    .local v2, "tmp":I
    array-length v6, p1

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_5

    aget-object v1, p1, v4

    .line 2553
    .local v1, "search":Ljava/lang/CharSequence;
    if-nez v1, :cond_4

    .line 2552
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2556
    :cond_4
    invoke-static {p0, v1, v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v2

    .line 2557
    if-eq v2, v3, :cond_3

    .line 2561
    if-ge v2, v0, :cond_3

    .line 2562
    move v0, v2

    goto :goto_2

    .line 2566
    .end local v1    # "search":Ljava/lang/CharSequence;
    :cond_5
    const v4, 0x7fffffff

    if-ne v0, v4, :cond_1

    move v0, v3

    goto :goto_0
.end method

.method public static indexOfAnyBut(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 8
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 2340
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move v3, v5

    .line 2358
    :cond_1
    :goto_0
    return v3

    .line 2343
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 2344
    .local v4, "strLen":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_6

    .line 2345
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 2346
    .local v0, "ch":C
    invoke-static {p1, v0, v6}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v7

    if-ltz v7, :cond_4

    const/4 v2, 0x1

    .line 2347
    .local v2, "chFound":Z
    :goto_2
    add-int/lit8 v7, v3, 0x1

    if-ge v7, v4, :cond_5

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2348
    add-int/lit8 v7, v3, 0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 2349
    .local v1, "ch2":C
    if-eqz v2, :cond_3

    invoke-static {p1, v1, v6}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v7

    if-ltz v7, :cond_1

    .line 2344
    .end local v1    # "ch2":C
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2    # "chFound":Z
    :cond_4
    move v2, v6

    .line 2346
    goto :goto_2

    .line 2353
    .restart local v2    # "chFound":Z
    :cond_5
    if-nez v2, :cond_3

    goto :goto_0

    .end local v0    # "ch":C
    .end local v2    # "chFound":Z
    :cond_6
    move v3, v5

    .line 2358
    goto :goto_0
.end method

.method public static varargs indexOfAnyBut(Ljava/lang/CharSequence;[C)I
    .locals 10
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # [C

    .prologue
    const/4 v7, -0x1

    .line 2290
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    move v3, v7

    .line 2313
    :cond_1
    :goto_0
    return v3

    .line 2293
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 2294
    .local v2, "csLen":I
    add-int/lit8 v1, v2, -0x1

    .line 2295
    .local v1, "csLast":I
    array-length v6, p1

    .line 2296
    .local v6, "searchLen":I
    add-int/lit8 v5, v6, -0x1

    .line 2298
    .local v5, "searchLast":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_5

    .line 2299
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 2300
    .local v0, "ch":C
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v6, :cond_1

    .line 2301
    aget-char v8, p1, v4

    if-ne v8, v0, :cond_4

    .line 2302
    if-ge v3, v1, :cond_3

    if-ge v4, v5, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2303
    add-int/lit8 v8, v4, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v9, v3, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_4

    .line 2298
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2300
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0    # "ch":C
    .end local v4    # "j":I
    :cond_5
    move v3, v7

    .line 2313
    goto :goto_0
.end method

.method public static indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 4
    .param p0, "cs1"    # Ljava/lang/CharSequence;
    .param p1, "cs2"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, -0x1

    .line 8002
    if-ne p0, p1, :cond_1

    move v0, v1

    .line 8017
    :cond_0
    :goto_0
    return v0

    .line 8005
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    .line 8006
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 8009
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 8010
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_5

    .line 8014
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    move v0, v1

    .line 8017
    goto :goto_0

    .line 8009
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static varargs indexOfDifference([Ljava/lang/CharSequence;)I
    .locals 15
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 8053
    if-eqz p0, :cond_0

    array-length v12, p0

    const/4 v13, 0x1

    if-gt v12, v13, :cond_2

    :cond_0
    move v8, v11

    .line 8107
    :cond_1
    :goto_0
    return v8

    .line 8056
    :cond_2
    const/4 v1, 0x0

    .line 8057
    .local v1, "anyStringNull":Z
    const/4 v0, 0x1

    .line 8058
    .local v0, "allStringsNull":Z
    array-length v2, p0

    .line 8059
    .local v2, "arrayLen":I
    const v8, 0x7fffffff

    .line 8060
    .local v8, "shortestStrLen":I
    const/4 v7, 0x0

    .line 8065
    .local v7, "longestStrLen":I
    array-length v13, p0

    move v12, v10

    :goto_1
    if-ge v12, v13, :cond_4

    aget-object v5, p0, v12

    .line 8066
    .local v5, "cs":Ljava/lang/CharSequence;
    if-nez v5, :cond_3

    .line 8067
    const/4 v1, 0x1

    .line 8068
    const/4 v8, 0x0

    .line 8065
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 8070
    :cond_3
    const/4 v0, 0x0

    .line 8071
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v14

    invoke-static {v14, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 8072
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v14

    invoke-static {v14, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_2

    .line 8077
    .end local v5    # "cs":Ljava/lang/CharSequence;
    :cond_4
    if-nez v0, :cond_5

    if-nez v7, :cond_6

    if-nez v1, :cond_6

    :cond_5
    move v8, v11

    .line 8078
    goto :goto_0

    .line 8082
    :cond_6
    if-nez v8, :cond_7

    move v8, v10

    .line 8083
    goto :goto_0

    .line 8087
    :cond_7
    const/4 v6, -0x1

    .line 8088
    .local v6, "firstDiff":I
    const/4 v9, 0x0

    .local v9, "stringPos":I
    :goto_3
    if-ge v9, v8, :cond_9

    .line 8089
    aget-object v12, p0, v10

    invoke-interface {v12, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 8090
    .local v4, "comparisonChar":C
    const/4 v3, 0x1

    .local v3, "arrayPos":I
    :goto_4
    if-ge v3, v2, :cond_8

    .line 8091
    aget-object v12, p0, v3

    invoke-interface {v12, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-eq v12, v4, :cond_b

    .line 8092
    move v6, v9

    .line 8096
    :cond_8
    if-eq v6, v11, :cond_c

    .line 8101
    .end local v3    # "arrayPos":I
    .end local v4    # "comparisonChar":C
    :cond_9
    if-ne v6, v11, :cond_a

    if-ne v8, v7, :cond_1

    :cond_a
    move v8, v6

    .line 8107
    goto :goto_0

    .line 8090
    .restart local v3    # "arrayPos":I
    .restart local v4    # "comparisonChar":C
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 8088
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_3
.end method

.method public static indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;

    .prologue
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

    .prologue
    const/4 v8, -0x1

    .line 1621
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v7, p2

    .end local p2    # "startPos":I
    .local v7, "startPos":I
    move v2, v8

    .line 1639
    :goto_0
    return v2

    .line 1624
    .end local v7    # "startPos":I
    .restart local p2    # "startPos":I
    :cond_1
    if-gez p2, :cond_2

    .line 1625
    const/4 p2, 0x0

    .line 1627
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v6, v0, 0x1

    .line 1628
    .local v6, "endLimit":I
    if-le p2, v6, :cond_3

    move v7, p2

    .end local p2    # "startPos":I
    .restart local v7    # "startPos":I
    move v2, v8

    .line 1629
    goto :goto_0

    .line 1631
    .end local v7    # "startPos":I
    .restart local p2    # "startPos":I
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    move v7, p2

    .end local p2    # "startPos":I
    .restart local v7    # "startPos":I
    move v2, p2

    .line 1632
    goto :goto_0

    .line 1634
    .end local v7    # "startPos":I
    .restart local p2    # "startPos":I
    :cond_4
    move v2, p2

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_6

    .line 1635
    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_5

    move v7, p2

    .line 1636
    .end local p2    # "startPos":I
    .restart local v7    # "startPos":I
    goto :goto_0

    .line 1634
    .end local v7    # "startPos":I
    .restart local p2    # "startPos":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move v7, p2

    .end local p2    # "startPos":I
    .restart local v7    # "startPos":I
    move v2, v8

    .line 1639
    goto :goto_0
.end method

.method public static varargs isAllBlank([Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 460
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 468
    :cond_0
    :goto_0
    return v1

    .line 463
    :cond_1
    array-length v4, p0

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, p0, v3

    .line 464
    .local v0, "cs":Ljava/lang/CharSequence;
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v2

    .line 465
    goto :goto_0

    .line 463
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static varargs isAllEmpty([Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 311
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 319
    :cond_0
    :goto_0
    return v1

    .line 314
    :cond_1
    array-length v4, p0

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, p0, v3

    .line 315
    .local v0, "cs":Ljava/lang/CharSequence;
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v2

    .line 316
    goto :goto_0

    .line 314
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static isAllLowerCase(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 7350
    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7359
    :cond_0
    :goto_0
    return v2

    .line 7353
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7354
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 7355
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7354
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7359
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isAllUpperCase(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 7385
    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7394
    :cond_0
    :goto_0
    return v2

    .line 7388
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7389
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 7390
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7389
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7394
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isAlpha(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 7016
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7025
    :cond_0
    :goto_0
    return v2

    .line 7019
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7020
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 7021
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7020
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7025
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isAlphaSpace(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 7051
    if-nez p0, :cond_1

    .line 7060
    :cond_0
    :goto_0
    return v2

    .line 7054
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7055
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 7056
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 7055
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7060
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isAlphanumeric(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 7086
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7095
    :cond_0
    :goto_0
    return v2

    .line 7089
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7090
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 7091
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7090
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7095
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isAlphanumericSpace(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 7121
    if-nez p0, :cond_1

    .line 7130
    :cond_0
    :goto_0
    return v2

    .line 7124
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7125
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 7126
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 7125
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7130
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static varargs isAnyBlank([Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 400
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 408
    :cond_0
    :goto_0
    return v1

    .line 403
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 404
    .local v0, "cs":Ljava/lang/CharSequence;
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 405
    const/4 v1, 0x1

    goto :goto_0

    .line 403
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static varargs isAnyEmpty([Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 256
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    :cond_0
    :goto_0
    return v1

    .line 259
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 260
    .local v0, "cs":Ljava/lang/CharSequence;
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 261
    const/4 v1, 0x1

    goto :goto_0

    .line 259
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isAsciiPrintable(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 7160
    if-nez p0, :cond_1

    .line 7169
    :cond_0
    :goto_0
    return v2

    .line 7163
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7164
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 7165
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/commons/lang3/CharUtils;->isAsciiPrintable(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7164
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7169
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isBlank(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    .line 342
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "strLen":I
    if-nez v1, :cond_1

    .line 350
    .end local v1    # "strLen":I
    :cond_0
    :goto_0
    return v2

    .line 345
    .restart local v1    # "strLen":I
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 346
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 347
    const/4 v2, 0x0

    goto :goto_0

    .line 345
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 213
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMixedCase(Ljava/lang/CharSequence;)Z
    .locals 7
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 7420
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ne v6, v4, :cond_2

    :cond_0
    move v4, v5

    .line 7435
    :cond_1
    :goto_0
    return v4

    .line 7423
    :cond_2
    const/4 v1, 0x0

    .line 7424
    .local v1, "containsUppercase":Z
    const/4 v0, 0x0

    .line 7425
    .local v0, "containsLowercase":Z
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 7426
    .local v3, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 7427
    if-eqz v1, :cond_3

    if-nez v0, :cond_1

    .line 7429
    :cond_3
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 7430
    const/4 v1, 0x1

    .line 7426
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7431
    :cond_5
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 7432
    const/4 v0, 0x1

    goto :goto_2

    .line 7435
    :cond_6
    if-eqz v1, :cond_7

    if-nez v0, :cond_1

    :cond_7
    move v4, v5

    goto :goto_0
.end method

.method public static varargs isNoneBlank([Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .prologue
    .line 435
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isAnyBlank([Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs isNoneEmpty([Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .prologue
    .line 288
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isAnyEmpty([Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotBlank(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 373
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 232
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNumeric(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 7204
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7213
    :cond_0
    :goto_0
    return v2

    .line 7207
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7208
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 7209
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7208
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7213
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isNumericSpace(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 7243
    if-nez p0, :cond_1

    .line 7252
    :cond_0
    :goto_0
    return v2

    .line 7246
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7247
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 7248
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 7247
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7252
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isWhitespace(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 7315
    if-nez p0, :cond_1

    .line 7324
    :cond_0
    :goto_0
    return v2

    .line 7318
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7319
    .local v1, "sz":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 7320
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7319
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7324
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static join(Ljava/lang/Iterable;C)Ljava/lang/String;
    .locals 1
    .param p1, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 4704
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-nez p0, :cond_0

    .line 4705
    const/4 v0, 0x0

    .line 4707
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 4725
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-nez p0, :cond_0

    .line 4726
    const/4 v0, 0x0

    .line 4728
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join(Ljava/util/Iterator;C)Ljava/lang/String;
    .locals 4
    .param p1, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 4616
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    if-nez p0, :cond_0

    .line 4617
    const/4 v3, 0x0

    .line 4641
    :goto_0
    return-object v3

    .line 4619
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4620
    const-string v3, ""

    goto :goto_0

    .line 4622
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4623
    .local v1, "first":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4624
    const-string v3, ""

    invoke-static {v1, v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 4628
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4629
    .local v0, "buf":Ljava/lang/StringBuilder;
    if-eqz v1, :cond_3

    .line 4630
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4633
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4634
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4635
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4636
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_3

    .line 4637
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4641
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 4660
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    if-nez p0, :cond_0

    .line 4661
    const/4 v3, 0x0

    .line 4686
    :goto_0
    return-object v3

    .line 4663
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4664
    const-string v3, ""

    goto :goto_0

    .line 4666
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4667
    .local v1, "first":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4668
    const-string v3, ""

    invoke-static {v1, v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 4672
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4673
    .local v0, "buf":Ljava/lang/StringBuilder;
    if-eqz v1, :cond_3

    .line 4674
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4677
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4678
    if-eqz p1, :cond_4

    .line 4679
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4681
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4682
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_3

    .line 4683
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4686
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static join(Ljava/util/List;CII)Ljava/lang/String;
    .locals 3
    .param p1, "separator"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;CII)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 4758
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez p0, :cond_0

    .line 4759
    const/4 v2, 0x0

    .line 4766
    :goto_0
    return-object v2

    .line 4761
    :cond_0
    sub-int v0, p3, p2

    .line 4762
    .local v0, "noOfItems":I
    if-gtz v0, :cond_1

    .line 4763
    const-string v2, ""

    goto :goto_0

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

    goto :goto_0
.end method

.method public static join(Ljava/util/List;Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 4796
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez p0, :cond_0

    .line 4797
    const/4 v2, 0x0

    .line 4804
    :goto_0
    return-object v2

    .line 4799
    :cond_0
    sub-int v0, p3, p2

    .line 4800
    .local v0, "noOfItems":I
    if-gtz v0, :cond_1

    .line 4801
    const-string v2, ""

    goto :goto_0

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

    goto :goto_0
.end method

.method public static join([BC)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [B
    .param p1, "separator"    # C

    .prologue
    .line 4013
    if-nez p0, :cond_0

    .line 4014
    const/4 v0, 0x0

    .line 4016
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([BCII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([BCII)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [B
    .param p1, "separator"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 4292
    if-nez p0, :cond_0

    .line 4293
    const/4 v3, 0x0

    .line 4306
    :goto_0
    return-object v3

    .line 4295
    :cond_0
    sub-int v2, p3, p2

    .line 4296
    .local v2, "noOfItems":I
    if-gtz v2, :cond_1

    .line 4297
    const-string v3, ""

    goto :goto_0

    .line 4299
    :cond_1
    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->newStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4300
    .local v0, "buf":Ljava/lang/StringBuilder;
    move v1, p2

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_3

    .line 4301
    if-le v1, p2, :cond_2

    .line 4302
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4304
    :cond_2
    aget-byte v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4300
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4306
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static join([CC)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [C
    .param p1, "separator"    # C

    .prologue
    .line 4045
    if-nez p0, :cond_0

    .line 4046
    const/4 v0, 0x0

    .line 4048
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([CCII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([CCII)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [C
    .param p1, "separator"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 4390
    if-nez p0, :cond_0

    .line 4391
    const/4 v3, 0x0

    .line 4404
    :goto_0
    return-object v3

    .line 4393
    :cond_0
    sub-int v2, p3, p2

    .line 4394
    .local v2, "noOfItems":I
    if-gtz v2, :cond_1

    .line 4395
    const-string v3, ""

    goto :goto_0

    .line 4397
    :cond_1
    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->newStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4398
    .local v0, "buf":Ljava/lang/StringBuilder;
    move v1, p2

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_3

    .line 4399
    if-le v1, p2, :cond_2

    .line 4400
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4402
    :cond_2
    aget-char v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4398
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4404
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static join([DC)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [D
    .param p1, "separator"    # C

    .prologue
    .line 4109
    if-nez p0, :cond_0

    .line 4110
    const/4 v0, 0x0

    .line 4112
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([DCII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([DCII)Ljava/lang/String;
    .locals 6
    .param p0, "array"    # [D
    .param p1, "separator"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 4439
    if-nez p0, :cond_0

    .line 4440
    const/4 v3, 0x0

    .line 4453
    :goto_0
    return-object v3

    .line 4442
    :cond_0
    sub-int v2, p3, p2

    .line 4443
    .local v2, "noOfItems":I
    if-gtz v2, :cond_1

    .line 4444
    const-string v3, ""

    goto :goto_0

    .line 4446
    :cond_1
    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->newStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4447
    .local v0, "buf":Ljava/lang/StringBuilder;
    move v1, p2

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_3

    .line 4448
    if-le v1, p2, :cond_2

    .line 4449
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4451
    :cond_2
    aget-wide v4, p0, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 4447
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4453
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static join([FC)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [F
    .param p1, "separator"    # C

    .prologue
    .line 4077
    if-nez p0, :cond_0

    .line 4078
    const/4 v0, 0x0

    .line 4080
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([FCII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([FCII)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [F
    .param p1, "separator"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 4488
    if-nez p0, :cond_0

    .line 4489
    const/4 v3, 0x0

    .line 4502
    :goto_0
    return-object v3

    .line 4491
    :cond_0
    sub-int v2, p3, p2

    .line 4492
    .local v2, "noOfItems":I
    if-gtz v2, :cond_1

    .line 4493
    const-string v3, ""

    goto :goto_0

    .line 4495
    :cond_1
    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->newStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4496
    .local v0, "buf":Ljava/lang/StringBuilder;
    move v1, p2

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_3

    .line 4497
    if-le v1, p2, :cond_2

    .line 4498
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4500
    :cond_2
    aget v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 4496
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4502
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static join([IC)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [I
    .param p1, "separator"    # C

    .prologue
    .line 3949
    if-nez p0, :cond_0

    .line 3950
    const/4 v0, 0x0

    .line 3952
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([ICII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([ICII)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [I
    .param p1, "separator"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 4243
    if-nez p0, :cond_0

    .line 4244
    const/4 v3, 0x0

    .line 4257
    :goto_0
    return-object v3

    .line 4246
    :cond_0
    sub-int v2, p3, p2

    .line 4247
    .local v2, "noOfItems":I
    if-gtz v2, :cond_1

    .line 4248
    const-string v3, ""

    goto :goto_0

    .line 4250
    :cond_1
    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->newStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4251
    .local v0, "buf":Ljava/lang/StringBuilder;
    move v1, p2

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_3

    .line 4252
    if-le v1, p2, :cond_2

    .line 4253
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4255
    :cond_2
    aget v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4251
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4257
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static join([JC)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [J
    .param p1, "separator"    # C

    .prologue
    .line 3917
    if-nez p0, :cond_0

    .line 3918
    const/4 v0, 0x0

    .line 3920
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([JCII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([JCII)Ljava/lang/String;
    .locals 6
    .param p0, "array"    # [J
    .param p1, "separator"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 4194
    if-nez p0, :cond_0

    .line 4195
    const/4 v3, 0x0

    .line 4208
    :goto_0
    return-object v3

    .line 4197
    :cond_0
    sub-int v2, p3, p2

    .line 4198
    .local v2, "noOfItems":I
    if-gtz v2, :cond_1

    .line 4199
    const-string v3, ""

    goto :goto_0

    .line 4201
    :cond_1
    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->newStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4202
    .local v0, "buf":Ljava/lang/StringBuilder;
    move v1, p2

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_3

    .line 4203
    if-le v1, p2, :cond_2

    .line 4204
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4206
    :cond_2
    aget-wide v4, p0, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4202
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4208
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
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

    .prologue
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

    .prologue
    .line 3885
    if-nez p0, :cond_0

    .line 3886
    const/4 v0, 0x0

    .line 3888
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([Ljava/lang/Object;CII)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 4143
    if-nez p0, :cond_0

    .line 4144
    const/4 v3, 0x0

    .line 4159
    :goto_0
    return-object v3

    .line 4146
    :cond_0
    sub-int v2, p3, p2

    .line 4147
    .local v2, "noOfItems":I
    if-gtz v2, :cond_1

    .line 4148
    const-string v3, ""

    goto :goto_0

    .line 4150
    :cond_1
    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->newStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4151
    .local v0, "buf":Ljava/lang/StringBuilder;
    move v1, p2

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_4

    .line 4152
    if-le v1, p2, :cond_2

    .line 4153
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4155
    :cond_2
    aget-object v3, p0, v1

    if-eqz v3, :cond_3

    .line 4156
    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4151
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4159
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 4530
    if-nez p0, :cond_0

    .line 4531
    const/4 v0, 0x0

    .line 4533
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 4572
    if-nez p0, :cond_0

    .line 4573
    const/4 v3, 0x0

    .line 4596
    :goto_0
    return-object v3

    .line 4575
    :cond_0
    if-nez p1, :cond_1

    .line 4576
    const-string p1, ""

    .line 4581
    :cond_1
    sub-int v2, p3, p2

    .line 4582
    .local v2, "noOfItems":I
    if-gtz v2, :cond_2

    .line 4583
    const-string v3, ""

    goto :goto_0

    .line 4586
    :cond_2
    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->newStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4588
    .local v0, "buf":Ljava/lang/StringBuilder;
    move v1, p2

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_5

    .line 4589
    if-le v1, p2, :cond_3

    .line 4590
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4592
    :cond_3
    aget-object v3, p0, v1

    if-eqz v3, :cond_4

    .line 4593
    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4588
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4596
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static join([SC)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [S
    .param p1, "separator"    # C

    .prologue
    .line 3981
    if-nez p0, :cond_0

    .line 3982
    const/4 v0, 0x0

    .line 3984
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([SCII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static join([SCII)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [S
    .param p1, "separator"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 4341
    if-nez p0, :cond_0

    .line 4342
    const/4 v3, 0x0

    .line 4355
    :goto_0
    return-object v3

    .line 4344
    :cond_0
    sub-int v2, p3, p2

    .line 4345
    .local v2, "noOfItems":I
    if-gtz v2, :cond_1

    .line 4346
    const-string v3, ""

    goto :goto_0

    .line 4348
    :cond_1
    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->newStringBuilder(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4349
    .local v0, "buf":Ljava/lang/StringBuilder;
    move v1, p2

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_3

    .line 4350
    if-le v1, p2, :cond_2

    .line 4351
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4353
    :cond_2
    aget-short v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4349
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4355
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static varargs joinWith(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 4828
    if-nez p1, :cond_0

    .line 4829
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Object varargs must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4832
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4834
    .local v2, "sanitizedSeparator":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4836
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4837
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4838
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4839
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4841
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4842
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4846
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I

    .prologue
    .line 1679
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1680
    const/4 v0, -0x1

    .line 1682
    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;II)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I
    .param p2, "startPos"    # I

    .prologue
    .line 1730
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1731
    const/4 v0, -0x1

    .line 1733
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;

    .prologue
    .line 1760
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1761
    :cond_0
    const/4 v0, -0x1

    .line 1763
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;
    .param p2, "startPos"    # I

    .prologue
    .line 1840
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1841
    :cond_0
    const/4 v0, -0x1

    .line 1843
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs lastIndexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I
    .locals 6
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStrs"    # [Ljava/lang/CharSequence;

    .prologue
    .line 2596
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 2597
    :cond_0
    const/4 v0, -0x1

    .line 2610
    :cond_1
    return v0

    .line 2599
    :cond_2
    const/4 v0, -0x1

    .line 2600
    .local v0, "ret":I
    const/4 v2, 0x0

    .line 2601
    .local v2, "tmp":I
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, p1, v3

    .line 2602
    .local v1, "search":Ljava/lang/CharSequence;
    if-nez v1, :cond_4

    .line 2601
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2605
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {p0, v1, v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v2

    .line 2606
    if-le v2, v0, :cond_3

    .line 2607
    move v0, v2

    goto :goto_1
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;

    .prologue
    .line 1870
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1871
    :cond_0
    const/4 v0, -0x1

    .line 1873
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 8
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "startPos"    # I

    .prologue
    const/4 v7, -0x1

    .line 1909
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v2, v7

    .line 1927
    :goto_0
    return v2

    .line 1912
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_6

    .line 1913
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int p2, v0, v1

    move v6, p2

    .line 1915
    .end local p2    # "startPos":I
    .local v6, "startPos":I
    :goto_1
    if-gez v6, :cond_2

    move p2, v6

    .end local v6    # "startPos":I
    .restart local p2    # "startPos":I
    move v2, v7

    .line 1916
    goto :goto_0

    .line 1918
    .end local p2    # "startPos":I
    .restart local v6    # "startPos":I
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    move p2, v6

    .end local v6    # "startPos":I
    .restart local p2    # "startPos":I
    move v2, v6

    .line 1919
    goto :goto_0

    .line 1922
    .end local p2    # "startPos":I
    .restart local v6    # "startPos":I
    :cond_3
    move v2, v6

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_5

    .line 1923
    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_4

    move p2, v6

    .line 1924
    .end local v6    # "startPos":I
    .restart local p2    # "startPos":I
    goto :goto_0

    .line 1922
    .end local p2    # "startPos":I
    .restart local v6    # "startPos":I
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_5
    move p2, v6

    .end local v6    # "startPos":I
    .restart local p2    # "startPos":I
    move v2, v7

    .line 1927
    goto :goto_0

    .end local v2    # "i":I
    :cond_6
    move v6, p2

    .end local p2    # "startPos":I
    .restart local v6    # "startPos":I
    goto :goto_1
.end method

.method public static lastOrdinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "ordinal"    # I

    .prologue
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

    .prologue
    .line 2750
    if-nez p0, :cond_1

    .line 2751
    const/4 p0, 0x0

    .line 2759
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 2753
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    if-gez p1, :cond_2

    .line 2754
    const-string p0, ""

    goto :goto_0

    .line 2756
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 2759
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static leftPad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
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

    .prologue
    .line 6490
    if-nez p0, :cond_1

    .line 6491
    const/4 p0, 0x0

    .line 6500
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 6493
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, p1, v1

    .line 6494
    .local v0, "pads":I
    if-lez v0, :cond_0

    .line 6497
    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    .line 6498
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6500
    :cond_2
    invoke-static {p2, v0}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 6527
    if-nez p0, :cond_1

    .line 6528
    const/4 p0, 0x0

    .line 6553
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 6530
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6531
    const-string p2, " "

    .line 6533
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 6534
    .local v2, "padLen":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 6535
    .local v5, "strLen":I
    sub-int v4, p1, v5

    .line 6536
    .local v4, "pads":I
    if-lez v4, :cond_0

    .line 6539
    const/4 v6, 0x1

    if-ne v2, v6, :cond_3

    const/16 v6, 0x2000

    if-gt v4, v6, :cond_3

    .line 6540
    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {p0, p1, v6}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6543
    :cond_3
    if-ne v4, v2, :cond_4

    .line 6544
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6545
    :cond_4
    if-ge v4, v2, :cond_5

    .line 6546
    invoke-virtual {p2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6548
    :cond_5
    new-array v3, v4, [C

    .line 6549
    .local v3, "padding":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 6550
    .local v1, "padChars":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_6

    .line 6551
    rem-int v6, v0, v2

    aget-char v6, v1, v6

    aput-char v6, v3, v0

    .line 6550
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6553
    :cond_6
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static length(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 6569
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method public static lowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 6753
    if-nez p0, :cond_0

    .line 6754
    const/4 v0, 0x0

    .line 6756
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static lowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 6776
    if-nez p0, :cond_0

    .line 6777
    const/4 v0, 0x0

    .line 6779
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static matches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I
    .locals 21
    .param p0, "first"    # Ljava/lang/CharSequence;
    .param p1, "second"    # Ljava/lang/CharSequence;

    .prologue
    .line 8478
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v18

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 8479
    move-object/from16 v7, p0

    .line 8480
    .local v7, "max":Ljava/lang/CharSequence;
    move-object/from16 v9, p1

    .line 8485
    .local v9, "min":Ljava/lang/CharSequence;
    :goto_0
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int/lit8 v18, v18, -0x1

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 8486
    .local v13, "range":I
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v18

    move/from16 v0, v18

    new-array v5, v0, [I

    .line 8487
    .local v5, "matchIndexes":[I
    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-static {v5, v0}, Ljava/util/Arrays;->fill([II)V

    .line 8488
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v18

    move/from16 v0, v18

    new-array v4, v0, [Z

    .line 8489
    .local v4, "matchFlags":[Z
    const/4 v6, 0x0

    .line 8490
    .local v6, "matches":I
    const/4 v8, 0x0

    .local v8, "mi":I
    :goto_1
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_3

    .line 8491
    invoke-interface {v9, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 8492
    .local v2, "c1":C
    sub-int v18, v8, v13

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v16

    .local v16, "xi":I
    add-int v18, v8, v13

    add-int/lit8 v18, v18, 0x1

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v17

    .local v17, "xn":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 8493
    aget-boolean v18, v4, v16

    if-nez v18, :cond_2

    move/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    if-ne v2, v0, :cond_2

    .line 8494
    aput v16, v5, v8

    .line 8495
    const/16 v18, 0x1

    aput-boolean v18, v4, v16

    .line 8496
    add-int/lit8 v6, v6, 0x1

    .line 8490
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 8482
    .end local v2    # "c1":C
    .end local v4    # "matchFlags":[Z
    .end local v5    # "matchIndexes":[I
    .end local v6    # "matches":I
    .end local v7    # "max":Ljava/lang/CharSequence;
    .end local v8    # "mi":I
    .end local v9    # "min":Ljava/lang/CharSequence;
    .end local v13    # "range":I
    .end local v16    # "xi":I
    .end local v17    # "xn":I
    :cond_1
    move-object/from16 v7, p1

    .line 8483
    .restart local v7    # "max":Ljava/lang/CharSequence;
    move-object/from16 v9, p0

    .restart local v9    # "min":Ljava/lang/CharSequence;
    goto :goto_0

    .line 8492
    .restart local v2    # "c1":C
    .restart local v4    # "matchFlags":[Z
    .restart local v5    # "matchIndexes":[I
    .restart local v6    # "matches":I
    .restart local v8    # "mi":I
    .restart local v13    # "range":I
    .restart local v16    # "xi":I
    .restart local v17    # "xn":I
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 8501
    .end local v2    # "c1":C
    .end local v16    # "xi":I
    .end local v17    # "xn":I
    :cond_3
    new-array v10, v6, [C

    .line 8502
    .local v10, "ms1":[C
    new-array v11, v6, [C

    .line 8503
    .local v11, "ms2":[C
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v14, 0x0

    .local v14, "si":I
    :goto_3
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v3, v0, :cond_5

    .line 8504
    aget v18, v5, v3

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 8505
    invoke-interface {v9, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v18

    aput-char v18, v10, v14

    .line 8506
    add-int/lit8 v14, v14, 0x1

    .line 8503
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 8509
    :cond_5
    const/4 v3, 0x0

    const/4 v14, 0x0

    :goto_4
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v3, v0, :cond_7

    .line 8510
    aget-boolean v18, v4, v3

    if-eqz v18, :cond_6

    .line 8511
    invoke-interface {v7, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v18

    aput-char v18, v11, v14

    .line 8512
    add-int/lit8 v14, v14, 0x1

    .line 8509
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 8515
    :cond_7
    const/4 v15, 0x0

    .line 8516
    .local v15, "transpositions":I
    const/4 v8, 0x0

    :goto_5
    array-length v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_9

    .line 8517
    aget-char v18, v10, v8

    aget-char v19, v11, v8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    .line 8518
    add-int/lit8 v15, v15, 0x1

    .line 8516
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 8521
    :cond_9
    const/4 v12, 0x0

    .line 8522
    .local v12, "prefix":I
    const/4 v8, 0x0

    :goto_6
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_a

    .line 8523
    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v18

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 8524
    add-int/lit8 v12, v12, 0x1

    .line 8522
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 8529
    :cond_a
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v6, v18, v19

    const/16 v19, 0x1

    div-int/lit8 v20, v15, 0x2

    aput v20, v18, v19

    const/16 v19, 0x2

    aput v12, v18, v19

    const/16 v19, 0x3

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v20

    aput v20, v18, v19

    return-object v18
.end method

.method public static mid(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "len"    # I

    .prologue
    .line 2821
    if-nez p0, :cond_0

    .line 2822
    const/4 v0, 0x0

    .line 2833
    :goto_0
    return-object v0

    .line 2824
    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 2825
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 2827
    :cond_2
    if-gez p1, :cond_3

    .line 2828
    const/4 p1, 0x0

    .line 2830
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p1, p2

    if-gt v0, v1, :cond_4

    .line 2831
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2833
    :cond_4
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static newStringBuilder(I)Ljava/lang/StringBuilder;
    .locals 2
    .param p0, "noOfItems"    # I

    .prologue
    .line 2837
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p0, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    return-object v0
.end method

.method public static normalizeSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 8849
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 8874
    .end local p0    # "str":Ljava/lang/String;
    .local v2, "count":I
    .local v3, "i":I
    .local v5, "newChars":[C
    .local v6, "size":I
    .local v7, "startWhitespaces":Z
    .local v8, "whitespacesCount":I
    :goto_0
    return-object p0

    .line 8852
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v5    # "newChars":[C
    .end local v6    # "size":I
    .end local v7    # "startWhitespaces":Z
    .end local v8    # "whitespacesCount":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 8853
    .restart local v6    # "size":I
    new-array v5, v6, [C

    .line 8854
    .restart local v5    # "newChars":[C
    const/4 v1, 0x0

    .line 8855
    .local v1, "count":I
    const/4 v8, 0x0

    .line 8856
    .restart local v8    # "whitespacesCount":I
    const/4 v7, 0x1

    .line 8857
    .restart local v7    # "startWhitespaces":Z
    const/4 v3, 0x0

    .restart local v3    # "i":I
    move v2, v1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    :goto_1
    if-ge v3, v6, :cond_3

    .line 8858
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 8859
    .local v0, "actualChar":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    .line 8860
    .local v4, "isWhitespace":Z
    if-eqz v4, :cond_1

    .line 8861
    if-nez v8, :cond_6

    if-nez v7, :cond_6

    .line 8862
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    const-string v9, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    aput-char v9, v5, v2

    .line 8864
    :goto_2
    add-int/lit8 v8, v8, 0x1

    .line 8857
    .end local v0    # "actualChar":C
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    .line 8866
    .restart local v0    # "actualChar":C
    :cond_1
    const/4 v7, 0x0

    .line 8867
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    const/16 v9, 0xa0

    if-ne v0, v9, :cond_2

    const/16 v0, 0x20

    .end local v0    # "actualChar":C
    :cond_2
    aput-char v0, v5, v2

    .line 8868
    const/4 v8, 0x0

    goto :goto_3

    .line 8871
    .end local v1    # "count":I
    .end local v4    # "isWhitespace":Z
    .restart local v2    # "count":I
    :cond_3
    if-eqz v7, :cond_4

    .line 8872
    const-string p0, ""

    goto :goto_0

    .line 8874
    :cond_4
    new-instance v11, Ljava/lang/String;

    if-lez v8, :cond_5

    const/4 v9, 0x1

    :goto_4
    sub-int v9, v2, v9

    invoke-direct {v11, v5, v10, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    move v9, v10

    goto :goto_4

    .restart local v0    # "actualChar":C
    .restart local v4    # "isWhitespace":Z
    :cond_6
    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_2
.end method

.method public static ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "ordinal"    # I

    .prologue
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

    .prologue
    const/4 v1, -0x1

    .line 1535
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-gtz p2, :cond_1

    .line 1556
    :cond_0
    :goto_0
    return v1

    .line 1538
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 1539
    if-eqz p3, :cond_2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1541
    :cond_3
    const/4 v0, 0x0

    .line 1544
    .local v0, "found":I
    if-eqz p3, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1546
    .local v1, "index":I
    :cond_4
    if-eqz p3, :cond_5

    .line 1547
    add-int/lit8 v2, v1, -0x1

    invoke-static {p0, p1, v2}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    .line 1551
    :goto_2
    if-ltz v1, :cond_0

    .line 1554
    add-int/lit8 v0, v0, 0x1

    .line 1555
    if-lt v0, p2, :cond_4

    goto :goto_0

    .line 1549
    :cond_5
    add-int/lit8 v2, v1, 0x1

    invoke-static {p0, p1, v2}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    goto :goto_2
.end method

.method public static overlay(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "overlay"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 6053
    if-nez p0, :cond_0

    .line 6054
    const/4 v2, 0x0

    .line 6077
    :goto_0
    return-object v2

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
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 6079
    invoke-virtual {p0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static varargs prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "ignoreCase"    # Z
    .param p3, "prefixes"    # [Ljava/lang/CharSequence;

    .prologue
    .line 9023
    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9033
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 9026
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    if-eqz p3, :cond_2

    array-length v1, p3

    if-lez v1, :cond_2

    .line 9027
    array-length v2, p3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v0, p3, v1

    .line 9028
    .local v0, "p":Ljava/lang/CharSequence;
    invoke-static {p0, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 9027
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9033
    .end local v0    # "p":Ljava/lang/CharSequence;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static varargs prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "prefixes"    # [Ljava/lang/CharSequence;

    .prologue
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

    .prologue
    .line 9109
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static remove(Ljava/lang/String;C)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # C

    .prologue
    .line 5114
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 5124
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 5117
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 5118
    .local v0, "chars":[C
    const/4 v2, 0x0

    .line 5119
    .local v2, "pos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 5120
    aget-char v4, v0, v1

    if-eq v4, p1, :cond_2

    .line 5121
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .local v3, "pos":I
    aget-char v4, v0, v1

    aput-char v4, v0, v2

    move v2, v3

    .line 5119
    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5124
    :cond_3
    new-instance p0, Ljava/lang/String;

    .end local p0    # "str":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public static remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .prologue
    .line 5048
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5051
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5174
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RegExUtils;->removeAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .prologue
    .line 4979
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4985
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 4982
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4983
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeEndIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .prologue
    .line 5015
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5021
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 5018
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5019
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
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

    .prologue
    .line 5088
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5091
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5364
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RegExUtils;->removePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .prologue
    .line 4910
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4916
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 4913
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4914
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeStartIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .prologue
    .line 4945
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4951
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 4948
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4949
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static repeat(CI)Ljava/lang/String;
    .locals 3
    .param p0, "ch"    # C
    .param p1, "repeat"    # I

    .prologue
    .line 6323
    if-gtz p1, :cond_0

    .line 6324
    const-string v2, ""

    .line 6330
    :goto_0
    return-object v2

    .line 6326
    :cond_0
    new-array v0, p1, [C

    .line 6327
    .local v0, "buf":[C
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 6328
    aput-char p0, v0, v1

    .line 6327
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 6330
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "repeat"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 6235
    if-nez p0, :cond_1

    .line 6236
    const/4 p0, 0x0

    .line 6267
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 6238
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    if-gtz p1, :cond_2

    .line 6239
    const-string p0, ""

    goto :goto_0

    .line 6241
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 6242
    .local v4, "inputLength":I
    if-eq p1, v9, :cond_0

    if-eqz v4, :cond_0

    .line 6245
    if-ne v4, v9, :cond_3

    const/16 v7, 0x2000

    if-gt p1, v7, :cond_3

    .line 6246
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, p1}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6249
    :cond_3
    mul-int v6, v4, p1

    .line 6250
    .local v6, "outputLength":I
    packed-switch v4, :pswitch_data_0

    .line 6263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6264
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, p1, :cond_5

    .line 6265
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6264
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6252
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v3    # "i":I
    :pswitch_0
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, p1}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6254
    :pswitch_1
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 6255
    .local v1, "ch0":C
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 6256
    .local v2, "ch1":C
    new-array v5, v6, [C

    .line 6257
    .local v5, "output2":[C
    mul-int/lit8 v7, p1, 0x2

    add-int/lit8 v3, v7, -0x2

    .restart local v3    # "i":I
    :goto_2
    if-ltz v3, :cond_4

    .line 6258
    aput-char v1, v5, v3

    .line 6259
    add-int/lit8 v7, v3, 0x1

    aput-char v2, v5, v7

    .line 6257
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 6261
    :cond_4
    new-instance p0, Ljava/lang/String;

    .end local p0    # "str":Ljava/lang/String;
    invoke-direct {p0, v5}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 6267
    .end local v1    # "ch0":C
    .end local v2    # "ch1":C
    .end local v5    # "output2":[C
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    .restart local p0    # "str":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static repeat(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "repeat"    # I

    .prologue
    .line 6292
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 6293
    :cond_0
    invoke-static {p0, p2}, Lorg/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 6297
    :goto_0
    return-object v1

    .line 6296
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 6297
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .prologue
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

    .prologue
    .line 5559
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 9
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .param p3, "max"    # I
    .param p4, "ignoreCase"    # Z

    .prologue
    const/16 v6, 0x40

    const/4 v8, -0x1

    .line 5594
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 5621
    .end local p0    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 5597
    .restart local p0    # "text":Ljava/lang/String;
    :cond_1
    move-object v4, p0

    .line 5598
    .local v4, "searchText":Ljava/lang/String;
    if-eqz p4, :cond_2

    .line 5599
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 5600
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 5602
    :cond_2
    const/4 v5, 0x0

    .line 5603
    .local v5, "start":I
    invoke-virtual {v4, p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 5604
    .local v1, "end":I
    if-eq v1, v8, :cond_0

    .line 5607
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 5608
    .local v3, "replLength":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v2, v7, v3

    .line 5609
    .local v2, "increase":I
    if-gez v2, :cond_3

    const/4 v2, 0x0

    .line 5610
    :cond_3
    if-gez p3, :cond_6

    const/16 v6, 0x10

    :cond_4
    :goto_1
    mul-int/2addr v2, v6

    .line 5611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5612
    .local v0, "buf":Ljava/lang/StringBuilder;
    :goto_2
    if-eq v1, v8, :cond_5

    .line 5613
    invoke-virtual {v0, p0, v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5614
    add-int v5, v1, v3

    .line 5615
    add-int/lit8 p3, p3, -0x1

    if-nez p3, :cond_7

    .line 5620
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, p0, v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 5621
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5610
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    :cond_6
    if-gt p3, v6, :cond_4

    move v6, p3

    goto :goto_1

    .line 5618
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    :cond_7
    invoke-virtual {v4, p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_2
.end method

.method public static replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
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

    .prologue
    .line 5950
    if-nez p0, :cond_0

    .line 5951
    const/4 v0, 0x0

    .line 5953
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # Ljava/lang/String;
    .param p2, "replaceChars"    # Ljava/lang/String;

    .prologue
    .line 5993
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6018
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 5996
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    if-nez p2, :cond_2

    .line 5997
    const-string p2, ""

    .line 5999
    :cond_2
    const/4 v4, 0x0

    .line 6000
    .local v4, "modified":Z
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 6001
    .local v5, "replaceCharsLength":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 6002
    .local v6, "strLength":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6003
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_5

    .line 6004
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 6005
    .local v1, "ch":C
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 6006
    .local v3, "index":I
    if-ltz v3, :cond_4

    .line 6007
    const/4 v4, 0x1

    .line 6008
    if-ge v3, v5, :cond_3

    .line 6009
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6003
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6012
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 6015
    .end local v1    # "ch":C
    .end local v3    # "index":I
    :cond_5
    if-eqz v4, :cond_0

    .line 6016
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 5697
    invoke-static {p0, p1, p2, v0, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 20
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;
    .param p3, "repeat"    # Z
    .param p4, "timeToLive"    # I

    .prologue
    .line 5805
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_0

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    if-eqz v17, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 5924
    .end local p0    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 5811
    .restart local p0    # "text":Ljava/lang/String;
    :cond_1
    if-gez p4, :cond_2

    .line 5812
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "Aborting to protect against StackOverflowError - output of one loop is the input of another"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 5816
    :cond_2
    move-object/from16 v0, p1

    array-length v12, v0

    .line 5817
    .local v12, "searchLength":I
    move-object/from16 v0, p2

    array-length v10, v0

    .line 5820
    .local v10, "replacementLength":I
    if-eq v12, v10, :cond_3

    .line 5821
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Search and Replace array lengths don\'t match: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " vs "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 5828
    :cond_3
    new-array v8, v12, [Z

    .line 5831
    .local v8, "noMoreMatchesForReplIndex":[Z
    const/4 v15, -0x1

    .line 5832
    .local v15, "textIndex":I
    const/4 v9, -0x1

    .line 5833
    .local v9, "replaceIndex":I
    const/4 v14, -0x1

    .line 5837
    .local v14, "tempIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v12, :cond_8

    .line 5838
    aget-boolean v17, v8, v6

    if-nez v17, :cond_4

    aget-object v17, p1, v6

    if-eqz v17, :cond_4

    aget-object v17, p1, v6

    .line 5839
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_4

    aget-object v17, p2, v6

    if-nez v17, :cond_5

    .line 5837
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 5842
    :cond_5
    aget-object v17, p1, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 5845
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_6

    .line 5846
    const/16 v17, 0x1

    aput-boolean v17, v8, v6

    goto :goto_2

    .line 5848
    :cond_6
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_7

    if-ge v14, v15, :cond_4

    .line 5849
    :cond_7
    move v15, v14

    .line 5850
    move v9, v6

    goto :goto_2

    .line 5857
    :cond_8
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_0

    .line 5861
    const/4 v13, 0x0

    .line 5864
    .local v13, "start":I
    const/4 v7, 0x0

    .line 5867
    .local v7, "increase":I
    const/4 v6, 0x0

    :goto_3
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_b

    .line 5868
    aget-object v17, p1, v6

    if-eqz v17, :cond_9

    aget-object v17, p2, v6

    if-nez v17, :cond_a

    .line 5867
    :cond_9
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 5871
    :cond_a
    aget-object v17, p2, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    aget-object v18, p1, v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    sub-int v5, v17, v18

    .line 5872
    .local v5, "greater":I
    if-lez v5, :cond_9

    .line 5873
    mul-int/lit8 v17, v5, 0x3

    add-int v7, v7, v17

    goto :goto_4

    .line 5877
    .end local v5    # "greater":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    div-int/lit8 v17, v17, 0x5

    move/from16 v0, v17

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 5879
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    add-int v17, v17, v7

    move/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5881
    .local v4, "buf":Ljava/lang/StringBuilder;
    :cond_c
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_12

    .line 5883
    move v6, v13

    :goto_5
    if-ge v6, v15, :cond_d

    .line 5884
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5883
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 5886
    :cond_d
    aget-object v17, p2, v9

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5888
    aget-object v17, p1, v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v13, v15, v17

    .line 5890
    const/4 v15, -0x1

    .line 5891
    const/4 v9, -0x1

    .line 5892
    const/4 v14, -0x1

    .line 5895
    const/4 v6, 0x0

    :goto_6
    if-ge v6, v12, :cond_c

    .line 5896
    aget-boolean v17, v8, v6

    if-nez v17, :cond_e

    aget-object v17, p1, v6

    if-eqz v17, :cond_e

    aget-object v17, p1, v6

    .line 5897
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_e

    aget-object v17, p2, v6

    if-nez v17, :cond_f

    .line 5895
    :cond_e
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 5900
    :cond_f
    aget-object v17, p1, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v14

    .line 5903
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_10

    .line 5904
    const/16 v17, 0x1

    aput-boolean v17, v8, v6

    goto :goto_7

    .line 5906
    :cond_10
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_11

    if-ge v14, v15, :cond_e

    .line 5907
    :cond_11
    move v15, v14

    .line 5908
    move v9, v6

    goto :goto_7

    .line 5915
    :cond_12
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v16

    .line 5916
    .local v16, "textLength":I
    move v6, v13

    :goto_8
    move/from16 v0, v16

    if-ge v6, v0, :cond_13

    .line 5917
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5916
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 5919
    :cond_13
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 5920
    .local v11, "result":Ljava/lang/String;
    if-nez p3, :cond_14

    move-object/from16 p0, v11

    .line 5921
    goto/16 :goto_0

    .line 5924
    :cond_14
    add-int/lit8 v17, p4, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, v17

    invoke-static {v11, v0, v1, v2, v3}, Lorg/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static replaceEachRepeatedly(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;

    .prologue
    .line 5745
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 5746
    .local v0, "timeToLive":I
    :goto_0
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 5745
    .end local v0    # "timeToLive":I
    :cond_0
    array-length v0, p1

    goto :goto_0
.end method

.method public static replaceFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
    .line 5327
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/RegExUtils;->replacePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reverse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 7661
    if-nez p0, :cond_0

    .line 7662
    const/4 v0, 0x0

    .line 7664
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static reverseDelimited(Ljava/lang/String;C)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .prologue
    .line 7687
    if-nez p0, :cond_0

    .line 7688
    const/4 v1, 0x0

    .line 7694
    :goto_0
    return-object v1

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

    goto :goto_0
.end method

.method public static right(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    .line 2783
    if-nez p0, :cond_1

    .line 2784
    const/4 p0, 0x0

    .line 2792
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 2786
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    if-gez p1, :cond_2

    .line 2787
    const-string p0, ""

    goto :goto_0

    .line 2789
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 2792
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static rightPad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
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

    .prologue
    .line 6378
    if-nez p0, :cond_1

    .line 6379
    const/4 p0, 0x0

    .line 6388
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 6381
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, p1, v1

    .line 6382
    .local v0, "pads":I
    if-lez v0, :cond_0

    .line 6385
    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    .line 6386
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6388
    :cond_2
    invoke-static {p2, v0}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 6415
    if-nez p0, :cond_1

    .line 6416
    const/4 p0, 0x0

    .line 6441
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 6418
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6419
    const-string p2, " "

    .line 6421
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 6422
    .local v2, "padLen":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 6423
    .local v5, "strLen":I
    sub-int v4, p1, v5

    .line 6424
    .local v4, "pads":I
    if-lez v4, :cond_0

    .line 6427
    const/4 v6, 0x1

    if-ne v2, v6, :cond_3

    const/16 v6, 0x2000

    if-gt v4, v6, :cond_3

    .line 6428
    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {p0, p1, v6}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6431
    :cond_3
    if-ne v4, v2, :cond_4

    .line 6432
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6433
    :cond_4
    if-ge v4, v2, :cond_5

    .line 6434
    invoke-virtual {p2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6436
    :cond_5
    new-array v3, v4, [C

    .line 6437
    .local v3, "padding":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 6438
    .local v1, "padChars":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_6

    .line 6439
    rem-int v6, v0, v2

    aget-char v6, v1, v6

    aput-char v6, v3, v0

    .line 6438
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6441
    :cond_6
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static rotate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "shift"    # I

    .prologue
    .line 7628
    if-nez p0, :cond_1

    .line 7629
    const/4 p0, 0x0

    .line 7641
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 7632
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 7633
    .local v2, "strLen":I
    if-eqz p1, :cond_0

    if-eqz v2, :cond_0

    rem-int v3, p1, v2

    if-eqz v3, :cond_0

    .line 7637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7638
    .local v0, "builder":Ljava/lang/StringBuilder;
    rem-int v3, p1, v2

    neg-int v1, v3

    .line 7639
    .local v1, "offset":I
    invoke-static {p0, v1}, Lorg/apache/commons/lang3/StringUtils;->substring(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7640
    const/4 v3, 0x0

    invoke-static {p0, v3, v1}, Lorg/apache/commons/lang3/StringUtils;->substring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7641
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
    .line 3246
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByCharacterType(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
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

    .prologue
    .line 3802
    if-nez p0, :cond_0

    .line 3803
    const/4 v7, 0x0

    .line 3830
    :goto_0
    return-object v7

    .line 3805
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3806
    sget-object v7, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 3808
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3809
    .local v0, "c":[C
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3810
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 3811
    .local v5, "tokenStart":I
    aget-char v7, v0, v5

    invoke-static {v7}, Ljava/lang/Character;->getType(C)I

    move-result v1

    .line 3812
    .local v1, "currentType":I
    add-int/lit8 v4, v5, 0x1

    .local v4, "pos":I
    :goto_1
    array-length v7, v0

    if-ge v4, v7, :cond_5

    .line 3813
    aget-char v7, v0, v4

    invoke-static {v7}, Ljava/lang/Character;->getType(C)I

    move-result v6

    .line 3814
    .local v6, "type":I
    if-ne v6, v1, :cond_2

    .line 3812
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3817
    :cond_2
    if-eqz p1, :cond_4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    const/4 v7, 0x1

    if-ne v1, v7, :cond_4

    .line 3818
    add-int/lit8 v3, v4, -0x1

    .line 3819
    .local v3, "newTokenStart":I
    if-eq v3, v5, :cond_3

    .line 3820
    new-instance v7, Ljava/lang/String;

    sub-int v8, v3, v5

    invoke-direct {v7, v0, v5, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3821
    move v5, v3

    .line 3827
    .end local v3    # "newTokenStart":I
    :cond_3
    :goto_3
    move v1, v6

    goto :goto_2

    .line 3824
    :cond_4
    new-instance v7, Ljava/lang/String;

    sub-int v8, v4, v5

    invoke-direct {v7, v0, v5, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3825
    move v5, v4

    goto :goto_3

    .line 3829
    .end local v6    # "type":I
    :cond_5
    new-instance v7, Ljava/lang/String;

    array-length v8, v0

    sub-int/2addr v8, v5

    invoke-direct {v7, v0, v5, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3830
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static splitByCharacterTypeCamelCase(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
    const/4 v6, 0x0

    .line 3385
    if-nez p0, :cond_0

    .line 3446
    :goto_0
    return-object v6

    .line 3389
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 3391
    .local v2, "len":I
    if-nez v2, :cond_1

    .line 3392
    sget-object v6, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 3395
    :cond_1
    if-eqz p1, :cond_2

    const-string v7, ""

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3397
    :cond_2
    invoke-static {p0, v6, p2, p3}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 3400
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 3402
    .local v4, "separatorLength":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3403
    .local v5, "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 3404
    .local v3, "numberOfSubstrings":I
    const/4 v0, 0x0

    .line 3405
    .local v0, "beg":I
    const/4 v1, 0x0

    .line 3406
    .local v1, "end":I
    :goto_1
    if-ge v1, v2, :cond_9

    .line 3407
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 3409
    const/4 v6, -0x1

    if-le v1, v6, :cond_8

    .line 3410
    if-le v1, v0, :cond_5

    .line 3411
    add-int/lit8 v3, v3, 0x1

    .line 3413
    if-ne v3, p2, :cond_4

    .line 3414
    move v1, v2

    .line 3415
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3419
    :cond_4
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3424
    add-int v0, v1, v4

    goto :goto_1

    .line 3428
    :cond_5
    if-eqz p3, :cond_6

    .line 3429
    add-int/lit8 v3, v3, 0x1

    .line 3430
    if-ne v3, p2, :cond_7

    .line 3431
    move v1, v2

    .line 3432
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3437
    :cond_6
    :goto_2
    add-int v0, v1, v4

    goto :goto_1

    .line 3434
    :cond_7
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3441
    :cond_8
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3442
    move v1, v2

    goto :goto_1

    .line 3446
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
    .line 3529
    if-nez p0, :cond_0

    .line 3530
    const/4 v6, 0x0

    .line 3557
    :goto_0
    return-object v6

    .line 3532
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 3533
    .local v2, "len":I
    if-nez v2, :cond_1

    .line 3534
    sget-object v6, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 3536
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3537
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v5, 0x0

    .line 3538
    .local v5, "start":I
    const/4 v4, 0x0

    .line 3539
    .local v4, "match":Z
    const/4 v1, 0x0

    .line 3540
    .local v1, "lastMatch":Z
    :goto_1
    if-ge v0, v2, :cond_5

    .line 3541
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, p1, :cond_4

    .line 3542
    if-nez v4, :cond_2

    if-eqz p2, :cond_3

    .line 3543
    :cond_2
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3544
    const/4 v4, 0x0

    .line 3545
    const/4 v1, 0x1

    .line 3547
    :cond_3
    add-int/lit8 v0, v0, 0x1

    move v5, v0

    .line 3548
    goto :goto_1

    .line 3550
    :cond_4
    const/4 v1, 0x0

    .line 3551
    const/4 v4, 0x1

    .line 3552
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3554
    :cond_5
    if-nez v4, :cond_6

    if-eqz p2, :cond_7

    if-eqz v1, :cond_7

    .line 3555
    :cond_6
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3557
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    goto :goto_0
.end method

.method private static splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .locals 11
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I
    .param p3, "preserveAllTokens"    # Z

    .prologue
    .line 3656
    if-nez p0, :cond_0

    .line 3657
    const/4 v9, 0x0

    .line 3733
    :goto_0
    return-object v9

    .line 3659
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 3660
    .local v2, "len":I
    if-nez v2, :cond_1

    .line 3661
    sget-object v9, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 3663
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3664
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x1

    .line 3665
    .local v6, "sizePlus1":I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v8, 0x0

    .line 3666
    .local v8, "start":I
    const/4 v4, 0x0

    .line 3667
    .local v4, "match":Z
    const/4 v1, 0x0

    .line 3668
    .local v1, "lastMatch":Z
    if-nez p1, :cond_5

    move v7, v6

    .line 3670
    .end local v6    # "sizePlus1":I
    .local v7, "sizePlus1":I
    :goto_1
    if-ge v0, v2, :cond_10

    .line 3671
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3672
    if-nez v4, :cond_2

    if-eqz p3, :cond_13

    .line 3673
    :cond_2
    const/4 v1, 0x1

    .line 3674
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    if-ne v7, p2, :cond_3

    .line 3675
    move v0, v2

    .line 3676
    const/4 v1, 0x0

    .line 3678
    :cond_3
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3679
    const/4 v4, 0x0

    .line 3681
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v8, v0

    move v7, v6

    .line 3682
    .end local v6    # "sizePlus1":I
    .restart local v7    # "sizePlus1":I
    goto :goto_1

    .line 3684
    :cond_4
    const/4 v1, 0x0

    .line 3685
    const/4 v4, 0x1

    .line 3686
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3688
    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_12

    .line 3690
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .local v5, "sep":C
    move v7, v6

    .line 3691
    .end local v6    # "sizePlus1":I
    .restart local v7    # "sizePlus1":I
    :goto_3
    if-ge v0, v2, :cond_9

    .line 3692
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_8

    .line 3693
    if-nez v4, :cond_6

    if-eqz p3, :cond_11

    .line 3694
    :cond_6
    const/4 v1, 0x1

    .line 3695
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    if-ne v7, p2, :cond_7

    .line 3696
    move v0, v2

    .line 3697
    const/4 v1, 0x0

    .line 3699
    :cond_7
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3700
    const/4 v4, 0x0

    .line 3702
    :goto_4
    add-int/lit8 v0, v0, 0x1

    move v8, v0

    move v7, v6

    .line 3703
    .end local v6    # "sizePlus1":I
    .restart local v7    # "sizePlus1":I
    goto :goto_3

    .line 3705
    :cond_8
    const/4 v1, 0x0

    .line 3706
    const/4 v4, 0x1

    .line 3707
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    move v6, v7

    .line 3730
    .end local v5    # "sep":C
    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    :goto_5
    if-nez v4, :cond_a

    if-eqz p3, :cond_b

    if-eqz v1, :cond_b

    .line 3731
    :cond_a
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3733
    :cond_b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    goto/16 :goto_0

    .line 3711
    .end local v6    # "sizePlus1":I
    .restart local v7    # "sizePlus1":I
    :goto_6
    if-ge v0, v2, :cond_10

    .line 3712
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_e

    .line 3713
    if-nez v4, :cond_c

    if-eqz p3, :cond_f

    .line 3714
    :cond_c
    const/4 v1, 0x1

    .line 3715
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    if-ne v7, p2, :cond_d

    .line 3716
    move v0, v2

    .line 3717
    const/4 v1, 0x0

    .line 3719
    :cond_d
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3720
    const/4 v4, 0x0

    .line 3722
    :goto_7
    add-int/lit8 v0, v0, 0x1

    move v8, v0

    move v7, v6

    .line 3723
    .end local v6    # "sizePlus1":I
    .restart local v7    # "sizePlus1":I
    goto :goto_6

    .line 3725
    :cond_e
    const/4 v1, 0x0

    .line 3726
    const/4 v4, 0x1

    .line 3727
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_f
    move v6, v7

    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    goto :goto_7

    .end local v6    # "sizePlus1":I
    .restart local v7    # "sizePlus1":I
    :cond_10
    move v6, v7

    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    goto :goto_5

    .end local v6    # "sizePlus1":I
    .restart local v5    # "sep":C
    .restart local v7    # "sizePlus1":I
    :cond_11
    move v6, v7

    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    goto :goto_4

    .end local v5    # "sep":C
    :cond_12
    move v7, v6

    .end local v6    # "sizePlus1":I
    .restart local v7    # "sizePlus1":I
    goto :goto_6

    :cond_13
    move v6, v7

    .end local v7    # "sizePlus1":I
    .restart local v6    # "sizePlus1":I
    goto/16 :goto_2
.end method

.method public static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .prologue
    .line 8641
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method private static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 6
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "ignoreCase"    # Z

    .prologue
    const/4 v2, 0x0

    .line 8682
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 8683
    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v2, 0x1

    .line 8688
    :cond_1
    :goto_0
    return v2

    .line 8685
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 8688
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p2

    move-object v3, p1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v2

    goto :goto_0
.end method

.method public static varargs startsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "searchStrings"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 8714
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8722
    :cond_0
    :goto_0
    return v1

    .line 8717
    :cond_1
    array-length v3, p1

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 8718
    .local v0, "searchString":Ljava/lang/CharSequence;
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8719
    const/4 v1, 0x1

    goto :goto_0

    .line 8717
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .prologue
    .line 8667
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public static strip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
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

    .prologue
    .line 778
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 781
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 782
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripAccents(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 955
    if-nez p0, :cond_0

    .line 956
    const/4 v2, 0x0

    .line 962
    :goto_0
    return-object v2

    .line 958
    :cond_0
    const-string v2, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 959
    .local v1, "pattern":Ljava/util/regex/Pattern;
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 960
    .local v0, "decomposed":Ljava/lang/StringBuilder;
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->convertRemainingAccentCharacters(Ljava/lang/StringBuilder;)V

    .line 962
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static varargs stripAll([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "strs"    # [Ljava/lang/String;

    .prologue
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

    .prologue
    .line 926
    if-eqz p0, :cond_0

    array-length v2, p0

    .local v2, "strsLen":I
    if-nez v2, :cond_2

    .end local v2    # "strsLen":I
    :cond_0
    move-object v1, p0

    .line 933
    :cond_1
    return-object v1

    .line 929
    .restart local v2    # "strsLen":I
    :cond_2
    new-array v1, v2, [Ljava/lang/String;

    .line 930
    .local v1, "newArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 931
    aget-object v3, p0, v0

    invoke-static {v3, p1}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 930
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .prologue
    .line 856
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "end":I
    if-nez v0, :cond_1

    .line 871
    .end local v0    # "end":I
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 860
    .restart local v0    # "end":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_2

    .line 861
    :goto_1
    if-eqz v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 862
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 864
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 867
    :goto_2
    if-eqz v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 868
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 871
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .prologue
    .line 811
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "strLen":I
    if-nez v1, :cond_1

    .line 826
    .end local v1    # "strLen":I
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 814
    .restart local v1    # "strLen":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 815
    .local v0, "start":I
    if-nez p1, :cond_2

    .line 816
    :goto_1
    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 817
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 819
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 822
    :goto_2
    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 823
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 826
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 748
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static stripToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 718
    if-nez p0, :cond_0

    .line 722
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 721
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 722
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p0, v0

    .end local p0    # "str":Ljava/lang/String;
    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public static substring(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # I

    .prologue
    .line 2640
    if-nez p0, :cond_0

    .line 2641
    const/4 v0, 0x0

    .line 2656
    :goto_0
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

    goto :goto_0

    .line 2656
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static substring(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2695
    if-nez p0, :cond_0

    .line 2696
    const/4 v0, 0x0

    .line 2724
    :goto_0
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

    goto :goto_0

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

    goto :goto_0
.end method

.method public static substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 2912
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2922
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 2915
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    .line 2916
    const-string p0, ""

    goto :goto_0

    .line 2918
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2919
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 2920
    const-string p0, ""

    goto :goto_0

    .line 2922
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringAfterLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 2993
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3003
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 2996
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2997
    const-string p0, ""

    goto :goto_0

    .line 2999
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 3000
    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_3

    .line 3001
    :cond_2
    const-string p0, ""

    goto :goto_0

    .line 3003
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringBefore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 2870
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 2880
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 2873
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2874
    const-string p0, ""

    goto :goto_0

    .line 2876
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2877
    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2880
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringBeforeLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 2953
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2960
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 2956
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 2957
    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2960
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 3030
    invoke-static {p0, p1, p1}, Lorg/apache/commons/lang3/StringUtils;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "open"    # Ljava/lang/String;
    .param p2, "close"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 3061
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3071
    :cond_0
    :goto_0
    return-object v2

    .line 3064
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 3065
    .local v1, "start":I
    if-eq v1, v4, :cond_0

    .line 3066
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 3067
    .local v0, "end":I
    if-eq v0, v4, :cond_0

    .line 3068
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static substringsBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "open"    # Ljava/lang/String;
    .param p2, "close"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 3097
    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3124
    :cond_0
    :goto_0
    return-object v7

    .line 3100
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 3101
    .local v6, "strLen":I
    if-nez v6, :cond_2

    .line 3102
    sget-object v7, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 3104
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 3105
    .local v0, "closeLen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 3106
    .local v3, "openLen":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3107
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 3108
    .local v4, "pos":I
    :goto_1
    sub-int v8, v6, v0

    if-ge v4, v8, :cond_3

    .line 3109
    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 3110
    .local v5, "start":I
    if-gez v5, :cond_4

    .line 3121
    .end local v5    # "start":I
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 3124
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    goto :goto_0

    .line 3113
    .restart local v5    # "start":I
    :cond_4
    add-int/2addr v5, v3

    .line 3114
    invoke-virtual {p0, p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 3115
    .local v1, "end":I
    if-ltz v1, :cond_3

    .line 3118
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3119
    add-int v4, v1, v0

    .line 3120
    goto :goto_1
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 6900
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 6922
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 6904
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 6905
    .local v6, "strLen":I
    new-array v2, v6, [I

    .line 6906
    .local v2, "newCodePoints":[I
    const/4 v4, 0x0

    .line 6907
    .local v4, "outOffset":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v5, v4

    .end local v4    # "outOffset":I
    .local v5, "outOffset":I
    :goto_1
    if-ge v0, v6, :cond_4

    .line 6908
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 6910
    .local v3, "oldCodepoint":I
    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6911
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v1

    .line 6919
    .local v1, "newCodePoint":I
    :goto_2
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "outOffset":I
    .restart local v4    # "outOffset":I
    aput v1, v2, v5

    .line 6920
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v0, v7

    move v5, v4

    .line 6921
    .end local v4    # "outOffset":I
    .restart local v5    # "outOffset":I
    goto :goto_1

    .line 6912
    .end local v1    # "newCodePoint":I
    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->isTitleCase(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 6913
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v1

    .restart local v1    # "newCodePoint":I
    goto :goto_2

    .line 6914
    .end local v1    # "newCodePoint":I
    :cond_2
    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 6915
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v1

    .restart local v1    # "newCodePoint":I
    goto :goto_2

    .line 6917
    .end local v1    # "newCodePoint":I
    :cond_3
    move v1, v3

    .restart local v1    # "newCodePoint":I
    goto :goto_2

    .line 6922
    .end local v1    # "newCodePoint":I
    .end local v3    # "oldCodepoint":I
    :cond_4
    new-instance p0, Ljava/lang/String;

    .end local p0    # "str":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-direct {p0, v2, v7, v5}, Ljava/lang/String;-><init>([III)V

    goto :goto_0
.end method

.method public static toCodePoints(Ljava/lang/CharSequence;)[I
    .locals 6
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 9400
    if-nez p0, :cond_1

    .line 9401
    const/4 v2, 0x0

    .line 9414
    :cond_0
    :goto_0
    return-object v2

    .line 9403
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 9404
    sget-object v2, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    goto :goto_0

    .line 9407
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9408
    .local v3, "s":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->codePointCount(II)I

    move-result v4

    new-array v2, v4, [I

    .line 9409
    .local v2, "result":[I
    const/4 v1, 0x0

    .line 9410
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 9411
    invoke-virtual {v3, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    aput v4, v2, v0

    .line 9412
    aget v4, v2, v0

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 9410
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toEncodedString([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 9146
    new-instance v0, Ljava/lang/String;

    if-eqz p1, :cond_0

    .end local p1    # "charset":Ljava/nio/charset/Charset;
    :goto_0
    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .restart local p1    # "charset":Ljava/nio/charset/Charset;
    :cond_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    goto :goto_0
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

    .prologue
    .line 9129
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 497
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static trimToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 549
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static trimToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 523
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, "ts":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .end local v0    # "ts":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static truncate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I

    .prologue
    .line 584
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/StringUtils;->truncate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static truncate(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "maxWidth"    # I

    .prologue
    .line 647
    if-gez p1, :cond_0

    .line 648
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "offset cannot be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 650
    :cond_0
    if-gez p2, :cond_1

    .line 651
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxWith cannot be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 653
    :cond_1
    if-nez p0, :cond_2

    .line 654
    const/4 v1, 0x0

    .line 663
    :goto_0
    return-object v1

    .line 656
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le p1, v1, :cond_3

    .line 657
    const-string v1, ""

    goto :goto_0

    .line 659
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p2, :cond_5

    .line 660
    add-int v1, p1, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 661
    .local v0, "ix":I
    :goto_1
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 660
    .end local v0    # "ix":I
    :cond_4
    add-int v0, p1, p2

    goto :goto_1

    .line 663
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 6850
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .local v7, "strLen":I
    if-nez v7, :cond_1

    .line 6869
    .end local v7    # "strLen":I
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 6854
    .restart local v7    # "strLen":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 6855
    .local v1, "firstCodepoint":I
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v3

    .line 6856
    .local v3, "newCodePoint":I
    if-eq v1, v3, :cond_0

    .line 6861
    new-array v4, v7, [I

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
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    .local v2, "inOffset":I
    :goto_1
    if-ge v2, v7, :cond_2

    .line 6865
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 6866
    .local v0, "codepoint":I
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "outOffset":I
    .restart local v5    # "outOffset":I
    aput v0, v4, v6

    .line 6867
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v2, v8

    move v6, v5

    .line 6868
    .end local v5    # "outOffset":I
    .restart local v6    # "outOffset":I
    goto :goto_1

    .line 6869
    .end local v0    # "codepoint":I
    :cond_2
    new-instance p0, Ljava/lang/String;

    .end local p0    # "str":Ljava/lang/String;
    invoke-direct {p0, v4, v9, v6}, Ljava/lang/String;-><init>([III)V

    goto :goto_0
.end method

.method public static unwrap(Ljava/lang/String;C)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapChar"    # C

    .prologue
    .line 9368
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    .line 9380
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 9372
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_0

    .line 9373
    const/4 v1, 0x0

    .line 9374
    .local v1, "startIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 9375
    .local v0, "endIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 9376
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static unwrap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapToken"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 9327
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9340
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 9331
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9332
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 9333
    .local v1, "startIndex":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 9334
    .local v0, "endIndex":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 9335
    .local v2, "wrapLength":I
    if-eq v1, v4, :cond_0

    if-eq v0, v4, :cond_0

    .line 9336
    add-int v3, v1, v2

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static upperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 6704
    if-nez p0, :cond_0

    .line 6705
    const/4 v0, 0x0

    .line 6707
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static upperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 6727
    if-nez p0, :cond_0

    .line 6728
    const/4 v0, 0x0

    .line 6730
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static wrap(Ljava/lang/String;C)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapWith"    # C

    .prologue
    .line 9172
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 9176
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static wrap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapWith"    # Ljava/lang/String;

    .prologue
    .line 9210
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9214
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static wrapIfMissing(Ljava/lang/String;C)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapWith"    # C

    .prologue
    .line 9243
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 9254
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 9246
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
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

    if-eq v1, p1, :cond_2

    .line 9248
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9250
    :cond_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9251
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, p1, :cond_3

    .line 9252
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9254
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static wrapIfMissing(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapWith"    # Ljava/lang/String;

    .prologue
    .line 9287
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9298
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 9290
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
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

    if-nez v1, :cond_2

    .line 9292
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9294
    :cond_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9295
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 9296
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9298
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
