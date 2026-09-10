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

    .prologue
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

    .prologue
    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;

    invoke-direct {v2, p0}, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;-><init>(Ljava/lang/String;)V

    .line 89
    .local v2, "tokenizer":Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;
    :goto_0
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->getNextToken()Ljava/lang/String;

    move-result-object v1

    .local v1, "token":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 90
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method


# virtual methods
.method public getNextToken()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x27

    .line 62
    iget v3, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    iget-object v4, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->format:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 63
    const/4 v3, 0x0

    .line 81
    :goto_0
    return-object v3

    .line 65
    :cond_0
    iget v2, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    .line 66
    .local v2, "subStart":I
    iget-object v3, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->format:Ljava/lang/String;

    iget v4, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 67
    .local v1, "curChar":C
    iget v3, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    .line 68
    if-ne v1, v5, :cond_3

    .line 69
    :goto_1
    iget v3, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    iget-object v4, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->format:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->format:Ljava/lang/String;

    iget v4, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v5, :cond_1

    .line 70
    iget v3, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    goto :goto_1

    .line 72
    :cond_1
    iget v3, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    iget-object v4, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->format:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 73
    iget v3, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    .line 81
    :cond_2
    iget-object v3, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->format:Ljava/lang/String;

    iget v4, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 76
    :cond_3
    move v0, v1

    .line 77
    .local v0, "activeChar":C
    :goto_2
    iget v3, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    iget-object v4, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->format:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v3, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->format:Ljava/lang/String;

    iget v4, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v0, :cond_2

    .line 78
    iget v3, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v0, "result":Ljava/lang/StringBuilder;
    new-instance v2, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;

    iget-object v3, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->format:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;-><init>(Ljava/lang/String;)V

    .line 102
    .local v2, "tokenizer":Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;
    :goto_0
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->getNextToken()Ljava/lang/String;

    move-result-object v1

    .local v1, "token":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 104
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_0
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
