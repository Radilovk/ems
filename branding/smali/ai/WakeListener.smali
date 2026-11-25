.class public final Lcom/isaigu/gymapp/ai/WakeListener;
.super Ljava/lang/Object;
.source "WakeListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/WakeListener$Mic;,
        Lcom/isaigu/gymapp/ai/WakeListener$DialogCommand;,
        Lcom/isaigu/gymapp/ai/WakeListener$Listener;,
        Lcom/isaigu/gymapp/ai/WakeListener$VoiceBack;,
        Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;,
        Lcom/isaigu/gymapp/ai/WakeListener$TtsInit;,
        Lcom/isaigu/gymapp/ai/WakeListener$Release;,
        Lcom/isaigu/gymapp/ai/WakeListener$Recognize;,
        Lcom/isaigu/gymapp/ai/WakeListener$Follow;,
        Lcom/isaigu/gymapp/ai/WakeListener$SpotterAgain;,
        Lcom/isaigu/gymapp/ai/WakeListener$Spoken;,
        Lcom/isaigu/gymapp/ai/WakeListener$Wake;,
        Lcom/isaigu/gymapp/ai/WakeListener$SetupEvent;
    }
.end annotation


# static fields
.field static final ARMED_MS:J = 0x1770L

.field static final DEAD_PEAK:I = 0xc

.field private static final FOLLOW:Ljava/lang/Runnable;

.field private static final MAIN:Landroid/os/Handler;

.field static final PREFS:Ljava/lang/String; = "xems_wake"

.field private static final RECOGNIZE:Ljava/lang/Runnable;

.field static final SILENT_MS:J = 0x9c4L

.field static final SOURCES:[I

.field static final SPOKEN:Lcom/isaigu/gymapp/ai/WakeListener$Spoken;

.field static final SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

.field private static final SPOTTER_AGAIN:Ljava/lang/Runnable;

.field static final VOICE_BACK:Lcom/isaigu/gymapp/ai/WakeListener$VoiceBack;

.field private static armedUntil:J

.field private static ctx:Landroid/content/Context;

.field static followUp:Z

.field private static followUps:I

.field private static host:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field static volatile level:I

.field private static loaded:Z

.field private static volatile micGen:I

.field private static volatile micRun:Z

.field private static micThread:Ljava/lang/Thread;

.field private static on:Z

.field private static rec:Landroid/speech/SpeechRecognizer;

.field private static serviceOk:Ljava/lang/Boolean;

.field static volatile setup:Lcom/isaigu/gymapp/ai/WakeSetup$Sink;

.field static volatile silent:Z

.field private static srcIdx:I

.field private static state:Ljava/lang/String;

.field private static tts:Landroid/speech/tts/TextToSpeech;

.field private static ttsOk:Z

.field private static volNotify:I

.field private static volSystem:I

.field private static window:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, -0x1

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    .line 52
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeWord;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    .line 72
    sput v2, Lcom/isaigu/gymapp/ai/WakeListener;->volSystem:I

    sput v2, Lcom/isaigu/gymapp/ai/WakeListener;->volNotify:I

    .line 78
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    .line 239
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_4a

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    .line 242
    sput v2, Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I

    .line 491
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeListener$Recognize;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeListener$Recognize;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->RECOGNIZE:Ljava/lang/Runnable;

    .line 762
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeListener$Follow;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeListener$Follow;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->FOLLOW:Ljava/lang/Runnable;

    .line 763
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeListener$SpotterAgain;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeListener$SpotterAgain;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER_AGAIN:Ljava/lang/Runnable;

    .line 764
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeListener$Spoken;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeListener$Spoken;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOKEN:Lcom/isaigu/gymapp/ai/WakeListener$Spoken;

    .line 772
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeListener$VoiceBack;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeListener$VoiceBack;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->VOICE_BACK:Lcom/isaigu/gymapp/ai/WakeListener$VoiceBack;

    return-void

    .line 239
    nop

    :array_4a
    .array-data 4
        0x6
        0x1
        0x5
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    .prologue
    .line 45
    sput-boolean p0, Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z

    return p0
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 45
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->startSource()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000()V
    .registers 0

    .prologue
    .line 45
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->destroyRecognizer()V

    return-void
.end method

.method static synthetic access$1100()I
    .registers 1

    .prologue
    .line 45
    sget v0, Lcom/isaigu/gymapp/ai/WakeListener;->followUps:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .registers 1

    .prologue
    .line 45
    sput p0, Lcom/isaigu/gymapp/ai/WakeListener;->followUps:I

    return p0
.end method

.method static synthetic access$1202(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 45
    sput-object p0, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300()V
    .registers 0

    .prologue
    .line 45
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->initTts()V

    return-void
.end method

.method static synthetic access$1400()Z
    .registers 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->ttsOk:Z

    return v0
.end method

.method static synthetic access$1402(Z)Z
    .registers 1

    .prologue
    .line 45
    sput-boolean p0, Lcom/isaigu/gymapp/ai/WakeListener;->ttsOk:Z

    return p0
.end method

.method static synthetic access$1500()Landroid/speech/tts/TextToSpeech;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER_AGAIN:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700()Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->FOLLOW:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 45
    sget v0, Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I

    return v0
.end method

.method static synthetic access$302(I)I
    .registers 1

    .prologue
    .line 45
    sput p0, Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I

    return p0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500()Z
    .registers 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    return v0
.end method

.method static synthetic access$600(I)V
    .registers 1

    .prologue
    .line 45
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WakeListener;->keepSource(I)V

    return-void
.end method

.method static synthetic access$700()Z
    .registers 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    return v0
.end method

.method static synthetic access$800()V
    .registers 0

    .prologue
    .line 45
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->begin()V

    return-void
.end method

.method static synthetic access$900(J)V
    .registers 2

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V

    return-void
.end method

.method private static act(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 897
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/ai/AiTrain;->voice(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 898
    if-nez v0, :cond_e

    .line 899
    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->tone(I)V

    .line 905
    :goto_d
    return-void

    .line 900
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_18

    .line 901
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->say(Ljava/lang/String;)V

    goto :goto_d

    .line 903
    :cond_18
    const/16 v0, 0x19

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->tone(I)V

    goto :goto_d
.end method

.method static afterWindow(J)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 855
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    .line 856
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    .line 857
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->voiceState()V

    .line 858
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->cancelRecognizer()V

    .line 859
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    if-nez v0, :cond_12

    .line 868
    :goto_11
    return-void

    .line 862
    :cond_12
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord;->ready()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 863
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WakeListener;->mute(Z)V

    .line 864
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;-><init>()V

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_11

    .line 866
    :cond_28
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V

    goto :goto_11
.end method

.method static announce(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 740
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-nez v0, :cond_d

    .line 760
    :cond_c
    :goto_c
    return-void

    .line 743
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->initTts()V

    .line 744
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->ttsOk:Z

    if-eqz v0, :cond_18

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_1e

    :cond_18
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->cloud()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 748
    :cond_1e
    :try_start_1e
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    if-eqz v0, :cond_29

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    if-nez v0, :cond_29

    .line 749
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStop()V

    .line 751
    :cond_29
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSpeak;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 752
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->cloud()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 753
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    const-string v2, "xems-ann"

    const/4 v3, 0x0

    sget-object v4, Lcom/isaigu/gymapp/ai/WakeListener;->VOICE_BACK:Lcom/isaigu/gymapp/ai/WakeListener$VoiceBack;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/isaigu/gymapp/ai/CloudVoice;->speak(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/CloudVoice$Fallback;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_3d} :catch_3e

    goto :goto_c

    .line 757
    :catch_3e
    move-exception v0

    .line 758
    const-string v1, "wake"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "announce: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 756
    :cond_58
    :try_start_58
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "xems-ann"

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_61} :catch_3e

    goto :goto_c
.end method

.method static answer(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 695
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WakeListener;->answer(Ljava/lang/String;Z)V

    .line 696
    return-void
.end method

.method static answer(Ljava/lang/String;Z)V
    .registers 12

    .prologue
    .line 704
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 733
    :cond_c
    :goto_c
    return-void

    .line 707
    :cond_d
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    if-nez v0, :cond_1c

    .line 709
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_c

    .line 712
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->initTts()V

    .line 713
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WakeListener;->say(Ljava/lang/String;)V

    goto :goto_c

    .line 716
    :cond_1c
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->FOLLOW:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 717
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStop()V

    .line 718
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    if-eqz v0, :cond_2d

    .line 719
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->endWindow()V

    .line 721
    :cond_2d
    if-eqz p1, :cond_53

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->FOLLOW:Ljava/lang/Runnable;

    .line 722
    :goto_31
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER_AGAIN:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 723
    sget-boolean v1, Lcom/isaigu/gymapp/ai/WakeListener;->ttsOk:Z

    if-eqz v1, :cond_40

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;

    if-nez v1, :cond_56

    :cond_40
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->cloud()Z

    move-result v1

    if-nez v1, :cond_56

    .line 724
    const/16 v1, 0x19

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WakeListener;->tone(I)V

    .line 725
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c

    .line 721
    :cond_53
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER_AGAIN:Ljava/lang/Runnable;

    goto :goto_31

    .line 728
    :cond_56
    const-string v1, "speaking"

    sput-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    .line 729
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->voiceState()V

    .line 730
    if-eqz p1, :cond_7b

    const-string v1, "xems-listen"

    :goto_61
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->say(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    const-wide/16 v2, 0x55f0

    const-wide/16 v4, 0x9c4

    const-wide/16 v6, 0x4b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    int-to-long v8, v8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c

    .line 730
    :cond_7b
    const-string v1, "xems-said"

    goto :goto_61
.end method

.method private static begin()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 508
    sget-boolean v1, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    if-eqz v1, :cond_9

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-nez v1, :cond_a

    .line 556
    :cond_9
    :goto_9
    return-void

    .line 512
    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_c
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/WakeListener;->permitted(Landroid/app/Activity;Z)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 513
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_17} :catch_18

    goto :goto_9

    .line 551
    :catch_18
    move-exception v0

    .line 552
    const-string v1, "wake"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "begin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->destroyRecognizer()V

    .line 554
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->afterWindow(J)V

    goto :goto_9

    .line 516
    :cond_3a
    :try_start_3a
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    if-nez v1, :cond_64

    .line 517
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-static {v1}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    .line 518
    const-string v1, "wake"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "background recognizer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :cond_64
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9f

    .line 523
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->host:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_78

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->host:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 524
    :cond_78
    sget-boolean v1, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    if-eqz v1, :cond_8e

    if-eqz v0, :cond_8e

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_8e

    .line 525
    new-instance v1, Lcom/isaigu/gymapp/ai/WakeListener$DialogCommand;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/WakeListener$DialogCommand;-><init>()V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/VoiceInput;->listen(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/VoiceInput$Result;)V

    goto/16 :goto_9

    .line 526
    :cond_8e
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    if-eqz v0, :cond_99

    .line 527
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->afterWindow(J)V

    goto/16 :goto_9

    .line 529
    :cond_99
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->mute(Z)V

    goto/16 :goto_9

    .line 533
    :cond_9f
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    if-nez v0, :cond_b5

    .line 534
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    .line 535
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    new-instance v1, Lcom/isaigu/gymapp/ai/WakeListener$Listener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/WakeListener$Listener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 537
    :cond_b5
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 538
    const-string v0, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->bg()Z

    move-result v0

    if-eqz v0, :cond_105

    const-string v0, "bg-BG"

    .line 540
    :goto_cb
    const-string v2, "android.speech.extra.LANGUAGE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    const-string v2, "android.speech.extra.LANGUAGE_PREFERENCE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    const-string v0, "android.speech.extra.PREFER_OFFLINE"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 543
    const-string v0, "android.speech.extra.MAX_RESULTS"

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 544
    const-string v0, "calling_package"

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    if-eqz v0, :cond_fe

    .line 547
    const-string v0, "android.speech.extras.SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS"

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 548
    const-string v0, "android.speech.extras.SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS"

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 550
    :cond_fe
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 539
    :cond_105
    const-string v0, "en-US"
    :try_end_107
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_107} :catch_18

    goto :goto_cb
.end method

.method static beginSetup(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/WakeSetup$Sink;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    .line 122
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->RECOGNIZE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 123
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->destroyRecognizer()V

    .line 124
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    .line 125
    sput-object p1, Lcom/isaigu/gymapp/ai/WakeListener;->setup:Lcom/isaigu/gymapp/ai/WakeSetup$Sink;

    .line 126
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WakeListener;->silent:Z

    .line 127
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStart()V

    .line 128
    return-void
.end method

.method static bestVoice()V
    .registers 6

    .prologue
    .line 970
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_12

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getVoices()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_13

    .line 996
    :cond_12
    :goto_12
    return-void

    .line 973
    :cond_13
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->bg()Z

    move-result v0

    if-eqz v0, :cond_7f

    const-string v0, "bg"

    move-object v2, v0

    .line 974
    :goto_1c
    const/4 v1, 0x0

    .line 975
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getVoices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_27
    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/Voice;

    .line 976
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v4

    if-eqz v4, :cond_27

    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 979
    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getFeatures()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_5b

    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getFeatures()Ljava/util/Set;

    move-result-object v4

    const-string v5, "notInstalled"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 982
    :cond_5b
    if-eqz v1, :cond_7d

    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getQuality()I

    move-result v4

    invoke-virtual {v1}, Landroid/speech/tts/Voice;->getQuality()I

    move-result v5

    if-gt v4, v5, :cond_7d

    .line 983
    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getQuality()I

    move-result v4

    invoke-virtual {v1}, Landroid/speech/tts/Voice;->getQuality()I

    move-result v5

    if-ne v4, v5, :cond_f2

    invoke-virtual {v1}, Landroid/speech/tts/Voice;->isNetworkConnectionRequired()Z

    move-result v4

    if-eqz v4, :cond_f2

    .line 984
    invoke-virtual {v0}, Landroid/speech/tts/Voice;->isNetworkConnectionRequired()Z

    move-result v4

    if-nez v4, :cond_f2

    :cond_7d
    :goto_7d
    move-object v1, v0

    .line 987
    goto :goto_27

    .line 973
    :cond_7f
    const-string v0, "en"

    move-object v2, v0

    goto :goto_1c

    .line 988
    :cond_83
    if-eqz v1, :cond_8a

    .line 989
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setVoice(Landroid/speech/tts/Voice;)I

    .line 991
    :cond_8a
    const-string v2, "wake"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tts voice "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_ef

    .line 992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 991
    invoke-virtual {v1}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " q="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/speech/tts/Voice;->getQuality()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 992
    invoke-virtual {v1}, Landroid/speech/tts/Voice;->isNetworkConnectionRequired()Z

    move-result v0

    if-eqz v0, :cond_ec

    const-string v0, " net"

    :goto_bc
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_c4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 991
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cf
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_cf} :catch_d1

    goto/16 :goto_12

    .line 993
    :catch_d1
    move-exception v0

    .line 994
    const-string v1, "wake"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "voice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 992
    :cond_ec
    :try_start_ec
    const-string v0, " local"

    goto :goto_bc

    :cond_ef
    const-string v0, "default"
    :try_end_f1
    .catch Ljava/lang/Throwable; {:try_start_ec .. :try_end_f1} :catch_d1

    goto :goto_c4

    :cond_f2
    move-object v0, v1

    goto :goto_7d
.end method

.method static bg()Z
    .registers 2

    .prologue
    .line 932
    const-string v0, "bg"

    const-string v1, "en"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static bind(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 768
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-nez v0, :cond_c

    if-eqz p0, :cond_c

    .line 769
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    .line 771
    :cond_c
    return-void
.end method

.method private static cancelRecognizer()V
    .registers 1

    .prologue
    .line 910
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_9

    .line 911
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 916
    :cond_9
    :goto_9
    return-void

    .line 913
    :catch_a
    move-exception v0

    .line 914
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->destroyRecognizer()V

    goto :goto_9
.end method

.method static cloud()Z
    .registers 1

    .prologue
    .line 776
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/CloudVoice;->usable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static commandHeard(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 658
    if-eqz p0, :cond_5b

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5b

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5b

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 660
    :goto_19
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->afterWake(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 661
    if-eqz v1, :cond_20

    move-object v0, v1

    .line 664
    :cond_20
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_65

    .line 665
    const-string v1, "wake"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "command \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    sget-boolean v2, Lcom/isaigu/gymapp/ai/WakeListener;->followUp:Z

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiTrain;->voice(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 667
    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5e

    .line 670
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->endWindow()V

    .line 671
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/WakeListener;->answer(Ljava/lang/String;Z)V

    .line 680
    :goto_5a
    return-void

    .line 658
    :cond_5b
    const-string v0, ""

    goto :goto_19

    .line 674
    :cond_5e
    if-nez v0, :cond_65

    .line 675
    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->tone(I)V

    .line 679
    :cond_65
    const-wide/16 v0, 0x12c

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->afterWindow(J)V

    goto :goto_5a
.end method

.method private static destroyRecognizer()V
    .registers 1

    .prologue
    .line 920
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_e

    .line 921
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 922
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_12

    .line 926
    :cond_e
    :goto_e
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    .line 927
    return-void

    .line 924
    :catch_12
    move-exception v0

    goto :goto_e
.end method

.method static endSetup(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 131
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->setup:Lcom/isaigu/gymapp/ai/WakeSetup$Sink;

    .line 132
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    if-nez v0, :cond_b

    .line 133
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStop()V

    .line 144
    :goto_a
    return-void

    .line 136
    :cond_b
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord;->ready()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 137
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->mute(Z)V

    .line 138
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStart()V

    goto :goto_a

    .line 140
    :cond_1b
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStop()V

    .line 141
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->mute(Z)V

    .line 142
    const-wide/16 v0, 0x12c

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V

    goto :goto_a
.end method

.method private static endWindow()V
    .registers 1

    .prologue
    .line 684
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    .line 685
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    .line 686
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->cancelRecognizer()V

    .line 687
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->voiceState()V

    .line 688
    return-void
.end method

.method public static enrolled(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 90
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WakeListener;->load(Landroid/content/Context;)V

    .line 91
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord;->ready()Z

    move-result v0

    return v0
.end method

.method static heardFallback(Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 872
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 894
    :cond_b
    :goto_b
    return-void

    .line 875
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 876
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 877
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->afterWake(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 878
    if-eqz v0, :cond_14

    .line 881
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_37

    .line 882
    const-wide/16 v0, 0x1770

    add-long/2addr v0, v2

    sput-wide v0, Lcom/isaigu/gymapp/ai/WakeListener;->armedUntil:J

    .line 883
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->tone(I)V

    goto :goto_b

    .line 886
    :cond_37
    sput-wide v6, Lcom/isaigu/gymapp/ai/WakeListener;->armedUntil:J

    .line 887
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->act(Ljava/lang/String;)V

    goto :goto_b

    .line 890
    :cond_3d
    sget-wide v0, Lcom/isaigu/gymapp/ai/WakeListener;->armedUntil:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_b

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 891
    sput-wide v6, Lcom/isaigu/gymapp/ai/WakeListener;->armedUntil:J

    .line 892
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->act(Ljava/lang/String;)V

    goto :goto_b
.end method

.method static hex([B)Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, 0x10

    .line 1071
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1072
    array-length v2, p0

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v2, :cond_28

    aget-byte v3, p0, v0

    .line 1073
    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1072
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1075
    :cond_28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initTts()V
    .registers 4

    .prologue
    .line 936
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_8

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-nez v0, :cond_9

    .line 944
    :cond_8
    :goto_8
    return-void

    .line 940
    :cond_9
    :try_start_9
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    new-instance v2, Lcom/isaigu/gymapp/ai/WakeListener$TtsInit;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/WakeListener$TtsInit;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_17} :catch_18

    goto :goto_8

    .line 941
    :catch_18
    move-exception v0

    .line 942
    const-string v1, "wake"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public static isOn()Z
    .registers 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    return v0
.end method

.method private static keepSource(I)V
    .registers 4

    .prologue
    .line 269
    sget v0, Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I

    if-ne p0, v0, :cond_27

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_27

    .line 271
    :try_start_8
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    const-string v1, "xems_wake"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 272
    const-string v1, "src"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p0, :cond_27

    .line 273
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "src"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_27} :catch_28

    .line 278
    :cond_27
    :goto_27
    return-void

    .line 275
    :catch_28
    move-exception v0

    goto :goto_27
.end method

.method static levelOf(I)I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 248
    const/4 v1, 0x1

    if-gt p0, v1, :cond_5

    .line 251
    :goto_4
    return v0

    :cond_5
    const/16 v1, 0x64

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    int-to-double v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide v4, 0x4010cccccccccccdL    # 4.2

    div-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_4
.end method

.method static load(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 95
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->loaded:Z

    if-nez v0, :cond_6

    if-nez p0, :cond_7

    .line 107
    :cond_6
    :goto_6
    return-void

    .line 98
    :cond_7
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->loaded:Z

    .line 100
    :try_start_a
    const-string v0, "xems_wake"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tpl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 102
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->unhex(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/ai/WakeWord;->load([B)Z
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_28} :catch_29

    goto :goto_6

    .line 104
    :catch_29
    move-exception v0

    .line 105
    const-string v1, "wake"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method static micStart()V
    .registers 3

    .prologue
    .line 212
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z

    if-eqz v0, :cond_5

    .line 219
    :goto_4
    return-void

    .line 215
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z

    .line 216
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    .line 217
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/ai/WakeListener$Mic;

    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/ai/WakeListener$Mic;-><init>(I)V

    const-string v2, "xems-wake"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->micThread:Ljava/lang/Thread;

    .line 218
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->micThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_4
.end method

.method static micStop()V
    .registers 4

    .prologue
    .line 222
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z

    .line 223
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->micThread:Ljava/lang/Thread;

    .line 224
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->micThread:Ljava/lang/Thread;

    .line 225
    if-eqz v0, :cond_f

    .line 227
    const-wide/16 v2, 0x258

    :try_start_c
    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_10

    .line 231
    :cond_f
    :goto_f
    return-void

    .line 228
    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method private static mute(Z)V
    .registers 5

    .prologue
    .line 1049
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    check-cast v0, Landroid/media/AudioManager;

    .line 1050
    if-nez v0, :cond_13

    .line 1068
    :cond_10
    :goto_10
    return-void

    .line 1049
    :cond_11
    const/4 v0, 0x0

    goto :goto_c

    .line 1053
    :cond_13
    if-eqz p0, :cond_4e

    .line 1054
    sget v1, Lcom/isaigu/gymapp/ai/WakeListener;->volSystem:I

    if-gez v1, :cond_27

    .line 1055
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/ai/WakeListener;->volSystem:I

    .line 1056
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/ai/WakeListener;->volNotify:I

    .line 1058
    :cond_27
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1059
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_33} :catch_34

    goto :goto_10

    .line 1065
    :catch_34
    move-exception v0

    .line 1066
    const-string v1, "wake"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 1060
    :cond_4e
    :try_start_4e
    sget v1, Lcom/isaigu/gymapp/ai/WakeListener;->volSystem:I

    if-ltz v1, :cond_10

    .line 1061
    const/4 v1, 0x1

    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->volSystem:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1062
    const/4 v1, 0x5

    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->volNotify:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1063
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/WakeListener;->volNotify:I

    sput v0, Lcom/isaigu/gymapp/ai/WakeListener;->volSystem:I
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_65} :catch_34

    goto :goto_10
.end method

.method public static needsDialog()Z
    .registers 2

    .prologue
    .line 586
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static open(I)Landroid/media/AudioRecord;
    .registers 8

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x2

    const/16 v0, 0x3e80

    const/4 v6, 0x0

    .line 281
    invoke-static {v0, v2, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    .line 284
    :try_start_a
    new-instance v0, Landroid/media/AudioRecord;

    const/16 v2, 0x3e80

    const/16 v3, 0x10

    const/4 v4, 0x2

    const/16 v5, 0x3e80

    .line 285
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_1b} :catch_72

    .line 286
    :try_start_1b
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_45

    .line 287
    const-string v1, "wake"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mic source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": not initialized"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    move-object v0, v6

    .line 306
    :cond_44
    :goto_44
    return-object v0

    .line 291
    :cond_45
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 292
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_44

    .line 293
    const-string v1, "wake"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mic source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": does not record (busy?)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_70} :catch_a0

    move-object v0, v6

    .line 295
    goto :goto_44

    .line 298
    :catch_72
    move-exception v0

    move-object v1, v0

    move-object v2, v6

    .line 299
    :goto_75
    const-string v0, "wake"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mic source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    if-eqz v2, :cond_9c

    .line 302
    :try_start_99
    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_9c} :catch_9e

    :cond_9c
    :goto_9c
    move-object v0, v6

    .line 306
    goto :goto_44

    .line 303
    :catch_9e
    move-exception v0

    goto :goto_9c

    .line 298
    :catch_a0
    move-exception v1

    move-object v2, v0

    goto :goto_75
.end method

.method static openWindow()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    .line 476
    sput-boolean v4, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    .line 477
    const-string v0, "listening"

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    .line 478
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->voiceState()V

    .line 481
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->host:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_37

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->host:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 482
    :goto_17
    if-eqz v1, :cond_43

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_43

    new-instance v2, Lcom/isaigu/gymapp/ai/WakeListener$DialogCommand;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/WakeListener$DialogCommand;-><init>()V

    .line 483
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->followUp:Z

    if-eqz v0, :cond_3a

    const-string v0, "\u0421\u043b\u0443\u0448\u0430\u043c\u2026"

    const-string v3, "Listening\u2026"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 482
    :goto_30
    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/ai/VoiceInput;->listen(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/VoiceInput$Result;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 489
    :goto_36
    return-void

    .line 481
    :cond_37
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_17

    .line 483
    :cond_3a
    const-string v0, "\u0422\u0440\u0435\u043d\u0435\u0440 \u0441\u043b\u0443\u0448\u0430 \u2014 \u043a\u0430\u0436\u0438 \u043a\u043e\u043c\u0430\u043d\u0434\u0430 \u0438\u043b\u0438 \u0432\u044a\u043f\u0440\u043e\u0441"

    const-string v3, "The trainer listens \u2014 a command or a question"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    .line 487
    :cond_43
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/WakeListener;->mute(Z)V

    .line 488
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V

    goto :goto_36
.end method

.method static permitted(Landroid/app/Activity;Z)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 196
    if-eqz p0, :cond_10

    move-object v2, p0

    .line 197
    :goto_5
    if-eqz v2, :cond_d

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_15

    .line 198
    :cond_d
    if-eqz v2, :cond_13

    .line 206
    :cond_f
    :goto_f
    return v0

    .line 196
    :cond_10
    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    goto :goto_5

    :cond_13
    move v0, v1

    .line 198
    goto :goto_f

    .line 200
    :cond_15
    const-string v3, "android.permission.RECORD_AUDIO"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    .line 203
    if-eqz p1, :cond_2c

    if-eqz p0, :cond_2c

    .line 204
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v1

    const/16 v2, 0x5a2

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_2c
    move v0, v1

    .line 206
    goto :goto_f
.end method

.method private static recognize(J)V
    .registers 4

    .prologue
    .line 501
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->RECOGNIZE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 502
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    if-eqz v0, :cond_12

    .line 503
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->RECOGNIZE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 505
    :cond_12
    return-void
.end method

.method static reloadExamples(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 149
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord;->clear()V

    .line 150
    const-string v0, "xems_wake"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tpl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_23

    .line 152
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->unhex(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/ai/WakeWord;->load([B)Z
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_23} :catch_24

    .line 157
    :cond_23
    :goto_23
    return-void

    .line 154
    :catch_24
    move-exception v0

    .line 155
    const-string v1, "wake"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23
.end method

.method static saveExamples(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 111
    :try_start_0
    const-string v0, "xems_wake"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tpl"

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/WakeWord;->save()[B

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 115
    :goto_1e
    return-void

    .line 112
    :catch_1f
    move-exception v0

    .line 113
    const-string v1, "wake"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method

.method static say(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1000
    const-string v0, "xems"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WakeListener;->say(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    return-void
.end method

.method static say(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/16 v5, 0x19

    const/4 v4, 0x0

    const/16 v3, 0x190

    .line 1004
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->cloud()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1005
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSpeak;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1006
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_1b

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1b
    const/4 v2, 0x1

    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->VOICE_BACK:Lcom/isaigu/gymapp/ai/WakeListener$VoiceBack;

    invoke-static {v1, v0, p1, v2, v3}, Lcom/isaigu/gymapp/ai/CloudVoice;->speak(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/CloudVoice$Fallback;)V

    .line 1019
    :goto_21
    return-void

    .line 1009
    :cond_22
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->ttsOk:Z

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_2e

    .line 1010
    :cond_2a
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WakeListener;->tone(I)V

    goto :goto_21

    .line 1014
    :cond_2e
    :try_start_2e
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSpeak;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1015
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_41

    const/4 v2, 0x0

    const/16 v3, 0x190

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_41
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, p1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_46} :catch_47

    goto :goto_21

    .line 1016
    :catch_47
    move-exception v0

    .line 1017
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WakeListener;->tone(I)V

    goto :goto_21
.end method

.method public static start(Landroid/app/Activity;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 162
    if-nez p0, :cond_5

    .line 181
    :goto_4
    return v0

    .line 165
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    .line 166
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->host:Ljava/lang/ref/WeakReference;

    .line 167
    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->load(Landroid/content/Context;)V

    .line 168
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->permitted(Landroid/app/Activity;Z)Z

    move-result v2

    if-nez v2, :cond_24

    .line 169
    const-string v2, "wake"

    const-string v3, "asking for the microphone"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_24
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    .line 172
    sput v0, Lcom/isaigu/gymapp/ai/WakeListener;->followUps:I

    .line 173
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->initTts()V

    .line 174
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->warmRecognizer()V

    .line 175
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord;->ready()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 176
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStart()V

    :goto_39
    move v0, v1

    .line 181
    goto :goto_4

    .line 178
    :cond_3b
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WakeListener;->mute(Z)V

    .line 179
    const-wide/16 v2, 0x12c

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V

    goto :goto_39
.end method

.method private static startSource()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 255
    sget v0, Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I

    if-gez v0, :cond_2b

    .line 256
    sput v1, Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I

    .line 258
    :try_start_7
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_2b

    .line 259
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    const-string v3, "xems_wake"

    const/4 v4, 0x0

    .line 260
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "src"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 259
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_2b} :catch_2e

    .line 265
    :cond_2b
    :goto_2b
    sget v0, Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I

    return v0

    .line 262
    :catch_2e
    move-exception v0

    goto :goto_2b
.end method

.method public static state()Ljava/lang/String;
    .registers 1

    .prologue
    .line 85
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    return-object v0
.end method

.method public static stop()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 185
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    .line 186
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/WakeListener;->armedUntil:J

    .line 187
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    .line 188
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStop()V

    .line 189
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->RECOGNIZE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 190
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->destroyRecognizer()V

    .line 191
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    .line 192
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->mute(Z)V

    .line 193
    return-void
.end method

.method static tone(I)V
    .registers 7

    .prologue
    .line 1023
    :try_start_0
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x3

    const/16 v2, 0x37

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 1024
    const/16 v1, 0xb4

    invoke-virtual {v0, p0, v1}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 1025
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/ai/WakeListener$Release;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/ai/WakeListener$Release;-><init>(Landroid/media/ToneGenerator;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_19} :catch_1a

    .line 1028
    :goto_19
    return-void

    .line 1026
    :catch_1a
    move-exception v0

    goto :goto_19
.end method

.method static unhex(Ljava/lang/String;)[B
    .registers 5

    .prologue
    .line 1079
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    .line 1080
    const/4 v0, 0x0

    :goto_9
    array-length v2, v1

    if-ge v0, v2, :cond_22

    .line 1081
    mul-int/lit8 v2, v0, 0x2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 1080
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1083
    :cond_22
    return-object v1
.end method

.method private static warmRecognizer()V
    .registers 4

    .prologue
    .line 561
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    if-nez v0, :cond_2a

    .line 562
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    .line 563
    const-string v0, "wake"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "background recognizer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    :cond_2a
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_48

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    if-nez v0, :cond_48

    .line 566
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    .line 567
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    new-instance v1, Lcom/isaigu/gymapp/ai/WakeListener$Listener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/WakeListener$Listener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_48} :catch_49

    .line 572
    :cond_48
    :goto_48
    return-void

    .line 569
    :catch_49
    move-exception v0

    .line 570
    const-string v1, "wake"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "warm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48
.end method
