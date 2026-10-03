.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;
.super Ljava/lang/Object;
.source "ScaleSenssun.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Frame;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Reader;
    }
.end annotation


# static fields
.field public static final CHAR_B:Ljava/util/UUID;

.field public static final NOTIFY_A:Ljava/util/UUID;

.field public static final SERVICE_A:Ljava/util/UUID;

.field public static final SERVICE_B:Ljava/util/UUID;

.field public static final T_ERROR:I = 0xbe

.field public static final T_FAT:I = 0xb0

.field public static final T_KCAL:I = 0xd0

.field public static final T_LIVE:I = 0xa0

.field public static final T_MUSCLE:I = 0xc0

.field public static final T_STABLE:I = 0xaa

.field public static final WRITE_A:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const v0, 0xfff0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->uuid16(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->SERVICE_A:Ljava/util/UUID;

    .line 28
    const v0, 0xfff1

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->uuid16(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->NOTIFY_A:Ljava/util/UUID;

    .line 29
    const v0, 0xfff2

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->uuid16(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->WRITE_A:Ljava/util/UUID;

    .line 30
    const v0, 0xffb0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->uuid16(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->SERVICE_B:Ljava/util/UUID;

    .line 31
    const v0, 0xffb2

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->uuid16(I)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->CHAR_B:Ljava/util/UUID;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static command(IIII)[B
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 74
    const/16 v2, 0x9

    new-array v2, v2, [B

    .line 75
    const/16 v3, -0x5b

    aput-byte v3, v2, v1

    .line 76
    int-to-byte v3, p0

    aput-byte v3, v2, v0

    .line 77
    const/4 v3, 0x2

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    .line 78
    const/4 v3, 0x3

    int-to-byte v4, p2

    aput-byte v4, v2, v3

    .line 79
    const/4 v3, 0x4

    int-to-byte v4, p3

    aput-byte v4, v2, v3

    .line 81
    :goto_19
    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ge v0, v3, :cond_26

    .line 82
    aget-byte v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 84
    :cond_26
    array-length v0, v2

    add-int/lit8 v0, v0, -0x2

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    .line 85
    return-object v2
.end method

.method public static date(II)[B
    .registers 6

    .prologue
    .line 90
    const/16 v0, 0x30

    rem-int/lit8 v1, p0, 0x64

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, p1, 0xff

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->command(IIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static looksLike(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 38
    if-nez p0, :cond_4

    .line 42
    :cond_3
    :goto_3
    return v0

    .line 41
    :cond_4
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 42
    const-string v2, "senssun"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "movinglife"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "moving life"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "klausberg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "kb-78"

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "kb78"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "if_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "if-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "body fat"

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "fat scale"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_5e
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static parse([B)Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Frame;
    .registers 6

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 64
    if-eqz p0, :cond_1a

    array-length v0, p0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1a

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xa5

    if-eq v0, v1, :cond_1c

    .line 65
    :cond_1a
    const/4 v0, 0x0

    .line 70
    :goto_1b
    return-object v0

    .line 67
    :cond_1c
    const/4 v0, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v0

    .line 68
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v0

    .line 69
    aget-byte v0, p0, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v0

    .line 70
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Frame;

    const/4 v4, 0x6

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Frame;-><init>(IIII)V

    goto :goto_1b
.end method

.method public static time(III)[B
    .registers 4

    .prologue
    .line 94
    const/16 v0, 0x31

    invoke-static {v0, p0, p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->command(IIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static user(ZII)[B
    .registers 8

    .prologue
    .line 99
    const/16 v1, 0x10

    if-eqz p0, :cond_27

    const/16 v0, 0xf

    :goto_6
    mul-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0xa

    const/16 v3, 0x63

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v3, 0x64

    const/16 v4, 0xdc

    .line 100
    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 99
    invoke-static {v1, v0, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->command(IIII)[B

    move-result-object v0

    return-object v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_6
.end method
