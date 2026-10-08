.class final Lcom/isaigu/gymapp/wearable/SignalProbe$Reading;
.super Lcom/clj/fastble/callback/BleRssiCallback;
.source "SignalProbe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/SignalProbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reading"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/clj/fastble/callback/BleRssiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRssiFailure(Lcom/clj/fastble/exception/BleException;)V
    .registers 2

    .prologue
    .line 166
    return-void
.end method

.method public onRssiSuccess(I)V
    .registers 2

    .prologue
    .line 161
    # setter for: Lcom/isaigu/gymapp/wearable/SignalProbe;->lastRssi:I
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/SignalProbe;->access$302(I)I

    .line 162
    return-void
.end method
