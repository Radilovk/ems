.class final Lcom/isaigu/gymapp/ai/VoiceSettings$Pick;
.super Ljava/lang/Object;
.source "VoiceSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/VoiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Pick"
.end annotation


# instance fields
.field final rate:Ljava/lang/String;

.field final voice:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/VoiceSettings$Pick;->voice:Ljava/lang/String;

    .line 157
    iput-object p2, p0, Lcom/isaigu/gymapp/ai/VoiceSettings$Pick;->rate:Ljava/lang/String;

    .line 158
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 162
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 163
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiTrain;->activity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/VoiceSettings$Pick;->voice:Ljava/lang/String;

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/VoiceSettings$Pick;->rate:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/ai/CloudVoice;->choose(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/VoiceSettings;->refresh(Landroid/app/Activity;Z)V

    .line 166
    return-void
.end method
