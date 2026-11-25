.class final Lcom/isaigu/gymapp/ai/VoiceSettings$Hear;
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
    name = "Hear"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 186
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 187
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiTrain;->activity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_19

    .line 189
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->bind(Landroid/content/Context;)V

    .line 190
    const-string v1, "\u0417\u0434\u0440\u0430\u0432\u0435\u0439! \u0410\u0437 \u0441\u044a\u043c \u0442\u0432\u043e\u044f\u0442 \u0442\u0440\u0435\u043d\u044c\u043e\u0440. \u0412\u0434\u0438\u0433\u0430\u043c \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435\u0442\u043e \u0441 \u0435\u0434\u043d\u0430 \u0441\u0442\u044a\u043f\u043a\u0430 \u2014 \u043d\u0430\u043f\u0440\u0430\u0432\u0438 \u0434\u0435\u0441\u0435\u0442 \u0431\u0430\u0432\u043d\u0438 \u043c\u043e\u0441\u0442\u0430."

    const-string v2, "Hi! I am your coach. Glutes up one step \u2014 ten slow bridges, please."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->VOICE_BACK:Lcom/isaigu/gymapp/ai/WakeListener$VoiceBack;

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/CloudVoice;->preview(Landroid/content/Context;Ljava/lang/String;Lcom/isaigu/gymapp/ai/CloudVoice$Fallback;)V

    .line 192
    :cond_19
    return-void
.end method
