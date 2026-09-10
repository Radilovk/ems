.class Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$EncryptedPackageWriter;
.super Ljava/lang/Object;
.source "ChunkedCipherOutputStream.java"

# interfaces
.implements Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncryptedPackageWriter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;


# direct methods
.method private constructor <init>(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$EncryptedPackageWriter;->this$0:Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;
    .param p2, "x1"    # Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$1;

    .line 145
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$EncryptedPackageWriter;-><init>(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;)V

    return-void
.end method


# virtual methods
.method public processPOIFSWriterEvent(Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;)V
    .locals 7
    .param p1, "event"    # Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;

    .line 148
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;->getStream()Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;

    move-result-object v0

    .line 149
    .local v0, "os":Ljava/io/OutputStream;
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$EncryptedPackageWriter;->this$0:Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    iget v1, v1, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunkSize:I

    new-array v1, v1, [B

    .line 155
    .local v1, "buf":[B
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$EncryptedPackageWriter;->this$0:Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    invoke-static {v2}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->access$100(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Lorg/apache/poi/util/LittleEndian;->putLong([BIJ)V

    .line 156
    const/16 v2, 0x8

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 158
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$EncryptedPackageWriter;->this$0:Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    invoke-static {v3}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->access$200(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 160
    .local v2, "fis":Ljava/io/FileInputStream;
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    move v5, v3

    .local v5, "readBytes":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 161
    invoke-virtual {v0, v1, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 165
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 167
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$EncryptedPackageWriter;->this$0:Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    invoke-static {v3}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->access$200(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    nop

    .line 171
    .end local v0    # "os":Ljava/io/OutputStream;
    .end local v1    # "buf":[B
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "readBytes":I
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v1, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
