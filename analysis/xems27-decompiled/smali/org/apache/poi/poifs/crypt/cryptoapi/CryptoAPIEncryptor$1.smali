.class Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$1;
.super Ljava/lang/Object;
.source "CryptoAPIEncryptor.java"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

.field final synthetic val$header:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;

.field final synthetic val$info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

.field final synthetic val$verifier:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;


# direct methods
.method constructor <init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$1;->this$0:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$1;->val$info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    iput-object p3, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$1;->val$header:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;

    iput-object p4, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$1;->val$verifier:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 1
    .param p1, "bos"    # Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    .line 206
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$1;->val$info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMajor()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    .line 207
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$1;->val$info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMinor()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    .line 208
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$1;->val$header:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;->write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    .line 209
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$1;->val$verifier:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;->write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    .line 210
    return-void
.end method
