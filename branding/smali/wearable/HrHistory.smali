.class public final Lcom/isaigu/gymapp/wearable/HrHistory;
.super Ljava/lang/Object;
.source "HrHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/HrHistory$Series;
    }
.end annotation


# static fields
.field static final CAPACITY:I = 0x1000

.field static final KEEP_MS:J = 0x36ee80L

.field static final MAX_GAP_MS:J = 0x2ee0L

.field private static head:I

.field private static final hr:[I

.field private static size:I

.field private static final t:[J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 13
    const/16 v0, 0x1000

    new-array v1, v0, [J

    sput-object v1, Lcom/isaigu/gymapp/wearable/HrHistory;->t:[J

    .line 14
    new-array v0, v0, [I

    sput-object v0, Lcom/isaigu/gymapp/wearable/HrHistory;->hr:[I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized add(JI)V
    .registers 6

    const-class v0, Lcom/isaigu/gymapp/wearable/HrHistory;

    monitor-enter v0

    .line 21
    if-gtz p2, :cond_7

    .line 22
    monitor-exit v0

    return-void

    .line 24
    :cond_7
    :try_start_7
    sget-object v1, Lcom/isaigu/gymapp/wearable/HrHistory;->t:[J

    sget v2, Lcom/isaigu/gymapp/wearable/HrHistory;->head:I

    aput-wide p0, v1, v2

    .line 25
    sget-object p0, Lcom/isaigu/gymapp/wearable/HrHistory;->hr:[I

    sget p1, Lcom/isaigu/gymapp/wearable/HrHistory;->head:I

    aput p2, p0, p1

    .line 26
    sget p0, Lcom/isaigu/gymapp/wearable/HrHistory;->head:I

    add-int/lit8 p0, p0, 0x1

    const/16 p1, 0x1000

    rem-int/2addr p0, p1

    sput p0, Lcom/isaigu/gymapp/wearable/HrHistory;->head:I

    .line 27
    sget p0, Lcom/isaigu/gymapp/wearable/HrHistory;->size:I

    if-ge p0, p1, :cond_26

    .line 28
    sget p0, Lcom/isaigu/gymapp/wearable/HrHistory;->size:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/isaigu/gymapp/wearable/HrHistory;->size:I
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_28

    .line 30
    :cond_26
    monitor-exit v0

    return-void

    .line 20
    :catchall_28
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized clear()V
    .registers 2

    const-class v0, Lcom/isaigu/gymapp/wearable/HrHistory;

    monitor-enter v0

    .line 33
    const/4 v1, 0x0

    :try_start_4
    sput v1, Lcom/isaigu/gymapp/wearable/HrHistory;->head:I

    .line 34
    sput v1, Lcom/isaigu/gymapp/wearable/HrHistory;->size:I
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_a

    .line 35
    monitor-exit v0

    return-void

    .line 32
    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized since(JJ)Lcom/isaigu/gymapp/wearable/HrHistory$Series;
    .registers 11

    const-class v0, Lcom/isaigu/gymapp/wearable/HrHistory;

    monitor-enter v0

    .line 39
    const-wide/16 v1, 0x0

    const-wide/32 v3, 0x36ee80

    cmp-long v5, p2, v1

    if-lez v5, :cond_13

    :try_start_c
    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    goto :goto_13

    .line 38
    :catchall_11
    move-exception p0

    goto :goto_67

    .line 39
    :cond_13
    :goto_13
    sub-long/2addr p0, v3

    .line 40
    nop

    .line 41
    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 v1, 0x0

    :goto_18
    sget v2, Lcom/isaigu/gymapp/wearable/HrHistory;->size:I

    if-ge p3, v2, :cond_33

    .line 42
    sget v2, Lcom/isaigu/gymapp/wearable/HrHistory;->head:I

    sget v3, Lcom/isaigu/gymapp/wearable/HrHistory;->size:I

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    add-int/lit16 v2, v2, 0x1000

    rem-int/lit16 v2, v2, 0x1000

    .line 43
    sget-object v3, Lcom/isaigu/gymapp/wearable/HrHistory;->t:[J

    aget-wide v2, v3, v2

    cmp-long v4, v2, p0

    if-ltz v4, :cond_30

    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 41
    :cond_30
    add-int/lit8 p3, p3, 0x1

    goto :goto_18

    .line 47
    :cond_33
    new-instance p3, Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    invoke-direct {p3, v1}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;-><init>(I)V

    .line 48
    nop

    .line 49
    const/4 v1, 0x0

    :goto_3a
    sget v2, Lcom/isaigu/gymapp/wearable/HrHistory;->size:I

    if-ge p2, v2, :cond_65

    .line 50
    sget v2, Lcom/isaigu/gymapp/wearable/HrHistory;->head:I

    sget v3, Lcom/isaigu/gymapp/wearable/HrHistory;->size:I

    sub-int/2addr v2, v3

    add-int/2addr v2, p2

    add-int/lit16 v2, v2, 0x1000

    rem-int/lit16 v2, v2, 0x1000

    .line 51
    sget-object v3, Lcom/isaigu/gymapp/wearable/HrHistory;->t:[J

    aget-wide v4, v3, v2

    cmp-long v3, v4, p0

    if-ltz v3, :cond_62

    .line 52
    iget-object v3, p3, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    sget-object v4, Lcom/isaigu/gymapp/wearable/HrHistory;->t:[J

    aget-wide v5, v4, v2

    aput-wide v5, v3, v1

    .line 53
    iget-object v3, p3, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    sget-object v4, Lcom/isaigu/gymapp/wearable/HrHistory;->hr:[I

    aget v2, v4, v2

    aput v2, v3, v1
    :try_end_60
    .catchall {:try_start_c .. :try_end_60} :catchall_11

    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 49
    :cond_62
    add-int/lit8 p2, p2, 0x1

    goto :goto_3a

    .line 57
    :cond_65
    monitor-exit v0

    return-object p3

    .line 38
    :goto_67
    monitor-exit v0

    throw p0
.end method
