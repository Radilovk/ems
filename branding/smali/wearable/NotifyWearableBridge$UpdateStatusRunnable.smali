.class final Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$UpdateStatusRunnable;
.super Ljava/lang/Object;
.source "NotifyWearableBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UpdateStatusRunnable"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$1;)V
    .registers 2

    .line 292
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$UpdateStatusRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 295
    # getter for: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->lastHr:I
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$200()I

    move-result v0

    # invokes: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->updateHrLabel(I)V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$100(I)V

    .line 296
    return-void
.end method
