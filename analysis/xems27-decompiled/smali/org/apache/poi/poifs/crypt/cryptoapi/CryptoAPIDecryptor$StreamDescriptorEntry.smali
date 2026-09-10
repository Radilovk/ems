.class Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
.super Ljava/lang/Object;
.source "CryptoAPIDecryptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StreamDescriptorEntry"
.end annotation


# static fields
.field static flagStream:Lorg/apache/poi/util/BitField;


# instance fields
.field block:I

.field flags:I

.field reserved2:I

.field streamName:Ljava/lang/String;

.field streamOffset:I

.field streamSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->flagStream:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
