.class public abstract Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;
.super Ljava/lang/Object;
.source "Biff8EncryptionKey.java"


# static fields
.field private static final _userPasswordTLS:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected _secretKey:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->_userPasswordTLS:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;[B)Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;
    .locals 1
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "salt"    # [B

    .line 37
    invoke-static {p0, p1}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->create(Ljava/lang/String;[B)Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;

    move-result-object v0

    return-object v0
.end method

.method public static create([B)Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;
    .locals 1
    .param p0, "salt"    # [B

    .line 33
    const-string v0, "VelvetSweatshop"

    invoke-static {v0, p0}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->create(Ljava/lang/String;[B)Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentUserPassword()Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->_userPasswordTLS:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static setCurrentUserPassword(Ljava/lang/String;)V
    .locals 1
    .param p0, "password"    # Ljava/lang/String;

    .line 60
    sget-object v0, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->_userPasswordTLS:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 61
    return-void
.end method


# virtual methods
.method public validate([B[B)Z
    .locals 2
    .param p1, "saltData"    # [B
    .param p2, "saltHash"    # [B

    .line 44
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "validate is not supported (in super-class)."

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
