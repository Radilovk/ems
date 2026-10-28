.class final Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Find;
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
    name = "Find"
.end annotation


# instance fields
.field final p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V
    .registers 2

    .prologue
    .line 637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Find;->p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    .line 639
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Find;->p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->closed:Z

    if-nez v0, :cond_12

    .line 644
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Find;->p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceLink;->find(Landroid/content/Context;)V

    .line 645
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Find;->p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->render()V

    .line 647
    :cond_12
    return-void
.end method
