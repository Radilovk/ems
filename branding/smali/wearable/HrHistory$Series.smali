.class public final Lcom/isaigu/gymapp/wearable/HrHistory$Series;
.super Ljava/lang/Object;
.source "HrHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/HrHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Series"
.end annotation


# instance fields
.field public final hr:[I

.field public final t:[J


# direct methods
.method constructor <init>(I)V
    .registers 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    .line 67
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    .line 68
    return-void
.end method


# virtual methods
.method public avg()I
    .registers 16

    .line 96
    nop

    .line 97
    nop

    .line 98
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    move-wide v4, v0

    move-wide v6, v4

    const/4 v3, 0x1

    :goto_8
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    array-length v9, v8

    if-ge v3, v9, :cond_34

    .line 99
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    aget-wide v10, v9, v3

    add-int/lit8 v12, v3, -0x1

    aget-wide v13, v9, v12

    sub-long/2addr v10, v13

    .line 100
    const-wide/16 v13, 0x0

    cmp-long v9, v10, v13

    if-lez v9, :cond_31

    const-wide/16 v13, 0x2ee0

    cmp-long v9, v10, v13

    if-lez v9, :cond_23

    .line 101
    goto :goto_31

    .line 103
    :cond_23
    aget v9, v8, v3

    aget v8, v8, v12

    add-int/2addr v9, v8

    int-to-double v8, v9

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v12

    long-to-double v10, v10

    mul-double v8, v8, v10

    add-double/2addr v6, v8

    .line 104
    add-double/2addr v4, v10

    .line 98
    :cond_31
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 106
    :cond_34
    cmpg-double v3, v4, v0

    if-gtz v3, :cond_42

    .line 107
    array-length v0, v8

    if-lez v0, :cond_40

    array-length v0, v8

    sub-int/2addr v0, v2

    aget v0, v8, v0

    goto :goto_41

    :cond_40
    const/4 v0, 0x0

    :goto_41
    return v0

    .line 109
    :cond_42
    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public last()I
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    array-length v1, v0

    if-lez v1, :cond_b

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public max()I
    .registers 6

    .line 87
    nop

    .line 88
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v2, v1, :cond_11

    aget v4, v0, v2

    .line 89
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 91
    :cond_11
    return v3
.end method

.method public min()I
    .registers 7

    .line 79
    nop

    .line 80
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    array-length v1, v0

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v1, :cond_14

    aget v5, v0, v4

    .line 81
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 80
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 83
    :cond_14
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    array-length v0, v0

    if-lez v0, :cond_1a

    move v2, v3

    :cond_1a
    return v2
.end method

.method public size()I
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    array-length v0, v0

    return v0
.end method

.method public zoneMs(I)[J
    .registers 11

    .line 114
    const/4 v0, 0x6

    new-array v0, v0, [J

    .line 115
    const/4 v1, 0x1

    :goto_4
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2d

    .line 116
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    aget-wide v4, v3, v1

    add-int/lit8 v6, v1, -0x1

    aget-wide v7, v3, v6

    sub-long/2addr v4, v7

    .line 117
    const-wide/16 v7, 0x0

    cmp-long v3, v4, v7

    if-lez v3, :cond_2a

    const-wide/16 v7, 0x2ee0

    cmp-long v3, v4, v7

    if-lez v3, :cond_1f

    .line 118
    goto :goto_2a

    .line 120
    :cond_1f
    aget v2, v2, v6

    invoke-static {v2, p1}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneFor(II)I

    move-result v2

    aget-wide v6, v0, v2

    add-long/2addr v6, v4

    aput-wide v6, v0, v2

    .line 115
    :cond_2a
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 122
    :cond_2d
    return-object v0
.end method
