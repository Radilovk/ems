.class public final Lcom/isaigu/gymapp/bodytech/BtBeep;
.super Ljava/lang/Object;
.source "BtBeep.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/bodytech/BtBeep$Step;
    }
.end annotation


# static fields
.field static final DASH_MS:I = 0x1a4

.field static final DOT_MS:I = 0x6e

.field static final GAP_MS:I = 0x6e

.field static final LOST_GAP_MS:J = 0x1388L

.field private static final MAIN:Landroid/os/Handler;

.field private static final TAG:Ljava/lang/String; = "BtBeep"

.field private static lastLost:J

.field private static seq:I

.field private static tone:Landroid/media/ToneGenerator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtBeep;->MAIN:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBeep;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static declared-synchronized current(I)Z
    .registers 3

    .prologue
    .line 46
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtBeep;

    monitor-enter v1

    :try_start_3
    sget v0, Lcom/isaigu/gymapp/bodytech/BtBeep;->seq:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_c

    if-ne p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized gen()Landroid/media/ToneGenerator;
    .registers 4

    .prologue
    .line 50
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtBeep;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBeep;->tone:Landroid/media/ToneGenerator;

    if-nez v0, :cond_11

    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-direct {v0, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtBeep;->tone:Landroid/media/ToneGenerator;

    .line 51
    :cond_11
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBeep;->tone:Landroid/media/ToneGenerator;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized lost()V
    .registers 8

    .prologue
    .line 34
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtBeep;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 35
    sget-wide v4, Lcom/isaigu/gymapp/bodytech/BtBeep;->lastLost:J
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1b

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1388

    cmp-long v0, v4, v6

    if-gez v0, :cond_13

    .line 38
    :goto_11
    monitor-exit v1

    return-void

    .line 36
    :cond_13
    :try_start_13
    sput-wide v2, Lcom/isaigu/gymapp/bodytech/BtBeep;->lastLost:J

    .line 37
    const-string v0, "..."

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtBeep;->play(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1b

    goto :goto_11

    .line 34
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized play(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 41
    const-class v1, Lcom/isaigu/gymapp/bodytech/BtBeep;

    monitor-enter v1

    :try_start_3
    sget v0, Lcom/isaigu/gymapp/bodytech/BtBeep;->seq:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/bodytech/BtBeep;->seq:I

    .line 42
    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtBeep;->MAIN:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/bodytech/BtBeep$Step;

    sget v3, Lcom/isaigu/gymapp/bodytech/BtBeep;->seq:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, p0, v4}, Lcom/isaigu/gymapp/bodytech/BtBeep$Step;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    .line 43
    monitor-exit v1

    return-void

    .line 41
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static start()V
    .registers 1

    .prologue
    .line 26
    const-string v0, "...-"

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtBeep;->play(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static stop()V
    .registers 1

    .prologue
    .line 30
    const-string v0, "-"

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtBeep;->play(Ljava/lang/String;)V

    .line 31
    return-void
.end method
