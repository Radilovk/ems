.class public final Lcom/isaigu/gymapp/ai/WakeListener;
.super Ljava/lang/Object;
.source "WakeListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/WakeListener$Mic;,
        Lcom/isaigu/gymapp/ai/WakeListener$Heard;,
        Lcom/isaigu/gymapp/ai/WakeListener$Thinking;,
        Lcom/isaigu/gymapp/ai/WakeListener$Hear;,
        Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;,
        Lcom/isaigu/gymapp/ai/WakeListener$DialogCommand;,
        Lcom/isaigu/gymapp/ai/WakeListener$Listener;,
        Lcom/isaigu/gymapp/ai/WakeListener$VoiceBack;,
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

.field static final PHRASE:Ljava/lang/String; = "ok-trener"

.field static final PREFS:Ljava/lang/String; = "xems_wake"

.field static final RAW:[S

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

.field static cap:[S

.field static capBlockN:I

.field static capBlocks:I

.field static capN:I

.field static capPeakDb:F

.field static capPre:I

.field static capQuiet:I

.field static capSkip:I

.field static capSum:D

.field static capVoiced:I

.field private static ctx:Landroid/content/Context;

.field static volatile ear:I

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

.field static volatile pendingEar:I

.field private static volatile quietSince:J

.field static rawAt:I

.field static rawFill:I

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

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    .line 54
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeWord;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    .line 74
    sput v2, Lcom/isaigu/gymapp/ai/WakeListener;->volSystem:I

    sput v2, Lcom/isaigu/gymapp/ai/WakeListener;->volNotify:I

    .line 80
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    .line 256
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_64

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    .line 259
    sput v2, Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I

    .line 498
    const/16 v0, 0x7d00

    new-array v0, v0, [S

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->RAW:[S

    .line 746
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeListener$Recognize;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeListener$Recognize;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->RECOGNIZE:Ljava/lang/Runnable;

    .line 832
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeListener$NoSpeech;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeListener$NoSpeech;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->NO_SPEECH:Ljava/lang/Runnable;

    .line 864
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeListener$NotReady;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeListener$NotReady;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->NOT_READY:Ljava/lang/Runnable;

    .line 1166
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeListener$Follow;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeListener$Follow;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->FOLLOW:Ljava/lang/Runnable;

    .line 1167
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeListener$SpotterAgain;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeListener$SpotterAgain;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER_AGAIN:Ljava/lang/Runnable;

    .line 1168
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeListener$Spoken;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeListener$Spoken;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOKEN:Lcom/isaigu/gymapp/ai/WakeListener$Spoken;

    .line 1215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->LATER:Ljava/util/ArrayList;

    .line 1223
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeListener$VoiceBack;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeListener$VoiceBack;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->VOICE_BACK:Lcom/isaigu/gymapp/ai/WakeListener$VoiceBack;

    return-void

    .line 256
    :array_64
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

.method static synthetic access$1000()Z
    .registers 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->spoke:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .registers 1

    .prologue
    .line 45
    sput-boolean p0, Lcom/isaigu/gymapp/ai/WakeListener;->spoke:Z

    return p0
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

.method static synthetic access$1200()Z
    .registers 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->readySeen:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .registers 1

    .prologue
    .line 45
    sput-boolean p0, Lcom/isaigu/gymapp/ai/WakeListener;->readySeen:Z

    return p0
.end method

.method static synthetic access$1300()Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->NOT_READY:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->NO_SPEECH:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(J)V
    .registers 2

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V

    return-void
.end method

.method static synthetic access$1600()V
    .registers 0

    .prologue
    .line 45
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->destroyRecognizer()V

    return-void
.end method

.method static synthetic access$1702(I)I
    .registers 1

    .prologue
    .line 45
    sput p0, Lcom/isaigu/gymapp/ai/WakeListener;->bgFails:I

    return p0
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

.method static synthetic access$802(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 45
    sput-object p0, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900()V
    .registers 0

    .prologue
    .line 45
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->begin()V

    return-void
.end method

.method private static act(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1354
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/ai/AiTrain;->voice(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1355
    if-nez v0, :cond_e

    .line 1356
    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->tone(I)V

    .line 1362
    :goto_d
    return-void

    .line 1357
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_18

    .line 1358
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->say(Ljava/lang/String;)V

    goto :goto_d

    .line 1360
    :cond_18
    const/16 v0, 0x19

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->tone(I)V

    goto :goto_d
.end method

.method static afterWindow(J)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1310
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->NO_SPEECH:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1311
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    .line 1312
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    .line 1313
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->sayLater()V

    .line 1314
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->voiceState()V

    .line 1315
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->cancelRecognizer()V

    .line 1316
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    if-nez v0, :cond_1c

    .line 1325
    :goto_1b
    return-void

    .line 1319
    :cond_1c
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord;->ready()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1320
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->mute(Z)V

    .line 1321
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;-><init>()V

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1b

    .line 1323
    :cond_32
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V

    goto :goto_1b
.end method

.method static announce(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1138
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-nez v0, :cond_d

    .line 1164
    :cond_c
    :goto_c
    return-void

    .line 1141
    :cond_d
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    if-eqz v0, :cond_1e

    .line 1142
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->LATER:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1143
    :try_start_14
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->LATER:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1144
    monitor-exit v1

    goto :goto_c

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw v0

    .line 1147
    :cond_1e
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->initTts()V

    .line 1148
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->ttsOk:Z

    if-eqz v0, :cond_29

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_2f

    :cond_29
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->cloud()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1152
    :cond_2f
    :try_start_2f
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    if-eqz v0, :cond_36

    .line 1153
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStop()V

    .line 1155
    :cond_36
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSpeak;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1156
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->cloud()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 1157
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    const-string v2, "xems-ann"

    const/4 v3, 0x0

    sget-object v4, Lcom/isaigu/gymapp/ai/WakeListener;->VOICE_BACK:Lcom/isaigu/gymapp/ai/WakeListener$VoiceBack;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/isaigu/gymapp/ai/CloudVoice;->speak(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/CloudVoice$Fallback;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_4a} :catch_4b

    goto :goto_c

    .line 1161
    :catch_4b
    move-exception v0

    .line 1162
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

    .line 1160
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
    .line 1093
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WakeListener;->answer(Ljava/lang/String;Z)V

    .line 1094
    return-void
.end method

.method static answer(Ljava/lang/String;Z)V
    .registers 12

    .prologue
    .line 1102
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 1131
    :cond_c
    :goto_c
    return-void

    .line 1105
    :cond_d
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    if-nez v0, :cond_1c

    .line 1107
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_c

    .line 1110
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->initTts()V

    .line 1111
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WakeListener;->say(Ljava/lang/String;)V

    goto :goto_c

    .line 1114
    :cond_1c
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->FOLLOW:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1115
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStop()V

    .line 1116
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    if-eqz v0, :cond_2d

    .line 1117
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->endWindow()V

    .line 1119
    :cond_2d
    if-eqz p1, :cond_53

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->FOLLOW:Ljava/lang/Runnable;

    .line 1120
    :goto_31
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER_AGAIN:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1121
    sget-boolean v1, Lcom/isaigu/gymapp/ai/WakeListener;->ttsOk:Z

    if-eqz v1, :cond_40

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;

    if-nez v1, :cond_56

    :cond_40
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->cloud()Z

    move-result v1

    if-nez v1, :cond_56

    .line 1122
    const/16 v1, 0x19

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WakeListener;->tone(I)V

    .line 1123
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c

    .line 1119
    :cond_53
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER_AGAIN:Ljava/lang/Runnable;

    goto :goto_31

    .line 1126
    :cond_56
    const-string v1, "speaking"

    sput-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    .line 1127
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->voiceState()V

    .line 1128
    if-eqz p1, :cond_7b

    const-string v1, "xems-listen"

    :goto_61
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->say(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
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

    .line 1128
    :cond_7b
    const-string v1, "xems-said"

    goto :goto_61
.end method

.method private static begin()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 763
    sget-boolean v1, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    if-eqz v1, :cond_9

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-nez v1, :cond_a

    .line 819
    :cond_9
    :goto_9
    return-void

    .line 766
    :cond_a
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->speaking()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 767
    const-wide/16 v0, 0xfa

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V

    goto :goto_9

    .line 771
    :cond_16
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_18
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/WakeListener;->permitted(Landroid/app/Activity;Z)Z

    move-result v1

    if-nez v1, :cond_46

    .line 772
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_23} :catch_24

    goto :goto_9

    .line 814
    :catch_24
    move-exception v0

    .line 815
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

    .line 816
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->destroyRecognizer()V

    .line 817
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->afterWindow(J)V

    goto :goto_9

    .line 775
    :cond_46
    :try_start_46
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    if-nez v1, :cond_70

    .line 776
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-static {v1}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    .line 777
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

    .line 779
    :cond_70
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_b5

    .line 782
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->host:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_84

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->host:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 783
    :cond_84
    sget-boolean v1, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    if-eqz v1, :cond_a4

    if-eqz v0, :cond_a4

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_a4

    .line 784
    new-instance v1, Lcom/isaigu/gymapp/ai/WakeListener$DialogCommand;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/WakeListener$DialogCommand;-><init>()V

    const-string v2, "\u0421\u043b\u0443\u0448\u0430\u043c\u2026"

    const-string v3, "Listening\u2026"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x1388

    invoke-static {v0, v1, v2, v4, v5}, Lcom/isaigu/gymapp/ai/VoiceInput;->listen(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/VoiceInput$Result;Ljava/lang/String;J)Z

    goto/16 :goto_9

    .line 785
    :cond_a4
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    if-eqz v0, :cond_af

    .line 786
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->afterWindow(J)V

    goto/16 :goto_9

    .line 788
    :cond_af
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->mute(Z)V

    goto/16 :goto_9

    .line 792
    :cond_b5
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    if-nez v0, :cond_cb

    .line 793
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    .line 794
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    new-instance v1, Lcom/isaigu/gymapp/ai/WakeListener$Listener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/WakeListener$Listener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 796
    :cond_cb
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 797
    const-string v0, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 798
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->bg()Z

    move-result v0

    if-eqz v0, :cond_12c

    const-string v0, "bg-BG"

    .line 799
    :goto_e1
    const-string v2, "android.speech.extra.LANGUAGE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 800
    const-string v2, "android.speech.extra.LANGUAGE_PREFERENCE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 801
    const-string v0, "android.speech.extra.MAX_RESULTS"

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 802
    const-string v0, "calling_package"

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 803
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    if-eqz v0, :cond_10e

    .line 805
    const-string v0, "android.speech.extras.SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS"

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 806
    const-string v0, "android.speech.extras.SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS"

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 808
    :cond_10e
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->readySeen:Z

    .line 809
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 810
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    if-eqz v0, :cond_9

    .line 811
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->NOT_READY:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 812
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->NOT_READY:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_9

    .line 798
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

    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    .line 131
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->RECOGNIZE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 132
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->destroyRecognizer()V

    .line 133
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    .line 134
    sput-object p1, Lcom/isaigu/gymapp/ai/WakeListener;->setup:Lcom/isaigu/gymapp/ai/WakeSetup$Sink;

    .line 135
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WakeListener;->silent:Z

    .line 136
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStart()V

    .line 137
    return-void
.end method

.method static bestVoice()V
    .registers 6

    .prologue
    .line 1427
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

    .line 1453
    :cond_12
    :goto_12
    return-void

    .line 1430
    :cond_13
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->bg()Z

    move-result v0

    if-eqz v0, :cond_7f

    const-string v0, "bg"

    move-object v2, v0

    .line 1431
    :goto_1c
    const/4 v1, 0x0

    .line 1432
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

    .line 1433
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

    .line 1436
    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getFeatures()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_5b

    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getFeatures()Ljava/util/Set;

    move-result-object v4

    const-string v5, "notInstalled"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 1439
    :cond_5b
    if-eqz v1, :cond_7d

    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getQuality()I

    move-result v4

    invoke-virtual {v1}, Landroid/speech/tts/Voice;->getQuality()I

    move-result v5

    if-gt v4, v5, :cond_7d

    .line 1440
    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getQuality()I

    move-result v4

    invoke-virtual {v1}, Landroid/speech/tts/Voice;->getQuality()I

    move-result v5

    if-ne v4, v5, :cond_f2

    invoke-virtual {v1}, Landroid/speech/tts/Voice;->isNetworkConnectionRequired()Z

    move-result v4

    if-eqz v4, :cond_f2

    .line 1441
    invoke-virtual {v0}, Landroid/speech/tts/Voice;->isNetworkConnectionRequired()Z

    move-result v4

    if-nez v4, :cond_f2

    :cond_7d
    :goto_7d
    move-object v1, v0

    .line 1444
    goto :goto_27

    .line 1430
    :cond_7f
    const-string v0, "en"

    move-object v2, v0

    goto :goto_1c

    .line 1445
    :cond_83
    if-eqz v1, :cond_8a

    .line 1446
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setVoice(Landroid/speech/tts/Voice;)I

    .line 1448
    :cond_8a
    const-string v2, "wake"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tts voice "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_ef

    .line 1449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1448
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

    .line 1449
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

    .line 1448
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cf
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_cf} :catch_d1

    goto/16 :goto_12

    .line 1450
    :catch_d1
    move-exception v0

    .line 1451
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

    .line 1449
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
    .line 1389
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
    .line 1219
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-nez v0, :cond_c

    if-eqz p0, :cond_c

    .line 1220
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    .line 1222
    :cond_c
    return-void
.end method

.method private static cancelRecognizer()V
    .registers 1

    .prologue
    .line 1367
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_9

    .line 1368
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 1373
    :cond_9
    :goto_9
    return-void

    .line 1370
    :catch_a
    move-exception v0

    .line 1371
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->destroyRecognizer()V

    goto :goto_9
.end method

.method static chime()Z
    .registers 1

    .prologue
    .line 1176
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->followUp:Z

    if-eqz v0, :cond_9

    .line 1177
    invoke-static {}, Lcom/isaigu/gymapp/ai/Earcon;->again()V

    .line 1181
    :goto_7
    const/4 v0, 0x1

    return v0

    .line 1179
    :cond_9
    invoke-static {}, Lcom/isaigu/gymapp/ai/Earcon;->ready()V

    goto :goto_7
.end method

.method static cloud()Z
    .registers 1

    .prologue
    .line 1227
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

    .line 1044
    if-eqz p0, :cond_86

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_86

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_86

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1046
    :goto_1b
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->afterWake(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1047
    if-eqz v1, :cond_22

    move-object v0, v1

    .line 1050
    :cond_22
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->NO_SPEECH:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1051
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_89

    const/4 v1, 0x1

    :goto_30
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WakeListener;->windowResult(Z)V

    .line 1052
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->onlyWakeFragment(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1053
    const-string v0, ""

    .line 1055
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_44

    .line 1056
    invoke-static {}, Lcom/isaigu/gymapp/ai/Earcon;->closed()V

    .line 1058
    :cond_44
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_94

    .line 1059
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

    .line 1060
    invoke-static {}, Lcom/isaigu/gymapp/ai/Earcon;->accepted()V

    .line 1061
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    sget-boolean v2, Lcom/isaigu/gymapp/ai/WakeListener;->followUp:Z

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiTrain;->voice(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1062
    if-eqz v0, :cond_8b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8b

    .line 1065
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->endWindow()V

    .line 1066
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiLive;->asking()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->answer(Ljava/lang/String;Z)V

    .line 1078
    :goto_85
    return-void

    .line 1044
    :cond_86
    const-string v0, ""

    goto :goto_1b

    :cond_89
    move v1, v2

    .line 1051
    goto :goto_30

    .line 1069
    :cond_8b
    if-nez v0, :cond_94

    .line 1071
    invoke-static {}, Lcom/isaigu/gymapp/ai/Earcon;->rejected()V

    .line 1072
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/WakeListener;->afterWindow(J)V

    goto :goto_85

    .line 1077
    :cond_94
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/WakeListener;->afterWindow(J)V

    goto :goto_85
.end method

.method private static destroyRecognizer()V
    .registers 1

    .prologue
    .line 1377
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_e

    .line 1378
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 1379
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_12

    .line 1383
    :cond_e
    :goto_e
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    .line 1384
    return-void

    .line 1381
    :catch_12
    move-exception v0

    goto :goto_e
.end method

.method static earBegin(I)V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 510
    const v1, 0x1d4c0

    new-array v1, v1, [S

    sput-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->cap:[S

    .line 511
    sput v0, Lcom/isaigu/gymapp/ai/WakeListener;->capN:I

    .line 512
    sput v0, Lcom/isaigu/gymapp/ai/WakeListener;->capBlockN:I

    .line 513
    sput v0, Lcom/isaigu/gymapp/ai/WakeListener;->capBlocks:I

    .line 514
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/isaigu/gymapp/ai/WakeListener;->capSum:D

    .line 515
    sput v0, Lcom/isaigu/gymapp/ai/WakeListener;->capQuiet:I

    .line 516
    sput v0, Lcom/isaigu/gymapp/ai/WakeListener;->capVoiced:I

    .line 517
    const/4 v1, 0x0

    sput v1, Lcom/isaigu/gymapp/ai/WakeListener;->capPeakDb:F

    .line 518
    sput v0, Lcom/isaigu/gymapp/ai/WakeListener;->capPre:I

    .line 519
    sput v0, Lcom/isaigu/gymapp/ai/WakeListener;->capSkip:I

    .line 520
    if-ne p0, v7, :cond_51

    .line 521
    sget v1, Lcom/isaigu/gymapp/ai/WakeListener;->rawFill:I

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->RAW:[S

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 522
    :goto_29
    if-ge v0, v1, :cond_48

    .line 523
    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->cap:[S

    sget v3, Lcom/isaigu/gymapp/ai/WakeListener;->capN:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/isaigu/gymapp/ai/WakeListener;->capN:I

    sget-object v4, Lcom/isaigu/gymapp/ai/WakeListener;->RAW:[S

    sget v5, Lcom/isaigu/gymapp/ai/WakeListener;->rawAt:I

    sub-int/2addr v5, v1

    add-int/2addr v5, v0

    sget-object v6, Lcom/isaigu/gymapp/ai/WakeListener;->RAW:[S

    array-length v6, v6

    add-int/2addr v5, v6

    sget-object v6, Lcom/isaigu/gymapp/ai/WakeListener;->RAW:[S

    array-length v6, v6

    rem-int/2addr v5, v6

    aget-short v4, v4, v5

    aput-short v4, v2, v3

    .line 522
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 525
    :cond_48
    sget v0, Lcom/isaigu/gymapp/ai/WakeListener;->capN:I

    sput v0, Lcom/isaigu/gymapp/ai/WakeListener;->capPre:I

    .line 526
    sput v7, Lcom/isaigu/gymapp/ai/WakeListener;->capVoiced:I

    .line 530
    :goto_4e
    sput p0, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    .line 531
    return-void

    .line 528
    :cond_51
    const/16 v0, 0x15e0

    sput v0, Lcom/isaigu/gymapp/ai/WakeListener;->capSkip:I

    goto :goto_4e
.end method

.method static earDone()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 568
    sget v0, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    .line 569
    sput v1, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    .line 570
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z

    .line 571
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->cap:[S

    .line 572
    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->capN:I

    .line 573
    const/4 v3, 0x0

    sput-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->cap:[S

    .line 574
    if-ne v0, v4, :cond_22

    sget v3, Lcom/isaigu/gymapp/ai/WakeListener;->capVoiced:I

    if-nez v3, :cond_22

    .line 575
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/ai/WakeListener$Heard;

    const-string v2, ""

    invoke-direct {v1, v2, v4}, Lcom/isaigu/gymapp/ai/WakeListener$Heard;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 582
    :goto_21
    return-void

    .line 578
    :cond_22
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2f

    .line 579
    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    new-instance v4, Lcom/isaigu/gymapp/ai/WakeListener$Thinking;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/WakeListener$Thinking;-><init>()V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 581
    :cond_2f
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/isaigu/gymapp/ai/WakeListener$Hear;

    invoke-direct {v4, v1, v2, v0}, Lcom/isaigu/gymapp/ai/WakeListener$Hear;-><init>([SII)V

    const-string v0, "xems-ear"

    invoke-direct {v3, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_21
.end method

.method static earSample(S)Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 535
    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->capSkip:I

    if-lez v2, :cond_e

    .line 536
    sget v0, Lcom/isaigu/gymapp/ai/WakeListener;->capSkip:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/WakeListener;->capSkip:I

    move v0, v1

    .line 563
    :cond_d
    :goto_d
    return v0

    .line 539
    :cond_e
    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->cap:[S

    sget v3, Lcom/isaigu/gymapp/ai/WakeListener;->capN:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/isaigu/gymapp/ai/WakeListener;->capN:I

    aput-short p0, v2, v3

    .line 540
    sget-wide v2, Lcom/isaigu/gymapp/ai/WakeListener;->capSum:D

    int-to-double v4, p0

    int-to-double v6, p0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    sput-wide v2, Lcom/isaigu/gymapp/ai/WakeListener;->capSum:D

    .line 541
    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->capBlockN:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/isaigu/gymapp/ai/WakeListener;->capBlockN:I

    const/16 v3, 0x640

    if-lt v2, v3, :cond_86

    .line 542
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    sget-wide v4, Lcom/isaigu/gymapp/ai/WakeListener;->capSum:D

    sget v6, Lcom/isaigu/gymapp/ai/WakeListener;->capBlockN:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    .line 543
    sget v3, Lcom/isaigu/gymapp/ai/WakeListener;->capPeakDb:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sput v3, Lcom/isaigu/gymapp/ai/WakeListener;->capPeakDb:F

    .line 544
    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/WakeWord;->floorDb()F

    move-result v3

    .line 545
    const/high16 v4, 0x41600000    # 14.0f

    add-float/2addr v4, v3

    cmpl-float v4, v2, v4

    if-lez v4, :cond_90

    .line 546
    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->capVoiced:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/isaigu/gymapp/ai/WakeListener;->capVoiced:I

    .line 547
    sput v1, Lcom/isaigu/gymapp/ai/WakeListener;->capQuiet:I

    .line 553
    :goto_58
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/isaigu/gymapp/ai/WakeListener;->capSum:D

    .line 554
    sput v1, Lcom/isaigu/gymapp/ai/WakeListener;->capBlockN:I

    .line 555
    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->capBlocks:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/isaigu/gymapp/ai/WakeListener;->capBlocks:I

    .line 556
    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_73

    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->capVoiced:I

    if-nez v2, :cond_73

    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->capBlocks:I

    const/16 v3, 0x28

    if-ge v2, v3, :cond_d

    .line 559
    :cond_73
    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->capVoiced:I

    if-lez v2, :cond_86

    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->capQuiet:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_86

    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->capN:I

    sget v3, Lcom/isaigu/gymapp/ai/WakeListener;->capPre:I

    sub-int/2addr v2, v3

    const/16 v3, 0x1f40

    if-ge v2, v3, :cond_d

    .line 563
    :cond_86
    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->capN:I

    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->cap:[S

    array-length v3, v3

    if-ge v2, v3, :cond_d

    move v0, v1

    goto/16 :goto_d

    .line 548
    :cond_90
    const/high16 v4, 0x41100000    # 9.0f

    add-float/2addr v3, v4

    sget v4, Lcom/isaigu/gymapp/ai/WakeListener;->capPeakDb:F

    const/high16 v5, 0x41c00000    # 24.0f

    sub-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_a7

    .line 549
    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->capQuiet:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/isaigu/gymapp/ai/WakeListener;->capQuiet:I

    goto :goto_58

    .line 551
    :cond_a7
    sput v1, Lcom/isaigu/gymapp/ai/WakeListener;->capQuiet:I

    goto :goto_58
.end method

.method static endSetup(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 140
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->setup:Lcom/isaigu/gymapp/ai/WakeSetup$Sink;

    .line 141
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    if-nez v0, :cond_b

    .line 142
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStop()V

    .line 153
    :goto_a
    return-void

    .line 145
    :cond_b
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord;->ready()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 146
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->mute(Z)V

    .line 147
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStart()V

    goto :goto_a

    .line 149
    :cond_1b
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStop()V

    .line 150
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->mute(Z)V

    .line 151
    const-wide/16 v0, 0x12c

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V

    goto :goto_a
.end method

.method private static endWindow()V
    .registers 1

    .prologue
    .line 1082
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    .line 1083
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    .line 1084
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->cancelRecognizer()V

    .line 1085
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->voiceState()V

    .line 1086
    return-void
.end method

.method public static enrolled(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 92
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WakeListener;->load(Landroid/content/Context;)V

    .line 93
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord;->ready()Z

    move-result v0

    return v0
.end method

.method static giveUpBackground(Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 879
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->NOT_READY:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 880
    sget v0, Lcom/isaigu/gymapp/ai/WakeListener;->bgFails:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/ai/WakeListener;->bgFails:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3b

    .line 883
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

    .line 884
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->destroyRecognizer()V

    .line 885
    invoke-static {}, Lcom/isaigu/gymapp/ai/Earcon;->closed()V

    .line 886
    const-wide/16 v0, 0x12c

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->afterWindow(J)V

    .line 905
    :cond_3a
    :goto_3a
    return-void

    .line 889
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

    .line 890
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    .line 892
    :try_start_5f
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_7a

    .line 893
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

    .line 897
    :cond_7a
    :goto_7a
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->destroyRecognizer()V

    .line 898
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->host:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_ba

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->host:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 899
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

    .line 900
    sget-boolean v1, Lcom/isaigu/gymapp/ai/WakeListener;->followUp:Z

    if-eqz v1, :cond_bc

    const-string v1, "\u0421\u043b\u0443\u0448\u0430\u043c\u2026"

    const-string v3, "Listening\u2026"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_ac
    const-wide/16 v4, 0x1388

    .line 899
    invoke-static {v0, v2, v1, v4, v5}, Lcom/isaigu/gymapp/ai/VoiceInput;->listen(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/VoiceInput$Result;Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 904
    :cond_b4
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->afterWindow(J)V

    goto :goto_3a

    .line 898
    :cond_ba
    const/4 v0, 0x0

    goto :goto_89

    .line 900
    :cond_bc
    const-string v1, "\u0422\u0440\u0435\u043d\u0435\u0440 \u0441\u043b\u0443\u0448\u0430 \u2014 \u043a\u0430\u0436\u0438 \u043a\u043e\u043c\u0430\u043d\u0434\u0430 \u0438\u043b\u0438 \u0432\u044a\u043f\u0440\u043e\u0441"

    const-string v3, "The trainer listens \u2014 a command or a question"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_ac

    .line 895
    :catch_c5
    move-exception v0

    goto :goto_7a
.end method

.method static heard(Ljava/lang/String;I)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 628
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    if-nez v0, :cond_6

    .line 668
    :cond_5
    :goto_5
    return-void

    .line 631
    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1d

    .line 632
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    if-eqz v0, :cond_5

    .line 635
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 636
    if-nez p0, :cond_16

    const-string p0, ""

    :cond_16
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->commandHeard(Ljava/util/ArrayList;)V

    goto :goto_5

    .line 640
    :cond_1d
    if-nez p0, :cond_4e

    const/4 v0, 0x0

    .line 641
    :goto_20
    if-nez v0, :cond_83

    .line 642
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    .line 643
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->voiceState()V

    .line 644
    if-nez p0, :cond_53

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    iget v0, v0, Lcom/isaigu/gymapp/ai/WakeWord;->lastD:I

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/WakeWord;->threshold()I

    move-result v1

    if-gt v0, v1, :cond_53

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    if-nez v0, :cond_53

    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->speaking()Z

    move-result v0

    if-nez v0, :cond_53

    .line 646
    const-string v0, "wake"

    const-string v1, "cloud ear silent \u2014 the spotter was sure: the old window"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    sput-boolean v4, Lcom/isaigu/gymapp/ai/WakeListener;->followUp:Z

    .line 648
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->openWindow()V

    goto :goto_5

    .line 640
    :cond_4e
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->afterWake(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 651
    :cond_53
    const-string v1, "wake"

    if-nez p0, :cond_69

    const-string v0, "cloud ear: no answer"

    :goto_59
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;-><init>()V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    .line 651
    :cond_69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not the wake phrase: \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_59

    .line 655
    :cond_83
    const-string v1, "wake"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u043e\u043a\u0435\u0439 \u0442\u0440\u0435\u043d\u0435\u0440 (cloud) d="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    iget v3, v3, Lcom/isaigu/gymapp/ai/WakeWord;->lastD:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " limit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/WakeWord;->threshold()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    sput-boolean v4, Lcom/isaigu/gymapp/ai/WakeListener;->followUp:Z

    .line 657
    sput v4, Lcom/isaigu/gymapp/ai/WakeListener;->followUps:I

    .line 658
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_bf

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->onlyWakeFragment(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 659
    :cond_bf
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->openWindow()V

    goto/16 :goto_5

    .line 662
    :cond_c4
    const/4 v1, 0x1

    sput-boolean v1, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    .line 663
    const-string v1, "command"

    sput-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    .line 664
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->voiceState()V

    .line 665
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 666
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WakeListener;->commandHeard(Ljava/util/ArrayList;)V

    goto/16 :goto_5
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

    .line 1329
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1351
    :cond_b
    :goto_b
    return-void

    .line 1332
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1333
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1334
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->afterWake(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1335
    if-eqz v0, :cond_14

    .line 1338
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_37

    .line 1339
    const-wide/16 v0, 0x1770

    add-long/2addr v0, v2

    sput-wide v0, Lcom/isaigu/gymapp/ai/WakeListener;->armedUntil:J

    .line 1340
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->tone(I)V

    goto :goto_b

    .line 1343
    :cond_37
    sput-wide v6, Lcom/isaigu/gymapp/ai/WakeListener;->armedUntil:J

    .line 1344
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->act(Ljava/lang/String;)V

    goto :goto_b

    .line 1347
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

    .line 1348
    sput-wide v6, Lcom/isaigu/gymapp/ai/WakeListener;->armedUntil:J

    .line 1349
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

    .line 1528
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1529
    array-length v2, p0

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v2, :cond_28

    aget-byte v3, p0, v0

    .line 1530
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

    .line 1529
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1532
    :cond_28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initTts()V
    .registers 4

    .prologue
    .line 1393
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_8

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-nez v0, :cond_9

    .line 1401
    :cond_8
    :goto_8
    return-void

    .line 1397
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

    .line 1398
    :catch_18
    move-exception v0

    .line 1399
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
    .line 83
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    return v0
.end method

.method private static keepSource(I)V
    .registers 4

    .prologue
    .line 286
    sget v0, Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I

    if-ne p0, v0, :cond_27

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_27

    .line 288
    :try_start_8
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    const-string v1, "xems_wake"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 289
    const-string v1, "src"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p0, :cond_27

    .line 290
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "src"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_27} :catch_28

    .line 295
    :cond_27
    :goto_27
    return-void

    .line 292
    :catch_28
    move-exception v0

    goto :goto_27
.end method

.method static levelOf(I)I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 265
    const/4 v1, 0x1

    if-gt p0, v1, :cond_5

    .line 268
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
    .line 97
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->loaded:Z

    if-nez v0, :cond_6

    if-nez p0, :cond_7

    .line 115
    :cond_6
    :goto_6
    return-void

    .line 100
    :cond_7
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->loaded:Z

    .line 102
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

    .line 103
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    .line 105
    :cond_21
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    const v1, 0x3f333333    # 0.7f

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "xems_wake"

    const/4 v4, 0x0

    .line 106
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "sens"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    .line 105
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/ai/WakeWord;->sens:F

    .line 107
    const-string v0, "xems_wake"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tpl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    const-string v1, "ok-trener"

    const-string v2, "xems_wake"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "phrase"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 110
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->unhex(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/ai/WakeWord;->load([B)Z
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_76} :catch_77

    goto :goto_6

    .line 112
    :catch_77
    move-exception v0

    .line 113
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

    goto/16 :goto_6
.end method

.method static micStart()V
    .registers 3

    .prologue
    .line 225
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z

    if-eqz v0, :cond_5

    .line 236
    :goto_4
    return-void

    .line 228
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z

    .line 229
    sget v0, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    if-nez v0, :cond_14

    sget v0, Lcom/isaigu/gymapp/ai/WakeListener;->pendingEar:I

    if-nez v0, :cond_14

    .line 230
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    .line 233
    :cond_14
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_41

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/CloudEar;->usable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_41

    const v0, 0x3fb9999a    # 1.45f

    :goto_25
    iput v0, v1, Lcom/isaigu/gymapp/ai/WakeWord;->loose:F

    .line 234
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/ai/WakeListener$Mic;

    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/ai/WakeListener$Mic;-><init>(I)V

    const-string v2, "xems-wake"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->micThread:Ljava/lang/Thread;

    .line 235
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->micThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_4

    .line 233
    :cond_41
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_25
.end method

.method static micStop()V
    .registers 4

    .prologue
    .line 239
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z

    .line 240
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->micThread:Ljava/lang/Thread;

    .line 241
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->micThread:Ljava/lang/Thread;

    .line 242
    if-eqz v0, :cond_f

    .line 244
    const-wide/16 v2, 0x258

    :try_start_c
    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_10

    .line 248
    :cond_f
    :goto_f
    return-void

    .line 245
    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method private static mute(Z)V
    .registers 5

    .prologue
    .line 1506
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    check-cast v0, Landroid/media/AudioManager;

    .line 1507
    if-nez v0, :cond_13

    .line 1525
    :cond_10
    :goto_10
    return-void

    .line 1506
    :cond_11
    const/4 v0, 0x0

    goto :goto_c

    .line 1510
    :cond_13
    if-eqz p0, :cond_4e

    .line 1511
    sget v1, Lcom/isaigu/gymapp/ai/WakeListener;->volSystem:I

    if-gez v1, :cond_27

    .line 1512
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/ai/WakeListener;->volSystem:I

    .line 1513
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/ai/WakeListener;->volNotify:I

    .line 1515
    :cond_27
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1516
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_33} :catch_34

    goto :goto_10

    .line 1522
    :catch_34
    move-exception v0

    .line 1523
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

    .line 1517
    :cond_4e
    :try_start_4e
    sget v1, Lcom/isaigu/gymapp/ai/WakeListener;->volSystem:I

    if-ltz v1, :cond_10

    .line 1518
    const/4 v1, 0x1

    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->volSystem:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1519
    const/4 v1, 0x5

    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->volNotify:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1520
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
    .line 941
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

    .line 298
    invoke-static {v0, v2, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    .line 301
    :try_start_a
    new-instance v0, Landroid/media/AudioRecord;

    const/16 v2, 0x3e80

    const/16 v3, 0x10

    const/4 v4, 0x2

    const/16 v5, 0x3e80

    .line 302
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_1b} :catch_72

    .line 303
    :try_start_1b
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_45

    .line 304
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

    .line 305
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    move-object v0, v6

    .line 323
    :cond_44
    :goto_44
    return-object v0

    .line 308
    :cond_45
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 309
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_44

    .line 310
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

    .line 311
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_70} :catch_a0

    move-object v0, v6

    .line 312
    goto :goto_44

    .line 315
    :catch_72
    move-exception v0

    move-object v1, v0

    move-object v2, v6

    .line 316
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

    .line 317
    if-eqz v2, :cond_9c

    .line 319
    :try_start_99
    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_9c} :catch_9e

    :cond_9c
    :goto_9c
    move-object v0, v6

    .line 323
    goto :goto_44

    .line 320
    :catch_9e
    move-exception v0

    goto :goto_9c

    .line 315
    :catch_a0
    move-exception v1

    move-object v2, v0

    goto :goto_75
.end method

.method static openWindow()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 719
    sput-boolean v6, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    .line 720
    const-string v1, "listening"

    sput-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    .line 721
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->voiceState()V

    .line 722
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/CloudEar;->usable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->permitted(Landroid/app/Activity;Z)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 724
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStop()V

    .line 725
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->chime()Z

    .line 726
    const/4 v0, 0x2

    sput v0, Lcom/isaigu/gymapp/ai/WakeListener;->pendingEar:I

    .line 727
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStart()V

    .line 744
    :cond_2a
    :goto_2a
    return-void

    .line 733
    :cond_2b
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    if-nez v1, :cond_36

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-eqz v1, :cond_36

    .line 734
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->warmRecognizer()V

    .line 736
    :cond_36
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->host:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_42

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->host:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 737
    :cond_42
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_73

    if-eqz v0, :cond_73

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_73

    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->chime()Z

    move-result v1

    if-eqz v1, :cond_73

    new-instance v2, Lcom/isaigu/gymapp/ai/WakeListener$DialogCommand;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/WakeListener$DialogCommand;-><init>()V

    .line 738
    sget-boolean v1, Lcom/isaigu/gymapp/ai/WakeListener;->followUp:Z

    if-eqz v1, :cond_7c

    const-string v1, "\u0421\u043b\u0443\u0448\u0430\u043c\u2026"

    const-string v3, "Listening\u2026"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_6b
    const-wide/16 v4, 0x1388

    .line 737
    invoke-static {v0, v2, v1, v4, v5}, Lcom/isaigu/gymapp/ai/VoiceInput;->listen(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/VoiceInput$Result;Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 742
    :cond_73
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/WakeListener;->mute(Z)V

    .line 743
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V

    goto :goto_2a

    .line 738
    :cond_7c
    const-string v1, "\u0422\u0440\u0435\u043d\u0435\u0440 \u0441\u043b\u0443\u0448\u0430 \u2014 \u043a\u0430\u0436\u0438 \u043a\u043e\u043c\u0430\u043d\u0434\u0430 \u0438\u043b\u0438 \u0432\u044a\u043f\u0440\u043e\u0441"

    const-string v3, "The trainer listens \u2014 a command or a question"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6b
.end method

.method static permitted(Landroid/app/Activity;Z)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 209
    if-eqz p0, :cond_10

    move-object v2, p0

    .line 210
    :goto_5
    if-eqz v2, :cond_d

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_15

    .line 211
    :cond_d
    if-eqz v2, :cond_13

    .line 219
    :cond_f
    :goto_f
    return v0

    .line 209
    :cond_10
    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    goto :goto_5

    :cond_13
    move v0, v1

    .line 211
    goto :goto_f

    .line 213
    :cond_15
    const-string v3, "android.permission.RECORD_AUDIO"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    .line 216
    if-eqz p1, :cond_2c

    if-eqz p0, :cond_2c

    .line 217
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v1

    const/16 v2, 0x5a2

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_2c
    move v0, v1

    .line 219
    goto :goto_f
.end method

.method private static recognize(J)V
    .registers 4

    .prologue
    .line 756
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->RECOGNIZE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 757
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    if-eqz v0, :cond_12

    .line 758
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->RECOGNIZE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 760
    :cond_12
    return-void
.end method

.method static reloadExamples(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 158
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord;->clear()V

    .line 159
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    const v1, 0x3f333333    # 0.7f

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "xems_wake"

    const/4 v4, 0x0

    .line 160
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "sens"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    .line 159
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/ai/WakeWord;->sens:F

    .line 161
    const-string v0, "xems_wake"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tpl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5a

    const-string v1, "ok-trener"

    const-string v2, "xems_wake"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "phrase"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 164
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->unhex(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/ai/WakeWord;->load([B)Z
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5a} :catch_5b

    .line 169
    :cond_5a
    :goto_5a
    return-void

    .line 166
    :catch_5b
    move-exception v0

    .line 167
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

    goto :goto_5a
.end method

.method static saveExamples(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 119
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

    const-string v1, "phrase"

    const-string v2, "ok-trener"

    .line 120
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_26} :catch_27

    .line 124
    :goto_26
    return-void

    .line 121
    :catch_27
    move-exception v0

    .line 122
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

    goto :goto_26
.end method

.method static say(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1457
    const-string v0, "xems"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WakeListener;->say(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    return-void
.end method

.method static say(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/16 v5, 0x19

    const/4 v4, 0x0

    const/16 v3, 0x190

    .line 1461
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->cloud()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1462
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSpeak;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1463
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

    .line 1476
    :goto_21
    return-void

    .line 1466
    :cond_22
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->ttsOk:Z

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_2e

    .line 1467
    :cond_2a
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WakeListener;->tone(I)V

    goto :goto_21

    .line 1471
    :cond_2e
    :try_start_2e
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSpeak;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1472
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

    .line 1473
    :catch_47
    move-exception v0

    .line 1474
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WakeListener;->tone(I)V

    goto :goto_21
.end method

.method static sayLater()V
    .registers 3

    .prologue
    .line 1187
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->LATER:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1188
    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->LATER:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1189
    monitor-exit v1

    .line 1197
    :cond_c
    return-void

    .line 1191
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->LATER:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1192
    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->LATER:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1193
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_2e

    .line 1194
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1195
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->announce(Ljava/lang/String;)V

    goto :goto_1e

    .line 1193
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
    .line 909
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

    .line 1200
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudVoice;->busy()Z

    move-result v0

    .line 1202
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

    .line 1205
    :goto_15
    if-eqz v0, :cond_20

    .line 1206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/WakeListener;->quietSince:J

    .line 1209
    :cond_1d
    :goto_1d
    return v2

    :cond_1e
    move v0, v1

    .line 1202
    goto :goto_15

    .line 1209
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

    .line 1203
    :catch_2f
    move-exception v3

    goto :goto_15
.end method

.method public static start(Landroid/app/Activity;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 174
    if-nez p0, :cond_5

    .line 193
    :goto_4
    return v0

    .line 177
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    .line 178
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->host:Ljava/lang/ref/WeakReference;

    .line 179
    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->load(Landroid/content/Context;)V

    .line 180
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->permitted(Landroid/app/Activity;Z)Z

    move-result v2

    if-nez v2, :cond_24

    .line 181
    const-string v2, "wake"

    const-string v3, "asking for the microphone"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_24
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    .line 184
    sput v0, Lcom/isaigu/gymapp/ai/WakeListener;->followUps:I

    .line 185
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->initTts()V

    .line 186
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->warmRecognizer()V

    .line 187
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord;->ready()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 188
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStart()V

    :goto_39
    move v0, v1

    .line 193
    goto :goto_4

    .line 190
    :cond_3b
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WakeListener;->mute(Z)V

    .line 191
    const-wide/16 v2, 0x12c

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V

    goto :goto_39
.end method

.method private static startSource()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 272
    sget v0, Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I

    if-gez v0, :cond_2b

    .line 273
    sput v1, Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I

    .line 275
    :try_start_7
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_2b

    .line 276
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    const-string v3, "xems_wake"

    const/4 v4, 0x0

    .line 277
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "src"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 276
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_2b} :catch_2e

    .line 282
    :cond_2b
    :goto_2b
    sget v0, Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I

    return v0

    .line 279
    :catch_2e
    move-exception v0

    goto :goto_2b
.end method

.method public static state()Ljava/lang/String;
    .registers 1

    .prologue
    .line 87
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    return-object v0
.end method

.method public static stop()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 197
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->NOT_READY:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 198
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    .line 199
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/WakeListener;->armedUntil:J

    .line 200
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    .line 201
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStop()V

    .line 202
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->RECOGNIZE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 203
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->destroyRecognizer()V

    .line 204
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    .line 205
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->mute(Z)V

    .line 206
    return-void
.end method

.method static tone(I)V
    .registers 7

    .prologue
    .line 1480
    :try_start_0
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x3

    const/16 v2, 0x37

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 1481
    const/16 v1, 0xb4

    invoke-virtual {v0, p0, v1}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 1482
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/ai/WakeListener$Release;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/ai/WakeListener$Release;-><init>(Landroid/media/ToneGenerator;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_19} :catch_1a

    .line 1485
    :goto_19
    return-void

    .line 1483
    :catch_1a
    move-exception v0

    goto :goto_19
.end method

.method static unhex(Ljava/lang/String;)[B
    .registers 5

    .prologue
    .line 1536
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    .line 1537
    const/4 v0, 0x0

    :goto_9
    array-length v2, v1

    if-ge v0, v2, :cond_22

    .line 1538
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

    .line 1537
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1540
    :cond_22
    return-object v1
.end method

.method private static warmRecognizer()V
    .registers 4

    .prologue
    .line 916
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    if-nez v0, :cond_2a

    .line 917
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    .line 918
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

    .line 920
    :cond_2a
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_48

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    if-nez v0, :cond_48

    .line 921
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    .line 922
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    new-instance v1, Lcom/isaigu/gymapp/ai/WakeListener$Listener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/WakeListener$Listener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_48} :catch_49

    .line 927
    :cond_48
    :goto_48
    return-void

    .line 924
    :catch_49
    move-exception v0

    .line 925
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
    .line 850
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->followUp:Z

    if-eqz v0, :cond_5

    .line 862
    :cond_4
    :goto_4
    return-void

    .line 853
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    iget v0, v0, Lcom/isaigu/gymapp/ai/WakeWord;->sens:F

    .line 854
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v1, p0}, Lcom/isaigu/gymapp/ai/WakeWord;->feedback(Z)V

    .line 855
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    iget v1, v1, Lcom/isaigu/gymapp/ai/WakeWord;->sens:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 857
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

    .line 860
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

    .line 858
    :catch_51
    move-exception v0

    goto :goto_34
.end method
