.class public final Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;
.super Ljava/lang/Object;
.source "MastogoShell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Poll;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Pump;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Timeout;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Grace;,
        Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$ModTick;
    }
.end annotation


# static fields
.field public static final EMS_FIRST:I = 0xc

.field public static final FEMALE_FIRST:I = 0x15

.field static final GAP_MS:J = 0x64L

.field static final GRACE_MS:J = 0xc8L

.field static final K_LEVEL:I = 0x1

.field static final K_PAUSE:I = 0x3

.field static final K_PLAIN:I = 0x0

.field static final K_PROBE:I = 0x2

.field public static final MAX_LEVEL:I = 0x19

.field public static final MAX_RISE:I = 0x3

.field public static final MODES:I = 0x19

.field static final POLL_MS:J = 0x4e20L

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

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mode:I

    .line 58
    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->level:I

    .line 61
    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->secLeft:I

    .line 64
    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->battery:I

    .line 68
    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->contact:I

    .line 70
    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->offReason:I

    .line 74
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->tags:Ljava/util/Map;

    .line 76
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttMin:J

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rx:Ljava/lang/StringBuilder;

    .line 616
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->hits:Ljava/util/List;

    .line 618
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->silent:Ljava/util/List;

    .line 105
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    .line 106
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->ev:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;

    .line 107
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
    .line 652
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 653
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    :cond_9
    return-void
.end method

.method static answers(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 325
    const/16 v0, 0x2b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 326
    if-gez v0, :cond_a

    .line 327
    const/4 v0, 0x0

    .line 330
    :goto_9
    return v0

    .line 329
    :cond_a
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "=?"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "?"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_9
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

    .line 622
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 623
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

    .line 626
    array-length v4, v2

    move v0, v1

    :goto_93
    if-ge v0, v4, :cond_9d

    aget-object v5, v2, v0

    .line 627
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_93

    .line 629
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

    .line 631
    array-length v4, v2

    move v0, v1

    :goto_de
    if-ge v0, v4, :cond_11d

    aget-object v5, v2, v0

    .line 632
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

    .line 633
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

    .line 631
    add-int/lit8 v0, v0, 0x1

    goto :goto_de

    .line 635
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

    .line 642
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

    .line 643
    array-length v6, v5

    move v2, v1

    :goto_335
    if-ge v2, v6, :cond_366

    aget-object v7, v5, v2

    .line 644
    array-length v8, v4

    move v0, v1

    :goto_33b
    if-ge v0, v8, :cond_362

    aget-object v9, v4, v0

    .line 645
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

    .line 644
    add-int/lit8 v0, v0, 0x1

    goto :goto_33b

    .line 643
    :cond_362
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_335

    .line 648
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

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 463
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_24

    .line 464
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 465
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 463
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 468
    :cond_24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ge v0, v6, :cond_2f

    .line 469
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->lastInt(Ljava/lang/String;)I

    move-result v0

    .line 472
    :goto_2e
    return v0

    .line 471
    :cond_2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 472
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

    .line 473
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    .line 472
    goto :goto_2e
.end method

.method public static envelope(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;J)I
    .registers 14

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 533
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    sub-int v2, v0, v1

    .line 534
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    int-to-long v0, v0

    rem-long v0, p1, v0

    long-to-double v0, v0

    iget v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    int-to-double v4, v3

    div-double/2addr v0, v4

    .line 536
    iget v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    packed-switch v3, :pswitch_data_80

    .line 556
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    sub-double v0, v6, v0

    .line 559
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

    .line 538
    :pswitch_31
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v4

    iget v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->duty:I

    int-to-double v4, v3

    cmpg-double v0, v0, v4

    if-gez v0, :cond_3e

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_26

    :cond_3e
    const-wide/16 v0, 0x0

    goto :goto_26

    .line 544
    :pswitch_41
    cmpg-double v3, v0, v6

    if-gez v3, :cond_47

    mul-double/2addr v0, v8

    goto :goto_26

    :cond_47
    mul-double/2addr v0, v8

    sub-double v0, v8, v0

    goto :goto_26

    .line 547
    :pswitch_4b
    const/4 v0, 0x1

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    div-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    div-long v0, p1, v0

    .line 548
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    const-wide v4, -0x61c8864680b583ebL

    mul-long/2addr v0, v4

    .line 549
    const/16 v3, 0x1f

    ushr-long v4, v0, v3

    xor-long/2addr v0, v4

    .line 550
    const-wide v4, -0x40a7b892e31b1a47L    # -0.0014818730883930777

    mul-long/2addr v0, v4

    .line 551
    const/16 v3, 0x1d

    ushr-long v4, v0, v3

    xor-long/2addr v0, v4

    .line 552
    const/16 v3, 0xb

    ushr-long/2addr v0, v3

    const-wide/32 v4, 0xffff

    and-long/2addr v0, v4

    long-to-double v0, v0

    const-wide v4, 0x40efffe000000000L    # 65535.0

    div-double/2addr v0, v4

    .line 553
    goto :goto_26

    .line 536
    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_31
        :pswitch_26
        :pswitch_41
        :pswitch_4b
    .end packed-switch
.end method

.method public static hhmmss(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 220
    div-int/lit16 v0, p0, 0xe10

    div-int/lit8 v1, p0, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    rem-int/lit8 v2, p0, 0x3c

    .line 221
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

    .line 419
    if-nez p0, :cond_4

    .line 436
    :cond_3
    :goto_3
    return v0

    .line 422
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 423
    :goto_8
    if-lez v2, :cond_19

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_19

    .line 424
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    :cond_19
    move v1, v2

    .line 427
    :goto_1a
    if-lez v1, :cond_2b

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 428
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 430
    :cond_2b
    if-eq v1, v2, :cond_3

    .line 434
    :try_start_2d
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_34} :catch_36

    move-result v0

    goto :goto_3

    .line 435
    :catch_36
    move-exception v1

    goto :goto_3
.end method

.method static two(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 225
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

.method static volts(Ljava/lang/String;)D
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    .line 442
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 443
    if-gtz v1, :cond_c

    move-wide v0, v2

    .line 456
    :goto_b
    return-wide v0

    .line 446
    :cond_c
    add-int/lit8 v0, v1, 0x1

    .line 447
    :goto_e
    if-lez v1, :cond_1f

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 448
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 450
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

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 454
    :cond_32
    :try_start_32
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_39} :catch_3b

    move-result-wide v0

    goto :goto_b

    .line 455
    :catch_3b
    move-exception v0

    move-wide v0, v2

    .line 456
    goto :goto_b
.end method


# virtual methods
.method apply(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v8, 0x0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 354
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->tags:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->now()J

    move-result-wide v0

    .line 356
    const-string v2, "CSTR"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 357
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->lastInt(Ljava/lang/String;)I

    move-result v0

    .line 358
    if-ltz v0, :cond_27

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queuedLevel()Z

    move-result v1

    if-nez v1, :cond_27

    .line 359
    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->level:I

    .line 401
    :cond_27
    :goto_27
    return-void

    .line 361
    :cond_28
    const-string v2, "CMODE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 362
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->lastInt(Ljava/lang/String;)I

    move-result v0

    .line 363
    if-ltz v0, :cond_27

    .line 364
    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mode:I

    goto :goto_27

    .line 366
    :cond_39
    const-string v2, "CDCLK"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 367
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->clock(Ljava/lang/String;)I

    move-result v2

    .line 368
    if-ltz v2, :cond_27

    .line 369
    iput v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->secLeft:I

    .line 370
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->secAt:J

    goto :goto_27

    .line 372
    :cond_4c
    const-string v2, "CBC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 373
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->volts(Ljava/lang/String;)D

    move-result-wide v0

    .line 374
    cmpl-double v2, v0, v4

    if-lez v2, :cond_7b

    .line 375
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->batteryV:D

    .line 376
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

    .line 377
    :cond_7b
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->lastInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_27

    .line 378
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->lastInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->battery:I

    goto :goto_27

    .line 380
    :cond_88
    const-string v2, "CLOAD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 381
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->lastInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9a

    .line 382
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->lostContact()V

    goto :goto_27

    .line 384
    :cond_9a
    const/4 v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->contact:I

    goto :goto_27

    .line 386
    :cond_9e
    const-string v2, "CLKEND"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 387
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    .line 388
    iput-object v8, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    .line 389
    iput v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->secLeft:I

    .line 390
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->secAt:J

    goto/16 :goto_27

    .line 391
    :cond_b0
    const-string v2, "QPOWD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 392
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->lastInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->offReason:I

    .line 393
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    .line 394
    iput-object v8, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    goto/16 :goto_27

    .line 395
    :cond_c4
    const-string v2, "CHEART"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 396
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->heartAt:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_da

    .line 397
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->heartAt:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->heartMs:J

    .line 399
    :cond_da
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->heartAt:J

    goto/16 :goto_27
.end method

.method public close()V
    .registers 2

    .prologue
    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->closed:Z

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probing:Z

    .line 206
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 207
    return-void
.end method

.method endProbe()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 720
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probing:Z

    if-nez v0, :cond_6

    .line 729
    :goto_5
    return-void

    .line 723
    :cond_6
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probing:Z

    .line 724
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    const-string v2, "AT+QPOWP"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    const-string v2, "AT+CSTR=0,0"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    iput v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->level:I

    .line 727
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->pump()V

    .line 728
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
    .line 334
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->inFlight:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    if-eq p1, v0, :cond_5

    .line 351
    :goto_4
    return-void

    .line 337
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->inFlight:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    .line 338
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->token:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->token:I

    .line 339
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->now()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->sentAt:J

    sub-long/2addr v0, v2

    .line 340
    if-nez p2, :cond_34

    .line 341
    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttCount:I

    .line 342
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttSum:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttSum:J

    .line 343
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttMin:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttMin:J

    .line 344
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttMax:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttMax:J

    .line 346
    :cond_34
    iget v0, p1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->kind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3c

    .line 347
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeAnswered(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;Z)V

    .line 349
    :cond_3c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->now()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->nextAt:J

    .line 350
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->pump()V

    goto :goto_4
.end method

.method public hello()V
    .registers 5

    .prologue
    .line 113
    const-string v0, "AT+CMODE?"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->plain(Ljava/lang/String;)V

    .line 114
    const-string v0, "AT+CSTR?"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->plain(Ljava/lang/String;)V

    .line 115
    const-string v0, "AT+CDCLK?"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->plain(Ljava/lang/String;)V

    .line 116
    const-string v0, "AT+QPOWP?"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->plain(Ljava/lang/String;)V

    .line 117
    const-string v0, "AT+CBC?"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->plain(Ljava/lang/String;)V

    .line 118
    const-string v0, "AT+WSDT?"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->plain(Ljava/lang/String;)V

    .line 119
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->polling:Z

    if-nez v0, :cond_31

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->polling:Z

    .line 121
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Poll;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Poll;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;)V

    const-wide/16 v2, 0x4e20

    invoke-interface {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->later(Ljava/lang/Runnable;J)V

    .line 123
    :cond_31
    return-void
.end method

.method lostContact()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 404
    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->contact:I

    .line 405
    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->level:I

    .line 406
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    .line 407
    return-void
.end method

.method public mod()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;
    .registers 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    return-object v0
.end method

.method public modElapsed()J
    .registers 5

    .prologue
    .line 590
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
    .line 594
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    .line 595
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->closed:Z

    if-nez v0, :cond_c

    if-eqz v1, :cond_c

    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->modToken:I

    if-eq p1, v0, :cond_d

    .line 609
    :cond_c
    :goto_c
    return-void

    .line 598
    :cond_d
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-eqz v0, :cond_36

    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->contact:I

    if-eqz v0, :cond_36

    .line 599
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->now()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->modStart:J

    sub-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->envelope(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;J)I

    move-result v0

    .line 600
    const/4 v2, 0x0

    iget v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->level:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 601
    add-int/lit8 v3, v2, 0x3

    if-le v0, v3, :cond_2f

    .line 602
    add-int/lit8 v0, v2, 0x3

    .line 604
    :cond_2f
    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->level:I

    if-eq v0, v2, :cond_36

    .line 605
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->setLevel(I)V

    .line 608
    :cond_36
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
    .line 572
    if-nez p1, :cond_b

    .line 573
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    .line 574
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->ev:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;

    invoke-interface {v0, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;->onChanged(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;)V

    .line 586
    :goto_a
    return-void

    .line 577
    :cond_b
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->safe()V

    .line 578
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    if-nez v0, :cond_37

    const/4 v0, 0x1

    .line 579
    :goto_13
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    .line 580
    if-eqz v0, :cond_1f

    .line 581
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->modStart:J

    .line 583
    :cond_1f
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->modToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->modToken:I

    .line 584
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    new-instance v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$ModTick;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$ModTick;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;I)V

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->later(Ljava/lang/Runnable;J)V

    .line 585
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->ev:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;

    invoke-interface {v0, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;->onChanged(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;)V

    goto :goto_a

    .line 578
    :cond_37
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onBytes([B)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 258
    if-eqz p1, :cond_7

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->closed:Z

    if-eqz v0, :cond_8

    .line 275
    :cond_7
    return-void

    .line 261
    :cond_8
    array-length v2, p1

    move v0, v1

    :goto_a
    if-ge v0, v2, :cond_7

    aget-byte v3, p1, v0

    .line 262
    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    .line 263
    const/16 v4, 0xd

    if-eq v3, v4, :cond_19

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3c

    .line 264
    :cond_19
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rx:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_39

    .line 265
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rx:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 266
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rx:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 267
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_39

    .line 268
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->onLineIn(Ljava/lang/String;)V

    .line 261
    :cond_39
    :goto_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 271
    :cond_3c
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rx:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/16 v5, 0x200

    if-ge v4, v5, :cond_39

    .line 272
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rx:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_39
.end method

.method onLineIn(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 278
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->recvCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->recvCount:I

    .line 279
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->ev:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;

    invoke-interface {v0, p0, v2, p1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;->onLine(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;ZLjava/lang/String;)V

    .line 282
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 283
    const-string v3, "OK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    move v0, v2

    .line 308
    :goto_1a
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->inFlight:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    .line 309
    if-eqz v3, :cond_37

    .line 310
    iget-object v4, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->reply:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2d

    .line 311
    iget-object v4, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->reply:Ljava/lang/StringBuilder;

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    :cond_2d
    iget-object v4, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->reply:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    if-eqz v1, :cond_c3

    .line 315
    invoke-virtual {p0, v3, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->finish(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;Z)V

    .line 320
    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->ev:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;

    invoke-interface {v0, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;->onChanged(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;)V

    .line 321
    return-void

    .line 285
    :cond_3d
    const-string v3, "ERROR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 286
    const-string v0, "102"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_50

    .line 287
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->lostContact()V

    :cond_50
    move v0, v2

    .line 289
    goto :goto_1a

    .line 290
    :cond_52
    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 291
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 292
    if-lez v3, :cond_a6

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_66
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 293
    if-lez v3, :cond_ab

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 294
    :goto_7a
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 295
    const-string v5, "OK"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8e

    const-string v5, "ERROR"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ae

    .line 297
    :cond_8e
    const-string v4, "ERROR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a1

    const-string v3, "102"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_a1

    .line 298
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->lostContact()V

    :cond_a1
    move v0, v2

    move v3, v1

    :goto_a3
    move v1, v3

    .line 305
    goto/16 :goto_1a

    .line 292
    :cond_a6
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_66

    .line 293
    :cond_ab
    const-string v0, ""

    goto :goto_7a

    .line 302
    :cond_ae
    invoke-virtual {p0, v4, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->apply(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    move v3, v2

    .line 303
    goto :goto_a3

    .line 305
    :cond_b4
    const-string v0, "102"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 306
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->lostContact()V

    :cond_bf
    move v0, v2

    move v1, v2

    goto/16 :goto_1a

    .line 316
    :cond_c3
    if-eqz v0, :cond_37

    iget-object v0, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->text:Ljava/lang/String;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->text:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->answers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 317
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Grace;

    invoke-direct {v1, p0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Grace;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;)V

    const-wide/16 v2, 0xc8

    invoke-interface {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->later(Ljava/lang/Runnable;J)V

    goto/16 :goto_37
.end method

.method plain(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 229
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->pump()V

    .line 231
    return-void
.end method

.method public probe()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 659
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probing:Z

    if-eqz v0, :cond_8

    .line 678
    :goto_7
    return-void

    .line 662
    :cond_8
    iput-object v6, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    .line 663
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->hits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 664
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->silent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 665
    invoke-static {}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->candidates()Ljava/util/List;

    move-result-object v0

    .line 666
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probing:Z

    .line 667
    iput v5, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeDone:I

    .line 668
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeTotal:I

    .line 669
    iput-boolean v5, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    .line 670
    iput v5, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->level:I

    .line 671
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    new-instance v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    const-string v3, "AT+CSTR=0,0"

    invoke-direct {v2, v3, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    new-instance v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    const-string v3, "AT+QPOWP"

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 674
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    new-instance v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 676
    :cond_5b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->pump()V

    .line 677
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->ev:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeTotal:I

    invoke-interface {v0, p0, v5, v1, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;->onProbe(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;II[Ljava/lang/String;)V

    goto :goto_7
.end method

.method probeAnswered(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;Z)V
    .registers 11

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 693
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probing:Z

    if-nez v0, :cond_8

    .line 717
    :cond_7
    :goto_7
    return-void

    .line 696
    :cond_8
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeDone:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeDone:I

    .line 697
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->reply:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 698
    const/4 v1, 0x0

    .line 699
    if-eqz p2, :cond_4b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4b

    .line 700
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->silent:Ljava/util/List;

    iget-object v4, p1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->text:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 706
    :goto_25
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->ev:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;

    iget v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeDone:I

    iget v5, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeTotal:I

    invoke-interface {v1, p0, v4, v5, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;->onProbe(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;II[Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    .line 709
    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->kind:I

    if-ne v0, v7, :cond_34

    move v0, v2

    .line 714
    :goto_45
    if-nez v0, :cond_7

    .line 715
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->endProbe()V

    goto :goto_7

    .line 701
    :cond_4b
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ERROR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7e

    .line 702
    new-array v1, v7, [Ljava/lang/String;

    iget-object v4, p1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->text:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_79

    :goto_63
    aput-object v0, v1, v2

    .line 703
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->hits:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    new-instance v4, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    const-string v5, "AT+QPOWP"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object v0, v1

    goto :goto_25

    .line 702
    :cond_79
    const-string v0, "(\u2014)"

    goto :goto_63

    :cond_7c
    move v0, v3

    goto :goto_45

    :cond_7e
    move-object v0, v1

    goto :goto_25
.end method

.method public probeStop()V
    .registers 6

    .prologue
    .line 681
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 682
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    .line 683
    iget v3, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->kind:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_b

    .line 684
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 687
    :cond_20
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 688
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 689
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->endProbe()V

    .line 690
    return-void
.end method

.method pump()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 236
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->closed:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->inFlight:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 254
    :cond_11
    :goto_11
    return-void

    .line 239
    :cond_12
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->now()J

    move-result-wide v2

    .line 240
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->nextAt:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_33

    .line 241
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->pumpPosted:Z

    if-nez v0, :cond_11

    .line 242
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->pumpPosted:Z

    .line 243
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Pump;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Pump;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;)V

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->nextAt:J

    sub-long v2, v4, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->later(Ljava/lang/Runnable;J)V

    goto :goto_11

    .line 247
    :cond_33
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    .line 248
    iput-wide v2, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->sentAt:J

    .line 249
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->inFlight:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    .line 250
    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->sentCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->sentCount:I

    .line 251
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->ev:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->text:Ljava/lang/String;

    invoke-interface {v1, p0, v4, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;->onLine(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;ZLjava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->text:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->send([B)V

    .line 253
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Timeout;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->token:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->token:I

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Timeout;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;I)V

    const-wide/16 v2, 0x320

    invoke-interface {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->later(Ljava/lang/Runnable;J)V

    goto :goto_11
.end method

.method queuedLevel()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 410
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

    .line 411
    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->kind:I

    if-ne v0, v1, :cond_7

    .line 415
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
    .line 186
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_13

    .line 187
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->plain(Ljava/lang/String;)V

    .line 189
    :cond_13
    return-void
.end method

.method public report()Ljava/lang/String;
    .registers 10

    .prologue
    const/16 v8, 0xa

    .line 733
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 734
    const-string v0, "MASTOGO H-024B \u00b7 XEMS\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
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

    .line 736
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

    .line 737
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " V"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 contact "

    .line 738
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

    .line 739
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

    .line 740
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttCount:I

    if-lez v0, :cond_bf

    .line 741
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

    .line 742
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 744
    :cond_bf
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->heartMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_d8

    .line 745
    const-string v0, " \u00b7 heartbeat "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->heartMs:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    :cond_d8
    const-string v0, "\n\nfeedback:\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
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

    .line 749
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

    .line 751
    :cond_117
    const-string v0, "\nexploration "

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

    .line 752
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->hits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_164

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 753
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

    goto :goto_13a

    .line 755
    :cond_164
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->silent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17b

    .line 756
    const-string v0, "silent: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->silent:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 758
    :cond_17b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public secondsLeft()I
    .registers 7

    .prologue
    .line 193
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->secLeft:I

    if-gez v0, :cond_6

    .line 194
    const/4 v0, -0x1

    .line 199
    :goto_5
    return v0

    .line 196
    :cond_6
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-nez v0, :cond_d

    .line 197
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->secLeft:I

    goto :goto_5

    .line 199
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

    .line 148
    const/4 v0, 0x0

    const/16 v1, 0x19

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 149
    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->level:I

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+CSTR=0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
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

    .line 152
    iget v3, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->kind:I

    if-ne v3, v4, :cond_27

    .line 153
    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;->text:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->ev:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;

    invoke-interface {v0, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;->onChanged(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;)V

    .line 161
    :goto_3e
    return-void

    .line 158
    :cond_3f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    new-instance v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    invoke-direct {v2, v1, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->pump()V

    .line 160
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->ev:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;

    invoke-interface {v0, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;->onChanged(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;)V

    goto :goto_3e
.end method

.method public setMode(I)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 165
    const/16 v0, 0x18

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 166
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    .line 167
    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mode:I

    .line 168
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

    .line 169
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    const-string v2, "AT+QPOWP"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    .line 171
    iput v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->level:I

    .line 172
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->pump()V

    .line 173
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->ev:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;

    invoke-interface {v0, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;->onChanged(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;)V

    .line 174
    return-void
.end method

.method public setStopped()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 211
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 212
    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->inFlight:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    .line 213
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    .line 214
    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    .line 215
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probing:Z

    .line 216
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->ev:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;

    invoke-interface {v0, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;->onChanged(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;)V

    .line 217
    return-void
.end method

.method public setTimer(I)V
    .registers 5

    .prologue
    .line 178
    const/4 v0, 0x1

    const/16 v1, 0xe10

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 179
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

    .line 180
    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->secLeft:I

    .line 181
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->secAt:J

    .line 182
    return-void
.end method

.method public start(I)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->offReason:I

    .line 128
    const-string v0, "AT+QPOWS"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->plain(Ljava/lang/String;)V

    .line 129
    iput v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->level:I

    .line 130
    const-string v0, "AT+CSTR=0,1"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->plain(Ljava/lang/String;)V

    .line 131
    const-string v0, "AT+QPOWS"

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->plain(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->setTimer(I)V

    .line 133
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    .line 134
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->ev:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;

    invoke-interface {v0, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;->onChanged(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;)V

    .line 135
    return-void
.end method

.method public stop()V
    .registers 5

    .prologue
    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    .line 140
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->queue:Ljava/util/List;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;

    const-string v2, "AT+QPOWP"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Cmd;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    .line 142
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->pump()V

    .line 143
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->ev:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;

    invoke-interface {v0, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;->onChanged(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;)V

    .line 144
    return-void
.end method
