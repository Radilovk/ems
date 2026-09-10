.class public Lcom/alibaba/fastjson/util/ThreadLocalCache;
.super Ljava/lang/Object;
.source "ThreadLocalCache.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final BYTES_CACH_INIT_SIZE:I = 0x400

.field public static final BYTES_CACH_INIT_SIZE_EXP:I = 0xa

.field public static final BYTES_CACH_MAX_SIZE:I = 0x20000

.field public static final BYTES_CACH_MAX_SIZE_EXP:I = 0x11

.field public static final CHARS_CACH_INIT_SIZE:I = 0x400

.field public static final CHARS_CACH_INIT_SIZE_EXP:I = 0xa

.field public static final CHARS_CACH_MAX_SIZE:I = 0x20000

.field public static final CHARS_CACH_MAX_SIZE_EXP:I = 0x11

.field private static final bytesBufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/SoftReference<",
            "[B>;>;"
        }
    .end annotation
.end field

.field private static final charsBufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/SoftReference<",
            "[C>;>;"
        }
    .end annotation
.end field

.field private static final decoderLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/nio/charset/CharsetDecoder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    nop

    .line 15
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/util/ThreadLocalCache;->charsBufLocal:Ljava/lang/ThreadLocal;

    .line 17
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/util/ThreadLocalCache;->decoderLocal:Ljava/lang/ThreadLocal;

    .line 81
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/util/ThreadLocalCache;->bytesBufLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static allocate(I)[C
    .locals 4
    .param p0, "length"    # I

    .line 53
    const/high16 v0, 0x20000

    if-le p0, v0, :cond_0

    .line 54
    new-array v0, p0, [C

    return-object v0

    .line 57
    :cond_0
    const/16 v0, 0xa

    const/16 v1, 0x11

    invoke-static {v0, v1, p0}, Lcom/alibaba/fastjson/util/ThreadLocalCache;->getAllocateLengthExp(III)I

    move-result v0

    .line 58
    .local v0, "allocateLength":I
    new-array v1, v0, [C

    .line 59
    .local v1, "chars":[C
    sget-object v2, Lcom/alibaba/fastjson/util/ThreadLocalCache;->charsBufLocal:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 60
    return-object v1
.end method

.method private static allocateBytes(I)[B
    .locals 4
    .param p0, "length"    # I

    .line 108
    const/high16 v0, 0x20000

    if-le p0, v0, :cond_0

    .line 109
    new-array v0, p0, [B

    return-object v0

    .line 112
    :cond_0
    const/16 v0, 0xa

    const/16 v1, 0x11

    invoke-static {v0, v1, p0}, Lcom/alibaba/fastjson/util/ThreadLocalCache;->getAllocateLengthExp(III)I

    move-result v0

    .line 113
    .local v0, "allocateLength":I
    new-array v1, v0, [B

    .line 114
    .local v1, "chars":[B
    sget-object v2, Lcom/alibaba/fastjson/util/ThreadLocalCache;->bytesBufLocal:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 115
    return-object v1
.end method

.method public static clearBytes()V
    .locals 2

    .line 84
    sget-object v0, Lcom/alibaba/fastjson/util/ThreadLocalCache;->bytesBufLocal:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public static clearChars()V
    .locals 2

    .line 29
    sget-object v0, Lcom/alibaba/fastjson/util/ThreadLocalCache;->charsBufLocal:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method private static getAllocateLengthExp(III)I
    .locals 3
    .param p0, "minExp"    # I
    .param p1, "maxExp"    # I
    .param p2, "length"    # I

    .line 64
    nop

    .line 69
    ushr-int v0, p2, p0

    .line 70
    .local v0, "part":I
    const/4 v1, 0x1

    if-gtz v0, :cond_0

    .line 71
    shl-int/2addr v1, p0

    return v1

    .line 73
    :cond_0
    add-int/lit8 v2, p2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x20

    shl-int/2addr v1, v2

    return v1
.end method

.method public static getBytes(I)[B
    .locals 3
    .param p0, "length"    # I

    .line 88
    sget-object v0, Lcom/alibaba/fastjson/util/ThreadLocalCache;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 90
    .local v0, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<[B>;"
    if-nez v0, :cond_0

    .line 91
    invoke-static {p0}, Lcom/alibaba/fastjson/util/ThreadLocalCache;->allocateBytes(I)[B

    move-result-object v1

    return-object v1

    .line 94
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 96
    .local v1, "bytes":[B
    if-nez v1, :cond_1

    .line 97
    invoke-static {p0}, Lcom/alibaba/fastjson/util/ThreadLocalCache;->allocateBytes(I)[B

    move-result-object v2

    return-object v2

    .line 100
    :cond_1
    array-length v2, v1

    if-ge v2, p0, :cond_2

    .line 101
    invoke-static {p0}, Lcom/alibaba/fastjson/util/ThreadLocalCache;->allocateBytes(I)[B

    move-result-object v1

    .line 104
    :cond_2
    return-object v1
.end method

.method public static getChars(I)[C
    .locals 3
    .param p0, "length"    # I

    .line 33
    sget-object v0, Lcom/alibaba/fastjson/util/ThreadLocalCache;->charsBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 35
    .local v0, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<[C>;"
    if-nez v0, :cond_0

    .line 36
    invoke-static {p0}, Lcom/alibaba/fastjson/util/ThreadLocalCache;->allocate(I)[C

    move-result-object v1

    return-object v1

    .line 39
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    .line 41
    .local v1, "chars":[C
    if-nez v1, :cond_1

    .line 42
    invoke-static {p0}, Lcom/alibaba/fastjson/util/ThreadLocalCache;->allocate(I)[C

    move-result-object v2

    return-object v2

    .line 45
    :cond_1
    array-length v2, v1

    if-ge v2, p0, :cond_2

    .line 46
    invoke-static {p0}, Lcom/alibaba/fastjson/util/ThreadLocalCache;->allocate(I)[C

    move-result-object v1

    .line 49
    :cond_2
    return-object v1
.end method

.method public static getUTF8Decoder()Ljava/nio/charset/CharsetDecoder;
    .locals 2

    .line 20
    sget-object v0, Lcom/alibaba/fastjson/util/ThreadLocalCache;->decoderLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetDecoder;

    .line 21
    .local v0, "decoder":Ljava/nio/charset/CharsetDecoder;
    if-nez v0, :cond_0

    .line 22
    new-instance v1, Lcom/alibaba/fastjson/util/UTF8Decoder;

    invoke-direct {v1}, Lcom/alibaba/fastjson/util/UTF8Decoder;-><init>()V

    move-object v0, v1

    .line 23
    sget-object v1, Lcom/alibaba/fastjson/util/ThreadLocalCache;->decoderLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 25
    :cond_0
    return-object v0
.end method
