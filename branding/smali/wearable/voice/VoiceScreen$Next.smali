.class final Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Next;
.super Ljava/lang/Object;
.source "VoiceScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Next"
.end annotation


# instance fields
.field final p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V
    .registers 2

    .prologue
    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Next;->p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    .line 646
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Next;->p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->closed:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Next;->p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->learning:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 651
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Next;->p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->nextWord()V

    .line 653
    :cond_11
    return-void
.end method
