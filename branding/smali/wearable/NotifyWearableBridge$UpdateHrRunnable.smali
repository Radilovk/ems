.class final Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$UpdateHrRunnable;
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
    name = "UpdateHrRunnable"
.end annotation


# instance fields
.field private final hr:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput p1, p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$UpdateHrRunnable;->hr:I

    .line 284
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 288
    iget v0, p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$UpdateHrRunnable;->hr:I

    # invokes: Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->updateHrLabel(I)V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$100(I)V

    .line 289
    return-void
.end method
