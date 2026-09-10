.class public Lorg/apache/commons/lang3/text/translate/AggregateTranslator;
.super Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
.source "AggregateTranslator.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final translators:[Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;


# direct methods
.method public varargs constructor <init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V
    .locals 1
    .param p1, "translators"    # [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;-><init>()V

    .line 44
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    iput-object v0, p0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;->translators:[Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 45
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
    const/4 v2, 0x0

    .line 54
    iget-object v4, p0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;->translators:[Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 55
    .local v1, "translator":Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I

    move-result v0

    .line 56
    .local v0, "consumed":I
    if-eqz v0, :cond_0

    .line 60
    .end local v0    # "consumed":I
    .end local v1    # "translator":Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
    :goto_1
    return v0

    .line 54
    .restart local v0    # "consumed":I
    .restart local v1    # "translator":Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "consumed":I
    .end local v1    # "translator":Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
    :cond_1
    move v0, v2

    .line 60
    goto :goto_1
.end method
