.class final Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Redo;
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
    name = "Redo"
.end annotation


# instance fields
.field final p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

.field final w:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Redo;->p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    .line 611
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Redo;->w:Ljava/lang/String;

    .line 612
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 616
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 617
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Redo;->p:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Redo;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->redo(Ljava/lang/String;)V

    .line 618
    return-void
.end method
