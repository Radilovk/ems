.class public final Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;
.super Ljava/lang/Object;
.source "MastogoShell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Poll;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Pump;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Timeout;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Grace;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$ModTick;
    }
.end annotation


# static fields
.field static final GAP_MS:J = 0x64L

.field static final GRACE_MS:J = 0xc8L

.field static final K_LEVEL:I = 0x1

.field static final K_PAUSE:I = 0x3

.field static final K_PLAIN:I = 0x0

.field static final K_PROBE:I = 0x2

.field public static final MAX_LEVEL:I = 0x19

.field public static final MAX_RISE:I = 0x3

.field public static final MODES:I = 0x1a

.field static final POLL_MS:J = 0x4e20L

.field static final PROBE_REPLY_MS:J = 0x15eL

.field static final REPLY_MS:J = 0x320L


# instance fields
.field public battery:I

.field public batteryV:D

.field closed:Z

.field public contact:I

.field final ev:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;

.field heartAt:J

.field public heartMs:J

.field public final hits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field inFlight:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

.field final io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

.field public level:I

.field mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

.field modStart:J

.field modToken:I

.field public mode:I

.field nextAt:J

.field public offReason:I

.field polling:Z

.field public probeDone:I

.field public probeTotal:I

.field public probeWrite:Z

.field public probing:Z

.field pumpPosted:Z

.field final queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;",
            ">;"
        }
    .end annotation
.end field

.field public recvCount:I

.field public final refused:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public rttCount:I

.field public rttMax:J

.field public rttMin:J

.field public rttSum:J

.field public running:Z

.field final rx:Ljava/lang/StringBuilder;

.field secAt:J

.field public secLeft:I

.field public sentCount:I

.field public final silent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final suspended:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public switches:I

.field public final tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field token:I


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;)V
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mode:I

    .line 62
    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->level:I

    .line 65
    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->secLeft:I

    .line 68
    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->battery:I

    .line 72
    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->contact:I

    .line 74
    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->offReason:I

    .line 78
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->tags:Ljava/util/Map;

    .line 80
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttMin:J

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rx:Ljava/lang/StringBuilder;

    .line 775
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->hits:Ljava/util/List;

    .line 777
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->silent:Ljava/util/List;

    .line 779
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->refused:Ljava/util/List;

    .line 781
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->suspended:Ljava/util/List;

    .line 109
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    .line 110
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->ev:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;

    .line 111
    return-void
.end method

.method static add(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 856
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 857
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    :cond_9
    return-void
.end method

.method static answers(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 396
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->nameOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 397
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 401
    :cond_28
    :goto_28
    return v0

    .line 400
    :cond_29
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 401
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v1, :cond_45

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_45

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_28

    :cond_45
    const/4 v0, 0x1

    goto :goto_28
.end method

.method public static candidates()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 785
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 786
    const/16 v0, 0x18

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "AT"

    aput-object v0, v2, v1

    const-string v0, "ATI"

    aput-object v0, v2, v8

    const-string v0, "AT+GMR"

    aput-object v0, v2, v9

    const-string v0, "AT+GMM"

    aput-object v0, v2, v10

    const-string v0, "AT+GMI"

    aput-object v0, v2, v11

    const/4 v0, 0x5

    const-string v4, "AT+CGMR"

    aput-object v4, v2, v0

    const/4 v0, 0x6

    const-string v4, "AT+CGMM"

    aput-object v4, v2, v0

    const/4 v0, 0x7

    const-string v4, "AT+HELP"

    aput-object v4, v2, v0

    const/16 v0, 0x8

    const-string v4, "AT+HELP?"

    aput-object v4, v2, v0

    const/16 v0, 0x9

    const-string v4, "AT+?"

    aput-object v4, v2, v0

    const/16 v0, 0xa

    const-string v4, "AT+VER?"

    aput-object v4, v2, v0

    const/16 v0, 0xb

    const-string v4, "AT+VERSION?"

    aput-object v4, v2, v0

    const/16 v0, 0xc

    const-string v4, "AT+NAME?"

    aput-object v4, v2, v0

    const/16 v0, 0xd

    const-string v4, "AT+ADDR?"

    aput-object v4, v2, v0

    const/16 v0, 0xe

    const-string v4, "AT+MAC?"

    aput-object v4, v2, v0

    const/16 v0, 0xf

    const-string v4, "AT+LADDR?"

    aput-object v4, v2, v0

    const/16 v0, 0x10

    const-string v4, "AT+SN?"

    aput-object v4, v2, v0

    const/16 v0, 0x11

    const-string v4, "AT+ID?"

    aput-object v4, v2, v0

    const/16 v0, 0x12

    const-string v4, "AT+TYPE?"

    aput-object v4, v2, v0

    const/16 v0, 0x13

    const-string v4, "AT+MODEL?"

    aput-object v4, v2, v0

    const/16 v0, 0x14

    const-string v4, "AT+BAUD?"

    aput-object v4, v2, v0

    const/16 v0, 0x15

    const-string v4, "AT+INFO?"

    aput-object v4, v2, v0

    const/16 v0, 0x16

    const-string v4, "AT+FW?"

    aput-object v4, v2, v0

    const/16 v0, 0x17

    const-string v4, "AT+HW?"

    aput-object v4, v2, v0

    .line 789
    array-length v4, v2

    move v0, v1

    :goto_93
    if-ge v0, v4, :cond_9d

    aget-object v5, v2, v0

    .line 790
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 789
    add-int/lit8 v0, v0, 0x1

    goto :goto_93

    .line 792
    :cond_9d
    const/16 v0, 0xc

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "CSTR"

    aput-object v0, v2, v1

    const-string v0, "CMODE"

    aput-object v0, v2, v8

    const-string v0, "CDCLK"

    aput-object v0, v2, v9

    const-string v0, "QPOWP"

    aput-object v0, v2, v10

    const-string v0, "QPOWS"

    aput-object v0, v2, v11

    const/4 v0, 0x5

    const-string v4, "QPOWD"

    aput-object v4, v2, v0

    const/4 v0, 0x6

    const-string v4, "CBC"

    aput-object v4, v2, v0

    const/4 v0, 0x7

    const-string v4, "WSDT"

    aput-object v4, v2, v0

    const/16 v0, 0x8

    const-string v4, "CHANNEL"

    aput-object v4, v2, v0

    const/16 v0, 0x9

    const-string v4, "CLOAD"

    aput-object v4, v2, v0

    const/16 v0, 0xa

    const-string v4, "CHEART"

    aput-object v4, v2, v0

    const/16 v0, 0xb

    const-string v4, "CLKEND"

    aput-object v4, v2, v0

    .line 794
    array-length v4, v2

    move v0, v1

    :goto_de
    if-ge v0, v4, :cond_11d

    aget-object v5, v2, v0

    .line 795
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AT+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->add(Ljava/util/List;Ljava/lang/String;)V

    .line 796
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AT+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->add(Ljava/util/List;Ljava/lang/String;)V

    .line 794
    add-int/lit8 v0, v0, 0x1

    goto :goto_de

    .line 798
    :cond_11d
    const/16 v0, 0x55

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "FRQ"

    aput-object v0, v4, v1

    const-string v0, "FREQ"

    aput-object v0, v4, v8

    const-string v0, "FRE"

    aput-object v0, v4, v9

    const-string v0, "HZ"

    aput-object v0, v4, v10

    const-string v0, "PW"

    aput-object v0, v4, v11

    const/4 v0, 0x5

    const-string v2, "PWM"

    aput-object v2, v4, v0

    const/4 v0, 0x6

    const-string v2, "PWD"

    aput-object v2, v4, v0

    const/4 v0, 0x7

    const-string v2, "WID"

    aput-object v2, v4, v0

    const/16 v0, 0x8

    const-string v2, "WIDTH"

    aput-object v2, v4, v0

    const/16 v0, 0x9

    const-string v2, "WAV"

    aput-object v2, v4, v0

    const/16 v0, 0xa

    const-string v2, "WAVE"

    aput-object v2, v4, v0

    const/16 v0, 0xb

    const-string v2, "PLS"

    aput-object v2, v4, v0

    const/16 v0, 0xc

    const-string v2, "PULSE"

    aput-object v2, v4, v0

    const/16 v0, 0xd

    const-string v2, "AMP"

    aput-object v2, v4, v0

    const/16 v0, 0xe

    const-string v2, "VOL"

    aput-object v2, v4, v0

    const/16 v0, 0xf

    const-string v2, "CUR"

    aput-object v2, v4, v0

    const/16 v0, 0x10

    const-string v2, "CURR"

    aput-object v2, v4, v0

    const/16 v0, 0x11

    const-string v2, "VOLT"

    aput-object v2, v4, v0

    const/16 v0, 0x12

    const-string v2, "IMP"

    aput-object v2, v4, v0

    const/16 v0, 0x13

    const-string v2, "RES"

    aput-object v2, v4, v0

    const/16 v0, 0x14

    const-string v2, "TMP"

    aput-object v2, v4, v0

    const/16 v0, 0x15

    const-string v2, "TEMP"

    aput-object v2, v4, v0

    const/16 v0, 0x16

    const-string v2, "RAMP"

    aput-object v2, v4, v0

    const/16 v0, 0x17

    const-string v2, "RISE"

    aput-object v2, v4, v0

    const/16 v0, 0x18

    const-string v2, "FALL"

    aput-object v2, v4, v0

    const/16 v0, 0x19

    const-string v2, "ON"

    aput-object v2, v4, v0

    const/16 v0, 0x1a

    const-string v2, "OFF"

    aput-object v2, v4, v0

    const/16 v0, 0x1b

    const-string v2, "ONT"

    aput-object v2, v4, v0

    const/16 v0, 0x1c

    const-string v2, "OFFT"

    aput-object v2, v4, v0

    const/16 v0, 0x1d

    const-string v2, "DUTY"

    aput-object v2, v4, v0

    const/16 v0, 0x1e

    const-string v2, "TIM"

    aput-object v2, v4, v0

    const/16 v0, 0x1f

    const-string v2, "TIME"

    aput-object v2, v4, v0

    const/16 v0, 0x20

    const-string v2, "SDT"

    aput-object v2, v4, v0

    const/16 v0, 0x21

    const-string v2, "SET"

    aput-object v2, v4, v0

    const/16 v0, 0x22

    const-string v2, "CFG"

    aput-object v2, v4, v0

    const/16 v0, 0x23

    const-string v2, "PARA"

    aput-object v2, v4, v0

    const/16 v0, 0x24

    const-string v2, "PAR"

    aput-object v2, v4, v0

    const/16 v0, 0x25

    const-string v2, "PRM"

    aput-object v2, v4, v0

    const/16 v0, 0x26

    const-string v2, "LEV"

    aput-object v2, v4, v0

    const/16 v0, 0x27

    const-string v2, "LEVL"

    aput-object v2, v4, v0

    const/16 v0, 0x28

    const-string v2, "MAX"

    aput-object v2, v4, v0

    const/16 v0, 0x29

    const-string v2, "MIN"

    aput-object v2, v4, v0

    const/16 v0, 0x2a

    const-string v2, "BAT"

    aput-object v2, v4, v0

    const/16 v0, 0x2b

    const-string v2, "VER"

    aput-object v2, v4, v0

    const/16 v0, 0x2c

    const-string v2, "SN"

    aput-object v2, v4, v0

    const/16 v0, 0x2d

    const-string v2, "ID"

    aput-object v2, v4, v0

    const/16 v0, 0x2e

    const-string v2, "DBG"

    aput-object v2, v4, v0

    const/16 v0, 0x2f

    const-string v2, "DEBUG"

    aput-object v2, v4, v0

    const/16 v0, 0x30

    const-string v2, "TEST"

    aput-object v2, v4, v0

    const/16 v0, 0x31

    const-string v2, "CAL"

    aput-object v2, v4, v0

    const/16 v0, 0x32

    const-string v2, "ADC"

    aput-object v2, v4, v0

    const/16 v0, 0x33

    const-string v2, "DAC"

    aput-object v2, v4, v0

    const/16 v0, 0x34

    const-string v2, "BST"

    aput-object v2, v4, v0

    const/16 v0, 0x35

    const-string v2, "BOOST"

    aput-object v2, v4, v0

    const/16 v0, 0x36

    const-string v2, "HV"

    aput-object v2, v4, v0

    const/16 v0, 0x37

    const-string v2, "GEAR"

    aput-object v2, v4, v0

    const/16 v0, 0x38

    const-string v2, "PRG"

    aput-object v2, v4, v0

    const/16 v0, 0x39

    const-string v2, "PROG"

    aput-object v2, v4, v0

    const/16 v0, 0x3a

    const-string v2, "MOD"

    aput-object v2, v4, v0

    const/16 v0, 0x3b

    const-string v2, "MODE"

    aput-object v2, v4, v0

    const/16 v0, 0x3c

    const-string v2, "CH"

    aput-object v2, v4, v0

    const/16 v0, 0x3d

    const-string v2, "CHN"

    aput-object v2, v4, v0

    const/16 v0, 0x3e

    const-string v2, "STR"

    aput-object v2, v4, v0

    const/16 v0, 0x3f

    const-string v2, "POW"

    aput-object v2, v4, v0

    const/16 v0, 0x40

    const-string v2, "POWP"

    aput-object v2, v4, v0

    const/16 v0, 0x41

    const-string v2, "POWS"

    aput-object v2, v4, v0

    const/16 v0, 0x42

    const-string v2, "POWD"

    aput-object v2, v4, v0

    const/16 v0, 0x43

    const-string v2, "LOAD"

    aput-object v2, v4, v0

    const/16 v0, 0x44

    const-string v2, "HEART"

    aput-object v2, v4, v0

    const/16 v0, 0x45

    const-string v2, "DCLK"

    aput-object v2, v4, v0

    const/16 v0, 0x46

    const-string v2, "CLK"

    aput-object v2, v4, v0

    const/16 v0, 0x47

    const-string v2, "BC"

    aput-object v2, v4, v0

    const/16 v0, 0x48

    const-string v2, "SLP"

    aput-object v2, v4, v0

    const/16 v0, 0x49

    const-string v2, "SLEEP"

    aput-object v2, v4, v0

    const/16 v0, 0x4a

    const-string v2, "LED"

    aput-object v2, v4, v0

    const/16 v0, 0x4b

    const-string v2, "KEY"

    aput-object v2, v4, v0

    const/16 v0, 0x4c

    const-string v2, "BEEP"

    aput-object v2, v4, v0

    const/16 v0, 0x4d

    const-string v2, "MOT"

    aput-object v2, v4, v0

    const/16 v0, 0x4e

    const-string v2, "VIB"

    aput-object v2, v4, v0

    const/16 v0, 0x4f

    const-string v2, "OTA"

    aput-object v2, v4, v0

    const/16 v0, 0x50

    const-string v2, "RST"

    aput-object v2, v4, v0

    const/16 v0, 0x51

    const-string v2, "STA"

    aput-object v2, v4, v0

    const/16 v0, 0x52

    const-string v2, "STAT"

    aput-object v2, v4, v0

    const/16 v0, 0x53

    const-string v2, "STATE"

    aput-object v2, v4, v0

    const/16 v0, 0x54

    const-string v2, "ERR"

    aput-object v2, v4, v0

    .line 805
    const/4 v0, 0x7

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "C"

    aput-object v0, v5, v1

    const-string v0, "Q"

    aput-object v0, v5, v8

    const-string v0, "W"

    aput-object v0, v5, v9

    const-string v0, "S"

    aput-object v0, v5, v10

    const-string v0, "G"

    aput-object v0, v5, v11

    const/4 v0, 0x5

    const-string v2, "R"

    aput-object v2, v5, v0

    const/4 v0, 0x6

    const-string v2, ""

    aput-object v2, v5, v0

    .line 806
    array-length v6, v5

    move v2, v1

    :goto_335
    if-ge v2, v6, :cond_366

    aget-object v7, v5, v2

    .line 807
    array-length v8, v4

    move v0, v1

    :goto_33b
    if-ge v0, v8, :cond_362

    aget-object v9, v4, v0

    .line 808
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AT+"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->add(Ljava/util/List;Ljava/lang/String;)V

    .line 807
    add-int/lit8 v0, v0, 0x1

    goto :goto_33b

    .line 806
    :cond_362
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_335

    .line 811
    :cond_366
    return-object v3
.end method

.method static clock(Ljava/lang/String;)I
    .registers 8

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 534
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_24

    .line 535
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 536
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 534
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 539
    :cond_24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ge v0, v6, :cond_2f

    .line 540
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->lastInt(Ljava/lang/String;)I

    move-result v0

    .line 543
    :goto_2e
    return v0

    .line 542
    :cond_2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 543
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0xe10

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v1, v2

    .line 544
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    .line 543
    goto :goto_2e
.end method

.method public static envelope(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;J)I
    .registers 14

    .prologue
    .line 672
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    sub-int v2, v0, v1

    .line 673
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    int-to-long v0, v0

    rem-long v0, p1, v0

    long-to-double v0, v0

    iget v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    int-to-double v4, v3

    div-double/2addr v0, v4

    .line 675
    iget v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    packed-switch v3, :pswitch_data_ce

    .line 708
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    sub-double v0, v4, v0

    .line 711
    :goto_26
    :pswitch_26
    iget v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    int-to-double v4, v2

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/2addr v0, v3

    return v0

    .line 677
    :pswitch_31
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    int-to-long v0, v0

    rem-long v0, p1, v0

    .line 678
    iget v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->upMs:I

    int-to-long v4, v3

    cmp-long v3, v0, v4

    if-gez v3, :cond_43

    .line 679
    long-to-double v0, v0

    iget v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->upMs:I

    int-to-double v4, v3

    div-double/2addr v0, v4

    goto :goto_26

    .line 680
    :cond_43
    iget v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->upMs:I

    iget v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->onMs:I

    add-int/2addr v3, v4

    int-to-long v4, v3

    cmp-long v3, v0, v4

    if-gez v3, :cond_50

    .line 681
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_26

    .line 682
    :cond_50
    iget v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->upMs:I

    iget v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->onMs:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->downMs:I

    add-int/2addr v3, v4

    int-to-long v4, v3

    cmp-long v3, v0, v4

    if-gez v3, :cond_74

    .line 683
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->upMs:I

    int-to-long v6, v3

    sub-long/2addr v0, v6

    iget v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->onMs:I

    int-to-long v6, v3

    sub-long/2addr v0, v6

    long-to-double v0, v0

    const/4 v3, 0x1

    iget v6, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->downMs:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v6, v3

    div-double/2addr v0, v6

    sub-double v0, v4, v0

    goto :goto_26

    .line 685
    :cond_74
    const-wide/16 v0, 0x0

    .line 687
    goto :goto_26

    .line 690
    :pswitch_77
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v4

    iget v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->duty:I

    int-to-double v4, v3

    cmpg-double v0, v0, v4

    if-gez v0, :cond_84

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_26

    :cond_84
    const-wide/16 v0, 0x0

    goto :goto_26

    .line 696
    :pswitch_87
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v3, v0, v4

    if-gez v3, :cond_91

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v4

    goto :goto_26

    :cond_91
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v6

    sub-double v0, v4, v0

    goto :goto_26

    .line 699
    :pswitch_99
    const/4 v0, 0x1

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    div-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    div-long v0, p1, v0

    .line 700
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    const-wide v4, -0x61c8864680b583ebL

    mul-long/2addr v0, v4

    .line 701
    const/16 v3, 0x1f

    ushr-long v4, v0, v3

    xor-long/2addr v0, v4

    .line 702
    const-wide v4, -0x40a7b892e31b1a47L    # -0.0014818730883930777

    mul-long/2addr v0, v4

    .line 703
    const/16 v3, 0x1d

    ushr-long v4, v0, v3

    xor-long/2addr v0, v4

    .line 704
    const/16 v3, 0xb

    ushr-long/2addr v0, v3

    const-wide/32 v4, 0xffff

    and-long/2addr v0, v4

    long-to-double v0, v0

    const-wide v4, 0x40efffe000000000L    # 65535.0

    div-double/2addr v0, v4

    .line 705
    goto/16 :goto_26

    .line 675
    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_77
        :pswitch_26
        :pswitch_87
        :pswitch_99
        :pswitch_31
    .end packed-switch
.end method

.method public static hhmmss(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 280
    div-int/lit16 v0, p0, 0xe10

    div-int/lit8 v1, p0, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    rem-int/lit8 v2, p0, 0x3c

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->two(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->two(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->two(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static lastInt(Ljava/lang/String;)I
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 490
    if-nez p0, :cond_4

    .line 507
    :cond_3
    :goto_3
    return v0

    .line 493
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 494
    :goto_8
    if-lez v2, :cond_19

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_19

    .line 495
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    :cond_19
    move v1, v2

    .line 498
    :goto_1a
    if-lez v1, :cond_2b

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 499
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 501
    :cond_2b
    if-eq v1, v2, :cond_3

    .line 505
    :try_start_2d
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_34} :catch_36

    move-result v0

    goto :goto_3

    .line 506
    :catch_36
    move-exception v1

    goto :goto_3
.end method

.method static nameOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 383
    const/16 v0, 0x2b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 384
    if-gez v1, :cond_b

    .line 385
    const-string v0, ""

    .line 391
    :goto_a
    return-object v0

    .line 387
    :cond_b
    add-int/lit8 v0, v1, 0x1

    .line 388
    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_26

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_26

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_26

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 391
    :cond_26
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method static two(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 285
    const/16 v0, 0xa

    if-ge p0, v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_17
    return-object v0

    :cond_18
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method static unknownName(Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 847
    const-string v1, " \\| "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_9
    if-ge v1, v3, :cond_26

    aget-object v4, v2, v1

    .line 848
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ERROR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 849
    const-string v1, "104"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_26

    const/4 v0, 0x1

    .line 852
    :cond_26
    return v0

    .line 847
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method static volts(Ljava/lang/String;)D
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    .line 513
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 514
    if-gtz v1, :cond_c

    move-wide v0, v2

    .line 527
    :goto_b
    return-wide v0

    .line 517
    :cond_c
    add-int/lit8 v0, v1, 0x1

    .line 518
    :goto_e
    if-lez v1, :cond_1f

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 519
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 521
    :cond_1f
    :goto_1f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_32

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 522
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 525
    :cond_32
    :try_start_32
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_39} :catch_3b

    move-result-wide v0

    goto :goto_b

    .line 526
    :catch_3b
    move-exception v0

    move-wide v0, v2

    .line 527
    goto :goto_b
.end method

.method public static writeCandidates()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 820
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 821
    const-string v0, "AT+CSTR=0,0"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 822
    const-string v0, "AT+XZQJ=0,1"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    const/16 v0, 0x3f

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "FRQ"

    aput-object v0, v5, v2

    const-string v0, "FREQ"

    aput-object v0, v5, v3

    const-string v0, "FRE"

    aput-object v0, v5, v7

    const-string v0, "FQ"

    aput-object v0, v5, v8

    const-string v0, "HZ"

    aput-object v0, v5, v9

    const/4 v0, 0x5

    const-string v1, "PW"

    aput-object v1, v5, v0

    const/4 v0, 0x6

    const-string v1, "PWM"

    aput-object v1, v5, v0

    const/4 v0, 0x7

    const-string v1, "PWD"

    aput-object v1, v5, v0

    const/16 v0, 0x8

    const-string v1, "PWID"

    aput-object v1, v5, v0

    const/16 v0, 0x9

    const-string v1, "WID"

    aput-object v1, v5, v0

    const/16 v0, 0xa

    const-string v1, "WIDTH"

    aput-object v1, v5, v0

    const/16 v0, 0xb

    const-string v1, "PLS"

    aput-object v1, v5, v0

    const/16 v0, 0xc

    const-string v1, "PULSE"

    aput-object v1, v5, v0

    const/16 v0, 0xd

    const-string v1, "WAV"

    aput-object v1, v5, v0

    const/16 v0, 0xe

    const-string v1, "WAVE"

    aput-object v1, v5, v0

    const/16 v0, 0xf

    const-string v1, "SHAPE"

    aput-object v1, v5, v0

    const/16 v0, 0x10

    const-string v1, "AMP"

    aput-object v1, v5, v0

    const/16 v0, 0x11

    const-string v1, "VOL"

    aput-object v1, v5, v0

    const/16 v0, 0x12

    const-string v1, "CUR"

    aput-object v1, v5, v0

    const/16 v0, 0x13

    const-string v1, "CURR"

    aput-object v1, v5, v0

    const/16 v0, 0x14

    const-string v1, "VOLT"

    aput-object v1, v5, v0

    const/16 v0, 0x15

    const-string v1, "IMP"

    aput-object v1, v5, v0

    const/16 v0, 0x16

    const-string v1, "RAMP"

    aput-object v1, v5, v0

    const/16 v0, 0x17

    const-string v1, "RISE"

    aput-object v1, v5, v0

    const/16 v0, 0x18

    const-string v1, "FALL"

    aput-object v1, v5, v0

    const/16 v0, 0x19

    const-string v1, "ONT"

    aput-object v1, v5, v0

    const/16 v0, 0x1a

    const-string v1, "OFFT"

    aput-object v1, v5, v0

    const/16 v0, 0x1b

    const-string v1, "DUTY"

    aput-object v1, v5, v0

    const/16 v0, 0x1c

    const-string v1, "SDT"

    aput-object v1, v5, v0

    const/16 v0, 0x1d

    const-string v1, "SET"

    aput-object v1, v5, v0

    const/16 v0, 0x1e

    const-string v1, "CFG"

    aput-object v1, v5, v0

    const/16 v0, 0x1f

    const-string v1, "PARA"

    aput-object v1, v5, v0

    const/16 v0, 0x20

    const-string v1, "PAR"

    aput-object v1, v5, v0

    const/16 v0, 0x21

    const-string v1, "PRM"

    aput-object v1, v5, v0

    const/16 v0, 0x22

    const-string v1, "LEV"

    aput-object v1, v5, v0

    const/16 v0, 0x23

    const-string v1, "LEVL"

    aput-object v1, v5, v0

    const/16 v0, 0x24

    const-string v1, "MAX"

    aput-object v1, v5, v0

    const/16 v0, 0x25

    const-string v1, "MIN"

    aput-object v1, v5, v0

    const/16 v0, 0x26

    const-string v1, "GEAR"

    aput-object v1, v5, v0

    const/16 v0, 0x27

    const-string v1, "PRG"

    aput-object v1, v5, v0

    const/16 v0, 0x28

    const-string v1, "PROG"

    aput-object v1, v5, v0

    const/16 v0, 0x29

    const-string v1, "MOD"

    aput-object v1, v5, v0

    const/16 v0, 0x2a

    const-string v1, "CH"

    aput-object v1, v5, v0

    const/16 v0, 0x2b

    const-string v1, "CHN"

    aput-object v1, v5, v0

    const/16 v0, 0x2c

    const-string v1, "CHANNEL"

    aput-object v1, v5, v0

    const/16 v0, 0x2d

    const-string v1, "STR"

    aput-object v1, v5, v0

    const/16 v0, 0x2e

    const-string v1, "DCLK"

    aput-object v1, v5, v0

    const/16 v0, 0x2f

    const-string v1, "TIM"

    aput-object v1, v5, v0

    const/16 v0, 0x30

    const-string v1, "TIME"

    aput-object v1, v5, v0

    const/16 v0, 0x31

    const-string v1, "BST"

    aput-object v1, v5, v0

    const/16 v0, 0x32

    const-string v1, "BOOST"

    aput-object v1, v5, v0

    const/16 v0, 0x33

    const-string v1, "HV"

    aput-object v1, v5, v0

    const/16 v0, 0x34

    const-string v1, "DAC"

    aput-object v1, v5, v0

    const/16 v0, 0x35

    const-string v1, "TEST"

    aput-object v1, v5, v0

    const/16 v0, 0x36

    const-string v1, "DBG"

    aput-object v1, v5, v0

    const/16 v0, 0x37

    const-string v1, "LED"

    aput-object v1, v5, v0

    const/16 v0, 0x38

    const-string v1, "BEEP"

    aput-object v1, v5, v0

    const/16 v0, 0x39

    const-string v1, "KEY"

    aput-object v1, v5, v0

    const/16 v0, 0x3a

    const-string v1, "SLP"

    aput-object v1, v5, v0

    const/16 v0, 0x3b

    const-string v1, "USR"

    aput-object v1, v5, v0

    const/16 v0, 0x3c

    const-string v1, "USER"

    aput-object v1, v5, v0

    const/16 v0, 0x3d

    const-string v1, "DIY"

    aput-object v1, v5, v0

    const/16 v0, 0x3e

    const-string v1, "CUST"

    aput-object v1, v5, v0

    .line 828
    const/4 v0, 0x5

    new-array v6, v0, [Ljava/lang/String;

    const-string v0, "C"

    aput-object v0, v6, v2

    const-string v0, "W"

    aput-object v0, v6, v3

    const-string v0, "S"

    aput-object v0, v6, v7

    const-string v0, "Q"

    aput-object v0, v6, v8

    const-string v0, ""

    aput-object v0, v6, v9

    .line 829
    array-length v7, v6

    move v3, v2

    :goto_19e
    if-ge v3, v7, :cond_223

    aget-object v8, v6, v3

    .line 830
    array-length v9, v5

    move v1, v2

    :goto_1a4
    if-ge v1, v9, :cond_21e

    aget-object v0, v5, v1

    .line 831
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 832
    const-string v11, "CSTR"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c5

    .line 830
    :goto_1c1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1a4

    .line 835
    :cond_1c5
    const-string v11, "FR"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1dd

    const-string v11, "FQ"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1dd

    const-string v11, "HZ"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_200

    :cond_1dd
    const-string v0, "50"

    .line 837
    :goto_1df
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AT+"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "=0,"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->add(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1c1

    .line 836
    :cond_200
    const-string v11, "PW"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_218

    const-string v11, "WID"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_218

    const-string v11, "PL"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21b

    :cond_218
    const-string v0, "200"

    goto :goto_1df

    :cond_21b
    const-string v0, "0"

    goto :goto_1df

    .line 829
    :cond_21e
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_19e

    .line 840
    :cond_223
    const-string v0, "AT+WSDT=10"

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->add(Ljava/util/List;Ljava/lang/String;)V

    .line 841
    const-string v0, "AT+WSDT=0,10"

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->add(Ljava/util/List;Ljava/lang/String;)V

    .line 842
    return-object v4
.end method


# virtual methods
.method apply(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v8, 0x0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 425
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->tags:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->now()J

    move-result-wide v0

    .line 427
    const-string v2, "CSTR"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 428
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->lastInt(Ljava/lang/String;)I

    move-result v0

    .line 429
    if-ltz v0, :cond_27

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queuedLevel()Z

    move-result v1

    if-nez v1, :cond_27

    .line 430
    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->level:I

    .line 472
    :cond_27
    :goto_27
    return-void

    .line 432
    :cond_28
    const-string v2, "CMODE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 433
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->lastInt(Ljava/lang/String;)I

    move-result v0

    .line 434
    if-ltz v0, :cond_27

    .line 435
    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mode:I

    goto :goto_27

    .line 437
    :cond_39
    const-string v2, "CDCLK"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 438
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->clock(Ljava/lang/String;)I

    move-result v2

    .line 439
    if-ltz v2, :cond_27

    .line 440
    iput v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->secLeft:I

    .line 441
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->secAt:J

    goto :goto_27

    .line 443
    :cond_4c
    const-string v2, "CBC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 444
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->volts(Ljava/lang/String;)D

    move-result-wide v0

    .line 445
    cmpl-double v2, v0, v4

    if-lez v2, :cond_7b

    .line 446
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->batteryV:D

    .line 447
    const-wide v2, 0x400a666666666666L    # 3.3

    sub-double/2addr v0, v2

    const-wide v2, 0x3feb333333333338L    # 0.8500000000000005

    div-double/2addr v0, v2

    mul-double/2addr v0, v6

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->battery:I

    goto :goto_27

    .line 448
    :cond_7b
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->lastInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_27

    .line 449
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->lastInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->battery:I

    goto :goto_27

    .line 451
    :cond_88
    const-string v2, "CLOAD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 452
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->lastInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9a

    .line 453
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->lostContact()V

    goto :goto_27

    .line 455
    :cond_9a
    const/4 v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->contact:I

    goto :goto_27

    .line 457
    :cond_9e
    const-string v2, "CLKEND"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 458
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    .line 459
    iput-object v8, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    .line 460
    iput v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->secLeft:I

    .line 461
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->secAt:J

    goto/16 :goto_27

    .line 462
    :cond_b0
    const-string v2, "QPOWD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 463
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->lastInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->offReason:I

    .line 464
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    .line 465
    iput-object v8, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    goto/16 :goto_27

    .line 466
    :cond_c4
    const-string v2, "CHEART"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 467
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->heartAt:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_da

    .line 468
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->heartAt:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->heartMs:J

    .line 470
    :cond_da
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->heartAt:J

    goto/16 :goto_27
.end method

.method public close()V
    .registers 2

    .prologue
    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->closed:Z

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probing:Z

    .line 246
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 247
    return-void
.end method

.method endProbe()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 949
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probing:Z

    if-nez v0, :cond_6

    .line 958
    :goto_5
    return-void

    .line 952
    :cond_6
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probing:Z

    .line 953
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    const-string v2, "AT+QPOWP"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    const-string v2, "AT+CSTR=0,0"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 955
    iput v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->level:I

    .line 956
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->pump()V

    .line 957
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->ev:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeDone:I

    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeTotal:I

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;->onProbe(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;II[Ljava/lang/String;)V

    goto :goto_5
.end method

.method finish(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;Z)V
    .registers 7

    .prologue
    .line 405
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->inFlight:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    if-eq p1, v0, :cond_5

    .line 422
    :goto_4
    return-void

    .line 408
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->inFlight:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    .line 409
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->token:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->token:I

    .line 410
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->now()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->sentAt:J

    sub-long/2addr v0, v2

    .line 411
    if-nez p2, :cond_34

    .line 412
    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttCount:I

    .line 413
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttSum:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttSum:J

    .line 414
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttMin:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttMin:J

    .line 415
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttMax:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttMax:J

    .line 417
    :cond_34
    iget v0, p1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->kind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3c

    .line 418
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeAnswered(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;Z)V

    .line 420
    :cond_3c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->now()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->nextAt:J

    .line 421
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->pump()V

    goto :goto_4
.end method

.method public hello()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 117
    const-string v0, "AT+CMODE?"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->plain(Ljava/lang/String;)V

    .line 118
    const-string v0, "AT+CSTR?"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->plain(Ljava/lang/String;)V

    .line 119
    const-string v0, "AT+CDCLK?"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->plain(Ljava/lang/String;)V

    .line 120
    const-string v0, "AT+QPOWP?"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->plain(Ljava/lang/String;)V

    .line 121
    const-string v0, "AT+CBC?"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->plain(Ljava/lang/String;)V

    .line 122
    const-string v0, "AT+WSDT?"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->plain(Ljava/lang/String;)V

    .line 123
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->polling:Z

    if-nez v0, :cond_31

    .line 124
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->polling:Z

    .line 125
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Poll;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Poll;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;)V

    const-wide/16 v2, 0x4e20

    invoke-interface {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->later(Ljava/lang/Runnable;J)V

    .line 127
    :cond_31
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->suspended:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_87

    .line 128
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probing:Z

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->level:I

    .line 130
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    const-string v2, "AT+CSTR=0,0"

    invoke-direct {v1, v2, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    const-string v2, "AT+QPOWP"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->suspended:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    new-instance v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 135
    :cond_75
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->suspended:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 136
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->pump()V

    .line 137
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->ev:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeDone:I

    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeTotal:I

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;->onProbe(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;II[Ljava/lang/String;)V

    .line 139
    :cond_87
    return-void
.end method

.method lostContact()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 475
    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->contact:I

    .line 476
    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->level:I

    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    .line 478
    return-void
.end method

.method public mod()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;
    .registers 2

    .prologue
    .line 719
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    return-object v0
.end method

.method public modElapsed()J
    .registers 5

    .prologue
    .line 742
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->modStart:J

    sub-long/2addr v0, v2

    goto :goto_6
.end method

.method modTick(I)V
    .registers 8

    .prologue
    .line 746
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    .line 747
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->closed:Z

    if-nez v0, :cond_c

    if-eqz v1, :cond_c

    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->modToken:I

    if-eq p1, v0, :cond_d

    .line 766
    :cond_c
    :goto_c
    return-void

    .line 750
    :cond_d
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-eqz v0, :cond_47

    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->contact:I

    if-eqz v0, :cond_47

    .line 751
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->now()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->modStart:J

    sub-long/2addr v2, v4

    .line 752
    invoke-virtual {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->segmentAt(J)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->moduleAt(J)I

    move-result v0

    .line 753
    if-ltz v0, :cond_2f

    iget v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mode:I

    if-eq v0, v4, :cond_2f

    .line 754
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->switchMode(I)V

    .line 756
    :cond_2f
    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->envelope(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;J)I

    move-result v0

    .line 757
    const/4 v2, 0x0

    iget v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->level:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 758
    add-int/lit8 v3, v2, 0x3

    if-le v0, v3, :cond_40

    .line 759
    add-int/lit8 v0, v2, 0x3

    .line 761
    :cond_40
    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->level:I

    if-eq v0, v2, :cond_47

    .line 762
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->setLevel(I)V

    .line 765
    :cond_47
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    new-instance v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$ModTick;

    invoke-direct {v2, p0, p1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$ModTick;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;I)V

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->stepMs:I

    int-to-long v4, v1

    invoke-interface {v0, v2, v4, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->later(Ljava/lang/Runnable;J)V

    goto :goto_c
.end method

.method public modulate(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;)V
    .registers 8

    .prologue
    .line 724
    if-nez p1, :cond_b

    .line 725
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    .line 726
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->ev:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;

    invoke-interface {v0, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;->onChanged(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;)V

    .line 738
    :goto_a
    return-void

    .line 729
    :cond_b
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->safe()V

    .line 730
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    if-nez v0, :cond_37

    const/4 v0, 0x1

    .line 731
    :goto_13
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    .line 732
    if-eqz v0, :cond_1f

    .line 733
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->modStart:J

    .line 735
    :cond_1f
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->modToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->modToken:I

    .line 736
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    new-instance v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$ModTick;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$ModTick;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;I)V

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->later(Ljava/lang/Runnable;J)V

    .line 737
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->ev:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;

    invoke-interface {v0, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;->onChanged(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;)V

    goto :goto_a

    .line 730
    :cond_37
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onBytes([B)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 318
    if-eqz p1, :cond_7

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->closed:Z

    if-eqz v0, :cond_8

    .line 335
    :cond_7
    return-void

    .line 321
    :cond_8
    array-length v2, p1

    move v0, v1

    :goto_a
    if-ge v0, v2, :cond_7

    aget-byte v3, p1, v0

    .line 322
    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    .line 323
    const/16 v4, 0xd

    if-eq v3, v4, :cond_19

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3c

    .line 324
    :cond_19
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rx:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_39

    .line 325
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rx:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 326
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rx:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 327
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_39

    .line 328
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->onLineIn(Ljava/lang/String;)V

    .line 321
    :cond_39
    :goto_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 331
    :cond_3c
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rx:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/16 v5, 0x200

    if-ge v4, v5, :cond_39

    .line 332
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rx:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_39
.end method

.method onLineIn(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 338
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->recvCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->recvCount:I

    .line 339
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->ev:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;

    invoke-interface {v0, p0, v1, p1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;->onLine(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;ZLjava/lang/String;)V

    .line 342
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 343
    const-string v3, "ERROR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 345
    const-string v0, "102"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_24

    .line 346
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->lostContact()V

    :cond_24
    move v0, v1

    .line 364
    :goto_25
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->inFlight:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    .line 367
    if-eqz v3, :cond_52

    const-string v4, "+"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    iget-object v4, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->text:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->answers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 368
    :cond_39
    iget-object v4, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->reply:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_48

    .line 369
    iget-object v4, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->reply:Ljava/lang/StringBuilder;

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_48
    iget-object v4, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->reply:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    if-eqz v2, :cond_b3

    .line 373
    invoke-virtual {p0, v3, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->finish(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;Z)V

    .line 378
    :cond_52
    :goto_52
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->ev:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;

    invoke-interface {v0, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;->onChanged(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;)V

    .line 379
    return-void

    .line 349
    :cond_58
    const-string v3, "OK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    move v0, v1

    .line 350
    goto :goto_25

    .line 351
    :cond_62
    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 352
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 353
    if-lez v3, :cond_96

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_76
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 354
    if-lez v3, :cond_9b

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 355
    :goto_8a
    const-string v3, "OK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9e

    move v0, v1

    move v3, v2

    :goto_94
    move v2, v3

    .line 361
    goto :goto_25

    .line 353
    :cond_96
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_76

    .line 354
    :cond_9b
    const-string v0, ""

    goto :goto_8a

    .line 358
    :cond_9e
    invoke-virtual {p0, v4, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->apply(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    move v3, v1

    .line 359
    goto :goto_94

    .line 361
    :cond_a4
    const-string v0, "102"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 362
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->lostContact()V

    :cond_af
    move v0, v1

    move v2, v1

    goto/16 :goto_25

    .line 374
    :cond_b3
    if-eqz v0, :cond_52

    iget-object v0, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->text:Ljava/lang/String;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 375
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Grace;

    invoke-direct {v1, p0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Grace;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;)V

    const-wide/16 v2, 0xc8

    invoke-interface {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->later(Ljava/lang/Runnable;J)V

    goto :goto_52
.end method

.method plain(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 289
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->pump()V

    .line 291
    return-void
.end method

.method public probe()V
    .registers 2

    .prologue
    .line 863
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->sweep(Z)V

    .line 864
    return-void
.end method

.method probeAnswered(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;Z)V
    .registers 11

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 910
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probing:Z

    if-nez v0, :cond_9

    .line 946
    :cond_8
    :goto_8
    return-void

    .line 913
    :cond_9
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeDone:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeDone:I

    .line 914
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->reply:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 915
    const/4 v1, 0x0

    .line 916
    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeWrite:Z

    if-eqz v4, :cond_80

    .line 917
    if-nez p2, :cond_50

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->unknownName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 918
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->refused:Ljava/util/List;

    iget-object v4, p1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->text:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 935
    :goto_2a
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->ev:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;

    iget v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeDone:I

    iget v5, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeTotal:I

    invoke-interface {v1, p0, v4, v5, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;->onProbe(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;II[Ljava/lang/String;)V

    .line 937
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    .line 938
    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->kind:I

    if-ne v0, v7, :cond_39

    move v0, v2

    .line 943
    :goto_4a
    if-nez v0, :cond_8

    .line 944
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->endProbe()V

    goto :goto_8

    .line 921
    :cond_50
    new-array v1, v7, [Ljava/lang/String;

    iget-object v4, p1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->text:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7d

    :goto_5c
    aput-object v0, v1, v2

    .line 922
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->hits:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 923
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    new-instance v4, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    const-string v5, "AT+CSTR=0,0"

    invoke-direct {v4, v5, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 924
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    new-instance v4, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    const-string v5, "AT+QPOWP"

    invoke-direct {v4, v5, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object v0, v1

    goto :goto_2a

    .line 921
    :cond_7d
    const-string v0, "(\u2014)"

    goto :goto_5c

    .line 926
    :cond_80
    if-eqz p2, :cond_91

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_91

    .line 927
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->silent:Ljava/util/List;

    iget-object v4, p1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->text:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_2a

    .line 928
    :cond_91
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ERROR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_be

    .line 929
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->refused:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto/16 :goto_2a

    .line 931
    :cond_be
    new-array v1, v7, [Ljava/lang/String;

    iget-object v4, p1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->text:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_e0

    :goto_ca
    aput-object v0, v1, v2

    .line 932
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->hits:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    new-instance v4, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    const-string v5, "AT+QPOWP"

    invoke-direct {v4, v5, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_2a

    .line 931
    :cond_e0
    const-string v0, "(\u2014)"

    goto :goto_ca

    :cond_e3
    move v0, v3

    goto/16 :goto_4a
.end method

.method public probeStop()V
    .registers 6

    .prologue
    .line 897
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->suspended:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 898
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 899
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    .line 900
    iget v3, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->kind:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_10

    .line 901
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 904
    :cond_25
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 905
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 906
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->endProbe()V

    .line 907
    return-void
.end method

.method public probeSuspended()Z
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->suspended:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public probeWrites()V
    .registers 2

    .prologue
    .line 868
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->sweep(Z)V

    .line 869
    return-void
.end method

.method pump()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 296
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->closed:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->inFlight:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 314
    :cond_11
    :goto_11
    return-void

    .line 299
    :cond_12
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->now()J

    move-result-wide v2

    .line 300
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->nextAt:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_33

    .line 301
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->pumpPosted:Z

    if-nez v0, :cond_11

    .line 302
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->pumpPosted:Z

    .line 303
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Pump;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Pump;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;)V

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->nextAt:J

    sub-long v2, v4, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->later(Ljava/lang/Runnable;J)V

    goto :goto_11

    .line 307
    :cond_33
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    .line 308
    iput-wide v2, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->sentAt:J

    .line 309
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->inFlight:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    .line 310
    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->sentCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->sentCount:I

    .line 311
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->ev:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->text:Ljava/lang/String;

    invoke-interface {v1, p0, v4, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;->onLine(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;ZLjava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->send([B)V

    .line 313
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    new-instance v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Timeout;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->token:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->token:I

    invoke-direct {v3, p0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Timeout;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;I)V

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->kind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_83

    const-wide/16 v0, 0x15e

    :goto_7f
    invoke-interface {v2, v3, v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->later(Ljava/lang/Runnable;J)V

    goto :goto_11

    :cond_83
    const-wide/16 v0, 0x320

    goto :goto_7f
.end method

.method queuedLevel()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 481
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    .line 482
    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->kind:I

    if-ne v0, v1, :cond_7

    .line 486
    :goto_17
    return v1

    :cond_18
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->inFlight:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->inFlight:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->kind:I

    if-ne v0, v1, :cond_25

    move v0, v1

    :goto_23
    move v1, v0

    goto :goto_17

    :cond_25
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public raw(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 226
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_13

    .line 227
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->plain(Ljava/lang/String;)V

    .line 229
    :cond_13
    return-void
.end method

.method public report()Ljava/lang/String;
    .registers 10

    .prologue
    const/16 v8, 0xa

    .line 962
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 963
    const-string v0, "MASTOGO H-024B \u00b7 XEMS\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    const-string v0, "mode "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 running "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 left "

    .line 965
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->secondsLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s \u00b7 battery "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->battery:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "% "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->batteryV:D

    .line 966
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " V"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 contact "

    .line 967
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->contact:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 off "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->offReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 968
    const-string v0, "sent "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->sentCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->recvCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 969
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttCount:I

    if-lez v0, :cond_bf

    .line 970
    const-string v0, " \u00b7 reply "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttMin:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2013

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttMax:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms (avg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttSum:J

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttCount:I

    int-to-long v6, v1

    div-long/2addr v4, v6

    .line 971
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 973
    :cond_bf
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->heartMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_d8

    .line 974
    const-string v0, " \u00b7 heartbeat "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->heartMs:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    :cond_d8
    const-string v0, "\n\nfeedback:\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->tags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_117

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 978
    const-string v1, "  +"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e7

    .line 980
    :cond_117
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeWrite:Z

    if-eqz v0, :cond_168

    const-string v0, "\nwrite exploration "

    :goto_11d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeDone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeTotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", answered:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->hits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 982
    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u2192 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_13e

    .line 980
    :cond_168
    const-string v0, "\nexploration "

    goto :goto_11d

    .line 984
    :cond_16b
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeWrite:Z

    if-eqz v0, :cond_1a4

    .line 985
    const-string v0, "unknown (ERROR:104): "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->refused:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 989
    :cond_182
    :goto_182
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->silent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19f

    .line 990
    const-string v0, "silent: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->silent:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (no answer)\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    :cond_19f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 986
    :cond_1a4
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->refused:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_182

    .line 987
    const-string v0, "refused: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->refused:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_182
.end method

.method public secondsLeft()I
    .registers 7

    .prologue
    .line 233
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->secLeft:I

    if-gez v0, :cond_6

    .line 234
    const/4 v0, -0x1

    .line 239
    :goto_5
    return v0

    .line 236
    :cond_6
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-nez v0, :cond_d

    .line 237
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->secLeft:I

    goto :goto_5

    .line 239
    :cond_d
    const/4 v0, 0x0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->secLeft:I

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    invoke-interface {v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->now()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->secAt:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_5
.end method

.method public setLevel(I)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 164
    const/4 v0, 0x0

    const/16 v1, 0x19

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 165
    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->level:I

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+CSTR=0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    .line 168
    iget v3, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->kind:I

    if-ne v3, v4, :cond_27

    .line 169
    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->text:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->ev:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;

    invoke-interface {v0, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;->onChanged(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;)V

    .line 177
    :goto_3e
    return-void

    .line 174
    :cond_3f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    new-instance v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    invoke-direct {v2, v1, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->pump()V

    .line 176
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->ev:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;

    invoke-interface {v0, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;->onChanged(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;)V

    goto :goto_3e
.end method

.method public setMode(I)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 181
    const/16 v0, 0x19

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 182
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    .line 183
    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mode:I

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+CMODE=0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->plain(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    const-string v2, "AT+QPOWP"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    .line 187
    iput v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->level:I

    .line 188
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->pump()V

    .line 189
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->ev:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;

    invoke-interface {v0, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;->onChanged(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;)V

    .line 190
    return-void
.end method

.method public setStopped()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 255
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probing:Z

    if-eqz v0, :cond_3f

    .line 256
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->suspended:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 257
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->inFlight:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->inFlight:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->kind:I

    if-ne v0, v4, :cond_1f

    .line 258
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->suspended:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->inFlight:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->text:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_1f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_25
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    .line 261
    iget v2, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->kind:I

    if-ne v2, v4, :cond_25

    .line 262
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->suspended:Ljava/util/List;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->text:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 265
    :cond_3d
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probing:Z

    .line 267
    :cond_3f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 268
    iput-object v5, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->inFlight:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    .line 269
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    .line 270
    iput-object v5, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    .line 271
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->ev:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;

    invoke-interface {v0, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;->onChanged(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;)V

    .line 272
    return-void
.end method

.method public setTimer(I)V
    .registers 5

    .prologue
    .line 218
    const/4 v0, 0x1

    const/16 v1, 0xe10

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+CDCLK="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->hhmmss(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->plain(Ljava/lang/String;)V

    .line 220
    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->secLeft:I

    .line 221
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->secAt:J

    .line 222
    return-void
.end method

.method public start(I)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->offReason:I

    .line 144
    const-string v0, "AT+QPOWS"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->plain(Ljava/lang/String;)V

    .line 145
    iput v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->level:I

    .line 146
    const-string v0, "AT+CSTR=0,1"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->plain(Ljava/lang/String;)V

    .line 147
    const-string v0, "AT+QPOWS"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->plain(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->setTimer(I)V

    .line 149
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    .line 150
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->ev:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;

    invoke-interface {v0, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;->onChanged(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;)V

    .line 151
    return-void
.end method

.method public stop()V
    .registers 5

    .prologue
    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    .line 156
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    const-string v2, "AT+QPOWP"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    .line 158
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->pump()V

    .line 159
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->ev:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;

    invoke-interface {v0, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;->onChanged(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;)V

    .line 160
    return-void
.end method

.method sweep(Z)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 872
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probing:Z

    if-eqz v0, :cond_8

    .line 894
    :goto_7
    return-void

    .line 875
    :cond_8
    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeWrite:Z

    .line 876
    iput-object v6, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    .line 877
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->hits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 878
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->silent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 879
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->refused:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 880
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->suspended:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 881
    if-eqz p1, :cond_69

    invoke-static {}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->writeCandidates()Ljava/util/List;

    move-result-object v0

    .line 882
    :goto_26
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probing:Z

    .line 883
    iput v5, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeDone:I

    .line 884
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeTotal:I

    .line 885
    iput-boolean v5, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    .line 886
    iput v5, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->level:I

    .line 887
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    new-instance v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    const-string v3, "AT+CSTR=0,0"

    invoke-direct {v2, v3, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 888
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    new-instance v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    const-string v3, "AT+QPOWP"

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 889
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 890
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    new-instance v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 881
    :cond_69
    invoke-static {}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->candidates()Ljava/util/List;

    move-result-object v0

    goto :goto_26

    .line 892
    :cond_6e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->pump()V

    .line 893
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->ev:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeTotal:I

    invoke-interface {v0, p0, v5, v1, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;->onProbe(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;II[Ljava/lang/String;)V

    goto :goto_7
.end method

.method switchMode(I)V
    .registers 6

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->secondsLeft()I

    move-result v2

    .line 198
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_d
    if-ltz v1, :cond_25

    .line 199
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->kind:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_21

    .line 200
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 198
    :cond_21
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_d

    .line 203
    :cond_25
    iput p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mode:I

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->level:I

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+CMODE=0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->plain(Ljava/lang/String;)V

    .line 206
    const-string v0, "AT+QPOWS"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->plain(Ljava/lang/String;)V

    .line 207
    if-lez v2, :cond_4a

    .line 208
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->setTimer(I)V

    .line 210
    :cond_4a
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->switches:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->switches:I

    .line 211
    return-void
.end method
