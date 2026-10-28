.class final Lcom/isaigu/gymapp/wearable/voice/VoiceLink$Pump;
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
    name = "Pump"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 516
    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->pump()V

    .line 517
    return-void
.end method
