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

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    .line 67
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    .line 68
    return-void
.end method


# virtual methods
.method public avg()I
    .registers 15

    .prologue
    const-wide/16 v4, 0x0

    .line 96
    .line 98
    const/4 v0, 0x1

    move-wide v2, v4

    move-wide v6, v4

    :goto_5
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    array-length v1, v1

    if-ge v0, v1, :cond_39

    .line 99
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    aget-wide v8, v1, v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    add-int/lit8 v10, v0, -0x1

    aget-wide v10, v1, v10

    sub-long/2addr v8, v10

    .line 100
    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-lez v1, :cond_21

    const-wide/16 v10, 0x2ee0

    cmp-long v1, v8, v10

    if-lez v1, :cond_24

    .line 98
    :cond_21
    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 103
    :cond_24
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    aget v1, v1, v0

    iget-object v10, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    add-int/lit8 v11, v0, -0x1

    aget v10, v10, v11

    add-int/2addr v1, v10

    int-to-double v10, v1

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    long-to-double v12, v8

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    .line 104
    long-to-double v8, v8

    add-double/2addr v2, v8

    goto :goto_21

    .line 106
    :cond_39
    cmpg-double v0, v2, v4

    if-gtz v0, :cond_4e

    .line 107
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    array-length v0, v0

    if-lez v0, :cond_4c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    .line 109
    :goto_4b
    return v0

    .line 107
    :cond_4c
    const/4 v0, 0x0

    goto :goto_4b

    .line 109
    :cond_4e
    div-double v0, v6, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_4b
.end method

.method public last()I
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    array-length v0, v0

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public max()I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 87
    .line 88
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    array-length v4, v3

    move v0, v1

    move v2, v1

    :goto_6
    if-ge v0, v4, :cond_12

    aget v1, v3, v0

    .line 89
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 88
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_6

    .line 91
    :cond_12
    return v2
.end method

.method public min()I
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 79
    const v0, 0x7fffffff

    .line 80
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    array-length v4, v3

    move v2, v1

    :goto_8
    if-ge v2, v4, :cond_13

    aget v5, v3, v2

    .line 81
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 83
    :cond_13
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    array-length v2, v2

    if-lez v2, :cond_19

    :goto_18
    return v0

    :cond_19
    move v0, v1

    goto :goto_18
.end method

.method public size()I
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    array-length v0, v0

    return v0
.end method

.method public zoneMs(I)[J
    .registers 10

    .prologue
    .line 114
    const/4 v0, 0x6

    new-array v1, v0, [J

    .line 115
    const/4 v0, 0x1

    :goto_4
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    array-length v2, v2

    if-ge v0, v2, :cond_33

    .line 116
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    aget-wide v2, v2, v0

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    add-int/lit8 v5, v0, -0x1

    aget-wide v4, v4, v5

    sub-long/2addr v2, v4

    .line 117
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_20

    const-wide/16 v4, 0x2ee0

    cmp-long v4, v2, v4

    if-lez v4, :cond_23

    .line 115
    :cond_20
    :goto_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 120
    :cond_23
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    invoke-static {v4, p1}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneFor(II)I

    move-result v4

    aget-wide v6, v1, v4

    add-long/2addr v2, v6

    aput-wide v2, v1, v4

    goto :goto_20

    .line 122
    :cond_33
    return-object v1
.end method
