.class public Lorg/apache/commons/lang3/text/translate/LookupTranslator;
.super Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
.source "LookupTranslator.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final longest:I

.field private final lookupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final prefixSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private final shortest:I


# direct methods
.method public varargs constructor <init>([[Ljava/lang/CharSequence;)V
    .locals 10
    .param p1, "lookup"    # [[Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x0

    .line 49
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;-><init>()V

    .line 50
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->lookupMap:Ljava/util/HashMap;

    .line 51
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->prefixSet:Ljava/util/HashSet;

    .line 52
    const v1, 0x7fffffff

    .line 53
    .local v1, "_shortest":I
    const/4 v0, 0x0

    .line 54
    .local v0, "_longest":I
    if-eqz p1, :cond_2

    .line 55
    array-length v6, p1

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v2, p1, v4

    .line 56
    .local v2, "seq":[Ljava/lang/CharSequence;
    iget-object v7, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->lookupMap:Ljava/util/HashMap;

    aget-object v8, v2, v5

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v2, v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v7, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->prefixSet:Ljava/util/HashSet;

    aget-object v8, v2, v5

    invoke-interface {v8, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    aget-object v7, v2, v5

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 59
    .local v3, "sz":I
    if-ge v3, v1, :cond_0

    .line 60
    move v1, v3

    .line 62
    :cond_0
    if-le v3, v0, :cond_1

    .line 63
    move v0, v3

    .line 55
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 67
    .end local v2    # "seq":[Ljava/lang/CharSequence;
    .end local v3    # "sz":I
    :cond_2
    iput v1, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->shortest:I

    .line 68
    iput v0, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->longest:I

    .line 69
    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 6
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I
    .param p3, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v4, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->prefixSet:Ljava/util/HashSet;

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 78
    iget v1, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->longest:I

    .line 79
    .local v1, "max":I
    iget v4, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->longest:I

    add-int/2addr v4, p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 80
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v1, v4, p2

    .line 83
    :cond_0
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->shortest:I

    if-lt v0, v4, :cond_2

    .line 84
    add-int v4, p2, v0

    invoke-interface {p1, p2, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 85
    .local v3, "subSeq":Ljava/lang/CharSequence;
    iget-object v4, p0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;->lookupMap:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 87
    .local v2, "result":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 88
    invoke-virtual {p3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 93
    .end local v0    # "i":I
    .end local v1    # "max":I
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "subSeq":Ljava/lang/CharSequence;
    :goto_1
    return v0

    .line 83
    .restart local v0    # "i":I
    .restart local v1    # "max":I
    .restart local v2    # "result":Ljava/lang/String;
    .restart local v3    # "subSeq":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 93
    .end local v0    # "i":I
    .end local v1    # "max":I
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "subSeq":Ljava/lang/CharSequence;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
