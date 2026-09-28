.class final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;
.super Ljava/lang/Object;
.source "XiaomiCloudCrypto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RC4"
.end annotation


# instance fields
.field private i:I

.field private j:I

.field private final s:[I


# direct methods
.method constructor <init>([B)V
    .registers 8

    .prologue
    const/16 v5, 0x100

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;->s:[I

    move v0, v1

    .line 56
    :goto_b
    if-ge v0, v5, :cond_14

    .line 57
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;->s:[I

    aput v0, v2, v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_14
    move v0, v1

    move v2, v1

    .line 60
    :goto_16
    if-ge v0, v5, :cond_3b

    .line 61
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;->s:[I

    aget v1, v1, v0

    add-int/2addr v1, v2

    array-length v2, p1

    rem-int v2, v0, v2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 62
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;->s:[I

    aget v2, v2, v0

    .line 63
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;->s:[I

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;->s:[I

    aget v4, v4, v1

    aput v4, v3, v0

    .line 64
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;->s:[I

    aput v2, v3, v1

    .line 60
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_16

    .line 66
    :cond_3b
    return-void
.end method


# virtual methods
.method crypt([B)[B
    .registers 9

    .prologue
    .line 69
    array-length v0, p1

    new-array v1, v0, [B

    .line 70
    const/4 v0, 0x0

    :goto_4
    array-length v2, p1

    if-ge v0, v2, :cond_50

    .line 71
    iget v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;->i:I

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;->i:I

    .line 72
    iget v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;->j:I

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;->s:[I

    iget v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;->i:I

    aget v3, v3, v4

    add-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;->j:I

    .line 73
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;->s:[I

    iget v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;->i:I

    aget v2, v2, v3

    .line 74
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;->s:[I

    iget v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;->i:I

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;->s:[I

    iget v6, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;->j:I

    aget v5, v5, v6

    aput v5, v3, v4

    .line 75
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;->s:[I

    iget v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;->j:I

    aput v2, v3, v4

    .line 76
    aget-byte v2, p1, v0

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;->s:[I

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;->s:[I

    iget v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;->i:I

    aget v4, v4, v5

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;->s:[I

    iget v6, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;->j:I

    aget v5, v5, v6

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 78
    :cond_50
    return-object v1
.end method
