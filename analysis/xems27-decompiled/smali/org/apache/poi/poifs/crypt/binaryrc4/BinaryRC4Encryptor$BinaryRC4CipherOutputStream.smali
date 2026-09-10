.class public Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$BinaryRC4CipherOutputStream;
.super Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;
.source "BinaryRC4Encryptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BinaryRC4CipherOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 0
    .param p2, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$BinaryRC4CipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;

    .line 62
    const/16 p1, 0x200

    invoke-direct {p0, p2, p1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;I)V

    .line 63
    return-void
.end method


# virtual methods
.method protected calculateChecksum(Ljava/io/File;I)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "i"    # I

    .line 53
    return-void
.end method

.method protected createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/io/File;)V
    .locals 1
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .param p2, "tmpFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$BinaryRC4CipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 58
    return-void
.end method

.method protected initCipherForBlock(Ljavax/crypto/Cipher;IZ)Ljavax/crypto/Cipher;
    .locals 3
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .param p2, "block"    # I
    .param p3, "lastChunk"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$BinaryRC4CipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;

    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->access$000(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;)Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$BinaryRC4CipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, p2, v0, v1, v2}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method
