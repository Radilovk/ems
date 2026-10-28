.class public final Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;
.super Ljava/lang/Object;
.source "VoiceScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;,
        Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Dismissed;,
        Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Tick;,
        Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Next;,
        Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Rec;,
        Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Find;,
        Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Sens;,
        Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Redo;,
        Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Go;
    }
.end annotation


# static fields
.field static final ORDER:[Ljava/lang/String;

.field static final TIMES:I = 0x3

.field static final TINT:I = -0xc74208

.field static current:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 34
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "one"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "two"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "three"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "start"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "pause"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "stop"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "plus"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "minus"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->ORDER:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static colorOf(Ljava/lang/String;)I
    .registers 2

    .prologue
    .line 71
    const-string v0, "stop"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    .line 74
    :goto_a
    return v0

    .line 72
    :cond_b
    const-string v0, "pause"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_a

    .line 73
    :cond_16
    const-string v0, "start"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    goto :goto_a

    .line 74
    :cond_21
    const v0, -0xc74208

    goto :goto_a
.end method

.method public static open(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 43
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->current:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    .line 44
    if-eqz v0, :cond_f

    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->closed:Z

    if-nez v1, :cond_f

    .line 45
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 47
    :cond_f
    new-instance v0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->current:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    .line 48
    sget-object v0, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->current:Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen$Page;->show()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 52
    :goto_1b
    return-void

    .line 49
    :catch_1c
    move-exception v0

    .line 50
    const-string v1, "VoiceScreen.open"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static word(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 60
    const-string v0, "one"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "\u0435\u0434\u043d\u043e"

    const-string v1, "one"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_10
    return-object v0

    .line 61
    :cond_11
    const-string v0, "two"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "\u0434\u0432\u0435"

    const-string v1, "two"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 62
    :cond_22
    const-string v0, "three"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "\u0442\u0440\u0438"

    const-string v1, "three"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 63
    :cond_33
    const-string v0, "start"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "\u0441\u0442\u0430\u0440\u0442"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 64
    :cond_44
    const-string v0, "pause"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "\u043f\u0430\u0443\u0437\u0430"

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 65
    :cond_55
    const-string v0, "stop"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "\u0441\u0442\u043e\u043f"

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 66
    :cond_66
    const-string v0, "plus"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    const-string v0, "\u0443\u0432\u0435\u043b\u0438\u0447\u0438 \u0438\u043c\u043f\u0443\u043b\u0441\u0430"

    const-string v1, "more impulse"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 67
    :cond_77
    const-string v0, "\u043d\u0430\u043c\u0430\u043b\u0438 \u0438\u043c\u043f\u0443\u043b\u0441\u0430"

    const-string v1, "less impulse"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method
