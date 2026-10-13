.class public final Lcom/isaigu/gymapp/wearable/bluetens/BluetensAdvert;
.super Ljava/lang/Object;
.source "BluetensAdvert.java"


# static fields
.field public static final DUO:I = 0x2

.field public static final FOUND:I = 0x1

.field public static final V2:I = 0x4


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static classify(Ljava/lang/String;[B)I
    .registers 8

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 17
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensAdvert;->projectName([B)Ljava/lang/String;

    move-result-object v0

    .line 18
    if-eqz v0, :cond_60

    .line 19
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 20
    const-string v0, "bst"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "duo"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "sport"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5a

    :cond_27
    move v0, v2

    .line 21
    :goto_28
    const-string v5, "pkt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_50

    const-string v5, "bluetens2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_50

    const-string v5, "bt2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_50

    const-string v5, "mdt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_50

    const-string v5, "duosport2"

    .line 22
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 23
    :cond_50
    :goto_50
    if-eqz v0, :cond_5e

    :goto_52
    or-int/lit8 v0, v3, 0x1

    if-eqz v2, :cond_57

    const/4 v1, 0x4

    :cond_57
    or-int v2, v0, v1

    .line 35
    :cond_59
    :goto_59
    return v2

    :cond_5a
    move v0, v1

    .line 20
    goto :goto_28

    :cond_5c
    move v2, v1

    .line 22
    goto :goto_50

    :cond_5e
    move v3, v1

    .line 23
    goto :goto_52

    .line 25
    :cond_60
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensAdvert;->manufacturer([B)I

    move-result v0

    const v4, 0xffbc

    if-eq v0, v4, :cond_59

    .line 28
    if-eqz p0, :cond_95

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 29
    :goto_71
    const-string v2, "bluetens"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_81

    const-string v2, ".blt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 30
    :cond_81
    const-string v2, "duo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_91

    const-string v2, "sport"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_92

    :cond_91
    move v1, v3

    :cond_92
    or-int/lit8 v2, v1, 0x1

    goto :goto_59

    .line 28
    :cond_95
    const-string v0, ""

    goto :goto_71

    .line 32
    :cond_98
    const-string v2, "duo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a8

    const-string v2, "duosport"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 33
    :cond_a8
    const/4 v2, 0x3

    goto :goto_59

    :cond_aa
    move v2, v1

    .line 35
    goto :goto_59
.end method

.method static field([BI)[B
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 74
    move v1, v2

    :goto_2
    if-eqz p0, :cond_15

    add-int/lit8 v0, v1, 0x1

    array-length v3, p0

    if-ge v0, v3, :cond_15

    .line 75
    aget-byte v0, p0, v1

    and-int/lit16 v3, v0, 0xff

    .line 76
    if-eqz v3, :cond_15

    add-int/lit8 v0, v1, 0x1

    add-int/2addr v0, v3

    array-length v4, p0

    if-le v0, v4, :cond_17

    .line 86
    :cond_15
    const/4 v0, 0x0

    :goto_16
    return-object v0

    .line 79
    :cond_17
    add-int/lit8 v0, v1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, p1, :cond_2b

    .line 80
    add-int/lit8 v0, v3, -0x1

    new-array v0, v0, [B

    .line 81
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_16

    .line 84
    :cond_2b
    add-int/lit8 v0, v3, 0x1

    add-int/2addr v0, v1

    move v1, v0

    .line 85
    goto :goto_2
.end method

.method public static manufacturer([B)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 40
    const/16 v1, 0xff

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensAdvert;->field([BI)[B

    move-result-object v1

    .line 41
    if-eqz v1, :cond_d

    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_e

    .line 45
    :cond_d
    :goto_d
    return v0

    .line 44
    :cond_e
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    .line 45
    const v2, 0xffbc

    if-eq v1, v2, :cond_29

    const v2, 0xffbd

    if-eq v1, v2, :cond_29

    const v2, 0xffbe

    if-ne v1, v2, :cond_d

    :cond_29
    move v0, v1

    goto :goto_d
.end method

.method public static projectName([B)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xa

    .line 50
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensAdvert;->manufacturer([B)I

    move-result v0

    .line 51
    const v3, 0xffbd

    if-eq v0, v3, :cond_13

    const v3, 0xffbe

    if-eq v0, v3, :cond_13

    move-object v0, v2

    .line 69
    :goto_12
    return-object v0

    .line 54
    :cond_13
    const/16 v0, 0xff

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensAdvert;->field([BI)[B

    move-result-object v3

    .line 55
    array-length v0, v3

    if-gt v0, v1, :cond_1e

    move-object v0, v2

    .line 56
    goto :goto_12

    :cond_1e
    move v0, v1

    .line 59
    :goto_1f
    array-length v4, v3

    if-ge v0, v4, :cond_29

    aget-byte v4, v3, v0

    if-eqz v4, :cond_29

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 62
    :cond_29
    if-ne v0, v1, :cond_2d

    move-object v0, v2

    .line 63
    goto :goto_12

    .line 65
    :cond_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    :goto_32
    if-ge v1, v0, :cond_3f

    .line 67
    aget-byte v4, v3, v1

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 69
    :cond_3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method
