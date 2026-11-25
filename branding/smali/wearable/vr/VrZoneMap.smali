.class public final Lcom/isaigu/gymapp/wearable/vr/VrZoneMap;
.super Ljava/lang/Object;
.source "VrZoneMap.java"


# static fields
.field public static final CH_ABS:I = 0x1

.field public static final CH_ARMS:I = 0x4

.field public static final CH_BACK:I = 0x6


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static channels(I[I)I
    .registers 6

    .prologue
    const/16 v1, 0x40

    const/16 v3, 0x8

    const/4 v0, 0x0

    .line 25
    .line 26
    packed-switch p0, :pswitch_data_30

    .line 41
    :cond_8
    :goto_8
    :pswitch_8
    return v0

    .line 29
    :pswitch_9
    array-length v1, p1

    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrZoneMap;->lit([III)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x10

    goto :goto_8

    .line 31
    :pswitch_13
    array-length v2, p1

    invoke-static {p1, v0, v2}, Lcom/isaigu/gymapp/wearable/vr/VrZoneMap;->lit([III)Z

    move-result v2

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_8

    .line 33
    :pswitch_1c
    invoke-static {p1, v0, v3}, Lcom/isaigu/gymapp/wearable/vr/VrZoneMap;->lit([III)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 36
    :goto_22
    array-length v0, p1

    invoke-static {p1, v3, v0}, Lcom/isaigu/gymapp/wearable/vr/VrZoneMap;->lit([III)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 37
    or-int/lit8 v1, v1, 0x2

    :cond_2b
    move v0, v1

    .line 39
    goto :goto_8

    :cond_2d
    move v1, v0

    goto :goto_22

    .line 26
    nop

    :pswitch_data_30
    .packed-switch 0x3
        :pswitch_1c
        :pswitch_13
        :pswitch_8
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private static lit([III)Z
    .registers 4

    .prologue
    .line 46
    :goto_0
    if-ge p1, p2, :cond_e

    array-length v0, p0

    if-ge p1, v0, :cond_e

    .line 47
    aget v0, p0, p1

    if-lez v0, :cond_b

    .line 48
    const/4 v0, 0x1

    .line 51
    :goto_a
    return v0

    .line 46
    :cond_b
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 51
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static taken(I)Z
    .registers 2

    .prologue
    .line 19
    const/4 v0, 0x3

    if-eq p0, v0, :cond_f

    const/4 v0, 0x4

    if-eq p0, v0, :cond_f

    const/4 v0, 0x5

    if-eq p0, v0, :cond_f

    const/4 v0, 0x6

    if-eq p0, v0, :cond_f

    const/4 v0, 0x7

    if-ne p0, v0, :cond_11

    :cond_f
    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
