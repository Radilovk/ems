.class final Lcom/isaigu/gymapp/wearable/CardPublisher;
.super Ljava/lang/Object;
.source "CardPublisher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/CardPublisher$Run;,
        Lcom/isaigu/gymapp/wearable/CardPublisher$Destroy;
    }
.end annotation


# static fields
.field private static final H:Landroid/os/Handler;

.field static final LIFE_MS:J = 0x61a8L


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/CardPublisher;->H:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/isaigu/gymapp/wearable/CardPublisher;->H:Landroid/os/Handler;

    return-object v0
.end method

.method static publish(Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 5

    .prologue
    .line 25
    if-nez p0, :cond_3

    .line 29
    :goto_2
    return-void

    .line 28
    :cond_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/CardPublisher;->H:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/CardPublisher$Run;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/CardPublisher$Run;-><init>(Lcom/isaigu/gymapp/bean/TrainUser;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method
