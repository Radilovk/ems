.class public Lorg/apache/poi/util/HexRead;
.super Ljava/lang/Object;
.source "HexRead.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readData(Ljava/io/InputStream;I)[B
    .locals 8
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "eofChar"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "characterCount":I
    const/4 v1, 0x0

    .line 112
    .local v1, "b":B
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v2, "bytes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v3, 0x0

    .line 114
    .local v3, "done":Z
    :goto_0
    if-nez v3, :cond_4

    .line 116
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 117
    .local v4, "count":I
    const/16 v5, 0x61

    .line 118
    .local v5, "baseChar":C
    if-ne v4, p1, :cond_0

    goto :goto_2

    .line 119
    :cond_0
    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    const/16 v6, 0x23

    if-eq v4, v6, :cond_1

    const/4 v6, 0x2

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    goto :goto_1

    .line 142
    :pswitch_0
    const/16 v5, 0x41

    .line 149
    :pswitch_1
    shl-int/lit8 v7, v1, 0x4

    int-to-byte v1, v7

    .line 150
    add-int/lit8 v7, v4, 0xa

    sub-int/2addr v7, v5

    int-to-byte v7, v7

    add-int/2addr v7, v1

    int-to-byte v1, v7

    .line 151
    add-int/lit8 v0, v0, 0x1

    .line 152
    if-ne v0, v6, :cond_3

    .line 154
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    const/4 v0, 0x0

    .line 156
    const/4 v1, 0x0

    goto :goto_1

    .line 126
    :pswitch_2
    shl-int/lit8 v7, v1, 0x4

    int-to-byte v1, v7

    .line 127
    add-int/lit8 v7, v4, -0x30

    int-to-byte v7, v7

    add-int/2addr v7, v1

    int-to-byte v1, v7

    .line 128
    add-int/lit8 v0, v0, 0x1

    .line 129
    if-ne v0, v6, :cond_3

    .line 131
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    const/4 v0, 0x0

    .line 133
    const/4 v1, 0x0

    goto :goto_1

    .line 122
    :cond_1
    invoke-static {p0}, Lorg/apache/poi/util/HexRead;->readToEOL(Ljava/io/InputStream;)V

    .line 123
    goto :goto_1

    .line 160
    :cond_2
    const/4 v3, 0x1

    .line 161
    nop

    .line 165
    .end local v4    # "count":I
    .end local v5    # "baseChar":C
    :cond_3
    :goto_1
    goto :goto_0

    .line 166
    :cond_4
    :goto_2
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Byte;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Byte;

    .line 167
    .local v4, "polished":[Ljava/lang/Byte;
    array-length v5, v4

    new-array v5, v5, [B

    .line 168
    .local v5, "rval":[B
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    array-length v7, v4

    if-ge v6, v7, :cond_5

    .line 170
    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    aput-byte v7, v5, v6

    .line 168
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 172
    .end local v6    # "j":I
    :cond_5
    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static readData(Ljava/io/InputStream;Ljava/lang/String;)[B
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "section"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 69
    .local v0, "sectionText":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 70
    .local v1, "inSection":Z
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 71
    .local v2, "c":I
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 73
    const/16 v3, 0xa

    if-eq v2, v3, :cond_3

    const/16 v3, 0xd

    if-eq v2, v3, :cond_3

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_2

    const/16 v4, 0x5d

    if-eq v2, v4, :cond_0

    .line 89
    if-eqz v1, :cond_4

    int-to-char v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 84
    :cond_0
    const/4 v1, 0x0

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p0, v3}, Lorg/apache/poi/util/HexRead;->readData(Ljava/io/InputStream;I)[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v3

    .line 86
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v0, v3

    .line 87
    goto :goto_1

    .line 76
    :cond_2
    const/4 v1, 0x1

    .line 77
    goto :goto_1

    .line 80
    :cond_3
    const/4 v1, 0x0

    .line 81
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v0, v3

    .line 82
    nop

    .line 91
    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    goto :goto_0

    .line 96
    .end local v0    # "sectionText":Ljava/lang/StringBuffer;
    .end local v1    # "inSection":Z
    .end local v2    # "c":I
    :cond_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 97
    nop

    .line 98
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Section \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public static readData(Ljava/lang/String;)[B
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 47
    .local v1, "stream":Ljava/io/FileInputStream;
    const/4 v2, -0x1

    :try_start_0
    invoke-static {v1, v2}, Lorg/apache/poi/util/HexRead;->readData(Ljava/io/InputStream;I)[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v2
.end method

.method public static readData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "section"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 104
    .local v1, "stream":Ljava/io/FileInputStream;
    invoke-static {v1, p1}, Lorg/apache/poi/util/HexRead;->readData(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v2

    return-object v2
.end method

.method public static readFromString(Ljava/lang/String;)[B
    .locals 2
    .param p0, "data"    # Ljava/lang/String;

    .line 177
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lorg/apache/poi/util/HexRead;->readData(Ljava/io/InputStream;I)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static readToEOL(Ljava/io/InputStream;)V
    .locals 2
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 186
    .local v0, "c":I
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 188
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    .line 190
    :cond_0
    return-void
.end method
