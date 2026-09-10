.class public Lorg/apache/poi/util/HexRead;
.super Ljava/lang/Object;
.source "HexRead.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readData(Ljava/io/InputStream;I)[B
    .locals 11
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "eofChar"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    .line 110
    const/4 v3, 0x0

    .line 111
    .local v3, "characterCount":I
    const/4 v0, 0x0

    .line 112
    .local v0, "b":B
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v2, "bytes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v5, 0x0

    .line 114
    .local v5, "done":Z
    :cond_0
    :goto_0
    if-nez v5, :cond_1

    .line 116
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 117
    .local v4, "count":I
    const/16 v1, 0x61

    .line 118
    .local v1, "baseChar":C
    if-ne v4, p1, :cond_2

    .line 166
    .end local v1    # "baseChar":C
    .end local v4    # "count":I
    :cond_1
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Byte;

    invoke-interface {v2, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Byte;

    .line 167
    .local v7, "polished":[Ljava/lang/Byte;
    array-length v9, v7

    new-array v8, v9, [B

    .line 168
    .local v8, "rval":[B
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    array-length v9, v7

    if-ge v6, v9, :cond_3

    .line 170
    aget-object v9, v7, v6

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    aput-byte v9, v8, v6

    .line 168
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 119
    .end local v6    # "j":I
    .end local v7    # "polished":[Ljava/lang/Byte;
    .end local v8    # "rval":[B
    .restart local v1    # "baseChar":C
    .restart local v4    # "count":I
    :cond_2
    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 160
    :sswitch_0
    const/4 v5, 0x1

    .line 161
    goto :goto_0

    .line 122
    :sswitch_1
    invoke-static {p0}, Lorg/apache/poi/util/HexRead;->readToEOL(Ljava/io/InputStream;)V

    goto :goto_0

    .line 126
    :sswitch_2
    shl-int/lit8 v9, v0, 0x4

    int-to-byte v0, v9

    .line 127
    add-int/lit8 v9, v4, -0x30

    int-to-byte v9, v9

    add-int/2addr v9, v0

    int-to-byte v0, v9

    .line 128
    add-int/lit8 v3, v3, 0x1

    .line 129
    if-ne v3, v10, :cond_0

    .line 131
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    const/4 v3, 0x0

    .line 133
    const/4 v0, 0x0

    goto :goto_0

    .line 142
    :sswitch_3
    const/16 v1, 0x41

    .line 149
    :sswitch_4
    shl-int/lit8 v9, v0, 0x4

    int-to-byte v0, v9

    .line 150
    add-int/lit8 v9, v4, 0xa

    sub-int/2addr v9, v1

    int-to-byte v9, v9

    add-int/2addr v9, v0

    int-to-byte v0, v9

    .line 151
    add-int/lit8 v3, v3, 0x1

    .line 152
    if-ne v3, v10, :cond_0

    .line 154
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    const/4 v3, 0x0

    .line 156
    const/4 v0, 0x0

    goto :goto_0

    .line 172
    .end local v1    # "baseChar":C
    .end local v4    # "count":I
    .restart local v6    # "j":I
    .restart local v7    # "polished":[Ljava/lang/Byte;
    .restart local v8    # "rval":[B
    :cond_3
    return-object v8

    .line 119
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x23 -> :sswitch_1
        0x30 -> :sswitch_2
        0x31 -> :sswitch_2
        0x32 -> :sswitch_2
        0x33 -> :sswitch_2
        0x34 -> :sswitch_2
        0x35 -> :sswitch_2
        0x36 -> :sswitch_2
        0x37 -> :sswitch_2
        0x38 -> :sswitch_2
        0x39 -> :sswitch_2
        0x41 -> :sswitch_3
        0x42 -> :sswitch_3
        0x43 -> :sswitch_3
        0x44 -> :sswitch_3
        0x45 -> :sswitch_3
        0x46 -> :sswitch_3
        0x61 -> :sswitch_4
        0x62 -> :sswitch_4
        0x63 -> :sswitch_4
        0x64 -> :sswitch_4
        0x65 -> :sswitch_4
        0x66 -> :sswitch_4
    .end sparse-switch
.end method

.method public static readData(Ljava/io/InputStream;Ljava/lang/String;)[B
    .locals 6
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "section"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 69
    .local v2, "sectionText":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 70
    .local v1, "inSection":Z
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 71
    .local v0, "c":I
    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 73
    sparse-switch v0, :sswitch_data_0

    .line 89
    if-eqz v1, :cond_0

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 91
    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    .line 76
    :sswitch_0
    const/4 v1, 0x1

    .line 77
    goto :goto_1

    .line 80
    :sswitch_1
    const/4 v1, 0x0

    .line 81
    new-instance v2, Ljava/lang/StringBuffer;

    .end local v2    # "sectionText":Ljava/lang/StringBuffer;
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 82
    .restart local v2    # "sectionText":Ljava/lang/StringBuffer;
    goto :goto_1

    .line 84
    :sswitch_2
    const/4 v1, 0x0

    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x5b

    invoke-static {p0, v3}, Lorg/apache/poi/util/HexRead;->readData(Ljava/io/InputStream;I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 96
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v3

    .line 86
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuffer;

    .end local v2    # "sectionText":Ljava/lang/StringBuffer;
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .restart local v2    # "sectionText":Ljava/lang/StringBuffer;
    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 98
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Section \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 96
    .end local v0    # "c":I
    .end local v1    # "inSection":Z
    .end local v2    # "sectionText":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v3

    .line 73
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_1
        0x5b -> :sswitch_0
        0x5d -> :sswitch_2
    .end sparse-switch
.end method

.method public static readData(Ljava/lang/String;)[B
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

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

    .prologue
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
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 177
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lorg/apache/poi/util/HexRead;->readData(Ljava/io/InputStream;I)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

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

    .prologue
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
