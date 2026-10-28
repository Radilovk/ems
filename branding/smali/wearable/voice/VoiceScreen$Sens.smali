.class final Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Sens;
.super Ljava/lang/Object;
.source "VoiceScreen.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Sens"
.end annotation


# instance fields
.field final p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V
    .registers 2

    .prologue
    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Sens;->p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    .line 637
    return-void
.end method


# virtual methods
.method public onIndex(I)V
    .registers 3

    .prologue
    .line 641
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Sens;->p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->sens(I)V

    .line 642
    return-void
.end method
