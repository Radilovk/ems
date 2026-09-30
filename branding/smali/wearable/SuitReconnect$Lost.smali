.class final Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;
.super Ljava/lang/Object;
.source "SuitReconnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/SuitReconnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Lost"
.end annotation


# instance fields
.field attemptAt:J

.field connecting:Z

.field doneAt:J

.field final item:Lcom/isaigu/gymapp/train/model/TrainItem;

.field final mac:Ljava/lang/String;

.field final since:J


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/model/TrainItem;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;->since:J

    .line 76
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 77
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;->mac:Ljava/lang/String;

    .line 78
    return-void
.end method
