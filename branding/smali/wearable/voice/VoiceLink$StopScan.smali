.class final Lcom/isaigu/gymapp/wearable/voice/VoiceLink$StopScan;
.super Ljava/lang/Object;
.source "VoiceLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/voice/VoiceLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StopScan"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 441
    sget v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    .line 442
    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->stopScan()V

    .line 444
    :cond_8
    return-void
.end method
