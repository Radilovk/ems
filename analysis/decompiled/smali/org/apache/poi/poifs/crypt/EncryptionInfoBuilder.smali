.class public interface abstract Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;
.super Ljava/lang/Object;
.source "EncryptionInfoBuilder.java"


# virtual methods
.method public abstract getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;
.end method

.method public abstract getEncryptor()Lorg/apache/poi/poifs/crypt/Encryptor;
.end method

.method public abstract getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;
.end method

.method public abstract getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
.end method

.method public abstract initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
.end method

.method public abstract initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/util/LittleEndianInput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
