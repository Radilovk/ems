.class final Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Go;
.super Ljava/lang/Object;
.source "VoiceScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Go"
.end annotation


# instance fields
.field final p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;)V
    .registers 2

    .prologue
    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Go;->p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    .line 607
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 611
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 612
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Go;->p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->go()V

    .line 613
    return-void
.end method
