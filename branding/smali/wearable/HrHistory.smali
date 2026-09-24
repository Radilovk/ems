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

    .prologue
    const/16 v1, 0x1000

    .line 13
    new-array v0, v1, [J

    sput-object v0, Lcom/isaigu/gymapp/wearable/HrHistory;->t:[J

    .line 14
    new-array v0, v1, [I

    sput-object v0, Lcom/isaigu/gymapp/wearable/HrHistory;->hr:[I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized add(JI)V
    .registers 7

    .prologue
    .line 21
    const-class v1, Lcom/isaigu/gymapp/wearable/HrHistory;

    monitor-enter v1

    if-gtz p2, :cond_7

    .line 30
    :cond_5
    :goto_5
    monitor-exit v1

    return-void

    .line 24
    :cond_7
    :try_start_7
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrHistory;->t:[J

    sget v2, Lcom/isaigu/gymapp/wearable/HrHistory;->head:I

    aput-wide p0, v0, v2

    .line 25
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrHistory;->hr:[I

    sget v2, Lcom/isaigu/gymapp/wearable/HrHistory;->head:I

    aput p2, v0, v2

    .line 26
    sget v0, Lcom/isaigu/gymapp/wearable/HrHistory;->head:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x1000

    sput v0, Lcom/isaigu/gymapp/wearable/HrHistory;->head:I

    .line 27
    sget v0, Lcom/isaigu/gymapp/wearable/HrHistory;->size:I

    const/16 v2, 0x1000

    if-ge v0, v2, :cond_5

    .line 28
    sget v0, Lcom/isaigu/gymapp/wearable/HrHistory;->size:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/wearable/HrHistory;->size:I
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_28

    goto :goto_5

    .line 21
    :catchall_28
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized clear()V
    .registers 2

    .prologue
    .line 33
    const-class v1, Lcom/isaigu/gymapp/wearable/HrHistory;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput v0, Lcom/isaigu/gymapp/wearable/HrHistory;->head:I

    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/wearable/HrHistory;->size:I
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    .line 35
    monitor-exit v1

    return-void

    .line 33
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized since(JJ)Lcom/isaigu/gymapp/wearable/HrHistory$Series;
    .registers 14

    .prologue
    const-wide/32 v0, 0x36ee80

    const/4 v2, 0x0

    .line 39
    const-class v3, Lcom/isaigu/gymapp/wearable/HrHistory;

    monitor-enter v3

    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-lez v4, :cond_14

    const-wide/32 v0, 0x36ee80

    :try_start_10
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_14
    sub-long v4, p0, v0

    move v1, v2

    move v0, v2

    .line 41
    :goto_18
    sget v6, Lcom/isaigu/gymapp/wearable/HrHistory;->size:I

    if-ge v1, v6, :cond_33

    .line 42
    sget v6, Lcom/isaigu/gymapp/wearable/HrHistory;->head:I

    sget v7, Lcom/isaigu/gymapp/wearable/HrHistory;->size:I

    sub-int/2addr v6, v7

    add-int/2addr v6, v1

    add-int/lit16 v6, v6, 0x1000

    rem-int/lit16 v6, v6, 0x1000

    .line 43
    sget-object v7, Lcom/isaigu/gymapp/wearable/HrHistory;->t:[J

    aget-wide v6, v7, v6

    cmp-long v6, v6, v4

    if-ltz v6, :cond_30

    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 41
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 47
    :cond_33
    new-instance v6, Lcom/isaigu/gymapp/wearable/HrHistory$Series;

    invoke-direct {v6, v0}, Lcom/isaigu/gymapp/wearable/HrHistory$Series;-><init>(I)V

    move v1, v2

    move v0, v2

    .line 49
    :goto_3a
    sget v2, Lcom/isaigu/gymapp/wearable/HrHistory;->size:I

    if-ge v1, v2, :cond_65

    .line 50
    sget v2, Lcom/isaigu/gymapp/wearable/HrHistory;->head:I

    sget v7, Lcom/isaigu/gymapp/wearable/HrHistory;->size:I

    sub-int/2addr v2, v7

    add-int/2addr v2, v1

    add-int/lit16 v2, v2, 0x1000

    rem-int/lit16 v2, v2, 0x1000

    .line 51
    sget-object v7, Lcom/isaigu/gymapp/wearable/HrHistory;->t:[J

    aget-wide v8, v7, v2

    cmp-long v7, v8, v4

    if-ltz v7, :cond_62

    .line 52
    iget-object v7, v6, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->t:[J

    sget-object v8, Lcom/isaigu/gymapp/wearable/HrHistory;->t:[J

    aget-wide v8, v8, v2

    aput-wide v8, v7, v0

    .line 53
    iget-object v7, v6, Lcom/isaigu/gymapp/wearable/HrHistory$Series;->hr:[I

    sget-object v8, Lcom/isaigu/gymapp/wearable/HrHistory;->hr:[I

    aget v2, v8, v2

    aput v2, v7, v0
    :try_end_60
    .catchall {:try_start_10 .. :try_end_60} :catchall_67

    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 49
    :cond_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 57
    :cond_65
    monitor-exit v3

    return-object v6

    .line 39
    :catchall_67
    move-exception v0

    monitor-exit v3

    throw v0
.end method
