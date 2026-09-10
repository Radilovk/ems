.class public final Lorg/apache/poi/util/PngUtils;
.super Ljava/lang/Object;
.source "PngUtils.java"


# static fields
.field private static final PNG_FILE_HEADER:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/util/PngUtils;->PNG_FILE_HEADER:[B

    return-void

    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static matchesPngHeader([BI)Z
    .locals 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 41
    if-eqz p0, :cond_0

    array-length v2, p0

    sub-int/2addr v2, p1

    sget-object v3, Lorg/apache/poi/util/PngUtils;->PNG_FILE_HEADER:[B

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v1

    .line 45
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lorg/apache/poi/util/PngUtils;->PNG_FILE_HEADER:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 46
    sget-object v2, Lorg/apache/poi/util/PngUtils;->PNG_FILE_HEADER:[B

    aget-byte v2, v2, v0

    add-int v3, v0, p1

    aget-byte v3, p0, v3

    if-ne v2, v3, :cond_0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 51
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
