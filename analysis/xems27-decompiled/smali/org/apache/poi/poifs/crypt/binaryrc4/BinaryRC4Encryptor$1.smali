.class Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$1;
.super Ljava/lang/Object;
.source "BinaryRC4Encryptor.java"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;

.field final synthetic val$header:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;

.field final synthetic val$info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

.field final synthetic val$verifier:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;


# direct methods
.method constructor <init>(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$1;->this$0:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$1;->val$info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    iput-object p3, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$1;->val$header:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;

    iput-object p4, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$1;->val$verifier:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 1
    .param p1, "bos"    # Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    .line 119
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$1;->val$info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMajor()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    .line 120
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$1;->val$info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMinor()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    .line 121
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$1;->val$header:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;->write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    .line 122
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$1;->val$verifier:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    .line 123
    return-void
.end method
