.class final Lcom/isaigu/gymapp/ai/VoiceSettings$Tempo;
.super Ljava/lang/Object;
.source "VoiceSettings.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/VoiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Tempo"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/VoiceSettings$Tempo;->a:Landroid/app/Activity;

    .line 174
    return-void
.end method


# virtual methods
.method public onIndex(I)V
    .registers 7

    .prologue
    .line 178
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/VoiceSettings$Tempo;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    sget-object v2, Lcom/isaigu/gymapp/ai/CloudVoice;->RATES:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/CloudVoice;->choose(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/VoiceSettings$Tempo;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/VoiceSettings;->refresh(Landroid/app/Activity;Z)V

    .line 180
    return-void
.end method
