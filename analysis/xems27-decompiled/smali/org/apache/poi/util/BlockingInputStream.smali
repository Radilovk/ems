.class public Lorg/apache/poi/util/BlockingInputStream;
.super Ljava/io/InputStream;
.source "BlockingInputStream.java"


# instance fields
.field protected is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;

    .line 43
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/apache/poi/util/BlockingInputStream;->is:Ljava/io/InputStream;

    .line 45
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/apache/poi/util/BlockingInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/apache/poi/util/BlockingInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 57
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readLimit"    # I

    .line 61
    iget-object v0, p0, Lorg/apache/poi/util/BlockingInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 62
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/poi/util/BlockingInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/apache/poi/util/BlockingInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 4
    .param p1, "bf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "i":I
    const/16 v1, 0x1203

    .line 89
    .local v1, "b":I
    :goto_0
    array-length v2, p1

    const/4 v3, -0x1

    if-ge v0, v2, :cond_1

    .line 91
    iget-object v2, p0, Lorg/apache/poi/util/BlockingInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 92
    if-ne v1, v3, :cond_0

    .line 93
    goto :goto_1

    .line 94
    :cond_0
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    int-to-byte v3, v1

    aput-byte v3, p1, v0

    move v0, v2

    goto :goto_0

    .line 96
    .end local v2    # "i":I
    .restart local v0    # "i":I
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    if-ne v1, v3, :cond_2

    .line 97
    return v3

    .line 98
    :cond_2
    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "bf"    # [B
    .param p2, "s"    # I
    .param p3, "l"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/apache/poi/util/BlockingInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/apache/poi/util/BlockingInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 111
    return-void
.end method

.method public skip(J)J
    .locals 2
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/apache/poi/util/BlockingInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
