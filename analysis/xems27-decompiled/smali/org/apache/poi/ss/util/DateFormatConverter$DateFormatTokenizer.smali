.class public Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;
.super Ljava/lang/Object;
.source "DateFormatConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/util/DateFormatConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateFormatTokenizer"
.end annotation


# instance fields
.field format:Ljava/lang/String;

.field pos:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->format:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static tokenize(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "format"    # Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;

    invoke-direct {v1, p0}, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, "tokenizer":Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;
    :goto_0
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->getNextToken()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "token":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 90
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method


# virtual methods
.method public getNextToken()Ljava/lang/String;
    .locals 5

    .line 62
    iget v0, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    iget-object v1, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->format:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_0
    iget v0, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    .line 66
    .local v0, "subStart":I
    iget-object v1, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->format:Ljava/lang/String;

    iget v2, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 67
    .local v1, "curChar":C
    iget v2, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    .line 68
    const/16 v2, 0x27

    if-ne v1, v2, :cond_2

    .line 69
    :goto_0
    iget v3, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    iget-object v4, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->format:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->format:Ljava/lang/String;

    iget v4, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v1, v3

    if-eq v3, v2, :cond_1

    .line 70
    iget v3, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    goto :goto_0

    .line 72
    :cond_1
    iget v2, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    iget-object v3, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->format:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 73
    iget v2, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    goto :goto_2

    .line 76
    :cond_2
    move v2, v1

    .line 77
    .local v2, "activeChar":C
    :goto_1
    iget v3, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    iget-object v4, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->format:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v3, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->format:Ljava/lang/String;

    iget v4, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v1, v3

    if-ne v3, v2, :cond_3

    .line 78
    iget v3, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    goto :goto_1

    .line 81
    .end local v2    # "activeChar":C
    :cond_3
    :goto_2
    iget-object v2, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->format:Ljava/lang/String;

    iget v3, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v0, "result":Ljava/lang/StringBuilder;
    new-instance v1, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;

    iget-object v2, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->format:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;-><init>(Ljava/lang/String;)V

    .line 102
    .local v1, "tokenizer":Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;
    :goto_0
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->getNextToken()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "token":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 104
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_0
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
