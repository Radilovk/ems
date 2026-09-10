.class public abstract Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ChunkedCipherOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$EncryptedPackageWriter;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final _chunk:[B

.field private _cipher:Ljavax/crypto/Cipher;

.field private _pos:J

.field protected final chunkBits:I

.field protected final chunkMask:I

.field protected final chunkSize:I

.field private final dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

.field private final fileOut:Ljava/io/File;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;I)V
    .locals 3
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .param p2, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 50
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->_pos:J

    .line 55
    iput p2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunkSize:I

    .line 56
    add-int/lit8 v1, p2, -0x1

    iput v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunkMask:I

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunkBits:I

    .line 58
    new-array v1, p2, [B

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->_chunk:[B

    .line 60
    const-string v1, "encrypted_package"

    const-string v2, "crypt"

    invoke-static {v1, v2}, Lorg/apache/poi/util/TempFile;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->fileOut:Ljava/io/File;

    .line 61
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 62
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->fileOut:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->out:Ljava/io/OutputStream;

    .line 63
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 64
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->initCipherForBlock(Ljavax/crypto/Cipher;IZ)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->_cipher:Ljavax/crypto/Cipher;

    .line 65
    return-void
.end method

.method static synthetic access$100(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    .line 41
    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->_pos:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    .line 41
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->fileOut:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method protected abstract calculateChecksum(Ljava/io/File;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->writeChunk()V

    .line 134
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 136
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->fileOut:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    long-to-int v1, v0

    .line 137
    .local v1, "oleStreamSize":I
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->fileOut:Ljava/io/File;

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->calculateChecksum(Ljava/io/File;I)V

    .line 138
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    const-string v2, "EncryptedPackage"

    new-instance v3, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$EncryptedPackageWriter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$EncryptedPackageWriter;-><init>(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$1;)V

    invoke-virtual {v0, v2, v1, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSWriterListener;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 139
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->fileOut:Ljava/io/File;

    invoke-virtual {p0, v0, v2}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v1    # "oleStreamSize":I
    nop

    .line 143
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected abstract createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method protected abstract initCipherForBlock(Ljavax/crypto/Cipher;IZ)Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->write([B)V

    .line 78
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->write([BII)V

    .line 82
    return-void
.end method

.method public write([BII)V
    .locals 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    if-nez p3, :cond_0

    return-void

    .line 88
    :cond_0
    if-ltz p3, :cond_3

    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_3

    .line 92
    :goto_0
    if-lez p3, :cond_2

    .line 93
    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->_pos:J

    iget v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunkMask:I

    int-to-long v2, v2

    and-long/2addr v0, v2

    long-to-int v1, v0

    .line 94
    .local v1, "posInChunk":I
    iget v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunkSize:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 95
    .local v0, "nextLen":I
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->_chunk:[B

    invoke-static {p1, p2, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    iget-wide v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->_pos:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->_pos:J

    .line 97
    add-int/2addr p2, v0

    .line 98
    sub-int/2addr p3, v0

    .line 99
    iget v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunkMask:I

    int-to-long v4, v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->writeChunk()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_1

    .line 102
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 106
    .end local v0    # "nextLen":I
    .end local v1    # "posInChunk":I
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 107
    :cond_2
    return-void

    .line 89
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not enough bytes in your input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected writeChunk()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 110
    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->_pos:J

    iget v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunkMask:I

    int-to-long v2, v2

    and-long/2addr v2, v0

    long-to-int v3, v2

    .line 113
    .local v3, "posInChunk":I
    iget v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunkBits:I

    shr-long/2addr v0, v2

    long-to-int v1, v0

    .line 115
    .local v1, "index":I
    if-nez v3, :cond_0

    .line 116
    add-int/lit8 v1, v1, -0x1

    .line 117
    iget v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunkSize:I

    .line 118
    const/4 v0, 0x0

    .local v0, "lastChunk":Z
    goto :goto_0

    .line 121
    .end local v0    # "lastChunk":Z
    :cond_0
    const/4 v0, 0x1

    .line 124
    .restart local v0    # "lastChunk":Z
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->_cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0, v2, v1, v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->initCipherForBlock(Ljavax/crypto/Cipher;IZ)Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->_cipher:Ljavax/crypto/Cipher;

    .line 126
    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->_chunk:[B

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3, v4}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    move-result v2

    .line 127
    .local v2, "ciLen":I
    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->out:Ljava/io/OutputStream;

    iget-object v6, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->_chunk:[B

    invoke-virtual {v4, v6, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 128
    return-void
.end method
