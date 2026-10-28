.class final Lcom/isaigu/gymapp/wearable/voice/VoiceLink$OpTimeout;
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
    name = "OpTimeout"
.end annotation


# instance fields
.field final token:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    iput p1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$OpTimeout;->token:I

    .line 523
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 527
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->busy:Z

    if-eqz v0, :cond_d

    sget v0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->opToken:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceLink$OpTimeout;->token:I

    if-ne v0, v1, :cond_d

    .line 528
    invoke-static {}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->onWriteDone()V

    .line 530
    :cond_d
    return-void
.end method
