.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$VrHitRun;
.super Ljava/lang/Object;
.source "MastogoScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "VrHitRun"
.end annotation


# instance fields
.field final p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

.field final recvNs:J


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;J)V
    .registers 4

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$VrHitRun;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    .line 131
    iput-wide p2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$VrHitRun;->recvNs:J

    .line 132
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 136
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$VrHitRun;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->closed:Z

    if-nez v0, :cond_19

    .line 137
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$VrHitRun;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->vrFire()V

    .line 138
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$VrHitRun;->recvNs:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->setUnitMs(J)V

    .line 140
    :cond_19
    return-void
.end method
