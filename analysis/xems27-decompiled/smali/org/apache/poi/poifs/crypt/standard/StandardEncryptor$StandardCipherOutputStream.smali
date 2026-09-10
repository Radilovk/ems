.class public Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;
.super Ljava/io/FilterOutputStream;
.source "StandardEncryptor.java"

# interfaces
.implements Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StandardCipherOutputStream"
.end annotation


# instance fields
.field protected countBytes:J

.field protected final dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

.field protected final fileOut:Ljava/io/File;

.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 4
    .param p2, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;

    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 130
    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 131
    const-string v0, "encrypted_package"

    const-string v1, "crypt"

    invoke-static {v0, v1}, Lorg/apache/poi/util/TempFile;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->fileOut:Ljava/io/File;

    .line 132
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->fileOut:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 144
    .local v0, "rawStream":Ljava/io/FileOutputStream;
    new-instance v1, Ljavax/crypto/CipherOutputStream;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    const-string v3, "PKCS5Padding"

    invoke-static {p1, v2, v3}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->access$000(Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    move-object p1, v1

    .line 146
    .local p1, "cryptStream":Ljavax/crypto/CipherOutputStream;
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->out:Ljava/io/OutputStream;

    .line 147
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 164
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->writeToPOIFS()V

    .line 165
    return-void
.end method

.method public processPOIFSWriterEvent(Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;)V
    .locals 3
    .param p1, "event"    # Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;

    .line 175
    :try_start_0
    new-instance v0, Lorg/apache/poi/util/LittleEndianOutputStream;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;->getStream()Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/util/LittleEndianOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 181
    .local v0, "leos":Lorg/apache/poi/util/LittleEndianOutputStream;
    iget-wide v1, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->countBytes:J

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeLong(J)V

    .line 183
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->fileOut:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 184
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {v1, v0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 185
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 186
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->fileOut:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 188
    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v0    # "leos":Lorg/apache/poi/util/LittleEndianOutputStream;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    nop

    .line 192
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v1, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 158
    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->countBytes:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->countBytes:J

    .line 159
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 152
    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->countBytes:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->countBytes:J

    .line 153
    return-void
.end method

.method writeToPOIFS()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->fileOut:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    long-to-int v1, v0

    .line 169
    .local v1, "oleStreamSize":I
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;->dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    const-string v2, "EncryptedPackage"

    invoke-virtual {v0, v2, v1, p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSWriterListener;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 171
    return-void
.end method
