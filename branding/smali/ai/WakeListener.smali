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
        Lcom/isaigu/gymapp/ai/WakeListener$NoSpeech;,
        Lcom/isaigu/gymapp/ai/WakeListener$NotReady;,
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

.field static final DIALOG_MS:J = 0x1388L

.field static final ECHO_MS:J = 0x1c2L

.field private static final FOLLOW:Ljava/lang/Runnable;

.field private static final LATER:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAIN:Landroid/os/Handler;

.field private static final NOT_READY:Ljava/lang/Runnable;

.field private static final NO_SPEECH:Ljava/lang/Runnable;

.field static final PREFS:Ljava/lang/String; = "xems_wake"

.field static final READY_MS:J = 0xbb8L

.field private static final RECOGNIZE:Ljava/lang/Runnable;

.field static final SILENT_MS:J = 0x9c4L

.field static final SOURCES:[I

.field static final SPEAK_FOLLOW_MS:J = 0x1194L

.field static final SPEAK_MS:J = 0xbb8L

.field static final SPOKEN:Lcom/isaigu/gymapp/ai/WakeListener$Spoken;

.field static final SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

.field private static final SPOTTER_AGAIN:Ljava/lang/Runnable;

.field static final VOICE_BACK:Lcom/isaigu/gymapp/ai/WakeListener$VoiceBack;

.field private static armedUntil:J

.field private static bgFails:I

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

.field private static volatile quietSince:J

.field private static volatile readySeen:Z

.field private static rec:Landroid/speech/SpeechRecognizer;

.field private static serviceOk:Ljava/lang/Boolean;

.field static volatile setup:Lcom/isaigu/gymapp/ai/WakeSetup$Sink;

.field static volatile silent:Z

.field private static spoke:Z

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

    .line 247
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_5e

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    .line 250
    sput v2, Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I

    .line 518
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeListener$Recognize;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeListener$Recognize;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->RECOGNIZE:Ljava/lang/Runnable;

    .line 604
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeListener$NoSpeech;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeListener$NoSpeech;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->NO_SPEECH:Ljava/lang/Runnable;

    .line 636
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeListener$NotReady;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeListener$NotReady;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->NOT_READY:Ljava/lang/Runnable;

    .line 935
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeListener$Follow;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeListener$Follow;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->FOLLOW:Ljava/lang/Runnable;

    .line 936
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeListener$SpotterAgain;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeListener$SpotterAgain;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER_AGAIN:Ljava/lang/Runnable;

    .line 937
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeListener$Spoken;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeListener$Spoken;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOKEN:Lcom/isaigu/gymapp/ai/WakeListener$Spoken;

    .line 984
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->LATER:Ljava/util/ArrayList;

    .line 992
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeListener$VoiceBack;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeListener$VoiceBack;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->VOICE_BACK:Lcom/isaigu/gymapp/ai/WakeListener$VoiceBack;

    return-void

    .line 247
    :array_5e
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

.method static synthetic access$1000()I
    .registers 1

    .prologue
    .line 45
    sget v0, Lcom/isaigu/gymapp/ai/WakeListener;->followUps:I

    return v0
.end method

.method static synthetic access$1002(I)I
    .registers 1

    .prologue
    .line 45
    sput p0, Lcom/isaigu/gymapp/ai/WakeListener;->followUps:I

    return p0
.end method

.method static synthetic access$1100()Z
    .registers 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->readySeen:Z

    return v0
.end method

.method static synthetic access$1102(Z)Z
    .registers 1

    .prologue
    .line 45
    sput-boolean p0, Lcom/isaigu/gymapp/ai/WakeListener;->readySeen:Z

    return p0
.end method

.method static synthetic access$1200()Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->NOT_READY:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->NO_SPEECH:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(J)V
    .registers 2

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V

    return-void
.end method

.method static synthetic access$1500()V
    .registers 0

    .prologue
    .line 45
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->destroyRecognizer()V

    return-void
.end method

.method static synthetic access$1602(I)I
    .registers 1

    .prologue
    .line 45
    sput p0, Lcom/isaigu/gymapp/ai/WakeListener;->bgFails:I

    return p0
.end method

.method static synthetic access$1702(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 45
    sput-object p0, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800()V
    .registers 0

    .prologue
    .line 45
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->initTts()V

    return-void
.end method

.method static synthetic access$1900()Z
    .registers 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->ttsOk:Z

    return v0
.end method

.method static synthetic access$1902(Z)Z
    .registers 1

    .prologue
    .line 45
    sput-boolean p0, Lcom/isaigu/gymapp/ai/WakeListener;->ttsOk:Z

    return p0
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 45
    sget v0, Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I

    return v0
.end method

.method static synthetic access$2000()Landroid/speech/tts/TextToSpeech;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$2100()Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER_AGAIN:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2200()Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->FOLLOW:Ljava/lang/Runnable;

    return-object v0
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

.method static synthetic access$900()Z
    .registers 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->spoke:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .registers 1

    .prologue
    .line 45
    sput-boolean p0, Lcom/isaigu/gymapp/ai/WakeListener;->spoke:Z

    return p0
.end method

.method private static act(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1123
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/ai/AiTrain;->voice(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1124
    if-nez v0, :cond_e

    .line 1125
    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->tone(I)V

    .line 1131
    :goto_d
    return-void

    .line 1126
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_18

    .line 1127
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->say(Ljava/lang/String;)V

    goto :goto_d

    .line 1129
    :cond_18
    const/16 v0, 0x19

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->tone(I)V

    goto :goto_d
.end method

.method static afterWindow(J)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1079
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->NO_SPEECH:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1080
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    .line 1081
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    .line 1082
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->sayLater()V

    .line 1083
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->voiceState()V

    .line 1084
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->cancelRecognizer()V

    .line 1085
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    if-nez v0, :cond_1c

    .line 1094
    :goto_1b
    return-void

    .line 1088
    :cond_1c
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord;->ready()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1089
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->mute(Z)V

    .line 1090
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;-><init>()V

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1b

    .line 1092
    :cond_32
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V

    goto :goto_1b
.end method

.method static announce(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 907
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-nez v0, :cond_d

    .line 933
    :cond_c
    :goto_c
    return-void

    .line 910
    :cond_d
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    if-eqz v0, :cond_1e

    .line 911
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->LATER:Ljava/util/ArrayList;

    monitor-enter v1

    .line 912
    :try_start_14
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->LATER:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 913
    monitor-exit v1

    goto :goto_c

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw v0

    .line 916
    :cond_1e
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->initTts()V

    .line 917
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->ttsOk:Z

    if-eqz v0, :cond_29

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_2f

    :cond_29
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->cloud()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 921
    :cond_2f
    :try_start_2f
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    if-eqz v0, :cond_36

    .line 922
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStop()V

    .line 924
    :cond_36
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSpeak;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 925
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->cloud()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 926
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    const-string v2, "xems-ann"

    const/4 v3, 0x0

    sget-object v4, Lcom/isaigu/gymapp/ai/WakeListener;->VOICE_BACK:Lcom/isaigu/gymapp/ai/WakeListener$VoiceBack;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/isaigu/gymapp/ai/CloudVoice;->speak(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/CloudVoice$Fallback;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_4a} :catch_4b

    goto :goto_c

    .line 930
    :catch_4b
    move-exception v0

    .line 931
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

    .line 929
    :cond_65
    :try_start_65
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "xems-ann"

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_6e} :catch_4b

    goto :goto_c
.end method

.method static answer(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 862
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WakeListener;->answer(Ljava/lang/String;Z)V

    .line 863
    return-void
.end method

.method static answer(Ljava/lang/String;Z)V
    .registers 12

    .prologue
    .line 871
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 900
    :cond_c
    :goto_c
    return-void

    .line 874
    :cond_d
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    if-nez v0, :cond_1c

    .line 876
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_c

    .line 879
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->initTts()V

    .line 880
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WakeListener;->say(Ljava/lang/String;)V

    goto :goto_c

    .line 883
    :cond_1c
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->FOLLOW:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 884
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStop()V

    .line 885
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    if-eqz v0, :cond_2d

    .line 886
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->endWindow()V

    .line 888
    :cond_2d
    if-eqz p1, :cond_53

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->FOLLOW:Ljava/lang/Runnable;

    .line 889
    :goto_31
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER_AGAIN:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 890
    sget-boolean v1, Lcom/isaigu/gymapp/ai/WakeListener;->ttsOk:Z

    if-eqz v1, :cond_40

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;

    if-nez v1, :cond_56

    :cond_40
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->cloud()Z

    move-result v1

    if-nez v1, :cond_56

    .line 891
    const/16 v1, 0x19

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WakeListener;->tone(I)V

    .line 892
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c

    .line 888
    :cond_53
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER_AGAIN:Ljava/lang/Runnable;

    goto :goto_31

    .line 895
    :cond_56
    const-string v1, "speaking"

    sput-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    .line 896
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->voiceState()V

    .line 897
    if-eqz p1, :cond_7b

    const-string v1, "xems-listen"

    :goto_61
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->say(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
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

    .line 897
    :cond_7b
    const-string v1, "xems-said"

    goto :goto_61
.end method

.method private static begin()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 535
    sget-boolean v1, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    if-eqz v1, :cond_9

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-nez v1, :cond_a

    .line 591
    :cond_9
    :goto_9
    return-void

    .line 538
    :cond_a
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->speaking()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 539
    const-wide/16 v0, 0xfa

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V

    goto :goto_9

    .line 543
    :cond_16
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_18
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/WakeListener;->permitted(Landroid/app/Activity;Z)Z

    move-result v1

    if-nez v1, :cond_46

    .line 544
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_23} :catch_24

    goto :goto_9

    .line 586
    :catch_24
    move-exception v0

    .line 587
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

    .line 588
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->destroyRecognizer()V

    .line 589
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->afterWindow(J)V

    goto :goto_9

    .line 547
    :cond_46
    :try_start_46
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    if-nez v1, :cond_70

    .line 548
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-static {v1}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    .line 549
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

    .line 551
    :cond_70
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_b5

    .line 554
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->host:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_84

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->host:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 555
    :cond_84
    sget-boolean v1, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    if-eqz v1, :cond_a4

    if-eqz v0, :cond_a4

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_a4

    .line 556
    new-instance v1, Lcom/isaigu/gymapp/ai/WakeListener$DialogCommand;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/WakeListener$DialogCommand;-><init>()V

    const-string v2, "\u0421\u043b\u0443\u0448\u0430\u043c\u2026"

    const-string v3, "Listening\u2026"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x1388

    invoke-static {v0, v1, v2, v4, v5}, Lcom/isaigu/gymapp/ai/VoiceInput;->listen(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/VoiceInput$Result;Ljava/lang/String;J)Z

    goto/16 :goto_9

    .line 557
    :cond_a4
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    if-eqz v0, :cond_af

    .line 558
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->afterWindow(J)V

    goto/16 :goto_9

    .line 560
    :cond_af
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->mute(Z)V

    goto/16 :goto_9

    .line 564
    :cond_b5
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    if-nez v0, :cond_cb

    .line 565
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    .line 566
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    new-instance v1, Lcom/isaigu/gymapp/ai/WakeListener$Listener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/WakeListener$Listener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 568
    :cond_cb
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 569
    const-string v0, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->bg()Z

    move-result v0

    if-eqz v0, :cond_12c

    const-string v0, "bg-BG"

    .line 571
    :goto_e1
    const-string v2, "android.speech.extra.LANGUAGE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    const-string v2, "android.speech.extra.LANGUAGE_PREFERENCE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    const-string v0, "android.speech.extra.MAX_RESULTS"

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 574
    const-string v0, "calling_package"

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    if-eqz v0, :cond_10e

    .line 577
    const-string v0, "android.speech.extras.SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS"

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 578
    const-string v0, "android.speech.extras.SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS"

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 580
    :cond_10e
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->readySeen:Z

    .line 581
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 582
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    if-eqz v0, :cond_9

    .line 583
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->NOT_READY:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 584
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->NOT_READY:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_9

    .line 570
    :cond_12c
    const-string v0, "en-US"
    :try_end_12e
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_12e} :catch_24

    goto :goto_e1
.end method

.method static beginSetup(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/WakeSetup$Sink;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    .line 127
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->RECOGNIZE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 128
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->destroyRecognizer()V

    .line 129
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    .line 130
    sput-object p1, Lcom/isaigu/gymapp/ai/WakeListener;->setup:Lcom/isaigu/gymapp/ai/WakeSetup$Sink;

    .line 131
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WakeListener;->silent:Z

    .line 132
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStart()V

    .line 133
    return-void
.end method

.method static bestVoice()V
    .registers 6

    .prologue
    .line 1196
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

    .line 1222
    :cond_12
    :goto_12
    return-void

    .line 1199
    :cond_13
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->bg()Z

    move-result v0

    if-eqz v0, :cond_7f

    const-string v0, "bg"

    move-object v2, v0

    .line 1200
    :goto_1c
    const/4 v1, 0x0

    .line 1201
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

    .line 1202
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

    .line 1205
    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getFeatures()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_5b

    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getFeatures()Ljava/util/Set;

    move-result-object v4

    const-string v5, "notInstalled"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 1208
    :cond_5b
    if-eqz v1, :cond_7d

    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getQuality()I

    move-result v4

    invoke-virtual {v1}, Landroid/speech/tts/Voice;->getQuality()I

    move-result v5

    if-gt v4, v5, :cond_7d

    .line 1209
    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getQuality()I

    move-result v4

    invoke-virtual {v1}, Landroid/speech/tts/Voice;->getQuality()I

    move-result v5

    if-ne v4, v5, :cond_f2

    invoke-virtual {v1}, Landroid/speech/tts/Voice;->isNetworkConnectionRequired()Z

    move-result v4

    if-eqz v4, :cond_f2

    .line 1210
    invoke-virtual {v0}, Landroid/speech/tts/Voice;->isNetworkConnectionRequired()Z

    move-result v4

    if-nez v4, :cond_f2

    :cond_7d
    :goto_7d
    move-object v1, v0

    .line 1213
    goto :goto_27

    .line 1199
    :cond_7f
    const-string v0, "en"

    move-object v2, v0

    goto :goto_1c

    .line 1214
    :cond_83
    if-eqz v1, :cond_8a

    .line 1215
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setVoice(Landroid/speech/tts/Voice;)I

    .line 1217
    :cond_8a
    const-string v2, "wake"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tts voice "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_ef

    .line 1218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1217
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

    .line 1218
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

    .line 1217
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cf
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_cf} :catch_d1

    goto/16 :goto_12

    .line 1219
    :catch_d1
    move-exception v0

    .line 1220
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

    .line 1218
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
    .line 1158
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
    .line 988
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-nez v0, :cond_c

    if-eqz p0, :cond_c

    .line 989
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    .line 991
    :cond_c
    return-void
.end method

.method private static cancelRecognizer()V
    .registers 1

    .prologue
    .line 1136
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_9

    .line 1137
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 1142
    :cond_9
    :goto_9
    return-void

    .line 1139
    :catch_a
    move-exception v0

    .line 1140
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->destroyRecognizer()V

    goto :goto_9
.end method

.method static chime()Z
    .registers 1

    .prologue
    .line 945
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->followUp:Z

    if-eqz v0, :cond_9

    .line 946
    invoke-static {}, Lcom/isaigu/gymapp/ai/Earcon;->again()V

    .line 950
    :goto_7
    const/4 v0, 0x1

    return v0

    .line 948
    :cond_9
    invoke-static {}, Lcom/isaigu/gymapp/ai/Earcon;->ready()V

    goto :goto_7
.end method

.method static cloud()Z
    .registers 1

    .prologue
    .line 996
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
    .registers 7
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
    const-wide/16 v4, 0x12c

    const/4 v2, 0x0

    .line 816
    if-eqz p0, :cond_7e

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7e

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7e

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 818
    :goto_1b
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->afterWake(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 819
    if-eqz v1, :cond_22

    move-object v0, v1

    .line 822
    :cond_22
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->NO_SPEECH:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 823
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_81

    const/4 v1, 0x1

    :goto_30
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WakeListener;->windowResult(Z)V

    .line 824
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3c

    .line 825
    invoke-static {}, Lcom/isaigu/gymapp/ai/Earcon;->closed()V

    .line 827
    :cond_3c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8c

    .line 828
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

    .line 829
    invoke-static {}, Lcom/isaigu/gymapp/ai/Earcon;->accepted()V

    .line 830
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    sget-boolean v2, Lcom/isaigu/gymapp/ai/WakeListener;->followUp:Z

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiTrain;->voice(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 831
    if-eqz v0, :cond_83

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_83

    .line 834
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->endWindow()V

    .line 835
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiLive;->asking()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->answer(Ljava/lang/String;Z)V

    .line 847
    :goto_7d
    return-void

    .line 816
    :cond_7e
    const-string v0, ""

    goto :goto_1b

    :cond_81
    move v1, v2

    .line 823
    goto :goto_30

    .line 838
    :cond_83
    if-nez v0, :cond_8c

    .line 840
    invoke-static {}, Lcom/isaigu/gymapp/ai/Earcon;->rejected()V

    .line 841
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/WakeListener;->afterWindow(J)V

    goto :goto_7d

    .line 846
    :cond_8c
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/WakeListener;->afterWindow(J)V

    goto :goto_7d
.end method

.method private static destroyRecognizer()V
    .registers 1

    .prologue
    .line 1146
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_e

    .line 1147
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 1148
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_12

    .line 1152
    :cond_e
    :goto_e
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    .line 1153
    return-void

    .line 1150
    :catch_12
    move-exception v0

    goto :goto_e
.end method

.method static endSetup(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 136
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->setup:Lcom/isaigu/gymapp/ai/WakeSetup$Sink;

    .line 137
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    if-nez v0, :cond_b

    .line 138
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStop()V

    .line 149
    :goto_a
    return-void

    .line 141
    :cond_b
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord;->ready()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 142
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->mute(Z)V

    .line 143
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStart()V

    goto :goto_a

    .line 145
    :cond_1b
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStop()V

    .line 146
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->mute(Z)V

    .line 147
    const-wide/16 v0, 0x12c

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V

    goto :goto_a
.end method

.method private static endWindow()V
    .registers 1

    .prologue
    .line 851
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    .line 852
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    .line 853
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->cancelRecognizer()V

    .line 854
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->voiceState()V

    .line 855
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

.method static giveUpBackground(Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 651
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->NOT_READY:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 652
    sget v0, Lcom/isaigu/gymapp/ai/WakeListener;->bgFails:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/ai/WakeListener;->bgFails:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3b

    .line 655
    const-string v0, "wake"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "background recognizer not ready ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): window closed, again next time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->destroyRecognizer()V

    .line 657
    invoke-static {}, Lcom/isaigu/gymapp/ai/Earcon;->closed()V

    .line 658
    const-wide/16 v0, 0x12c

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->afterWindow(J)V

    .line 677
    :cond_3a
    :goto_3a
    return-void

    .line 661
    :cond_3b
    const-string v0, "wake"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "background recognizer unusable ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): the system dialog from now on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    .line 664
    :try_start_5f
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_7a

    .line 665
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    const-string v1, "xems_wake"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "noBgRec"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_7a} :catch_c5

    .line 669
    :cond_7a
    :goto_7a
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->destroyRecognizer()V

    .line 670
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->host:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_ba

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->host:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 671
    :goto_89
    sget-boolean v1, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    if-eqz v1, :cond_b4

    if-eqz v0, :cond_b4

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_b4

    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->chime()Z

    move-result v1

    if-eqz v1, :cond_b4

    new-instance v2, Lcom/isaigu/gymapp/ai/WakeListener$DialogCommand;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/WakeListener$DialogCommand;-><init>()V

    .line 672
    sget-boolean v1, Lcom/isaigu/gymapp/ai/WakeListener;->followUp:Z

    if-eqz v1, :cond_bc

    const-string v1, "\u0421\u043b\u0443\u0448\u0430\u043c\u2026"

    const-string v3, "Listening\u2026"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_ac
    const-wide/16 v4, 0x1388

    .line 671
    invoke-static {v0, v2, v1, v4, v5}, Lcom/isaigu/gymapp/ai/VoiceInput;->listen(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/VoiceInput$Result;Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 676
    :cond_b4
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->afterWindow(J)V

    goto :goto_3a

    .line 670
    :cond_ba
    const/4 v0, 0x0

    goto :goto_89

    .line 672
    :cond_bc
    const-string v1, "\u0422\u0440\u0435\u043d\u0435\u0440 \u0441\u043b\u0443\u0448\u0430 \u2014 \u043a\u0430\u0436\u0438 \u043a\u043e\u043c\u0430\u043d\u0434\u0430 \u0438\u043b\u0438 \u0432\u044a\u043f\u0440\u043e\u0441"

    const-string v3, "The trainer listens \u2014 a command or a question"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_ac

    .line 667
    :catch_c5
    move-exception v0

    goto :goto_7a
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

    .line 1098
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1120
    :cond_b
    :goto_b
    return-void

    .line 1101
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1102
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1103
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->afterWake(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1104
    if-eqz v0, :cond_14

    .line 1107
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_37

    .line 1108
    const-wide/16 v0, 0x1770

    add-long/2addr v0, v2

    sput-wide v0, Lcom/isaigu/gymapp/ai/WakeListener;->armedUntil:J

    .line 1109
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->tone(I)V

    goto :goto_b

    .line 1112
    :cond_37
    sput-wide v6, Lcom/isaigu/gymapp/ai/WakeListener;->armedUntil:J

    .line 1113
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->act(Ljava/lang/String;)V

    goto :goto_b

    .line 1116
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

    .line 1117
    sput-wide v6, Lcom/isaigu/gymapp/ai/WakeListener;->armedUntil:J

    .line 1118
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

    .line 1297
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1298
    array-length v2, p0

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v2, :cond_28

    aget-byte v3, p0, v0

    .line 1299
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

    .line 1298
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1301
    :cond_28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initTts()V
    .registers 4

    .prologue
    .line 1162
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_8

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-nez v0, :cond_9

    .line 1170
    :cond_8
    :goto_8
    return-void

    .line 1166
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

    .line 1167
    :catch_18
    move-exception v0

    .line 1168
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
    .line 277
    sget v0, Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I

    if-ne p0, v0, :cond_27

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_27

    .line 279
    :try_start_8
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    const-string v1, "xems_wake"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 280
    const-string v1, "src"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p0, :cond_27

    .line 281
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "src"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_27} :catch_28

    .line 286
    :cond_27
    :goto_27
    return-void

    .line 283
    :catch_28
    move-exception v0

    goto :goto_27
.end method

.method static levelOf(I)I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 256
    const/4 v1, 0x1

    if-gt p0, v1, :cond_5

    .line 259
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
    .registers 7

    .prologue
    .line 95
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->loaded:Z

    if-nez v0, :cond_6

    if-nez p0, :cond_7

    .line 112
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

    const-string v1, "noBgRec"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 101
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    .line 103
    :cond_21
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    const v1, 0x3f333333    # 0.7f

    const v2, 0x3fb33333    # 1.4f

    const-string v3, "xems_wake"

    const/4 v4, 0x0

    .line 104
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "sens"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    .line 103
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/ai/WakeWord;->sens:F

    .line 105
    const-string v0, "xems_wake"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tpl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 107
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->unhex(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/ai/WakeWord;->load([B)Z
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_60} :catch_61

    goto :goto_6

    .line 109
    :catch_61
    move-exception v0

    .line 110
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
    .line 220
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z

    if-eqz v0, :cond_5

    .line 227
    :goto_4
    return-void

    .line 223
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z

    .line 224
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    .line 225
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/ai/WakeListener$Mic;

    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/ai/WakeListener$Mic;-><init>(I)V

    const-string v2, "xems-wake"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->micThread:Ljava/lang/Thread;

    .line 226
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->micThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_4
.end method

.method static micStop()V
    .registers 4

    .prologue
    .line 230
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z

    .line 231
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->micThread:Ljava/lang/Thread;

    .line 232
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->micThread:Ljava/lang/Thread;

    .line 233
    if-eqz v0, :cond_f

    .line 235
    const-wide/16 v2, 0x258

    :try_start_c
    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_10

    .line 239
    :cond_f
    :goto_f
    return-void

    .line 236
    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method private static mute(Z)V
    .registers 5

    .prologue
    .line 1275
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    check-cast v0, Landroid/media/AudioManager;

    .line 1276
    if-nez v0, :cond_13

    .line 1294
    :cond_10
    :goto_10
    return-void

    .line 1275
    :cond_11
    const/4 v0, 0x0

    goto :goto_c

    .line 1279
    :cond_13
    if-eqz p0, :cond_4e

    .line 1280
    sget v1, Lcom/isaigu/gymapp/ai/WakeListener;->volSystem:I

    if-gez v1, :cond_27

    .line 1281
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/ai/WakeListener;->volSystem:I

    .line 1282
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/ai/WakeListener;->volNotify:I

    .line 1284
    :cond_27
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1285
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_33} :catch_34

    goto :goto_10

    .line 1291
    :catch_34
    move-exception v0

    .line 1292
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

    .line 1286
    :cond_4e
    :try_start_4e
    sget v1, Lcom/isaigu/gymapp/ai/WakeListener;->volSystem:I

    if-ltz v1, :cond_10

    .line 1287
    const/4 v1, 0x1

    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->volSystem:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1288
    const/4 v1, 0x5

    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->volNotify:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1289
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
    .line 713
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

    .line 289
    invoke-static {v0, v2, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    .line 292
    :try_start_a
    new-instance v0, Landroid/media/AudioRecord;

    const/16 v2, 0x3e80

    const/16 v3, 0x10

    const/4 v4, 0x2

    const/16 v5, 0x3e80

    .line 293
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_1b} :catch_72

    .line 294
    :try_start_1b
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_45

    .line 295
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

    .line 296
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    move-object v0, v6

    .line 314
    :cond_44
    :goto_44
    return-object v0

    .line 299
    :cond_45
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 300
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_44

    .line 301
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

    .line 302
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_70} :catch_a0

    move-object v0, v6

    .line 303
    goto :goto_44

    .line 306
    :catch_72
    move-exception v0

    move-object v1, v0

    move-object v2, v6

    .line 307
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

    .line 308
    if-eqz v2, :cond_9c

    .line 310
    :try_start_99
    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_9c} :catch_9e

    :cond_9c
    :goto_9c
    move-object v0, v6

    .line 314
    goto :goto_44

    .line 311
    :catch_9e
    move-exception v0

    goto :goto_9c

    .line 306
    :catch_a0
    move-exception v1

    move-object v2, v0

    goto :goto_75
.end method

.method static openWindow()V
    .registers 7

    .prologue
    const/4 v6, 0x1

    .line 499
    sput-boolean v6, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    .line 500
    const-string v0, "listening"

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    .line 501
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->voiceState()V

    .line 505
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    if-nez v0, :cond_15

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_15

    .line 506
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->warmRecognizer()V

    .line 508
    :cond_15
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->host:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_53

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->host:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 509
    :goto_21
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_5e

    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->chime()Z

    move-result v1

    if-eqz v1, :cond_5e

    new-instance v2, Lcom/isaigu/gymapp/ai/WakeListener$DialogCommand;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/WakeListener$DialogCommand;-><init>()V

    .line 510
    sget-boolean v1, Lcom/isaigu/gymapp/ai/WakeListener;->followUp:Z

    if-eqz v1, :cond_55

    const-string v1, "\u0421\u043b\u0443\u0448\u0430\u043c\u2026"

    const-string v3, "Listening\u2026"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4a
    const-wide/16 v4, 0x1388

    .line 509
    invoke-static {v0, v2, v1, v4, v5}, Lcom/isaigu/gymapp/ai/VoiceInput;->listen(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/VoiceInput$Result;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 516
    :goto_52
    return-void

    .line 508
    :cond_53
    const/4 v0, 0x0

    goto :goto_21

    .line 510
    :cond_55
    const-string v1, "\u0422\u0440\u0435\u043d\u0435\u0440 \u0441\u043b\u0443\u0448\u0430 \u2014 \u043a\u0430\u0436\u0438 \u043a\u043e\u043c\u0430\u043d\u0434\u0430 \u0438\u043b\u0438 \u0432\u044a\u043f\u0440\u043e\u0441"

    const-string v3, "The trainer listens \u2014 a command or a question"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4a

    .line 514
    :cond_5e
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/WakeListener;->mute(Z)V

    .line 515
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V

    goto :goto_52
.end method

.method static permitted(Landroid/app/Activity;Z)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 204
    if-eqz p0, :cond_10

    move-object v2, p0

    .line 205
    :goto_5
    if-eqz v2, :cond_d

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_15

    .line 206
    :cond_d
    if-eqz v2, :cond_13

    .line 214
    :cond_f
    :goto_f
    return v0

    .line 204
    :cond_10
    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    goto :goto_5

    :cond_13
    move v0, v1

    .line 206
    goto :goto_f

    .line 208
    :cond_15
    const-string v3, "android.permission.RECORD_AUDIO"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    .line 211
    if-eqz p1, :cond_2c

    if-eqz p0, :cond_2c

    .line 212
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v1

    const/16 v2, 0x5a2

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_2c
    move v0, v1

    .line 214
    goto :goto_f
.end method

.method private static recognize(J)V
    .registers 4

    .prologue
    .line 528
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->RECOGNIZE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 529
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    if-eqz v0, :cond_12

    .line 530
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->RECOGNIZE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 532
    :cond_12
    return-void
.end method

.method static reloadExamples(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 154
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord;->clear()V

    .line 155
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    const v1, 0x3f333333    # 0.7f

    const v2, 0x3fb33333    # 1.4f

    const-string v3, "xems_wake"

    const/4 v4, 0x0

    .line 156
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "sens"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    .line 155
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/ai/WakeWord;->sens:F

    .line 157
    const-string v0, "xems_wake"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tpl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_44

    .line 159
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->unhex(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/ai/WakeWord;->load([B)Z
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_44} :catch_45

    .line 164
    :cond_44
    :goto_44
    return-void

    .line 161
    :catch_45
    move-exception v0

    .line 162
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

    goto :goto_44
.end method

.method static saveExamples(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 116
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

    .line 120
    :goto_1e
    return-void

    .line 117
    :catch_1f
    move-exception v0

    .line 118
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
    .line 1226
    const-string v0, "xems"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WakeListener;->say(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    return-void
.end method

.method static say(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/16 v5, 0x19

    const/4 v4, 0x0

    const/16 v3, 0x190

    .line 1230
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->cloud()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1231
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSpeak;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1232
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

    .line 1245
    :goto_21
    return-void

    .line 1235
    :cond_22
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->ttsOk:Z

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_2e

    .line 1236
    :cond_2a
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WakeListener;->tone(I)V

    goto :goto_21

    .line 1240
    :cond_2e
    :try_start_2e
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSpeak;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1241
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

    .line 1242
    :catch_47
    move-exception v0

    .line 1243
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WakeListener;->tone(I)V

    goto :goto_21
.end method

.method static sayLater()V
    .registers 3

    .prologue
    .line 956
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->LATER:Ljava/util/ArrayList;

    monitor-enter v1

    .line 957
    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->LATER:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 958
    monitor-exit v1

    .line 966
    :cond_c
    return-void

    .line 960
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->LATER:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 961
    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->LATER:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 962
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_2e

    .line 963
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 964
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->announce(Ljava/lang/String;)V

    goto :goto_1e

    .line 962
    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0
.end method

.method static serviceError(I)Z
    .registers 2

    .prologue
    .line 681
    const/4 v0, 0x5

    if-eq p0, v0, :cond_12

    const/4 v0, 0x4

    if-eq p0, v0, :cond_12

    const/16 v0, 0x8

    if-eq p0, v0, :cond_12

    const/16 v0, 0xc

    if-eq p0, v0, :cond_12

    const/16 v0, 0xd

    if-ne p0, v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static speaking()Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 969
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudVoice;->busy()Z

    move-result v0

    .line 971
    if-nez v0, :cond_14

    :try_start_8
    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;

    if-eqz v3, :cond_1e

    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_11} :catch_2f

    move-result v0

    if-eqz v0, :cond_1e

    :cond_14
    move v0, v2

    .line 974
    :goto_15
    if-eqz v0, :cond_20

    .line 975
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/WakeListener;->quietSince:J

    .line 978
    :cond_1d
    :goto_1d
    return v2

    :cond_1e
    move v0, v1

    .line 971
    goto :goto_15

    .line 978
    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/isaigu/gymapp/ai/WakeListener;->quietSince:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1c2

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1d

    move v2, v1

    goto :goto_1d

    .line 972
    :catch_2f
    move-exception v3

    goto :goto_15
.end method

.method public static start(Landroid/app/Activity;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 169
    if-nez p0, :cond_5

    .line 188
    :goto_4
    return v0

    .line 172
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    .line 173
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->host:Ljava/lang/ref/WeakReference;

    .line 174
    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->load(Landroid/content/Context;)V

    .line 175
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->permitted(Landroid/app/Activity;Z)Z

    move-result v2

    if-nez v2, :cond_24

    .line 176
    const-string v2, "wake"

    const-string v3, "asking for the microphone"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_24
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    .line 179
    sput v0, Lcom/isaigu/gymapp/ai/WakeListener;->followUps:I

    .line 180
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->initTts()V

    .line 181
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->warmRecognizer()V

    .line 182
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord;->ready()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 183
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStart()V

    :goto_39
    move v0, v1

    .line 188
    goto :goto_4

    .line 185
    :cond_3b
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WakeListener;->mute(Z)V

    .line 186
    const-wide/16 v2, 0x12c

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V

    goto :goto_39
.end method

.method private static startSource()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 263
    sget v0, Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I

    if-gez v0, :cond_2b

    .line 264
    sput v1, Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I

    .line 266
    :try_start_7
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_2b

    .line 267
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    const-string v3, "xems_wake"

    const/4 v4, 0x0

    .line 268
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "src"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 267
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_2b} :catch_2e

    .line 273
    :cond_2b
    :goto_2b
    sget v0, Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I

    return v0

    .line 270
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

    .line 192
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->NOT_READY:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 193
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    .line 194
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/WakeListener;->armedUntil:J

    .line 195
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    .line 196
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStop()V

    .line 197
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->RECOGNIZE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 198
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->destroyRecognizer()V

    .line 199
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    .line 200
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->mute(Z)V

    .line 201
    return-void
.end method

.method static tone(I)V
    .registers 7

    .prologue
    .line 1249
    :try_start_0
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x3

    const/16 v2, 0x37

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 1250
    const/16 v1, 0xb4

    invoke-virtual {v0, p0, v1}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 1251
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/ai/WakeListener$Release;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/ai/WakeListener$Release;-><init>(Landroid/media/ToneGenerator;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_19} :catch_1a

    .line 1254
    :goto_19
    return-void

    .line 1252
    :catch_1a
    move-exception v0

    goto :goto_19
.end method

.method static unhex(Ljava/lang/String;)[B
    .registers 5

    .prologue
    .line 1305
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    .line 1306
    const/4 v0, 0x0

    :goto_9
    array-length v2, v1

    if-ge v0, v2, :cond_22

    .line 1307
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

    .line 1306
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1309
    :cond_22
    return-object v1
.end method

.method private static warmRecognizer()V
    .registers 4

    .prologue
    .line 688
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    if-nez v0, :cond_2a

    .line 689
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    .line 690
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

    .line 692
    :cond_2a
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_48

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    if-nez v0, :cond_48

    .line 693
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    .line 694
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    new-instance v1, Lcom/isaigu/gymapp/ai/WakeListener$Listener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/WakeListener$Listener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_48} :catch_49

    .line 699
    :cond_48
    :goto_48
    return-void

    .line 696
    :catch_49
    move-exception v0

    .line 697
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

.method static windowResult(Z)V
    .registers 4

    .prologue
    .line 622
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->followUp:Z

    if-eqz v0, :cond_5

    .line 634
    :cond_4
    :goto_4
    return-void

    .line 625
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    iget v0, v0, Lcom/isaigu/gymapp/ai/WakeWord;->sens:F

    .line 626
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v1, p0}, Lcom/isaigu/gymapp/ai/WakeWord;->feedback(Z)V

    .line 627
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    iget v1, v1, Lcom/isaigu/gymapp/ai/WakeWord;->sens:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 629
    :try_start_1a
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    const-string v1, "xems_wake"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sens"

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    iget v2, v2, Lcom/isaigu/gymapp/ai/WakeWord;->sens:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_34} :catch_51

    .line 632
    :goto_34
    const-string v0, "wake"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sensitivity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    iget v2, v2, Lcom/isaigu/gymapp/ai/WakeWord;->sens:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 630
    :catch_51
    move-exception v0

    goto :goto_34
.end method
