.class public Lcom/isaigu/gymapp/utils/IOUtil;
.super Ljava/lang/Object;
.source "IOUtil.java"


# static fields
.field public static debugMsg:Z

.field private static final logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/isaigu/gymapp/utils/IOUtil;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/utils/IOUtil;->logger:Lorg/slf4j/Logger;

    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/utils/IOUtil;->debugMsg:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "close"    # Ljava/io/Closeable;

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 38
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e1":Ljava/lang/Exception;
    sget-object v1, Lcom/isaigu/gymapp/utils/IOUtil;->logger:Lorg/slf4j/Logger;

    const-string v2, ""

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static close(Ljava/lang/AutoCloseable;)V
    .locals 3
    .param p0, "c"    # Ljava/lang/AutoCloseable;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 28
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e1":Ljava/lang/Exception;
    sget-object v1, Lcom/isaigu/gymapp/utils/IOUtil;->logger:Lorg/slf4j/Logger;

    const-string v2, ""

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static closeIs(Ljava/io/InputStream;)V
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 65
    if-nez p0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 68
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e1":Ljava/io/IOException;
    sget-object v1, Lcom/isaigu/gymapp/utils/IOUtil;->logger:Lorg/slf4j/Logger;

    const-string v2, ""

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static closeOs(Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 45
    if-nez p0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 48
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e1":Ljava/io/IOException;
    sget-object v1, Lcom/isaigu/gymapp/utils/IOUtil;->logger:Lorg/slf4j/Logger;

    const-string v2, ""

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static closeRead(Ljava/io/Reader;)V
    .locals 3
    .param p0, "read"    # Ljava/io/Reader;

    .prologue
    .line 55
    if-nez p0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 58
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e1":Ljava/io/IOException;
    sget-object v1, Lcom/isaigu/gymapp/utils/IOUtil;->logger:Lorg/slf4j/Logger;

    const-string v2, ""

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static closeWriter(Ljava/io/Writer;)V
    .locals 3
    .param p0, "writer"    # Ljava/io/Writer;

    .prologue
    .line 15
    if-nez p0, :cond_0

    .line 22
    :goto_0
    return-void

    .line 18
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .local v0, "e1":Ljava/io/IOException;
    sget-object v1, Lcom/isaigu/gymapp/utils/IOUtil;->logger:Lorg/slf4j/Logger;

    const-string v2, ""

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static readFile(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v1, 0x0

    .line 77
    .local v1, "isr":Ljava/io/InputStreamReader;
    if-nez p1, :cond_0

    :try_start_0
    const-string/jumbo v5, "utf-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    .line 78
    :cond_0
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .end local v1    # "isr":Ljava/io/InputStreamReader;
    .local v2, "isr":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    .local v3, "s":Ljava/lang/StringBuffer;
    const/16 v5, 0x400

    invoke-static {v5}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 81
    .local v0, "bf":Ljava/nio/CharBuffer;
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStreamReader;->read(Ljava/nio/CharBuffer;)I

    move-result v5

    if-lez v5, :cond_1

    .line 82
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 83
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    const/16 v5, 0x400

    invoke-static {v5}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 90
    .local v4, "str":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 91
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    :cond_2
    return-object v4

    .line 90
    .end local v0    # "bf":Ljava/nio/CharBuffer;
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .end local v3    # "s":Ljava/lang/StringBuffer;
    .end local v4    # "str":Ljava/lang/String;
    .restart local v1    # "isr":Ljava/io/InputStreamReader;
    :catchall_0
    move-exception v5

    :goto_1
    if-eqz v1, :cond_3

    .line 91
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    :cond_3
    throw v5

    .line 90
    .end local v1    # "isr":Ljava/io/InputStreamReader;
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "isr":Ljava/io/InputStreamReader;
    goto :goto_1
.end method

.method public static readFile(Ljava/io/File;)[B
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 99
    .local v0, "data":[B
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v3, v4

    new-array v0, v3, [B

    .line 101
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 106
    :cond_0
    return-object v0

    .line 103
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v3

    :goto_0
    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_1
    throw v3

    .line 103
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method public static writeFile(Ljava/io/File;[B)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/utils/IOUtil;->writeFile(Ljava/io/File;[BZ)V

    .line 115
    return-void
.end method

.method public static writeFile(Ljava/io/File;[BZ)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 124
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 125
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 130
    :cond_0
    return-void

    .line 127
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    throw v2

    .line 127
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public static writeFile(Ljava/lang/String;[B)V
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/utils/IOUtil;->writeFile(Ljava/io/File;[B)V

    .line 111
    return-void
.end method

.method public static writeFile(Ljava/lang/String;[BZ)V
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lcom/isaigu/gymapp/utils/IOUtil;->writeFile(Ljava/io/File;[BZ)V

    .line 119
    return-void
.end method
