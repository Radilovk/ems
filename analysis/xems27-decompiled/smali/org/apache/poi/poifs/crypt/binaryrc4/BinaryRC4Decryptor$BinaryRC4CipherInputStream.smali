.class Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor$BinaryRC4CipherInputStream;
.super Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;
.source "BinaryRC4Decryptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BinaryRC4CipherInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;Lorg/apache/poi/poifs/filesystem/DocumentInputStream;J)V
    .locals 0
    .param p2, "stream"    # Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .param p3, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor$BinaryRC4CipherInputStream;->this$0:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;

    .line 49
    const/16 p1, 0x200

    invoke-direct {p0, p2, p3, p4, p1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;-><init>(Lorg/apache/poi/util/LittleEndianInput;JI)V

    .line 50
    return-void
.end method


# virtual methods
.method protected initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;
    .locals 3
    .param p1, "existing"    # Ljavax/crypto/Cipher;
    .param p2, "block"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor$BinaryRC4CipherInputStream;->this$0:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;

    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->access$000(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;)Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor$BinaryRC4CipherInputStream;->this$0:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p1, p2, v0, v1, v2}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method
