.class public abstract Lorg/apache/poi/poifs/crypt/Encryptor;
.super Ljava/lang/Object;
.source "Encryptor.java"


# static fields
.field protected static final DEFAULT_POIFS_ENTRY:Ljava/lang/String; = "EncryptedPackage"


# instance fields
.field private secretKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)Lorg/apache/poi/poifs/crypt/Encryptor;
    .locals 1
    .param p0, "info"    # Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    .line 48
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptor()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract confirmPassword(Ljava/lang/String;)V
.end method

.method public abstract confirmPassword(Ljava/lang/String;[B[B[B[B[B)V
.end method

.method public abstract getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Ljava/io/OutputStream;
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)Ljava/io/OutputStream;
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getSecretKey()Ljavax/crypto/SecretKey;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/Encryptor;->secretKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method protected setSecretKey(Ljavax/crypto/SecretKey;)V
    .locals 0
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;

    .line 64
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/Encryptor;->secretKey:Ljavax/crypto/SecretKey;

    .line 65
    return-void
.end method
