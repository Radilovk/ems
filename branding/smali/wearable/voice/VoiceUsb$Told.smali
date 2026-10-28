.class final Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Told;
.super Ljava/lang/Object;
.source "VoiceUsb.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Told"
.end annotation


# instance fields
.field final pct:I

.field final s:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput p1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Told;->s:I

    .line 337
    iput p2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Told;->pct:I

    .line 338
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 342
    iget v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Told;->s:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb$Told;->pct:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceUsb;->tell(II)V

    .line 343
    return-void
.end method
