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
        Lcom/isaigu/gymapp/ai/WakeListener$SetupEvent;,
        Lcom/isaigu/gymapp/ai/WakeListener$Listening;
    }
.end annotation


# static fields
.field static final ARMED_MS:J = 0x1770L

.field static final DEAD_PEAK:I = 0xc

.field static final DIALOG_MS:J = 0x1388L

.field static final ECHO_MS:J = 0x1c2L

.field private static final FOLLOW:Ljava/lang/Runnable;

.field static volatile KWS:Lcom/isaigu/gymapp/ai/Kws; = null

.field static final KWS_FILE:Ljava/lang/String; = "kws-model.bin"

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

.field static final SRC_KEY:Ljava/lang/String; = "src600"

.field static final VOICE_BACK:Lcom/isaigu/gymapp/ai/WakeListener$VoiceBack;

.field private static aec:Landroid/media/audiofx/AcousticEchoCanceler;

.field private static armedUntil:J

.field private static bgFails:I

.field static cap:[S

.field static capEnd:Lcom/isaigu/gymapp/ai/EarEnd;

.field static capN:I

.field static capPre:I

.field static capSkip:I

.field private static ctx:Landroid/content/Context;

.field private static det:Lcom/isaigu/gymapp/ai/Kws$Detector;

.field private static dialog:Ljava/lang/Boolean;

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

.field static volatile lastClip:[F

.field static volatile level:I

.field private static loaded:Z

.field private static volatile micGen:I

.field private static volatile micRun:Z

.field private static micThread:Ljava/lang/Thread;

.field private static ns:Landroid/media/audiofx/NoiseSuppressor;

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

    .line 322
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_66

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    .line 327
    sput v2, Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I

    .line 642
    const v0, 0xbb80

    new-array v0, v0, [S

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->RAW:[S

    .line 932
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeListener$Recognize;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeListener$Recognize;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->RECOGNIZE:Ljava/lang/Runnable;

    .line 1018
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeListener$NoSpeech;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeListener$NoSpeech;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->NO_SPEECH:Ljava/lang/Runnable;

    .line 1050
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeListener$NotReady;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeListener$NotReady;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->NOT_READY:Ljava/lang/Runnable;

    .line 1349
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeListener$Follow;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeListener$Follow;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->FOLLOW:Ljava/lang/Runnable;

    .line 1350
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeListener$SpotterAgain;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeListener$SpotterAgain;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER_AGAIN:Ljava/lang/Runnable;

    .line 1351
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeListener$Spoken;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeListener$Spoken;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOKEN:Lcom/isaigu/gymapp/ai/WakeListener$Spoken;

    .line 1398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->LATER:Ljava/util/ArrayList;

    .line 1406
    new-instance v0, Lcom/isaigu/gymapp/ai/WakeListener$VoiceBack;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/WakeListener$VoiceBack;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->VOICE_BACK:Lcom/isaigu/gymapp/ai/WakeListener$VoiceBack;

    return-void

    .line 322
    nop

    :array_66
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
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->begin()V

    return-void
.end method

.method static synthetic access$1100()Z
    .registers 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->spoke:Z

    return v0
.end method

.method static synthetic access$1102(Z)Z
    .registers 1

    .prologue
    .line 45
    sput-boolean p0, Lcom/isaigu/gymapp/ai/WakeListener;->spoke:Z

    return p0
.end method

.method static synthetic access$1200()I
    .registers 1

    .prologue
    .line 45
    sget v0, Lcom/isaigu/gymapp/ai/WakeListener;->followUps:I

    return v0
.end method

.method static synthetic access$1202(I)I
    .registers 1

    .prologue
    .line 45
    sput p0, Lcom/isaigu/gymapp/ai/WakeListener;->followUps:I

    return p0
.end method

.method static synthetic access$1300()Z
    .registers 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->readySeen:Z

    return v0
.end method

.method static synthetic access$1302(Z)Z
    .registers 1

    .prologue
    .line 45
    sput-boolean p0, Lcom/isaigu/gymapp/ai/WakeListener;->readySeen:Z

    return p0
.end method

.method static synthetic access$1400()Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->NOT_READY:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->NO_SPEECH:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(J)V
    .registers 2

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V

    return-void
.end method

.method static synthetic access$1700()V
    .registers 0

    .prologue
    .line 45
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->destroyRecognizer()V

    return-void
.end method

.method static synthetic access$1802(I)I
    .registers 1

    .prologue
    .line 45
    sput p0, Lcom/isaigu/gymapp/ai/WakeListener;->bgFails:I

    return p0
.end method

.method static synthetic access$1900()V
    .registers 0

    .prologue
    .line 45
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->initTts()V

    return-void
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 45
    sget v0, Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I

    return v0
.end method

.method static synthetic access$2000()Z
    .registers 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->ttsOk:Z

    return v0
.end method

.method static synthetic access$2002(Z)Z
    .registers 1

    .prologue
    .line 45
    sput-boolean p0, Lcom/isaigu/gymapp/ai/WakeListener;->ttsOk:Z

    return p0
.end method

.method static synthetic access$2100()Landroid/speech/tts/TextToSpeech;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$2200()Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER_AGAIN:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2300()Ljava/lang/Runnable;
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

.method static synthetic access$400()Lcom/isaigu/gymapp/ai/Kws$Detector;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->det:Lcom/isaigu/gymapp/ai/Kws$Detector;

    return-object v0
.end method

.method static synthetic access$402(Lcom/isaigu/gymapp/ai/Kws$Detector;)Lcom/isaigu/gymapp/ai/Kws$Detector;
    .registers 1

    .prologue
    .line 45
    sput-object p0, Lcom/isaigu/gymapp/ai/WakeListener;->det:Lcom/isaigu/gymapp/ai/Kws$Detector;

    return-object p0
.end method

.method static synthetic access$500()Z
    .registers 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    return v0
.end method

.method static synthetic access$600()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(I)V
    .registers 1

    .prologue
    .line 45
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WakeListener;->keepSource(I)V

    return-void
.end method

.method static synthetic access$800()Z
    .registers 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    return v0
.end method

.method static synthetic access$902(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 45
    sput-object p0, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    return-object p0
.end method

.method private static act(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1537
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/ai/AiTrain;->voice(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1538
    if-nez v0, :cond_e

    .line 1539
    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->tone(I)V

    .line 1545
    :goto_d
    return-void

    .line 1540
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_18

    .line 1541
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->say(Ljava/lang/String;)V

    goto :goto_d

    .line 1543
    :cond_18
    const/16 v0, 0x19

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->tone(I)V

    goto :goto_d
.end method

.method static afterWindow(J)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1493
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->NO_SPEECH:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1494
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    .line 1495
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    .line 1496
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->sayLater()V

    .line 1497
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->voiceState()V

    .line 1498
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->cancelRecognizer()V

    .line 1499
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    if-nez v0, :cond_1c

    .line 1508
    :goto_1b
    return-void

    .line 1502
    :cond_1c
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->ready()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1503
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->mute(Z)V

    .line 1504
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;-><init>()V

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1b

    .line 1506
    :cond_30
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V

    goto :goto_1b
.end method

.method static announce(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1321
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-nez v0, :cond_d

    .line 1347
    :cond_c
    :goto_c
    return-void

    .line 1324
    :cond_d
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    if-eqz v0, :cond_1e

    .line 1325
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->LATER:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1326
    :try_start_14
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->LATER:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1327
    monitor-exit v1

    goto :goto_c

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw v0

    .line 1330
    :cond_1e
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->initTts()V

    .line 1331
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->ttsOk:Z

    if-eqz v0, :cond_29

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_2f

    :cond_29
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->cloud()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1335
    :cond_2f
    :try_start_2f
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    if-eqz v0, :cond_36

    .line 1336
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStop()V

    .line 1338
    :cond_36
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSpeak;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1339
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->cloud()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 1340
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    const-string v2, "xems-ann"

    const/4 v3, 0x0

    sget-object v4, Lcom/isaigu/gymapp/ai/WakeListener;->VOICE_BACK:Lcom/isaigu/gymapp/ai/WakeListener$VoiceBack;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/isaigu/gymapp/ai/CloudVoice;->speak(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/CloudVoice$Fallback;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_4a} :catch_4b

    goto :goto_c

    .line 1344
    :catch_4b
    move-exception v0

    .line 1345
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

    .line 1343
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
    .line 1276
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WakeListener;->answer(Ljava/lang/String;Z)V

    .line 1277
    return-void
.end method

.method static answer(Ljava/lang/String;Z)V
    .registers 12

    .prologue
    .line 1285
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 1314
    :cond_c
    :goto_c
    return-void

    .line 1288
    :cond_d
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    if-nez v0, :cond_1c

    .line 1290
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_c

    .line 1293
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->initTts()V

    .line 1294
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WakeListener;->say(Ljava/lang/String;)V

    goto :goto_c

    .line 1297
    :cond_1c
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->FOLLOW:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1298
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStop()V

    .line 1299
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    if-eqz v0, :cond_2d

    .line 1300
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->endWindow()V

    .line 1302
    :cond_2d
    if-eqz p1, :cond_53

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->FOLLOW:Ljava/lang/Runnable;

    .line 1303
    :goto_31
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER_AGAIN:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1304
    sget-boolean v1, Lcom/isaigu/gymapp/ai/WakeListener;->ttsOk:Z

    if-eqz v1, :cond_40

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;

    if-nez v1, :cond_56

    :cond_40
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->cloud()Z

    move-result v1

    if-nez v1, :cond_56

    .line 1305
    const/16 v1, 0x19

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WakeListener;->tone(I)V

    .line 1306
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c

    .line 1302
    :cond_53
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER_AGAIN:Ljava/lang/Runnable;

    goto :goto_31

    .line 1309
    :cond_56
    const-string v1, "speaking"

    sput-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    .line 1310
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->voiceState()V

    .line 1311
    if-eqz p1, :cond_7b

    const-string v1, "xems-listen"

    :goto_61
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->say(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
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

    .line 1311
    :cond_7b
    const-string v1, "xems-said"

    goto :goto_61
.end method

.method private static begin()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 949
    sget-boolean v1, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    if-eqz v1, :cond_9

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-nez v1, :cond_a

    .line 1005
    :cond_9
    :goto_9
    return-void

    .line 952
    :cond_a
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->speaking()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 953
    const-wide/16 v0, 0xfa

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V

    goto :goto_9

    .line 957
    :cond_16
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_18
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/WakeListener;->permitted(Landroid/app/Activity;Z)Z

    move-result v1

    if-nez v1, :cond_46

    .line 958
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_23} :catch_24

    goto :goto_9

    .line 1000
    :catch_24
    move-exception v0

    .line 1001
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

    .line 1002
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->destroyRecognizer()V

    .line 1003
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->afterWindow(J)V

    goto :goto_9

    .line 961
    :cond_46
    :try_start_46
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    if-nez v1, :cond_70

    .line 962
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-static {v1}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    .line 963
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

    .line 965
    :cond_70
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_b5

    .line 968
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->host:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_84

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->host:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 969
    :cond_84
    sget-boolean v1, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    if-eqz v1, :cond_a4

    if-eqz v0, :cond_a4

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_a4

    .line 970
    new-instance v1, Lcom/isaigu/gymapp/ai/WakeListener$DialogCommand;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/WakeListener$DialogCommand;-><init>()V

    const-string v2, "\u0421\u043b\u0443\u0448\u0430\u043c\u2026"

    const-string v3, "Listening\u2026"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x1388

    invoke-static {v0, v1, v2, v4, v5}, Lcom/isaigu/gymapp/ai/VoiceInput;->listen(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/VoiceInput$Result;Ljava/lang/String;J)Z

    goto/16 :goto_9

    .line 971
    :cond_a4
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    if-eqz v0, :cond_af

    .line 972
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->afterWindow(J)V

    goto/16 :goto_9

    .line 974
    :cond_af
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->mute(Z)V

    goto/16 :goto_9

    .line 978
    :cond_b5
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    if-nez v0, :cond_cb

    .line 979
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    .line 980
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    new-instance v1, Lcom/isaigu/gymapp/ai/WakeListener$Listener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/WakeListener$Listener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 982
    :cond_cb
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 983
    const-string v0, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 984
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->bg()Z

    move-result v0

    if-eqz v0, :cond_12c

    const-string v0, "bg-BG"

    .line 985
    :goto_e1
    const-string v2, "android.speech.extra.LANGUAGE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 986
    const-string v2, "android.speech.extra.LANGUAGE_PREFERENCE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 987
    const-string v0, "android.speech.extra.MAX_RESULTS"

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 988
    const-string v0, "calling_package"

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 989
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    if-eqz v0, :cond_10e

    .line 991
    const-string v0, "android.speech.extras.SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS"

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 992
    const-string v0, "android.speech.extras.SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS"

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 994
    :cond_10e
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->readySeen:Z

    .line 995
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 996
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    if-eqz v0, :cond_9

    .line 997
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->NOT_READY:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 998
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->NOT_READY:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_9

    .line 984
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

    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    .line 189
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->RECOGNIZE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 190
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->destroyRecognizer()V

    .line 191
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    .line 192
    sput-object p1, Lcom/isaigu/gymapp/ai/WakeListener;->setup:Lcom/isaigu/gymapp/ai/WakeSetup$Sink;

    .line 193
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WakeListener;->silent:Z

    .line 194
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStart()V

    .line 195
    return-void
.end method

.method static bestVoice()V
    .registers 6

    .prologue
    .line 1610
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

    .line 1636
    :cond_12
    :goto_12
    return-void

    .line 1613
    :cond_13
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->bg()Z

    move-result v0

    if-eqz v0, :cond_7f

    const-string v0, "bg"

    move-object v2, v0

    .line 1614
    :goto_1c
    const/4 v1, 0x0

    .line 1615
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

    .line 1616
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

    .line 1619
    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getFeatures()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_5b

    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getFeatures()Ljava/util/Set;

    move-result-object v4

    const-string v5, "notInstalled"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 1622
    :cond_5b
    if-eqz v1, :cond_7d

    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getQuality()I

    move-result v4

    invoke-virtual {v1}, Landroid/speech/tts/Voice;->getQuality()I

    move-result v5

    if-gt v4, v5, :cond_7d

    .line 1623
    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getQuality()I

    move-result v4

    invoke-virtual {v1}, Landroid/speech/tts/Voice;->getQuality()I

    move-result v5

    if-ne v4, v5, :cond_f2

    invoke-virtual {v1}, Landroid/speech/tts/Voice;->isNetworkConnectionRequired()Z

    move-result v4

    if-eqz v4, :cond_f2

    .line 1624
    invoke-virtual {v0}, Landroid/speech/tts/Voice;->isNetworkConnectionRequired()Z

    move-result v4

    if-nez v4, :cond_f2

    :cond_7d
    :goto_7d
    move-object v1, v0

    .line 1627
    goto :goto_27

    .line 1613
    :cond_7f
    const-string v0, "en"

    move-object v2, v0

    goto :goto_1c

    .line 1628
    :cond_83
    if-eqz v1, :cond_8a

    .line 1629
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setVoice(Landroid/speech/tts/Voice;)I

    .line 1631
    :cond_8a
    const-string v2, "wake"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tts voice "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_ef

    .line 1632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1631
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

    .line 1632
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

    .line 1631
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cf
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_cf} :catch_d1

    goto/16 :goto_12

    .line 1633
    :catch_d1
    move-exception v0

    .line 1634
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

    .line 1632
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
    .line 1572
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
    .line 1402
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-nez v0, :cond_c

    if-eqz p0, :cond_c

    .line 1403
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    .line 1405
    :cond_c
    return-void
.end method

.method private static cancelRecognizer()V
    .registers 1

    .prologue
    .line 1550
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_9

    .line 1551
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 1556
    :cond_9
    :goto_9
    return-void

    .line 1553
    :catch_a
    move-exception v0

    .line 1554
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->destroyRecognizer()V

    goto :goto_9
.end method

.method static chime()Z
    .registers 1

    .prologue
    .line 1359
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->followUp:Z

    if-eqz v0, :cond_9

    .line 1360
    invoke-static {}, Lcom/isaigu/gymapp/ai/Earcon;->again()V

    .line 1364
    :goto_7
    const/4 v0, 0x1

    return v0

    .line 1362
    :cond_9
    invoke-static {}, Lcom/isaigu/gymapp/ai/Earcon;->ready()V

    goto :goto_7
.end method

.method static clip(II)[F
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 818
    mul-int/lit16 v1, p0, 0xa0

    add-int/lit16 v1, v1, 0x190

    add-int/lit16 v1, v1, 0x1e0

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit16 v2, v2, -0x1e0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 819
    sget v3, Lcom/isaigu/gymapp/ai/WakeListener;->rawFill:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 820
    sub-int v2, v1, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 821
    new-array v3, v2, [F

    .line 822
    :goto_1d
    if-ge v0, v2, :cond_39

    .line 823
    sget-object v4, Lcom/isaigu/gymapp/ai/WakeListener;->RAW:[S

    sget v5, Lcom/isaigu/gymapp/ai/WakeListener;->rawAt:I

    sub-int/2addr v5, v1

    add-int/2addr v5, v0

    sget-object v6, Lcom/isaigu/gymapp/ai/WakeListener;->RAW:[S

    array-length v6, v6

    rem-int/2addr v5, v6

    sget-object v6, Lcom/isaigu/gymapp/ai/WakeListener;->RAW:[S

    array-length v6, v6

    add-int/2addr v5, v6

    sget-object v6, Lcom/isaigu/gymapp/ai/WakeListener;->RAW:[S

    array-length v6, v6

    rem-int/2addr v5, v6

    aget-short v4, v4, v5

    int-to-float v4, v4

    aput v4, v3, v0

    .line 822
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 825
    :cond_39
    return-object v3
.end method

.method static close(Landroid/media/AudioRecord;)V
    .registers 2

    .prologue
    .line 446
    if-nez p0, :cond_3

    .line 458
    :goto_2
    return-void

    .line 450
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/media/AudioRecord;->stop()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_f

    .line 453
    :goto_6
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->releaseEffects()V

    .line 455
    :try_start_9
    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_2

    .line 456
    :catch_d
    move-exception v0

    goto :goto_2

    .line 451
    :catch_f
    move-exception v0

    goto :goto_6
.end method

.method static cloud()Z
    .registers 1

    .prologue
    .line 1410
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
    const-wide/16 v6, 0x12c

    const/4 v2, 0x0

    .line 1222
    if-eqz p0, :cond_b5

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b5

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b5

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1224
    :goto_1b
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->afterWake(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1225
    if-eqz v1, :cond_22

    move-object v0, v1

    .line 1228
    :cond_22
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->NO_SPEECH:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1229
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b9

    const/4 v1, 0x1

    :goto_30
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WakeListener;->windowResult(Z)V

    .line 1230
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->onlyWakeFragment(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1231
    const-string v0, ""

    .line 1233
    :cond_3b
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->bareNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1234
    if-eqz v1, :cond_6a

    .line 1235
    const-string v2, "wake"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "a bare number \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\" \u2192 \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\" (never a level)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1238
    :cond_6a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_73

    .line 1239
    invoke-static {}, Lcom/isaigu/gymapp/ai/Earcon;->closed()V

    .line 1241
    :cond_73
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_c5

    .line 1242
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

    .line 1243
    invoke-static {}, Lcom/isaigu/gymapp/ai/Earcon;->accepted()V

    .line 1244
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    sget-boolean v2, Lcom/isaigu/gymapp/ai/WakeListener;->followUp:Z

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiTrain;->voice(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1245
    if-eqz v0, :cond_bc

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_bc

    .line 1248
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->endWindow()V

    .line 1249
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiLive;->asking()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->answer(Ljava/lang/String;Z)V

    .line 1261
    :goto_b4
    return-void

    .line 1222
    :cond_b5
    const-string v0, ""

    goto/16 :goto_1b

    :cond_b9
    move v1, v2

    .line 1229
    goto/16 :goto_30

    .line 1252
    :cond_bc
    if-nez v0, :cond_c5

    .line 1254
    invoke-static {}, Lcom/isaigu/gymapp/ai/Earcon;->rejected()V

    .line 1255
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/WakeListener;->afterWindow(J)V

    goto :goto_b4

    .line 1260
    :cond_c5
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/WakeListener;->afterWindow(J)V

    goto :goto_b4
.end method

.method private static destroyRecognizer()V
    .registers 1

    .prologue
    .line 1560
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_e

    .line 1561
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 1562
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_12

    .line 1566
    :cond_e
    :goto_e
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    .line 1567
    return-void

    .line 1564
    :catch_12
    move-exception v0

    goto :goto_e
.end method

.method static dialogAvailable()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 891
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->dialog:Ljava/lang/Boolean;

    if-nez v0, :cond_3e

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_3e

    .line 893
    :try_start_9
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_47

    const/4 v0, 0x1

    :goto_1e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->dialog:Ljava/lang/Boolean;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_24} :catch_49

    .line 897
    :goto_24
    const-string v0, "wake"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "speech dialog on this tablet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->dialog:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    :cond_3e
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->dialog:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_47
    move v0, v1

    .line 893
    goto :goto_1e

    .line 894
    :catch_49
    move-exception v0

    .line 895
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->dialog:Ljava/lang/Boolean;

    goto :goto_24
.end method

.method static dialogClosed()V
    .registers 4

    .prologue
    .line 809
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    if-eqz v0, :cond_18

    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    if-nez v0, :cond_18

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->setup:Lcom/isaigu/gymapp/ai/WakeSetup$Sink;

    if-nez v0, :cond_18

    .line 810
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;-><init>()V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 812
    :cond_18
    return-void
.end method

.method static earBegin(I)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 653
    const v0, 0x1d4c0

    new-array v0, v0, [S

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->cap:[S

    .line 654
    sput v1, Lcom/isaigu/gymapp/ai/WakeListener;->capN:I

    .line 655
    sput v1, Lcom/isaigu/gymapp/ai/WakeListener;->capPre:I

    .line 656
    sput v1, Lcom/isaigu/gymapp/ai/WakeListener;->capSkip:I

    .line 657
    new-instance v0, Lcom/isaigu/gymapp/ai/EarEnd;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/EarEnd;-><init>(I)V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->capEnd:Lcom/isaigu/gymapp/ai/EarEnd;

    .line 658
    const/4 v0, 0x1

    if-ne p0, v0, :cond_50

    .line 659
    sget v0, Lcom/isaigu/gymapp/ai/WakeListener;->rawFill:I

    const/16 v2, 0x7d00

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v0, v1

    .line 660
    :goto_21
    if-ge v0, v2, :cond_40

    .line 661
    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->cap:[S

    sget v4, Lcom/isaigu/gymapp/ai/WakeListener;->capN:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lcom/isaigu/gymapp/ai/WakeListener;->capN:I

    sget-object v5, Lcom/isaigu/gymapp/ai/WakeListener;->RAW:[S

    sget v6, Lcom/isaigu/gymapp/ai/WakeListener;->rawAt:I

    sub-int/2addr v6, v2

    add-int/2addr v6, v0

    sget-object v7, Lcom/isaigu/gymapp/ai/WakeListener;->RAW:[S

    array-length v7, v7

    add-int/2addr v6, v7

    sget-object v7, Lcom/isaigu/gymapp/ai/WakeListener;->RAW:[S

    array-length v7, v7

    rem-int/2addr v6, v7

    aget-short v5, v5, v6

    aput-short v5, v3, v4

    .line 660
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 663
    :cond_40
    sget v0, Lcom/isaigu/gymapp/ai/WakeListener;->capN:I

    sput v0, Lcom/isaigu/gymapp/ai/WakeListener;->capPre:I

    .line 664
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->capEnd:Lcom/isaigu/gymapp/ai/EarEnd;

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->cap:[S

    sget v3, Lcom/isaigu/gymapp/ai/WakeListener;->capPre:I

    invoke-virtual {v0, v2, v1, v3}, Lcom/isaigu/gymapp/ai/EarEnd;->prime([SII)V

    .line 668
    :goto_4d
    sput p0, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    .line 669
    return-void

    .line 666
    :cond_50
    const/16 v0, 0x15e0

    sput v0, Lcom/isaigu/gymapp/ai/WakeListener;->capSkip:I

    goto :goto_4d
.end method

.method static earDone()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 684
    sget v0, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    .line 685
    sput v1, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    .line 686
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z

    .line 687
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->cap:[S

    .line 688
    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->capN:I

    .line 689
    const/4 v3, 0x0

    sput-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->cap:[S

    .line 690
    if-ne v0, v4, :cond_26

    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->capEnd:Lcom/isaigu/gymapp/ai/EarEnd;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/EarEnd;->heardSpeech()Z

    move-result v3

    if-nez v3, :cond_26

    .line 691
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/ai/WakeListener$Heard;

    const-string v2, ""

    invoke-direct {v1, v2, v4}, Lcom/isaigu/gymapp/ai/WakeListener$Heard;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 698
    :goto_25
    return-void

    .line 694
    :cond_26
    const/4 v3, 0x1

    if-ne v0, v3, :cond_33

    .line 695
    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    new-instance v4, Lcom/isaigu/gymapp/ai/WakeListener$Thinking;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/WakeListener$Thinking;-><init>()V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 697
    :cond_33
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/isaigu/gymapp/ai/WakeListener$Hear;

    invoke-direct {v4, v1, v2, v0}, Lcom/isaigu/gymapp/ai/WakeListener$Hear;-><init>([SII)V

    const-string v0, "xems-ear"

    invoke-direct {v3, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_25
.end method

.method static earSample(S)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 673
    sget v1, Lcom/isaigu/gymapp/ai/WakeListener;->capSkip:I

    if-lez v1, :cond_c

    .line 674
    sget v1, Lcom/isaigu/gymapp/ai/WakeListener;->capSkip:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/isaigu/gymapp/ai/WakeListener;->capSkip:I

    .line 679
    :cond_b
    :goto_b
    return v0

    .line 677
    :cond_c
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->cap:[S

    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->capN:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/isaigu/gymapp/ai/WakeListener;->capN:I

    aput-short p0, v1, v2

    .line 678
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->capEnd:Lcom/isaigu/gymapp/ai/EarEnd;

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/WakeWord;->floorDb()F

    move-result v2

    iput v2, v1, Lcom/isaigu/gymapp/ai/EarEnd;->hint:F

    .line 679
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->capEnd:Lcom/isaigu/gymapp/ai/EarEnd;

    invoke-virtual {v1, p0}, Lcom/isaigu/gymapp/ai/EarEnd;->push(S)Z

    move-result v1

    if-nez v1, :cond_2f

    sget v1, Lcom/isaigu/gymapp/ai/WakeListener;->capN:I

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->cap:[S

    array-length v2, v2

    if-lt v1, v2, :cond_b

    :cond_2f
    const/4 v0, 0x1

    goto :goto_b
.end method

.method static effects(Landroid/media/AudioRecord;I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 400
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->releaseEffects()V

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    :try_start_9
    invoke-static {}, Landroid/media/audiofx/NoiseSuppressor;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 404
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v1

    invoke-static {v1}, Landroid/media/audiofx/NoiseSuppressor;->create(I)Landroid/media/audiofx/NoiseSuppressor;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->ns:Landroid/media/audiofx/NoiseSuppressor;

    .line 405
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->ns:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v1, :cond_28

    .line 406
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->ns:Landroid/media/audiofx/NoiseSuppressor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/audiofx/NoiseSuppressor;->setEnabled(Z)I

    .line 407
    const-string v1, " noise-suppression"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_28} :catch_72

    .line 414
    :cond_28
    :goto_28
    :try_start_28
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 415
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v1

    invoke-static {v1}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 416
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v1, :cond_47

    .line 417
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    .line 418
    const-string v1, " echo-cancel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_47} :catch_76

    .line 424
    :cond_47
    :goto_47
    const-string v1, "wake"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mic source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " effects:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_7a

    const-string v0, " none"

    :goto_66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    return-void

    .line 410
    :catch_72
    move-exception v1

    .line 411
    sput-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->ns:Landroid/media/audiofx/NoiseSuppressor;

    goto :goto_28

    .line 421
    :catch_76
    move-exception v1

    .line 422
    sput-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    goto :goto_47

    .line 424
    :cond_7a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_66
.end method

.method static endSetup(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 198
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->setup:Lcom/isaigu/gymapp/ai/WakeSetup$Sink;

    .line 199
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    if-nez v0, :cond_b

    .line 200
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStop()V

    .line 211
    :goto_a
    return-void

    .line 203
    :cond_b
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->ready()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 204
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->mute(Z)V

    .line 205
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStart()V

    goto :goto_a

    .line 207
    :cond_19
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStop()V

    .line 208
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->mute(Z)V

    .line 209
    const-wide/16 v0, 0x12c

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V

    goto :goto_a
.end method

.method private static endWindow()V
    .registers 1

    .prologue
    .line 1265
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    .line 1266
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    .line 1267
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->cancelRecognizer()V

    .line 1268
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->voiceState()V

    .line 1269
    return-void
.end method

.method public static enrolled(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 107
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WakeListener;->load(Landroid/content/Context;)V

    .line 108
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->ready()Z

    move-result v0

    return v0
.end method

.method static giveUpBackground(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1065
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->NOT_READY:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1066
    sget v0, Lcom/isaigu/gymapp/ai/WakeListener;->bgFails:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/ai/WakeListener;->bgFails:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3a

    .line 1069
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

    .line 1070
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->destroyRecognizer()V

    .line 1071
    invoke-static {}, Lcom/isaigu/gymapp/ai/Earcon;->closed()V

    .line 1072
    const-wide/16 v0, 0x12c

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->afterWindow(J)V

    .line 1083
    :goto_39
    return-void

    .line 1078
    :cond_3a
    const-string v0, "wake"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "background recognizer failed twice ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): rebuilt, again next time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/ai/WakeListener;->bgFails:I

    .line 1080
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->destroyRecognizer()V

    .line 1081
    invoke-static {}, Lcom/isaigu/gymapp/ai/Earcon;->closed()V

    .line 1082
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->afterWindow(J)V

    goto :goto_39
.end method

.method static heard(Ljava/lang/String;I)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 755
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    if-nez v0, :cond_6

    .line 795
    :cond_5
    :goto_5
    return-void

    .line 758
    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1d

    .line 759
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    if-eqz v0, :cond_5

    .line 762
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 763
    if-nez p0, :cond_16

    const-string p0, ""

    :cond_16
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->commandHeard(Ljava/util/ArrayList;)V

    goto :goto_5

    .line 767
    :cond_1d
    if-nez p0, :cond_4e

    const/4 v0, 0x0

    .line 768
    :goto_20
    if-nez v0, :cond_83

    .line 769
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    .line 770
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->voiceState()V

    .line 771
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

    .line 773
    const-string v0, "wake"

    const-string v1, "cloud ear silent \u2014 the spotter was sure: the old window"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    sput-boolean v4, Lcom/isaigu/gymapp/ai/WakeListener;->followUp:Z

    .line 775
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->openWindow()V

    goto :goto_5

    .line 767
    :cond_4e
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->afterWake(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 778
    :cond_53
    const-string v1, "wake"

    if-nez p0, :cond_69

    const-string v0, "cloud ear: no answer"

    :goto_59
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;-><init>()V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    .line 778
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

    .line 782
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

    .line 783
    sput-boolean v4, Lcom/isaigu/gymapp/ai/WakeListener;->followUp:Z

    .line 784
    sput v4, Lcom/isaigu/gymapp/ai/WakeListener;->followUps:I

    .line 785
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_bf

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->onlyWakeFragment(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 786
    :cond_bf
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->openWindow()V

    goto/16 :goto_5

    .line 789
    :cond_c4
    const/4 v1, 0x1

    sput-boolean v1, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    .line 790
    const-string v1, "command"

    sput-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    .line 791
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->voiceState()V

    .line 792
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 793
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
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

    .line 1512
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1534
    :cond_b
    :goto_b
    return-void

    .line 1515
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1516
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1517
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->afterWake(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1518
    if-eqz v0, :cond_14

    .line 1521
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_37

    .line 1522
    const-wide/16 v0, 0x1770

    add-long/2addr v0, v2

    sput-wide v0, Lcom/isaigu/gymapp/ai/WakeListener;->armedUntil:J

    .line 1523
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->tone(I)V

    goto :goto_b

    .line 1526
    :cond_37
    sput-wide v6, Lcom/isaigu/gymapp/ai/WakeListener;->armedUntil:J

    .line 1527
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->act(Ljava/lang/String;)V

    goto :goto_b

    .line 1530
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

    .line 1531
    sput-wide v6, Lcom/isaigu/gymapp/ai/WakeListener;->armedUntil:J

    .line 1532
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

    .line 1711
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1712
    array-length v2, p0

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v2, :cond_28

    aget-byte v3, p0, v0

    .line 1713
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

    .line 1712
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1715
    :cond_28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initTts()V
    .registers 4

    .prologue
    .line 1576
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_8

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-nez v0, :cond_9

    .line 1584
    :cond_8
    :goto_8
    return-void

    .line 1580
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

    .line 1581
    :catch_18
    move-exception v0

    .line 1582
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
    .line 354
    sget v0, Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I

    if-ne p0, v0, :cond_27

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_27

    .line 356
    :try_start_8
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    const-string v1, "xems_wake"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 357
    const-string v1, "src600"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p0, :cond_27

    .line 358
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "src600"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_27} :catch_28

    .line 363
    :cond_27
    :goto_27
    return-void

    .line 360
    :catch_28
    move-exception v0

    goto :goto_27
.end method

.method static levelOf(I)I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 333
    const/4 v1, 0x1

    if-gt p0, v1, :cond_5

    .line 336
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
    .line 112
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->loaded:Z

    if-nez v0, :cond_6

    if-nez p0, :cond_7

    .line 128
    :cond_6
    :goto_6
    return-void

    .line 115
    :cond_7
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->loaded:Z

    .line 116
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WakeListener;->loadKws(Landroid/content/Context;)V

    .line 118
    :try_start_d
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    const v1, 0x3f333333    # 0.7f

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "xems_wake"

    const/4 v4, 0x0

    .line 119
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "sens"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    .line 118
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/ai/WakeWord;->sens:F

    .line 120
    const-string v0, "xems_wake"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tpl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
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

    .line 123
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->unhex(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/ai/WakeWord;->load([B)Z
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_62} :catch_63

    goto :goto_6

    .line 125
    :catch_63
    move-exception v0

    .line 126
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

.method static loadKws(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 133
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "kws-model.bin"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 135
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v1, v2

    new-array v1, v1, [B

    .line 136
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 137
    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 138
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 139
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/Kws;->load([B)Lcom/isaigu/gymapp/ai/Kws;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->KWS:Lcom/isaigu/gymapp/ai/Kws;

    .line 140
    const-string v1, "wake"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "own voice model: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->KWS:Lcom/isaigu/gymapp/ai/Kws;

    if-eqz v0, :cond_88

    const-string v0, "loaded"

    :goto_41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_4c
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->KWS:Lcom/isaigu/gymapp/ai/Kws;

    if-nez v0, :cond_87

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "xems/kws-owner.bin"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 147
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 149
    :goto_63
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_8b

    .line 150
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6d} :catch_6e

    goto :goto_63

    .line 156
    :catch_6e
    move-exception v0

    .line 157
    const-string v1, "wake"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kws load: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_87
    :goto_87
    return-void

    .line 140
    :cond_88
    :try_start_88
    const-string v0, "unreadable"

    goto :goto_41

    .line 152
    :cond_8b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 153
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/Kws;->load([B)Lcom/isaigu/gymapp/ai/Kws;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->KWS:Lcom/isaigu/gymapp/ai/Kws;

    .line 154
    const-string v1, "wake"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the built-in voice model: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->KWS:Lcom/isaigu/gymapp/ai/Kws;

    if-eqz v0, :cond_b7

    const-string v0, "loaded"

    :goto_ab
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_87

    :cond_b7
    const-string v0, "unreadable"
    :try_end_b9
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_b9} :catch_6e

    goto :goto_ab
.end method

.method static micStart()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 283
    sget-boolean v1, Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z

    if-eqz v1, :cond_6

    .line 297
    :goto_5
    return-void

    .line 286
    :cond_6
    sput-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z

    .line 287
    sget v1, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    if-nez v1, :cond_14

    sget v1, Lcom/isaigu/gymapp/ai/WakeListener;->pendingEar:I

    if-nez v1, :cond_14

    .line 288
    const-string v1, ""

    sput-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    .line 292
    :cond_14
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->nativeEar()Z

    move-result v1

    .line 293
    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    if-nez v1, :cond_51

    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-eqz v3, :cond_51

    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/CloudEar;->usable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_51

    :goto_28
    iput-boolean v0, v2, Lcom/isaigu/gymapp/ai/WakeWord;->cloud:Z

    .line 294
    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/WakeWord;->cloud:Z

    if-eqz v0, :cond_53

    const v0, 0x3fb9999a    # 1.45f

    :goto_35
    iput v0, v2, Lcom/isaigu/gymapp/ai/WakeWord;->loose:F

    .line 295
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/ai/WakeListener$Mic;

    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/ai/WakeListener$Mic;-><init>(I)V

    const-string v2, "xems-wake"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->micThread:Ljava/lang/Thread;

    .line 296
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->micThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_5

    .line 293
    :cond_51
    const/4 v0, 0x0

    goto :goto_28

    .line 294
    :cond_53
    if-eqz v1, :cond_59

    const v0, 0x3f933333    # 1.15f

    goto :goto_35

    :cond_59
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_35
.end method

.method static micStop()V
    .registers 4

    .prologue
    .line 300
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z

    .line 301
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->micThread:Ljava/lang/Thread;

    .line 302
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->micThread:Ljava/lang/Thread;

    .line 303
    if-eqz v0, :cond_f

    .line 305
    const-wide/16 v2, 0x258

    :try_start_c
    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_10

    .line 309
    :cond_f
    :goto_f
    return-void

    .line 306
    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method private static mute(Z)V
    .registers 5

    .prologue
    .line 1689
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    check-cast v0, Landroid/media/AudioManager;

    .line 1690
    if-nez v0, :cond_13

    .line 1708
    :cond_10
    :goto_10
    return-void

    .line 1689
    :cond_11
    const/4 v0, 0x0

    goto :goto_c

    .line 1693
    :cond_13
    if-eqz p0, :cond_4e

    .line 1694
    sget v1, Lcom/isaigu/gymapp/ai/WakeListener;->volSystem:I

    if-gez v1, :cond_27

    .line 1695
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/ai/WakeListener;->volSystem:I

    .line 1696
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/ai/WakeListener;->volNotify:I

    .line 1698
    :cond_27
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1699
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_33} :catch_34

    goto :goto_10

    .line 1705
    :catch_34
    move-exception v0

    .line 1706
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

    .line 1700
    :cond_4e
    :try_start_4e
    sget v1, Lcom/isaigu/gymapp/ai/WakeListener;->volSystem:I

    if-ltz v1, :cond_10

    .line 1701
    const/4 v1, 0x1

    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->volSystem:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1702
    const/4 v1, 0x5

    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->volNotify:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1703
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/WakeListener;->volNotify:I

    sput v0, Lcom/isaigu/gymapp/ai/WakeListener;->volSystem:I
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_65} :catch_34

    goto :goto_10
.end method

.method static nativeEar()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 879
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-nez v1, :cond_6

    .line 885
    :cond_5
    :goto_5
    return v0

    .line 882
    :cond_6
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    if-nez v1, :cond_d

    .line 883
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->warmRecognizer()V

    .line 885
    :cond_d
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->dialogAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1d
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static needsDialog()Z
    .registers 2

    .prologue
    .line 1119
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

    .line 366
    invoke-static {v0, v2, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    .line 369
    :try_start_a
    new-instance v0, Landroid/media/AudioRecord;

    const/16 v2, 0x3e80

    const/16 v3, 0x10

    const/4 v4, 0x2

    const/16 v5, 0x3e80

    .line 370
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_1b} :catch_75

    .line 371
    :try_start_1b
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_45

    .line 372
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

    .line 373
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    move-object v0, v6

    .line 387
    :cond_44
    :goto_44
    return-object v0

    .line 376
    :cond_45
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/ai/WakeListener;->effects(Landroid/media/AudioRecord;I)V

    .line 377
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 378
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_44

    .line 379
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

    .line 380
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->close(Landroid/media/AudioRecord;)V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_73} :catch_9f

    move-object v0, v6

    .line 381
    goto :goto_44

    .line 384
    :catch_75
    move-exception v0

    move-object v1, v0

    move-object v2, v6

    .line 385
    :goto_78
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

    .line 386
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->close(Landroid/media/AudioRecord;)V

    move-object v0, v6

    .line 387
    goto :goto_44

    .line 384
    :catch_9f
    move-exception v1

    move-object v2, v0

    goto :goto_78
.end method

.method static openWindow()V
    .registers 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 903
    sput-boolean v4, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    .line 904
    const-string v1, "listening"

    sput-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    .line 905
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->voiceState()V

    .line 906
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->nativeEar()Z

    move-result v1

    if-nez v1, :cond_33

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-eqz v1, :cond_33

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/CloudEar;->usable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_33

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->permitted(Landroid/app/Activity;Z)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 908
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStop()V

    .line 909
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->chime()Z

    .line 910
    const/4 v0, 0x2

    sput v0, Lcom/isaigu/gymapp/ai/WakeListener;->pendingEar:I

    .line 911
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStart()V

    .line 930
    :cond_32
    :goto_32
    return-void

    .line 917
    :cond_33
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    if-nez v1, :cond_3e

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-eqz v1, :cond_3e

    .line 918
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->warmRecognizer()V

    .line 920
    :cond_3e
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->host:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_7d

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->host:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 923
    :goto_4b
    if-eqz v1, :cond_76

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_76

    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->dialogAvailable()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->chime()Z

    move-result v0

    if-eqz v0, :cond_76

    new-instance v2, Lcom/isaigu/gymapp/ai/WakeListener$DialogCommand;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/WakeListener$DialogCommand;-><init>()V

    .line 924
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->followUp:Z

    if-eqz v0, :cond_7f

    const-string v0, "\u0421\u043b\u0443\u0448\u0430\u043c\u2026"

    const-string v3, "Listening\u2026"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 923
    :goto_70
    invoke-static {v1, v2, v0, v6, v7}, Lcom/isaigu/gymapp/ai/VoiceInput;->listen(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/VoiceInput$Result;Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_32

    .line 928
    :cond_76
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/WakeListener;->mute(Z)V

    .line 929
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V

    goto :goto_32

    :cond_7d
    move-object v1, v0

    .line 920
    goto :goto_4b

    .line 924
    :cond_7f
    const-string v0, "\u0422\u0440\u0435\u043d\u0435\u0440 \u0441\u043b\u0443\u0448\u0430 \u2014 \u043a\u0430\u0436\u0438 \u043a\u043e\u043c\u0430\u043d\u0434\u0430 \u0438\u043b\u0438 \u0432\u044a\u043f\u0440\u043e\u0441"

    const-string v3, "The trainer listens \u2014 a command or a question"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_70
.end method

.method public static ownVoice(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 102
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WakeListener;->load(Landroid/content/Context;)V

    .line 103
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->KWS:Lcom/isaigu/gymapp/ai/Kws;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method static permitted(Landroid/app/Activity;Z)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 267
    if-eqz p0, :cond_10

    move-object v2, p0

    .line 268
    :goto_5
    if-eqz v2, :cond_d

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_15

    .line 269
    :cond_d
    if-eqz v2, :cond_13

    .line 277
    :cond_f
    :goto_f
    return v0

    .line 267
    :cond_10
    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    goto :goto_5

    :cond_13
    move v0, v1

    .line 269
    goto :goto_f

    .line 271
    :cond_15
    const-string v3, "android.permission.RECORD_AUDIO"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    .line 274
    if-eqz p1, :cond_2c

    if-eqz p0, :cond_2c

    .line 275
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v1

    const/16 v2, 0x5a2

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_2c
    move v0, v1

    .line 277
    goto :goto_f
.end method

.method static ready()Z
    .registers 1

    .prologue
    .line 97
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->KWS:Lcom/isaigu/gymapp/ai/Kws;

    if-nez v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord;->ready()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static recognize(J)V
    .registers 4

    .prologue
    .line 942
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->RECOGNIZE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 943
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    if-eqz v0, :cond_12

    .line 944
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->RECOGNIZE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 946
    :cond_12
    return-void
.end method

.method static releaseEffects()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 429
    :try_start_1
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ns:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v0, :cond_a

    .line 430
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ns:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v0}, Landroid/media/audiofx/NoiseSuppressor;->release()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_1a

    .line 435
    :cond_a
    :goto_a
    :try_start_a
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_13

    .line 436
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_13} :catch_18

    .line 440
    :cond_13
    :goto_13
    sput-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->ns:Landroid/media/audiofx/NoiseSuppressor;

    .line 441
    sput-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 442
    return-void

    .line 438
    :catch_18
    move-exception v0

    goto :goto_13

    .line 432
    :catch_1a
    move-exception v0

    goto :goto_a
.end method

.method static releaseForDialog()V
    .registers 2

    .prologue
    .line 801
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z

    if-nez v0, :cond_8

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->micThread:Ljava/lang/Thread;

    if-eqz v0, :cond_f

    .line 802
    :cond_8
    const-string v0, "wake"

    const-string v1, "microphone released for Google\'s speech window"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStop()V

    .line 805
    return-void
.end method

.method static reloadExamples(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 216
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/WakeWord;->clear()V

    .line 217
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    const v1, 0x3f333333    # 0.7f

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "xems_wake"

    const/4 v4, 0x0

    .line 218
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "sens"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    .line 217
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/ai/WakeWord;->sens:F

    .line 219
    const-string v0, "xems_wake"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tpl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
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

    .line 222
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->unhex(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/ai/WakeWord;->load([B)Z
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5a} :catch_5b

    .line 227
    :cond_5a
    :goto_5a
    return-void

    .line 224
    :catch_5b
    move-exception v0

    .line 225
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
    .line 177
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

    .line 178
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_26} :catch_27

    .line 182
    :goto_26
    return-void

    .line 179
    :catch_27
    move-exception v0

    .line 180
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

.method static saveKws(Landroid/content/Context;Lcom/isaigu/gymapp/ai/Kws;)Z
    .registers 7

    .prologue
    .line 163
    :try_start_0
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/Kws;->save()[B

    move-result-object v0

    .line 164
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "kws-model.bin"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 165
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 166
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 167
    sput-object p1, Lcom/isaigu/gymapp/ai/WakeListener;->KWS:Lcom/isaigu/gymapp/ai/Kws;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1e

    .line 168
    const/4 v0, 0x1

    .line 171
    :goto_1d
    return v0

    .line 169
    :catch_1e
    move-exception v0

    .line 170
    const-string v1, "wake"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kws save: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method static say(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1640
    const-string v0, "xems"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/WakeListener;->say(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    return-void
.end method

.method static say(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/16 v5, 0x19

    const/4 v4, 0x0

    const/16 v3, 0x190

    .line 1644
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->cloud()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1645
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSpeak;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1646
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

    .line 1659
    :goto_21
    return-void

    .line 1649
    :cond_22
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->ttsOk:Z

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->tts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_2e

    .line 1650
    :cond_2a
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WakeListener;->tone(I)V

    goto :goto_21

    .line 1654
    :cond_2e
    :try_start_2e
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSpeak;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1655
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

    .line 1656
    :catch_47
    move-exception v0

    .line 1657
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/WakeListener;->tone(I)V

    goto :goto_21
.end method

.method static sayLater()V
    .registers 3

    .prologue
    .line 1370
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->LATER:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1371
    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->LATER:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1372
    monitor-exit v1

    .line 1380
    :cond_c
    return-void

    .line 1374
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->LATER:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1375
    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->LATER:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1376
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_2e

    .line 1377
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1378
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->announce(Ljava/lang/String;)V

    goto :goto_1e

    .line 1376
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
    .line 1087
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

    .line 1383
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudVoice;->busy()Z

    move-result v0

    .line 1385
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

    .line 1388
    :goto_15
    if-eqz v0, :cond_20

    .line 1389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/isaigu/gymapp/ai/WakeListener;->quietSince:J

    .line 1392
    :cond_1d
    :goto_1d
    return v2

    :cond_1e
    move v0, v1

    .line 1385
    goto :goto_15

    .line 1392
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

    .line 1386
    :catch_2f
    move-exception v3

    goto :goto_15
.end method

.method public static start(Landroid/app/Activity;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 232
    if-nez p0, :cond_5

    .line 251
    :goto_4
    return v0

    .line 235
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    .line 236
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->host:Ljava/lang/ref/WeakReference;

    .line 237
    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->load(Landroid/content/Context;)V

    .line 238
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->permitted(Landroid/app/Activity;Z)Z

    move-result v2

    if-nez v2, :cond_24

    .line 239
    const-string v2, "wake"

    const-string v3, "asking for the microphone"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_24
    sput-boolean v1, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    .line 242
    sput v0, Lcom/isaigu/gymapp/ai/WakeListener;->followUps:I

    .line 243
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->initTts()V

    .line 244
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->warmRecognizer()V

    .line 245
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->ready()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 246
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStart()V

    :goto_37
    move v0, v1

    .line 251
    goto :goto_4

    .line 248
    :cond_39
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/WakeListener;->mute(Z)V

    .line 249
    const-wide/16 v2, 0x12c

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/WakeListener;->recognize(J)V

    goto :goto_37
.end method

.method private static startSource()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 340
    sget v0, Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I

    if-gez v0, :cond_2b

    .line 341
    sput v1, Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I

    .line 343
    :try_start_7
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_2b

    .line 344
    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    const-string v3, "xems_wake"

    const/4 v4, 0x0

    .line 345
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "src600"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 344
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_2b} :catch_2e

    .line 350
    :cond_2b
    :goto_2b
    sget v0, Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I

    return v0

    .line 347
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

    .line 255
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->NOT_READY:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 256
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WakeListener;->on:Z

    .line 257
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/WakeListener;->armedUntil:J

    .line 258
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->state:Ljava/lang/String;

    .line 259
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->micStop()V

    .line 260
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->RECOGNIZE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 261
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->destroyRecognizer()V

    .line 262
    sput-boolean v2, Lcom/isaigu/gymapp/ai/WakeListener;->window:Z

    .line 263
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->mute(Z)V

    .line 264
    return-void
.end method

.method static tone(I)V
    .registers 7

    .prologue
    .line 1663
    :try_start_0
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x3

    const/16 v2, 0x37

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 1664
    const/16 v1, 0xb4

    invoke-virtual {v0, p0, v1}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 1665
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/ai/WakeListener$Release;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/ai/WakeListener$Release;-><init>(Landroid/media/ToneGenerator;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_19} :catch_1a

    .line 1668
    :goto_19
    return-void

    .line 1666
    :catch_1a
    move-exception v0

    goto :goto_19
.end method

.method static unhex(Ljava/lang/String;)[B
    .registers 5

    .prologue
    .line 1719
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    .line 1720
    const/4 v0, 0x0

    :goto_9
    array-length v2, v1

    if-ge v0, v2, :cond_22

    .line 1721
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

    .line 1720
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1723
    :cond_22
    return-object v1
.end method

.method private static warmRecognizer()V
    .registers 4

    .prologue
    .line 1094
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    if-nez v0, :cond_2a

    .line 1095
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    .line 1096
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

    .line 1098
    :cond_2a
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->serviceOk:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_48

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    if-nez v0, :cond_48

    .line 1099
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    .line 1100
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->rec:Landroid/speech/SpeechRecognizer;

    new-instance v1, Lcom/isaigu/gymapp/ai/WakeListener$Listener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/WakeListener$Listener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_48} :catch_49

    .line 1105
    :cond_48
    :goto_48
    return-void

    .line 1102
    :catch_49
    move-exception v0

    .line 1103
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
    .line 1036
    sget-boolean v0, Lcom/isaigu/gymapp/ai/WakeListener;->followUp:Z

    if-eqz v0, :cond_5

    .line 1048
    :cond_4
    :goto_4
    return-void

    .line 1039
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    iget v0, v0, Lcom/isaigu/gymapp/ai/WakeWord;->sens:F

    .line 1040
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    invoke-virtual {v1, p0}, Lcom/isaigu/gymapp/ai/WakeWord;->feedback(Z)V

    .line 1041
    sget-object v1, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    iget v1, v1, Lcom/isaigu/gymapp/ai/WakeWord;->sens:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/isaigu/gymapp/ai/WakeListener;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 1043
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

    .line 1046
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

    .line 1044
    :catch_51
    move-exception v0

    goto :goto_34
.end method
