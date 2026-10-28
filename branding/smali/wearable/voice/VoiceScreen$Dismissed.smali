.class final Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Dismissed;
.super Ljava/lang/Object;
.source "VoiceScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Dismissed"
.end annotation


# instance fields
.field final p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V
    .registers 2

    .prologue
    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Dismissed;->p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    .line 609
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    .line 613
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Dismissed;->p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->dismissed()V

    .line 614
    return-void
.end method
