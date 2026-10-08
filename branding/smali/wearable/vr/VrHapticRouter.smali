.class public final Lcom/isaigu/gymapp/wearable/vr/VrHapticRouter;
.super Ljava/lang/Object;
.source "VrHapticRouter.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVrHaptic(Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;)V
    .registers 2

    .prologue
    .line 14
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/SafeGuard;->vrPulse(Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;)V

    .line 15
    return-void
.end method

.method public onVrLink(ZLjava/lang/String;)V
    .registers 4

    .prologue
    .line 24
    if-nez p1, :cond_6

    .line 25
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/SafeGuard;->vrStop(I)V

    .line 27
    :cond_6
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->postLink(ZLjava/lang/String;)V

    .line 28
    return-void
.end method

.method public onVrStop(IIJ)V
    .registers 5

    .prologue
    .line 19
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/SafeGuard;->vrStop(I)V

    .line 20
    return-void
.end method
