.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;
.super Ljava/lang/Object;
.source "MastogoScreen.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Listener;
.implements Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Listener;
.implements Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Page"
.end annotation


# static fields
.field static final BEATS:[I

.field static final BEAT_CARRIER:I = 0x13

.field static final FREQS:[I

.field static final FX:[I

.field static final FX_CARRIER:[I

.field static final FX_CLICK:I = 0x1

.field static final FX_HIT:I = 0x0

.field static final FX_MS:[I

.field static final FX_SQUEEZE:I = 0x2

.field static final FX_STAB:I = 0x3

.field static final F_DOWN:I = 0x7

.field static final F_DUTY:I = 0x3

.field static final F_EVERY:I = 0x9

.field static final F_HI:I = 0x1

.field static final F_LO:I = 0x0

.field static final F_L_DOWN:I = 0x22

.field static final F_L_FX:I = 0x28

.field static final F_L_HZ:I = 0x1e

.field static final F_L_LO:I = 0x23

.field static final F_L_OFF:I = 0x20

.field static final F_L_ON:I = 0x1f

.field static final F_L_UP:I = 0x21

.field static final F_OFF:I = 0x8

.field static final F_ON:I = 0x6

.field static final F_PERIOD:I = 0x2

.field static final F_STEP:I = 0x4

.field static final F_S_DOWN:I = 0xe

.field static final F_S_HI:I = 0xb

.field static final F_S_LO:I = 0xa

.field static final F_S_OFF:I = 0xf

.field static final F_S_ON:I = 0xd

.field static final F_S_REPS:I = 0x10

.field static final F_S_UP:I = 0xc

.field static final F_UP:I = 0x5

.field static final TILT_FULL:F = 30.0f


# instance fields
.field final a:Landroid/app/Activity;

.field armWrite:Z

.field battery:Landroid/widget/TextView;

.field carrierRow:Landroid/widget/LinearLayout;

.field clock:Landroid/widget/TextView;

.field clockLabel:Landroid/widget/TextView;

.field closed:Z

.field final console:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field consoleScroll:Landroid/widget/ScrollView;

.field consoleView:Landroid/widget/TextView;

.field contact:Landroid/widget/TextView;

.field env:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;

.field facts:Landroid/widget/TextView;

.field feedback:Landroid/widget/TextView;

.field final fxMs:[I

.field final fxSt:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

.field go:Landroid/widget/TextView;

.field goStyle:I

.field hint:Landroid/widget/TextView;

.field hintText:Ljava/lang/String;

.field hitInfo:Landroid/widget/TextView;

.field hitList:Landroid/widget/LinearLayout;

.field level:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

.field link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

.field linkBadge:Landroid/widget/TextView;

.field live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

.field liveInfo:Landroid/widget/TextView;

.field liveRun:Z

.field final liveSt:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

.field final main:Landroid/os/Handler;

.field minutes:I

.field mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

.field modOn:Z

.field mode:I

.field phase:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PhaseView;

.field phaseText:Landroid/widget/TextView;

.field final prefs:Landroid/content/SharedPreferences;

.field probeArmed:Z

.field probeBtn:Landroid/widget/TextView;

.field probeText:Landroid/widget/TextView;

.field rotRow:Landroid/widget/LinearLayout;

.field rotSum:Landroid/widget/TextView;

.field s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field scan:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;

.field startLevel:I

.field stepFields:Landroid/widget/LinearLayout;

.field stepRow:Landroid/widget/LinearLayout;

.field stepSel:I

.field stepSum:Landroid/widget/TextView;

.field tab:I

.field tabBody:Landroid/widget/LinearLayout;

.field tabHolder:Landroid/widget/LinearLayout;

.field final tiles:[Landroid/widget/TextView;

.field tilt:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tilt;

.field tiltDeg:F

.field tiltHi:I

.field tiltOn:Z

.field tiltZero:F

.field unitName:Landroid/widget/TextView;

.field writeBtn:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x4

    .line 403
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_26

    sput-object v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->BEATS:[I

    .line 409
    invoke-static {}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->freqs()[I

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->FREQS:[I

    .line 601
    new-array v0, v1, [I

    fill-array-data v0, :array_38

    sput-object v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->FX:[I

    .line 602
    new-array v0, v1, [I

    fill-array-data v0, :array_44

    sput-object v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->FX_CARRIER:[I

    .line 603
    new-array v0, v1, [I

    fill-array-data v0, :array_50

    sput-object v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->FX_MS:[I

    return-void

    .line 403
    nop

    :array_26
    .array-data 4
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x28
    .end array-data

    .line 601
    :array_38
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    .line 602
    :array_44
    .array-data 4
        0xd
        0x12
        0xb
        0x18
    .end array-data

    .line 603
    :array_50
    .array-data 4
        0x28
        0xa
        -0x1
        0x28
    .end array-data
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .registers 10

    .prologue
    const/16 v7, 0x12

    const/4 v6, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->main:Landroid/os/Handler;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->console:Ljava/util/List;

    .line 173
    iput v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->goStyle:I

    .line 180
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveSt:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 188
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tiltZero:F

    .line 190
    iput v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tiltHi:I

    .line 194
    sget-object v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->FX:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fxMs:[I

    .line 197
    const/16 v0, 0x1a

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tiles:[Landroid/widget/TextView;

    .line 605
    sget-object v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->FX:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fxSt:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 212
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    .line 213
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "xems_mastogo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->prefs:Landroid/content/SharedPreferences;

    .line 214
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "tab"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tab:I

    .line 215
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mode:I

    .line 216
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "minutes"

    const/16 v3, 0x14

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->minutes:I

    .line 217
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "mod"

    new-instance v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-direct {v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;-><init>()V

    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->encode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->decode(Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    .line 218
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "start_level"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->startLevel:I

    move v0, v1

    .line 219
    :goto_8b
    sget-object v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->FX:[I

    array-length v2, v2

    if-ge v0, v2, :cond_b4

    .line 220
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fxMs:[I

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->prefs:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fx_ms_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->FX_MS:[I

    aget v5, v5, v0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v0

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_8b

    .line 222
    :cond_b4
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "live"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->decode(Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    .line 223
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "live"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d8

    .line 224
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    .line 225
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    const/16 v2, 0x8

    iput v2, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    .line 227
    :cond_d8
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    const/4 v2, 0x5

    iput v2, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    .line 228
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    new-array v2, v1, [I

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    .line 229
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iput-boolean v6, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->gate:Z

    .line 230
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->carrier:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->sharp(I)Z

    move-result v0

    if-nez v0, :cond_f5

    .line 231
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iput v7, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->carrier:I

    .line 233
    :cond_f5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->carrier:I

    if-gez v0, :cond_ff

    .line 234
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iput v7, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->carrier:I

    .line 236
    :cond_ff
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    const/16 v2, 0x64

    iput v2, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->stepMs:I

    .line 237
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->safe()V

    .line 238
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "mod_on"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->modOn:Z

    .line 239
    return-void
.end method

.method static firstHz(I)D
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 432
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->hz(I)Ljava/lang/String;

    move-result-object v1

    .line 434
    :goto_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_20

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_20

    .line 435
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 438
    :cond_20
    const/4 v2, 0x0

    :try_start_21
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_28} :catch_2a

    move-result-wide v0

    .line 440
    :goto_29
    return-wide v0

    .line 439
    :catch_2a
    move-exception v0

    .line 440
    const-wide/16 v0, 0x0

    goto :goto_29
.end method

.method static freqs()[I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 412
    sget-object v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->SHARP:[I

    array-length v0, v0

    new-array v2, v0, [Ljava/lang/Integer;

    move v0, v1

    .line 413
    :goto_7
    array-length v3, v2

    if-ge v0, v3, :cond_17

    .line 414
    sget-object v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->SHARP:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 416
    :cond_17
    new-instance v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ByHz;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ByHz;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 417
    sget-object v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->BEATS:[I

    array-length v0, v0

    array-length v3, v2

    add-int/2addr v0, v3

    new-array v3, v0, [I

    move v0, v1

    .line 418
    :goto_27
    sget-object v4, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->BEATS:[I

    array-length v4, v4

    if-ge v0, v4, :cond_36

    .line 419
    sget-object v4, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->BEATS:[I

    aget v4, v4, v0

    neg-int v4, v4

    aput v4, v3, v0

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 421
    :cond_36
    :goto_36
    array-length v0, v2

    if-ge v1, v0, :cond_48

    .line 422
    sget-object v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->BEATS:[I

    array-length v0, v0

    add-int/2addr v0, v1

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v0

    .line 421
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 424
    :cond_48
    return-object v3
.end method

.method static fxName(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 608
    packed-switch p0, :pswitch_data_28

    .line 612
    const-string v0, "\u0423\u0414\u0410\u0420"

    const-string v1, "HIT"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    .line 609
    :pswitch_c
    const-string v0, "\u041a\u041b\u0418\u041a"

    const-string v1, "CLICK"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 610
    :pswitch_15
    const-string v0, "\u0421\u0422\u0418\u0421\u041a\u0410\u041d\u0415"

    const-string v1, "SQUEEZE"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 611
    :pswitch_1e
    const-string v0, "\u0423\u0411\u041e\u0416\u0414\u0410\u041d\u0415"

    const-string v1, "STAB"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 608
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_c
        :pswitch_15
        :pswitch_1e
    .end packed-switch
.end method

.method static indexOf([II)I
    .registers 4

    .prologue
    .line 1058
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_c

    .line 1059
    aget v1, p0, v0

    if-ne v1, p1, :cond_9

    .line 1063
    :goto_8
    return v0

    .line 1058
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1063
    :cond_c
    const/4 v0, -0x1

    goto :goto_8
.end method

.method static msStep(II)I
    .registers 3

    .prologue
    const/16 v0, 0x2710

    .line 1165
    if-lt p0, v0, :cond_8

    if-ne p0, v0, :cond_d

    if-gez p1, :cond_d

    :cond_8
    const/16 v0, 0x1f4

    .line 1166
    :goto_a
    mul-int/2addr v0, p1

    add-int/2addr v0, p0

    return v0

    .line 1165
    :cond_d
    const/16 v0, 0x3e8

    goto :goto_a
.end method

.method static secs(I)Ljava/lang/String;
    .registers 7

    .prologue
    .line 1109
    rem-int/lit16 v0, p0, 0x3e8

    if-nez v0, :cond_b

    div-int/lit16 v0, p0, 0x3e8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    .line 1110
    :cond_b
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-float v4, p0

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method static tenths(II)I
    .registers 4

    .prologue
    const/16 v1, 0x2710

    const/16 v0, 0x7d0

    .line 1159
    if-lt p0, v0, :cond_a

    if-ne p0, v0, :cond_f

    if-gez p1, :cond_f

    :cond_a
    const/16 v0, 0x64

    .line 1160
    :goto_c
    mul-int/2addr v0, p1

    add-int/2addr v0, p0

    return v0

    .line 1159
    :cond_f
    if-lt p0, v1, :cond_15

    if-ne p0, v1, :cond_18

    if-gez p1, :cond_18

    :cond_15
    const/16 v0, 0x1f4

    goto :goto_c

    :cond_18
    const/16 v0, 0x3e8

    goto :goto_c
.end method


# virtual methods
.method active()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;
    .registers 2

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveRun:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    goto :goto_6
.end method

.method addField(Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V
    .registers 11

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1092
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1, p2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1093
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    const-string v3, ""

    const/high16 v4, 0x41b00000    # 22.0f

    new-instance v5, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ModStep;

    invoke-direct {v5, p0, p3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ModStep;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;I)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v1

    .line 1094
    invoke-virtual {p0, p3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fieldValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fieldUnit(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    iget-object v2, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 1096
    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1097
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1098
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_51

    if-eqz p4, :cond_59

    .line 1099
    :cond_51
    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1101
    :cond_59
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1102
    return-void
.end method

.method chipName(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->modeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->steady(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "\u2248 "

    :goto_1b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 252
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->hz(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    return-object v0

    :cond_2c
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->sharp(I)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "\u25c6 "

    goto :goto_1b

    :cond_35
    const-string v0, ""

    goto :goto_1b
.end method

.method copy()V
    .registers 5

    .prologue
    .line 1641
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v0

    .line 1642
    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->report()Ljava/lang/String;

    move-result-object v0

    :goto_c
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1643
    const-string v0, "\nconsole:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->console:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1645
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 1642
    :cond_30
    const-string v0, "MASTOGO: not linked\n"

    goto :goto_c

    .line 1648
    :cond_33
    :try_start_33
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 1649
    const-string v2, "mastogo"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1650
    const-string v0, "\u2713 \u041e\u0442\u0447\u0435\u0442\u044a\u0442 \u0435 \u043a\u043e\u043f\u0438\u0440\u0430\u043d."

    const-string v1, "\u2713 Report copied."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hintText:Ljava/lang/String;
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_54} :catch_58

    .line 1654
    :goto_54
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    .line 1655
    return-void

    .line 1651
    :catch_58
    move-exception v0

    .line 1652
    const-string v0, "\u041d\u0435 \u043c\u043e\u0436\u0430\u0445 \u0434\u0430 \u043a\u043e\u043f\u0438\u0440\u0430\u043c."

    const-string v1, "Could not copy."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hintText:Ljava/lang/String;

    goto :goto_54
.end method

.method dismissed()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1743
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->closed:Z

    .line 1744
    sput-object v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->current:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    .line 1745
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->main:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1746
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tiltOff()V

    .line 1747
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;

    if-eqz v0, :cond_17

    .line 1748
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;->stop()V

    .line 1750
    :cond_17
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    if-eqz v0, :cond_3b

    .line 1751
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->shell:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    .line 1752
    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-nez v1, :cond_27

    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probing:Z

    if-eqz v1, :cond_2d

    .line 1753
    :cond_27
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeStop()V

    .line 1754
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->stop()V

    .line 1756
    :cond_2d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$CloseLink;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$CloseLink;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1758
    :cond_3b
    return-void
.end method

.method dp(F)I
    .registers 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method fieldUnit(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 1136
    packed-switch p1, :pswitch_data_42

    .line 1153
    :pswitch_3
    const-string v0, "ms (\u2265 100)"

    const-string v1, "ms (\u2265 100)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    .line 1140
    :pswitch_c
    const-string v0, "\u0441\u0438\u043b\u0430"

    const-string v1, "level"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1144
    :pswitch_15
    const-string v0, "\u0441\u0435\u043a\u0443\u043d\u0434\u0438"

    const-string v1, "seconds"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1145
    :pswitch_1e
    const-string v0, "\u043f\u044a\u0442\u0438"

    const-string v1, "times"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1150
    :pswitch_27
    const-string v0, "\u0441\u0435\u043a\u0443\u043d\u0434\u0438"

    const-string v1, "seconds"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1151
    :pswitch_30
    const-string v0, "% \u043e\u0442 \u0446\u0438\u043a\u044a\u043b\u0430"

    const-string v1, "% of the cycle"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1152
    :pswitch_39
    const-string v0, "\u0446\u0438\u043a\u044a\u043b\u0430"

    const-string v1, "cycles"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1136
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_27
        :pswitch_30
        :pswitch_3
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_39
        :pswitch_c
        :pswitch_c
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_1e
    .end packed-switch
.end method

.method fieldValue(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1114
    packed-switch p1, :pswitch_data_ae

    .line 1131
    :pswitch_3
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->stepMs:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    .line 1115
    :pswitch_c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1116
    :pswitch_15
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1117
    :pswitch_1e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->secs(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1118
    :pswitch_27
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->duty:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1119
    :pswitch_30
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->upMs:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->secs(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1120
    :pswitch_39
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->onMs:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->secs(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1121
    :pswitch_42
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->downMs:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->secs(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1122
    :pswitch_4b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->offMs:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->secs(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1123
    :pswitch_54
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->every:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1124
    :pswitch_5d
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->step()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->lo:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1125
    :pswitch_68
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->step()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->hi:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1126
    :pswitch_73
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->step()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->upMs:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->secs(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1127
    :pswitch_7e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->step()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->onMs:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->secs(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1128
    :pswitch_89
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->step()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->downMs:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->secs(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    .line 1129
    :pswitch_95
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->step()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->offMs:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->secs(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    .line 1130
    :pswitch_a1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->step()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->reps:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    .line 1114
    nop

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_c
        :pswitch_15
        :pswitch_1e
        :pswitch_27
        :pswitch_3
        :pswitch_30
        :pswitch_39
        :pswitch_42
        :pswitch_4b
        :pswitch_54
        :pswitch_5d
        :pswitch_68
        :pswitch_73
        :pswitch_7e
        :pswitch_89
        :pswitch_95
        :pswitch_a1
    .end packed-switch
.end method

.method fillExplore()V
    .registers 11

    .prologue
    const/4 v9, -0x2

    const/high16 v8, 0x41400000    # 12.0f

    const/4 v7, 0x0

    const/high16 v6, 0x42400000    # 48.0f

    const/high16 v5, 0x41000000    # 8.0f

    .line 1233
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1234
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1235
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeBtn:Landroid/widget/TextView;

    .line 1236
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Probe;

    invoke-direct {v2, p0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Probe;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1237
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeBtn:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    invoke-direct {v2, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1238
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->writeBtn:Landroid/widget/TextView;

    .line 1239
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->writeBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Probe;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Probe;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1240
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v2

    invoke-direct {v1, v9, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1241
    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1242
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->writeBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1243
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u041a\u043e\u043f\u0438\u0440\u0430\u0439 \u043e\u0442\u0447\u0435\u0442\u0430"

    const-string v3, "Copy the report"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 1244
    new-instance v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Copy;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Copy;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1245
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    invoke-direct {v2, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1246
    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1247
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1248
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1249
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v2, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeText:Landroid/widget/TextView;

    .line 1250
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1251
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hitList:Landroid/widget/LinearLayout;

    .line 1252
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hitList:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1254
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u041e\u0431\u0440\u0430\u0442\u043d\u0430 \u0432\u0440\u044a\u0437\u043a\u0430"

    const-string v3, "Feedback"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1255
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v0, v1, v2, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->feedback:Landroid/widget/TextView;

    .line 1256
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->feedback:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1257
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->feedback:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1259
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u041a\u043e\u043d\u0437\u043e\u043b\u0430"

    const-string v3, "Console"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1260
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->consoleScroll:Landroid/widget/ScrollView;

    .line 1261
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->consoleScroll:Landroid/widget/ScrollView;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1262
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v8, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->consoleView:Landroid/widget/TextView;

    .line 1263
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->consoleView:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1264
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->consoleView:Landroid/widget/TextView;

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v1

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v2

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1265
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->consoleScroll:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->consoleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1266
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->consoleScroll:Landroid/widget/ScrollView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x43160000    # 150.0f

    .line 1267
    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1266
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1268
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1269
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1270
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1271
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1272
    const-string v2, "AT+\u2026"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1273
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1274
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1275
    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1276
    const v2, 0x81001

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 1278
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1279
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v7, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1280
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v3, "\u041f\u0440\u0430\u0442\u0438"

    const-string v4, "Send"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 1281
    new-instance v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$SendRaw;

    invoke-direct {v3, p0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$SendRaw;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1282
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    invoke-direct {v1, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1283
    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1284
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1285
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1286
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->renderExplore()V

    .line 1287
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->renderConsole()V

    .line 1288
    return-void
.end method

.method fillHit()V
    .registers 16

    .prologue
    const/high16 v14, 0x41480000    # 12.5f

    const/high16 v13, 0x41400000    # 12.0f

    const/4 v3, 0x4

    const/high16 v12, 0x41600000    # 14.0f

    const/4 v1, 0x0

    .line 617
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 618
    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v0

    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v2

    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v5

    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v6

    invoke-virtual {v4, v0, v2, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 619
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    move v0, v1

    .line 620
    :goto_28
    sget-object v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->FX:[I

    array-length v2, v2

    if-ge v0, v2, :cond_119

    .line 621
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 622
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fxName(I)Ljava/lang/String;

    move-result-object v8

    if-nez v0, :cond_e6

    move v2, v3

    :goto_3c
    invoke-static {v7, v8, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 623
    const/high16 v7, 0x41980000    # 19.0f

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 624
    new-instance v7, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$HitPress;

    invoke-direct {v7, p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$HitPress;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;I)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 625
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/high16 v9, 0x42980000    # 76.0f

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 626
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->FX_CARRIER:[I

    aget v8, v8, v0

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v9

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->name(IZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \u00b7 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->FX_CARRIER:[I

    aget v8, v8, v0

    .line 627
    invoke-static {v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->hz(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 626
    invoke-static {v2, v7, v13, v8, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 628
    const/16 v7, 0x11

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 629
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v7, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 630
    sget-object v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->FX_MS:[I

    aget v2, v2, v0

    if-gez v2, :cond_e9

    .line 631
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v7, "\u0437\u0430\u0434\u0440\u044a\u0436 = \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438\u0442\u0435\u043b\u043d\u043e\u0441\u0442"

    const-string v8, "hold = duration"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v9, 0x1

    invoke-static {v2, v7, v14, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 633
    const/16 v7, 0x11

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 634
    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v7

    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v8

    invoke-virtual {v2, v1, v7, v1, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 635
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v7, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 642
    :goto_cd
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 644
    if-lez v0, :cond_df

    .line 645
    const/high16 v7, 0x41000000    # 8.0f

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v7

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 647
    :cond_df
    invoke-virtual {v5, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 620
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_28

    .line 622
    :cond_e6
    const/4 v2, 0x2

    goto/16 :goto_3c

    .line 637
    :cond_e9
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v7, ""

    const-string v8, ""

    const/high16 v9, 0x41900000    # 18.0f

    new-instance v10, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ModStep;

    add-int/lit8 v11, v0, 0x28

    invoke-direct {v10, p0, v11}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ModStep;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;I)V

    invoke-static {v2, v7, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v2

    .line 638
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fxMs:[I

    aget v7, v7, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v2, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fxSt:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    aput-object v2, v7, v0

    .line 640
    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v7, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_cd

    .line 649
    :cond_119
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 650
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {v0, v2, v14, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hitInfo:Landroid/widget/TextView;

    .line 651
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hitInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 652
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 653
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->renderHit()V

    .line 654
    return-void
.end method

.method fillMod()V
    .registers 15

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x6

    const/4 v11, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 847
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v4, "\u0418\u043c\u043f\u0443\u043b\u0441 \u043e\u0442 \u0442\u0430\u0431\u043b\u0435\u0442\u0430"

    const-string v5, "Impulse from the tablet"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u0421\u0438\u043b\u0430\u0442\u0430 \u0441\u043b\u0435\u0434\u0432\u0430 \u0444\u043e\u0440\u043c\u0430\u0442\u0430 \u0434\u043e\u043b\u0443, \u0434\u043e\u043a\u0430\u0442\u043e \u0430\u043f\u0430\u0440\u0430\u0442\u0447\u0435\u0442\u043e \u0440\u0430\u0431\u043e\u0442\u0438"

    const-string v6, "The strength follows the shape below while the unit runs"

    .line 848
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->modOn:Z

    new-instance v7, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ModToggle;

    invoke-direct {v7, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ModToggle;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V

    .line 847
    invoke-static {v3, v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 850
    new-array v4, v1, [Landroid/widget/LinearLayout;

    .line 851
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v3

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v5, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 852
    const/4 v0, 0x7

    new-array v5, v0, [I

    fill-array-data v5, :array_1ee

    .line 854
    array-length v6, v5

    move v3, v2

    :goto_43
    if-ge v3, v6, :cond_70

    aget v7, v5, v3

    .line 855
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->shapeName(I)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    if-ne v7, v0, :cond_6e

    move v0, v1

    :goto_54
    const v10, -0x587406

    invoke-static {v8, v9, v0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 856
    new-instance v8, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickShape;

    invoke-direct {v8, p0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickShape;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;I)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 857
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    aget-object v8, v4, v2

    invoke-static {v7, v8, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 854
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_43

    :cond_6e
    move v0, v2

    .line 855
    goto :goto_54

    .line 859
    :cond_70
    new-instance v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v0, v3, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;-><init>(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->env:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;

    .line 860
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x42dc0000    # 110.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 861
    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 862
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->env:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 863
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    if-ne v0, v12, :cond_9e

    .line 864
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fillSteps()V

    .line 904
    :goto_9d
    return-void

    .line 868
    :cond_9e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1a7

    move v0, v1

    .line 869
    :goto_a6
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 870
    if-eqz v0, :cond_1aa

    .line 871
    const-string v3, "\u041d\u0430\u0440\u0430\u0441\u0442\u0432\u0430\u043d\u0435"

    const-string v5, "Rise"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x5

    invoke-virtual {p0, v4, v3, v5, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->addField(Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 872
    const-string v3, "\u0420\u0430\u0431\u043e\u0442\u0430"

    const-string v5, "Work"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3, v12, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->addField(Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 873
    const-string v3, "\u0421\u043f\u0430\u0434\u0430\u043d\u0435"

    const-string v5, "Fall"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x7

    invoke-virtual {p0, v4, v3, v5, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->addField(Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 874
    const-string v3, "\u041f\u0430\u0443\u0437\u0430"

    const-string v5, "Pause"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3, v13, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->addField(Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 882
    :cond_dc
    :goto_dc
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/16 v6, 0xa

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 883
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 884
    if-eqz v0, :cond_1d9

    const-string v3, "\u0421\u0438\u043b\u0430 \u0432 \u043f\u0430\u0443\u0437\u0430\u0442\u0430"

    const-string v5, "Pause strength"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_f9
    invoke-virtual {p0, v4, v3, v2, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->addField(Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 886
    if-eqz v0, :cond_1e3

    const-string v0, "\u0421\u0438\u043b\u0430 \u0432 \u0440\u0430\u0431\u043e\u0442\u0430\u0442\u0430"

    const-string v3, "Work strength"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_106
    invoke-virtual {p0, v4, v0, v1, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->addField(Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 887
    const-string v0, "\u041e\u043f\u0440\u0435\u0441\u043d\u044f\u0432\u0430\u043d\u0435"

    const-string v3, "Refresh"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v11, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->addField(Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 888
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v3, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 891
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v4, "\u0421\u043c\u044f\u043d\u0430 \u043d\u0430 \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430 \u2014 \u043c\u043e\u0434\u0443\u043b\u0438 \u043f\u043e\u0434\u0440\u0435\u0434"

    const-string v5, "Frequency change \u2014 modules in turn"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/16 v5, 0xe

    .line 892
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 891
    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 893
    new-array v0, v1, [Landroid/widget/LinearLayout;

    .line 894
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v3

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v4, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 895
    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->rotRow:Landroid/widget/LinearLayout;

    .line 896
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fillRotate()V

    .line 897
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 898
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 899
    const-string v1, "\u0426\u0438\u043a\u043b\u0438 \u043d\u0430 \u043c\u043e\u0434\u0443\u043b"

    const-string v3, "Cycles per module"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x9

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->addField(Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 900
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->rotateText()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v1, v3, v4, v5, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->rotSum:Landroid/widget/TextView;

    .line 901
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->rotSum:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {v1, v3, v4, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 902
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->rotSum:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v3, v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 903
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_9d

    :cond_1a7
    move v0, v2

    .line 868
    goto/16 :goto_a6

    .line 876
    :cond_1aa
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    if-ne v3, v11, :cond_1d0

    const-string v3, "\u0421\u043c\u044f\u043d\u0430"

    const-string v5, "Change"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1b8
    const/4 v5, 0x2

    invoke-virtual {p0, v4, v3, v5, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->addField(Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 878
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    if-ne v3, v1, :cond_dc

    .line 879
    const-string v3, "\u0418\u043c\u043f\u0443\u043b\u0441"

    const-string v5, "Impulse"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v3, v5, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->addField(Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    goto/16 :goto_dc

    .line 876
    :cond_1d0
    const-string v3, "\u0426\u0438\u043a\u044a\u043b"

    const-string v5, "Cycle"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1b8

    .line 884
    :cond_1d9
    const-string v3, "\u0414\u044a\u043b\u0431\u043e\u0447\u0438\u043d\u0430 \u043e\u0442"

    const-string v5, "Depth from"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_f9

    .line 886
    :cond_1e3
    const-string v0, "\u0434\u043e"

    const-string v3, "to"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_106

    .line 852
    nop

    :array_1ee
    .array-data 4
        0x6
        0x5
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method fillProgram()V
    .registers 15

    .prologue
    const/high16 v11, 0x40c00000    # 6.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v10, 0x4

    const/4 v1, 0x0

    .line 769
    move v6, v1

    :goto_8
    if-ge v6, v10, :cond_ba

    .line 770
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->groupName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    if-nez v6, :cond_39

    move v0, v1

    :goto_1b
    invoke-static {v5, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 771
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 772
    const/4 v0, 0x0

    move v5, v1

    move v2, v1

    .line 774
    :goto_2b
    const/16 v4, 0x1a

    if-ge v5, v4, :cond_81

    .line 775
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->group(I)I

    move-result v4

    if-eq v4, v6, :cond_3c

    .line 774
    :goto_35
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_2b

    .line 770
    :cond_39
    const/16 v0, 0xa

    goto :goto_1b

    .line 778
    :cond_3c
    rem-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_50

    .line 779
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 780
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/4 v8, 0x6

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 782
    :cond_50
    add-int/lit8 v4, v2, 0x1

    .line 783
    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mode:I

    if-ne v5, v2, :cond_7f

    move v2, v3

    :goto_57
    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-virtual {p0, v5, v2, v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->moduleChip(IZI)Landroid/widget/TextView;

    move-result-object v2

    .line 784
    new-instance v8, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickMode;

    invoke-direct {v8, p0, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickMode;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;I)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 785
    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tiles:[Landroid/widget/TextView;

    aput-object v2, v8, v5

    .line 786
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x42a40000    # 82.0f

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v9

    invoke-direct {v8, v1, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 787
    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 788
    invoke-virtual {v0, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v2, v4

    goto :goto_35

    :cond_7f
    move v2, v1

    .line 783
    goto :goto_57

    :cond_81
    move v4, v1

    .line 790
    :goto_82
    rem-int/lit8 v5, v2, 0x4

    if-lez v5, :cond_aa

    rem-int/lit8 v5, v2, 0x4

    rsub-int/lit8 v5, v5, 0x4

    if-ge v4, v5, :cond_aa

    .line 791
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42a40000    # 82.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v8

    invoke-direct {v5, v1, v8, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 792
    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v8

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 793
    new-instance v8, Landroid/view/View;

    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 790
    add-int/lit8 v4, v4, 0x1

    goto :goto_82

    .line 795
    :cond_aa
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 769
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_8

    .line 799
    :cond_ba
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 800
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v2

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v5

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 801
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 802
    const/16 v4, 0x50

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 803
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    iget v5, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mode:I

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->hz(I)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x41c00000    # 24.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v4, v5, v6, v7, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 804
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mode:I

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->width(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u00b7 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mode:I

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->modeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u00b7 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mode:I

    .line 805
    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->groupOf(I)I

    move-result v6

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->groupName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x41500000    # 13.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 804
    invoke-static {v4, v5, v6, v7, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 806
    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v5

    invoke-virtual {v4, v1, v1, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 807
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 808
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 809
    new-instance v2, Landroid/view/View;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 810
    new-instance v4, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$WaveDrawable;

    iget v5, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mode:I

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-direct {v4, v5, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$WaveDrawable;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 811
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/high16 v6, 0x42380000    # 46.0f

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 812
    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mode:I

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->steady(I)Z

    move-result v2

    if-eqz v2, :cond_194

    .line 813
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v4, "\u2248 \u041f\u043e\u0441\u0442\u043e\u044f\u043d\u0435\u043d \u043d\u043e\u0441\u0438\u0442\u0435\u043b: \u0435\u0434\u043d\u0430 \u0447\u0435\u0441\u0442\u043e\u0442\u0430, \u0440\u0430\u0432\u043d\u0430 \u0441\u0438\u043b\u0430, \u0431\u0435\u0437 \u0441\u0432\u043e\u0438 \u043f\u0430\u0443\u0437\u0438 \u2014 \u0446\u0438\u043a\u044a\u043b\u044a\u0442 \u0432 \u201e\u0418\u043c\u043f\u0443\u043b\u0441\u201c \u0435 \u0438\u0437\u0446\u044f\u043b\u043e \u0442\u0432\u043e\u0439."

    const-string v5, "\u2248 Steady carrier: one frequency, even strength, no pauses of its own \u2014 the cycle in \"Impulse\" is entirely yours."

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41480000    # 12.5f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v2, v4, v5, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    .line 816
    invoke-static {v4, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 813
    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 818
    :cond_194
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    iget v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mode:I

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->feel(IZ)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41580000    # 13.5f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v4, v5, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    .line 819
    invoke-static {v4, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 818
    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 820
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/16 v5, 0xc

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 822
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 823
    const/16 v0, 0x50

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 824
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 825
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u0412\u0440\u0435\u043c\u0435"

    const-string v6, "Time"

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 826
    new-array v6, v3, [Landroid/widget/LinearLayout;

    .line 827
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 828
    sget-object v7, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->MINUTES:[I

    array-length v8, v7

    move v2, v1

    :goto_1f5
    if-ge v2, v8, :cond_234

    aget v9, v7, v2

    .line 829
    iget-object v10, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " \u043c\u0438\u043d"

    const-string v12, " min"

    invoke-static {v11, v12}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->minutes:I

    if-ne v9, v0, :cond_232

    move v0, v3

    :goto_219
    sget v12, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v10, v11, v0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 830
    new-instance v10, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickMinutes;

    invoke-direct {v10, p0, v9}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickMinutes;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;I)V

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 831
    iget-object v9, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    aget-object v10, v6, v1

    invoke-static {v9, v10, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 828
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1f5

    :cond_232
    move v0, v1

    .line 829
    goto :goto_219

    .line 833
    :cond_234
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 834
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xe

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 835
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u0427\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430 \u0438 \u0448\u0438\u0440\u0438\u043d\u0430\u0442\u0430 \u0441\u0430 \u0432\u0433\u0440\u0430\u0434\u0435\u043d\u0438 \u0432 \u043c\u043e\u0434\u0443\u043b\u0430 (\u0434\u0430\u043d\u043d\u0438 \u043e\u0442 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e DOMAS \u043d\u0430 \u043f\u0440\u043e\u0438\u0437\u0432\u043e\u0434\u0438\u0442\u0435\u043b\u044f). \u041a\u0430\u0440\u0442\u0438\u043d\u043a\u0430\u0442\u0430 \u0435 \u0438\u043c\u043f\u0443\u043b\u0441\u044a\u0442 \u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430: \u0432\u0438\u0441\u043e\u043a\u0430 \u0447\u0435\u0440\u0442\u0430 = \u0441\u0438\u043b\u043d\u043e, \u0433\u044a\u0441\u0442\u043e = \u0432\u0438\u0441\u043e\u043a\u0430 \u0447\u0435\u0441\u0442\u043e\u0442\u0430, \u043f\u0440\u0430\u0437\u043d\u043e = \u043f\u0430\u0443\u0437\u0430. \u201e\u0430\u2013\u0431\u201c \u0441\u0435 \u043f\u043b\u044a\u0437\u0433\u0430, \u201e\u0430 / \u0431\u201c \u0441\u0435 \u0440\u0435\u0434\u0443\u0432\u0430; \u2248 = \u043f\u043e\u0441\u0442\u043e\u044f\u043d\u0435\u043d \u043d\u043e\u0441\u0438\u0442\u0435\u043b, \u25c6 = \u0442\u0440\u044a\u0433\u0432\u0430 \u0440\u044f\u0437\u043a\u043e (\u0441\u0430\u043c\u043e \u2248 \u0438 \u25c6 \u0441\u0430 \u0432 \u201e\u041f\u0443\u043b\u0442\u201c)."

    const-string v3, "Frequency and width are built into the module (from the maker\'s DOMAS app). The picture is the program\'s impulse: tall = strong, dense = high frequency, gap = pause. \"a\u2013b\" sweeps, \"a / b\" alternates; \u2248 = steady carrier, \u25c6 = starts sharp (only \u2248 and \u25c6 are in \"Panel\")."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41480000    # 12.5f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {v0, v2, v3, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 841
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 842
    return-void
.end method

.method fillPult()V
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/high16 v4, 0x41800000    # 16.0f

    .line 454
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 455
    const-string v1, "\u0427\u0415\u0421\u0422\u041e\u0422\u0410"

    const-string v2, "FREQUENCY"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->pultTile(Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 456
    const-string v1, "\u0418\u041c\u041f\u0423\u041b\u0421"

    const-string v2, "IMPULSE"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-virtual {p0, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->pultTile(Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 457
    const-string v1, "\u041f\u0410\u0423\u0417\u0410"

    const-string v2, "PAUSE"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {p0, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->pultTile(Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 458
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 459
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 460
    const-string v1, "\u041d\u0410\u0420\u0410\u0421\u0422\u0412\u0410\u041d\u0415"

    const-string v2, "RISE"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {p0, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->pultTile(Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 461
    const-string v1, "\u0421\u041f\u0410\u0414\u0410\u041d\u0415"

    const-string v2, "FALL"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {p0, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->pultTile(Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 462
    const-string v1, "\u0421\u0418\u041b\u0410 \u0412 \u041f\u0410\u0423\u0417\u0410\u0422\u0410"

    const-string v2, "PAUSE STRENGTH"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {p0, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->pultTile(Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 463
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 465
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 466
    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v2

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 467
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41b00000    # 22.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->phaseText:Landroid/widget/TextView;

    .line 468
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->phaseText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 469
    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PhaseView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-direct {v1, v2, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PhaseView;-><init>(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->phase:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PhaseView;

    .line 470
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x42080000    # 34.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 471
    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 472
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->phase:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PhaseView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 473
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fillHit()V

    .line 475
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u041d\u0430\u043a\u043b\u043e\u043d \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0441\u0438\u043b\u0430\u0442\u0430"

    const-string v3, "Tilt drives the strength"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u041d\u0430\u043a\u043b\u043e\u043d\u0438 \u0442\u0430\u0431\u043b\u0435\u0442\u0430: 0\u00b0 = \u0441\u0438\u043b\u0430\u0442\u0430 \u0432 \u043f\u0430\u0443\u0437\u0430\u0442\u0430, 30\u00b0 = \u0441\u0438\u043b\u0430\u0442\u0430 \u0432\u0434\u044f\u0441\u043d\u043e (\u043d\u0438\u043a\u043e\u0433\u0430 \u043f\u043e\u0432\u0435\u0447\u0435). \u041d\u0443\u043b\u0430\u0442\u0430 \u0435 \u043f\u043e\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e \u043f\u0440\u0438 \u0432\u043a\u043b\u044e\u0447\u0432\u0430\u043d\u0435 \u0438 \u043f\u0440\u0438 \u25b6."

    const-string v4, "Tilt the tablet: 0\u00b0 = the pause strength, 30\u00b0 = the strength on the right (never more). Zero = the position when switched on and at \u25b6."

    .line 476
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tiltOn:Z

    new-instance v5, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$TiltToggle;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$TiltToggle;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V

    .line 475
    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    .line 479
    invoke-static {v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 475
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    const/high16 v2, 0x41480000    # 12.5f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveInfo:Landroid/widget/TextView;

    .line 481
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveInfo:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->renderPult()V

    .line 483
    return-void
.end method

.method fillRotate()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 1031
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->rotRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v2, v1

    .line 1032
    :goto_7
    const/16 v0, 0x1a

    if-ge v2, v0, :cond_63

    .line 1033
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->indexOf([II)I

    move-result v3

    .line 1034
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-ltz v3, :cond_5e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\u25b8 "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_31
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->chipName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-ltz v3, :cond_61

    const/4 v0, 0x1

    :goto_44
    const v3, -0x587406

    invoke-static {v4, v5, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 1035
    new-instance v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickRotate;

    invoke-direct {v3, p0, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PickRotate;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1036
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->rotRow:Landroid/widget/LinearLayout;

    invoke-static {v3, v4, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 1032
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    .line 1034
    :cond_5e
    const-string v0, ""

    goto :goto_31

    :cond_61
    move v0, v1

    goto :goto_44

    .line 1038
    :cond_63
    return-void
.end method

.method fillSteps()V
    .registers 10

    .prologue
    const/16 v8, 0x8

    const/high16 v7, 0x42200000    # 40.0f

    const/4 v6, 0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    .line 921
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 922
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 923
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u0421\u0442\u044a\u043f\u043a\u0438 \u2014 \u0432\u044a\u0440\u0432\u044f\u0442 \u043f\u043e\u0434\u0440\u0435\u0434, \u043f\u043e\u0441\u043b\u0435 \u043e\u0442\u043d\u0430\u0447\u0430\u043b\u043e"

    const-string v3, "Steps \u2014 in order, then again"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 925
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "+ \u0421\u0442\u044a\u043f\u043a\u0430"

    const-string v3, "+ Step"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 926
    new-instance v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StepAdd;

    invoke-direct {v2, p0, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StepAdd;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 927
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 928
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u041c\u0430\u0445\u043d\u0438"

    const-string v3, "Remove"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 929
    new-instance v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StepAdd;

    invoke-direct {v2, p0, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StepAdd;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 930
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 931
    const/high16 v3, 0x40c00000    # 6.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 932
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 933
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 934
    new-array v0, v6, [Landroid/widget/LinearLayout;

    .line 935
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 936
    aget-object v0, v0, v5

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->stepRow:Landroid/widget/LinearLayout;

    .line 938
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "\u041d\u043e\u0441\u0438\u0442\u0435\u043b (\u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430) \u043d\u0430 \u0438\u0437\u0431\u0440\u0430\u043d\u0430\u0442\u0430 \u0441\u0442\u044a\u043f\u043a\u0430 \u2014 \u2248 \u043f\u044a\u0440\u0432\u043e"

    const-string v3, "Carrier (the frequency) of the chosen step \u2014 \u2248 first"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xc

    .line 939
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 938
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 940
    new-array v0, v6, [Landroid/widget/LinearLayout;

    .line 941
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 942
    aget-object v0, v0, v5

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->carrierRow:Landroid/widget/LinearLayout;

    .line 943
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->stepFields:Landroid/widget/LinearLayout;

    .line 944
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->stepFields:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 945
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    const/high16 v2, 0x41480000    # 12.5f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {v0, v1, v2, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->stepSum:Landroid/widget/TextView;

    .line 946
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->stepSum:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 947
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->renderSteps()V

    .line 948
    return-void
.end method

.method fillTab()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 369
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 370
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->env:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;

    .line 371
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->rotRow:Landroid/widget/LinearLayout;

    .line 372
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->rotSum:Landroid/widget/TextView;

    .line 373
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->stepRow:Landroid/widget/LinearLayout;

    .line 374
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tiles:[Landroid/widget/TextView;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 375
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeBtn:Landroid/widget/TextView;

    .line 376
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->writeBtn:Landroid/widget/TextView;

    .line 377
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeText:Landroid/widget/TextView;

    .line 378
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hitList:Landroid/widget/LinearLayout;

    .line 379
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->consoleView:Landroid/widget/TextView;

    .line 380
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->feedback:Landroid/widget/TextView;

    .line 381
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveSt:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 382
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->phase:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PhaseView;

    .line 383
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->phaseText:Landroid/widget/TextView;

    .line 384
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveInfo:Landroid/widget/TextView;

    .line 385
    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hitInfo:Landroid/widget/TextView;

    .line 386
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fxSt:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 387
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tab:I

    if-nez v0, :cond_3e

    .line 388
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fillPult()V

    .line 396
    :goto_38
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    .line 397
    return-void

    .line 389
    :cond_3e
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tab:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_47

    .line 390
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fillMod()V

    goto :goto_38

    .line 391
    :cond_47
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tab:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_50

    .line 392
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fillExplore()V

    goto :goto_38

    .line 394
    :cond_50
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fillProgram()V

    goto :goto_38
.end method

.method freqCode()I
    .registers 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->beatTenths:I

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->beatTenths:I

    neg-int v0, v0

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->carrier:I

    goto :goto_b
.end method

.method fxDown(I)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 670
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v0

    .line 671
    if-eqz v0, :cond_b

    iget-boolean v2, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probing:Z

    if-eqz v2, :cond_c

    .line 686
    :cond_b
    :goto_b
    return-void

    .line 674
    :cond_c
    sget-object v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->FX_CARRIER:[I

    aget v2, v2, p1

    .line 675
    iget v3, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->hitArmed:I

    if-ne v3, v1, :cond_18

    iget v3, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mode:I

    if-eq v3, v2, :cond_2a

    .line 676
    :cond_18
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveRun:Z

    .line 677
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v4, v4, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    iget v5, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->minutes:I

    mul-int/lit8 v5, v5, 0x3c

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->armHit(IIIII)V

    .line 679
    :cond_2a
    sget-object v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->FX_MS:[I

    aget v2, v2, p1

    if-gez v2, :cond_3a

    .line 680
    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->press(Z)V

    .line 684
    :goto_33
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->renderHit()V

    .line 685
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    goto :goto_b

    .line 682
    :cond_3a
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fxMs:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->hit(I)V

    goto :goto_33
.end method

.method fxUp(I)V
    .registers 4

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v0

    .line 690
    if-eqz v0, :cond_10

    sget-object v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->FX_MS:[I

    aget v1, v1, p1

    if-gez v1, :cond_10

    .line 691
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->press(Z)V

    .line 693
    :cond_10
    return-void
.end method

.method go()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x6

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1490
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v3

    .line 1491
    if-eqz v3, :cond_f

    iget-boolean v0, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probing:Z

    if-eqz v0, :cond_10

    .line 1525
    :cond_f
    :goto_f
    return-void

    .line 1494
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hintText:Ljava/lang/String;

    .line 1495
    iget-boolean v0, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-eqz v0, :cond_1e

    .line 1496
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->stop()V

    .line 1524
    :goto_1a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    goto :goto_f

    .line 1497
    :cond_1e
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tab:I

    if-nez v0, :cond_5a

    .line 1498
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveRun:Z

    .line 1499
    iget v0, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mode:I

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v2, v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->carrier:I

    if-eq v0, v2, :cond_33

    .line 1500
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->carrier:I

    invoke-virtual {v3, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->setMode(I)V

    .line 1503
    :cond_33
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tiltOn:Z

    if-eqz v0, :cond_3b

    .line 1504
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tiltZero:F

    .line 1506
    :cond_3b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveMod()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    move-result-object v2

    .line 1507
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->minutes:I

    mul-int/lit8 v4, v0, 0x3c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->beatTenths:I

    if-lez v0, :cond_51

    move v0, v1

    :goto_4a
    invoke-virtual {v3, v4, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->start(II)V

    .line 1508
    invoke-virtual {v3, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->modulate(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;)V

    goto :goto_1a

    .line 1507
    :cond_51
    invoke-static {v2, v6, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->envelope(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;J)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_4a

    .line 1510
    :cond_5a
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveRun:Z

    .line 1511
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->modOn:Z

    if-nez v0, :cond_a1

    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mode:I

    .line 1513
    :goto_62
    iget v4, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mode:I

    if-eq v4, v0, :cond_69

    .line 1514
    invoke-virtual {v3, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->setMode(I)V

    .line 1516
    :cond_69
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->modOn:Z

    if-eqz v0, :cond_c7

    .line 1517
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    if-eq v0, v5, :cond_7c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    const/4 v5, 0x5

    if-ne v0, v5, :cond_c5

    :cond_7c
    move v0, v1

    :goto_7d
    iput-boolean v0, v4, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->gate:Z

    .line 1518
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->minutes:I

    mul-int/lit8 v0, v0, 0x3c

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->gate:Z

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-static {v2, v6, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->envelope(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;J)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_93
    invoke-virtual {v3, v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->start(II)V

    .line 1519
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->copy()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->modulate(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;)V

    goto/16 :goto_1a

    .line 1511
    :cond_a1
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    if-ne v0, v5, :cond_b4

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->steps:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->mode:I

    goto :goto_62

    .line 1512
    :cond_b4
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    array-length v0, v0

    if-le v0, v1, :cond_c2

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    aget v0, v0, v2

    goto :goto_62

    :cond_c2
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mode:I

    goto :goto_62

    :cond_c5
    move v0, v2

    .line 1517
    goto :goto_7d

    .line 1521
    :cond_c7
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->minutes:I

    mul-int/lit8 v0, v0, 0x3c

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->startLevel:I

    invoke-virtual {v3, v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->start(II)V

    goto/16 :goto_1a
.end method

.method info()V
    .registers 8

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v1, "\u041a\u0430\u043a\u0432\u043e \u043c\u043e\u0436\u0435 \u0430\u043f\u0430\u0440\u0430\u0442\u0447\u0435\u0442\u043e"

    const-string v2, "What the unit can do"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x2d0

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    .line 1762
    const-string v1, "\u2022 \u0418\u043c\u043f\u0443\u043b\u0441\u044a\u0442 (\u0447\u0435\u0441\u0442\u043e\u0442\u0430, \u0448\u0438\u0440\u0438\u043d\u0430, \u0444\u043e\u0440\u043c\u0430) \u0435 \u0432\u0433\u0440\u0430\u0434\u0435\u043d \u0432\u044a\u0432 \u0432\u0441\u044f\u043a\u0430 \u043e\u0442 26-\u0442\u0435 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438 \u2014 \u043f\u0440\u043e\u0442\u043e\u043a\u043e\u043b\u044a\u0442 \u043d\u0435 \u0433\u043e \u043f\u0440\u043e\u043c\u0435\u043d\u044f. \u041f\u043b\u0430\u0442\u043a\u0430\u0442\u0430 \u0435 ZX-571C \u0441 \u0447\u0438\u043f SYD8811.\n\u2022 26 \u043c\u043e\u0434\u0443\u043b\u0430, \u043d\u043e\u043c\u0435\u0440\u0438\u0440\u0430\u043d\u0438 1\u201326, \u043f\u043e \u0434\u0435\u0439\u0441\u0442\u0432\u0438\u0435 (\u043e\u0431\u043b\u0435\u043a\u0447\u0430\u0432\u0430\u043d\u0435, \u043c\u0430\u0441\u0430\u0436, \u043c\u0443\u0441\u043a\u0443\u043b\u0438, \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435) \u2014 \u0431\u0435\u0437 \u0447\u0430\u0441\u0442\u0438 \u043d\u0430 \u0442\u044f\u043b\u043e\u0442\u043e. \u0427\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430 \u0438 \u0448\u0438\u0440\u0438\u043d\u0430\u0442\u0430 \u0441\u0430 \u043e\u0442 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e DOMAS \u043d\u0430 \u043f\u0440\u043e\u0438\u0437\u0432\u043e\u0434\u0438\u0442\u0435\u043b\u044f.\n\u2022 \u201e\u0418\u043c\u043f\u0443\u043b\u0441\u201c \u0440\u0438\u0441\u0443\u0432\u0430 \u0441\u0438\u043b\u0430\u0442\u0430 (0\u201325) \u0432\u044a\u0432 \u0432\u0440\u0435\u043c\u0435\u0442\u043e, \u0434\u043e \u2248 10 \u043f\u044a\u0442\u0438 \u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0430, \u043f\u043e\u043a\u0430\u0447\u0432\u0430\u043d\u0435 \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e \u0441 3 \u043d\u0438\u0432\u0430 \u043d\u0430\u0432\u0435\u0434\u043d\u044a\u0436. \u201e\u0420\u0430\u0431\u043e\u0442\u0430 / \u041f\u0430\u0443\u0437\u0430\u201c: \u0442\u0432\u043e\u0438\u0442\u0435 \u0432\u0440\u0435\u043c\u0435\u043d\u0430 \u0437\u0430 \u043d\u0430\u0440\u0430\u0441\u0442\u0432\u0430\u043d\u0435, \u0440\u0430\u0431\u043e\u0442\u0430, \u0441\u043f\u0430\u0434\u0430\u043d\u0435 \u0438 \u043f\u0430\u0443\u0437\u0430.\n\u2022 \u0421\u043c\u044f\u043d\u0430 \u043d\u0430 \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430: \u043c\u043e\u0434\u0443\u043b\u0438\u0442\u0435 \u043f\u043e\u0434\u0440\u0435\u0434, \u0432\u0441\u0435\u043a\u0438 \u043f\u043e\u0435\u043c\u0430 \u0432 \u043d\u0430\u0447\u0430\u043b\u043e\u0442\u043e \u043d\u0430 \u043f\u0430\u0443\u0437\u0430\u0442\u0430 (\u0430\u043f\u0430\u0440\u0430\u0442\u0447\u0435\u0442\u043e \u0441\u043c\u0435\u043d\u044f \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u0441\u0430\u043c\u043e \u0431\u0435\u0437 \u0442\u043e\u043a \u0438 \u043d\u0443\u043b\u0438\u0440\u0430 \u0441\u0438\u043b\u0430\u0442\u0430 \u2014 \u0441\u0438\u043b\u0430\u0442\u0430 \u043f\u0430\u043a \u0441\u0435 \u043a\u0430\u0447\u0432\u0430 \u043e\u0442 0).\n\u2022 \u0410\u043f\u0430\u0440\u0430\u0442\u0447\u0435\u0442\u043e \u043a\u0430\u0437\u0432\u0430: \u0431\u0430\u0442\u0435\u0440\u0438\u044f, \u0434\u043e\u043f\u0438\u0440 \u043d\u0430 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435, \u043e\u0441\u0442\u0430\u0432\u0430\u0449\u043e \u0432\u0440\u0435\u043c\u0435, \u0437\u0430\u0449\u043e \u0441\u0435 \u0435 \u0438\u0437\u043a\u043b\u044e\u0447\u0438\u043b\u043e.\n\u2022 \u201e\u0418\u0437\u0441\u043b\u0435\u0434\u0432\u0430\u043d\u0435\u201c \u043f\u0440\u043e\u0431\u0432\u0430 ~600 \u043a\u043e\u043c\u0430\u043d\u0434\u0438 \u0441\u0430\u043c\u043e \u0437\u0430 \u0447\u0435\u0442\u0435\u043d\u0435 \u0438 \u0437\u0430\u043f\u0438\u0441\u0432\u0430 \u0432\u0441\u0438\u0447\u043a\u043e, \u043a\u043e\u0435\u0442\u043e \u043e\u0442\u0433\u043e\u0432\u043e\u0440\u0438. \u201e\u0418\u0437\u0441\u043b\u0435\u0434\u0432\u0430\u043d\u0435 \u043d\u0430 \u0437\u0430\u043f\u0438\u0441\u201c \u043f\u0440\u0430\u0449\u0430 ~320 \u043a\u043e\u043c\u0430\u043d\u0434\u0438 \u0441\u044a\u0441 \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442: \u043d\u0435\u043f\u043e\u0437\u043d\u0430\u0442\u0430 \u043e\u0442\u0433\u043e\u0432\u0430\u0440\u044f ERROR:104, \u0432\u0441\u0438\u0447\u043a\u043e \u0434\u0440\u0443\u0433\u043e \u0437\u043d\u0430\u0447\u0438, \u0447\u0435 \u043a\u043e\u043c\u0430\u043d\u0434\u0430\u0442\u0430 \u0441\u044a\u0449\u0435\u0441\u0442\u0432\u0443\u0432\u0430.\n\u201e\u041a\u043e\u043f\u0438\u0440\u0430\u0439 \u043e\u0442\u0447\u0435\u0442\u0430\u201c \u0434\u0430\u0432\u0430 \u0446\u0435\u043b\u0438\u044f \u0440\u0435\u0437\u0443\u043b\u0442\u0430\u0442 \u0437\u0430 \u0430\u043d\u0430\u043b\u0438\u0437."

    const-string v2, "\u2022 The impulse (frequency, width, shape) is built into each of the 26 programs \u2014 the protocol does not change it. Board ZX-571C, SYD8811 chip.\n\u2022 26 modules numbered 1\u201326 by what they do (relief, massage, muscles, recovery) \u2014 no body parts. Frequency and width come from the maker\'s DOMAS app.\n\u2022 \"Impulse\" draws the strength (0\u201325) over time, up to \u2248 10 times a second, rising at most 3 levels at once. \"Work / Pause\": your rise, work, fall and pause times.\n\u2022 Frequency change: the modules in turn, each taking over at the start of a pause (the unit changes program only without output and zeroes the strength \u2014 it climbs again from 0).\n\u2022 The unit reports battery, pad contact, time left and why it switched off.\n\u2022 \"Explore\" tries ~600 read-only commands and records everything that answers. \"Write exploration\" sends ~320 commands with a value: an unknown one answers ERROR:104, anything else means the command exists.\n\"Copy the report\" gives the whole result for analysis."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1789
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/high16 v4, 0x41600000    # 14.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v6, 0x0

    invoke-static {v3, v1, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1790
    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1791
    return-void
.end method

.method liveChanged()V
    .registers 4

    .prologue
    .line 759
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "live"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 760
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v0

    .line 761
    if-eqz v0, :cond_2a

    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-eqz v1, :cond_2a

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveRun:Z

    if-eqz v1, :cond_2a

    .line 762
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveMod()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->modulate(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;)V

    .line 764
    :cond_2a
    return-void
.end method

.method liveMod()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;
    .registers 5

    .prologue
    .line 697
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->copy()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    move-result-object v1

    .line 698
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tiltOn:Z

    if-eqz v0, :cond_20

    .line 699
    iget v2, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v3, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tiltHi:I

    if-gez v0, :cond_21

    iget v0, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    :goto_16
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    .line 701
    :cond_20
    return-object v1

    .line 699
    :cond_21
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tiltHi:I

    goto :goto_16
.end method

.method modChanged()V
    .registers 4

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mod"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1221
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v0

    .line 1222
    if-eqz v0, :cond_30

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->modOn:Z

    if-eqz v1, :cond_30

    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-eqz v1, :cond_30

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveRun:Z

    if-nez v1, :cond_30

    .line 1223
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->copy()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->modulate(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;)V

    .line 1225
    :cond_30
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->env:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;

    if-eqz v0, :cond_39

    .line 1226
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->env:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->invalidate()V

    .line 1228
    :cond_39
    return-void
.end method

.method modStep(II)V
    .registers 8

    .prologue
    const/16 v4, 0x19

    const/4 v3, 0x0

    .line 1170
    const/16 v0, 0x1e

    if-lt p1, v0, :cond_b

    .line 1171
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->pultStep(II)V

    .line 1203
    :cond_a
    :goto_a
    return-void

    .line 1174
    :cond_b
    packed-switch p1, :pswitch_data_154

    .line 1195
    :pswitch_e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->stepMs:I

    mul-int/lit8 v2, p2, 0x32

    add-int/2addr v1, v2

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->stepMs:I

    .line 1197
    :goto_17
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->safe()V

    .line 1198
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->modChanged()V

    .line 1199
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->refreshFields(Landroid/view/ViewGroup;)V

    .line 1200
    const/16 v0, 0xa

    if-lt p1, v0, :cond_a

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->stepRow:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_a

    .line 1201
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->renderSteps()V

    goto :goto_a

    .line 1175
    :pswitch_30
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v2, v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    add-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    goto :goto_17

    .line 1176
    :pswitch_46
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v2, v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    add-int/2addr v2, p2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    goto :goto_17

    .line 1178
    :pswitch_5c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    const/16 v1, 0x7d0

    if-ge v0, v1, :cond_6f

    const/16 v0, 0x64

    .line 1179
    :goto_66
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v2, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    mul-int/2addr v0, p2

    add-int/2addr v0, v2

    iput v0, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    goto :goto_17

    .line 1178
    :cond_6f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_7a

    const/16 v0, 0x1f4

    goto :goto_66

    :cond_7a
    const/16 v0, 0x1388

    goto :goto_66

    .line 1182
    :pswitch_7d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->duty:I

    mul-int/lit8 v2, p2, 0x5

    add-int/2addr v1, v2

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->duty:I

    goto :goto_17

    .line 1183
    :pswitch_87
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->upMs:I

    invoke-static {v1, p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->msStep(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->upMs:I

    goto :goto_17

    .line 1184
    :pswitch_94
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->onMs:I

    invoke-static {v1, p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->msStep(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->onMs:I

    goto/16 :goto_17

    .line 1185
    :pswitch_a2
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->downMs:I

    invoke-static {v1, p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->msStep(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->downMs:I

    goto/16 :goto_17

    .line 1186
    :pswitch_b0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->offMs:I

    invoke-static {v1, p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->msStep(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->offMs:I

    goto/16 :goto_17

    .line 1187
    :pswitch_be
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->every:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->every:I

    goto/16 :goto_17

    .line 1188
    :pswitch_c7
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->step()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->step()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->hi:I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->step()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    move-result-object v2

    iget v2, v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->lo:I

    add-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->lo:I

    goto/16 :goto_17

    .line 1189
    :pswitch_e4
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->step()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->step()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->lo:I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->step()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    move-result-object v2

    iget v2, v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->hi:I

    add-int/2addr v2, p2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->hi:I

    goto/16 :goto_17

    .line 1190
    :pswitch_101
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->step()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->step()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->upMs:I

    invoke-static {v1, p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tenths(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->upMs:I

    goto/16 :goto_17

    .line 1191
    :pswitch_113
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->step()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->step()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->onMs:I

    invoke-static {v1, p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tenths(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->onMs:I

    goto/16 :goto_17

    .line 1192
    :pswitch_125
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->step()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->step()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->downMs:I

    invoke-static {v1, p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tenths(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->downMs:I

    goto/16 :goto_17

    .line 1193
    :pswitch_137
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->step()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->step()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    move-result-object v1

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->offMs:I

    invoke-static {v1, p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tenths(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->offMs:I

    goto/16 :goto_17

    .line 1194
    :pswitch_149
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->step()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    move-result-object v0

    iget v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->reps:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->reps:I

    goto/16 :goto_17

    .line 1174
    :pswitch_data_154
    .packed-switch 0x0
        :pswitch_30
        :pswitch_46
        :pswitch_5c
        :pswitch_7d
        :pswitch_e
        :pswitch_87
        :pswitch_94
        :pswitch_a2
        :pswitch_b0
        :pswitch_be
        :pswitch_c7
        :pswitch_e4
        :pswitch_101
        :pswitch_113
        :pswitch_125
        :pswitch_137
        :pswitch_149
    .end packed-switch
.end method

.method modToggle(Z)V
    .registers 4

    .prologue
    .line 1602
    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->modOn:Z

    .line 1603
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveRun:Z

    .line 1604
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mod_on"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1605
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v1

    .line 1606
    if-eqz v1, :cond_29

    .line 1607
    if-eqz p1, :cond_2d

    iget-boolean v0, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->copy()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    move-result-object v0

    :goto_26
    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->modulate(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;)V

    .line 1609
    :cond_29
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    .line 1610
    return-void

    .line 1607
    :cond_2d
    const/4 v0, 0x0

    goto :goto_26
.end method

.method moduleChip(IZI)Landroid/widget/TextView;
    .registers 11

    .prologue
    const/4 v6, 0x0

    const/high16 v3, 0x41000000    # 8.0f

    const/high16 v4, 0x40c00000    # 6.0f

    const/4 v5, 0x0

    .line 257
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->chipName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 258
    const/high16 v1, 0x41480000    # 12.5f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 259
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 260
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v1

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v2

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 261
    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$WaveDrawable;

    if-eqz p2, :cond_4f

    :goto_30
    invoke-direct {v1, p1, p3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$WaveDrawable;-><init>(II)V

    .line 262
    const/high16 v2, 0x42a80000    # 84.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    invoke-virtual {v1, v6, v6, v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$WaveDrawable;->setBounds(IIII)V

    .line 263
    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 264
    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 265
    return-object v0

    .line 261
    :cond_4f
    sget p3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_30
.end method

.method moduleText(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 246
    if-gez p1, :cond_5

    const-string v0, "\u2014"

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->modeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->hz(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public onChanged(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;)V
    .registers 4

    .prologue
    .line 1715
    iget v0, p1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->contact:I

    if-nez v0, :cond_12

    iget-boolean v0, p1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-eqz v0, :cond_12

    .line 1716
    const-string v0, "\u26a0 \u0415\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435 \u043d\u0435 \u0434\u043e\u043f\u0438\u0440\u0430\u0442 \u2014 \u0441\u0438\u043b\u0430\u0442\u0430 \u0435 0. \u041f\u0440\u0438\u0442\u0438\u0441\u043d\u0438 \u0433\u0438 \u0438 \u0443\u0432\u0435\u043b\u0438\u0447\u0438 \u043e\u0442\u043d\u043e\u0432\u043e."

    const-string v1, "\u26a0 Pads not touching \u2014 strength is 0. Press them on and raise again."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hintText:Ljava/lang/String;

    .line 1719
    :cond_12
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->closed:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1720
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    .line 1722
    :cond_23
    return-void
.end method

.method public onLine(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;ZLjava/lang/String;)V
    .registers 13

    .prologue
    const/4 v8, 0x0

    .line 1726
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->io:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Io;->now()J

    move-result-wide v0

    const-wide/32 v2, 0x186a0

    rem-long/2addr v0, v2

    .line 1727
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->console:Ljava/util/List;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%05.1f %s %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    long-to-double v0, v0

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v5, v8

    const/4 v1, 0x1

    if-eqz p2, :cond_42

    const-string v0, "\u2192"

    :goto_26
    aput-object v0, v5, v1

    const/4 v0, 0x2

    aput-object p3, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1728
    :goto_32
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->console:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_45

    .line 1729
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->console:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_32

    .line 1727
    :cond_42
    const-string v0, "\u2190"

    goto :goto_26

    .line 1731
    :cond_45
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->consoleView:Landroid/widget/TextView;

    if-eqz v0, :cond_4c

    .line 1732
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->renderConsole()V

    .line 1734
    :cond_4c
    return-void
.end method

.method public onLinkState(Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;I)V
    .registers 5

    .prologue
    .line 1707
    const/4 v0, 0x2

    if-ne p2, v0, :cond_18

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->modOn:Z

    if-eqz v0, :cond_18

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->shell:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-eqz v0, :cond_18

    .line 1708
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->shell:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->copy()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->modulate(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;)V

    .line 1710
    :cond_18
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    .line 1711
    return-void
.end method

.method public onProbe(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;II[Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1738
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->renderExplore()V

    .line 1739
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    .line 1740
    return-void
.end method

.method onTilt(F)V
    .registers 6

    .prologue
    .line 739
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->closed:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tiltOn:Z

    if-nez v0, :cond_9

    .line 756
    :cond_8
    :goto_8
    return-void

    .line 742
    :cond_9
    iput p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tiltDeg:F

    .line 743
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tiltZero:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_14

    .line 744
    iput p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tiltZero:F

    .line 746
    :cond_14
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tiltZero:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41f00000    # 30.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 747
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v2, v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v1

    .line 748
    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tiltHi:I

    if-eq v0, v1, :cond_8

    .line 749
    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tiltHi:I

    .line 750
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v0

    .line 751
    if-eqz v0, :cond_54

    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-eqz v1, :cond_54

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveRun:Z

    if-eqz v1, :cond_54

    .line 752
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveMod()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->modulate(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;)V

    .line 754
    :cond_54
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->renderPult()V

    goto :goto_8
.end method

.method public onUnit(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 1696
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->closed:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    if-eqz v0, :cond_9

    .line 1703
    :cond_8
    :goto_8
    return-void

    .line 1699
    :cond_9
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;->stop()V

    .line 1700
    new-instance v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Events;Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink$Listener;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    .line 1701
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->connect()V

    .line 1702
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    goto :goto_8
.end method

.method pickMinutes(I)V
    .registers 4

    .prologue
    .line 1584
    iput p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->minutes:I

    .line 1585
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "minutes"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1586
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v0

    .line 1587
    if-eqz v0, :cond_20

    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-eqz v1, :cond_20

    .line 1588
    mul-int/lit8 v1, p1, 0x3c

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->setTimer(I)V

    .line 1590
    :cond_20
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fillTab()V

    .line 1591
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    .line 1592
    return-void
.end method

.method pickMode(I)V
    .registers 5

    .prologue
    .line 1565
    iput p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mode:I

    .line 1566
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->sharp(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1567
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iput p1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->carrier:I

    .line 1568
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    const/4 v1, 0x0

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->beatTenths:I

    .line 1569
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "live"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1571
    :cond_26
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1572
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v0

    .line 1573
    if-eqz v0, :cond_4c

    .line 1574
    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    .line 1575
    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->setMode(I)V

    .line 1576
    if-eqz v1, :cond_53

    const-string v0, "\u041d\u043e\u0432\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u2014 \u0430\u043f\u0430\u0440\u0430\u0442\u0447\u0435\u0442\u043e \u0441\u043f\u0438\u0440\u0430 \u0438 \u043d\u0443\u043b\u0438\u0440\u0430 \u0441\u0438\u043b\u0430\u0442\u0430. \u25b6 \u0437\u0430 \u0441\u0442\u0430\u0440\u0442."

    const-string v1, "New program \u2014 the unit pauses and zeroes the strength. \u25b6 to start."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1577
    :goto_4a
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hintText:Ljava/lang/String;

    .line 1579
    :cond_4c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fillTab()V

    .line 1580
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    .line 1581
    return-void

    .line 1577
    :cond_53
    const/4 v0, 0x0

    goto :goto_4a
.end method

.method pickRotate(I)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 1067
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->indexOf([II)I

    move-result v4

    .line 1069
    if-ltz v4, :cond_4c

    .line 1070
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    new-array v3, v0, [I

    move v0, v1

    move v2, v1

    .line 1071
    :goto_16
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    array-length v1, v1

    if-ge v2, v1, :cond_2e

    .line 1072
    if-eq v2, v4, :cond_2a

    .line 1073
    add-int/lit8 v1, v0, 0x1

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v5, v5, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    aget v5, v5, v2

    aput v5, v3, v0

    move v0, v1

    .line 1071
    :cond_2a
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_16

    :cond_2e
    move-object v0, v3

    .line 1081
    :goto_2f
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iput-object v0, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    .line 1082
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->safe()V

    .line 1083
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->modChanged()V

    .line 1084
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->rotRow:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4b

    .line 1085
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fillRotate()V

    .line 1086
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->rotSum:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->rotateText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1088
    :cond_4b
    return-void

    .line 1077
    :cond_4c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    .line 1078
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v3, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    array-length v3, v3

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1079
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    array-length v1, v1

    aput p1, v0, v1

    goto :goto_2f
.end method

.method pickShape(I)V
    .registers 3

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iput p1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    .line 1596
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->safe()V

    .line 1597
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->modChanged()V

    .line 1598
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fillTab()V

    .line 1599
    return-void
.end method

.method probe(Z)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1613
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->shell:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeSuspended()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1614
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->shell:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeStop()V

    .line 1615
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    .line 1638
    :cond_19
    :goto_19
    return-void

    .line 1618
    :cond_1a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v0

    .line 1619
    if-eqz v0, :cond_19

    .line 1622
    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probing:Z

    if-nez v1, :cond_2a

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeSuspended()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1623
    :cond_2a
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeStop()V

    .line 1637
    :goto_2d
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    goto :goto_19

    .line 1624
    :cond_31
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeArmed:Z

    if-nez v1, :cond_47

    .line 1625
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeArmed:Z

    .line 1626
    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->armWrite:Z

    .line 1627
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Disarm;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Disarm;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2d

    .line 1629
    :cond_47
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeArmed:Z

    .line 1630
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->modOn:Z

    .line 1631
    if-eqz p1, :cond_51

    .line 1632
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeWrites()V

    goto :goto_2d

    .line 1634
    :cond_51
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probe()V

    goto :goto_2d
.end method

.method pultStep(II)V
    .registers 10

    .prologue
    const/16 v6, 0x64

    const/16 v1, 0xa

    const/4 v2, 0x0

    .line 552
    const/16 v0, 0x28

    if-lt p1, v0, :cond_65

    .line 553
    add-int/lit8 v2, p1, -0x28

    .line 554
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fxMs:[I

    aget v3, v0, v2

    .line 555
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fxMs:[I

    const/16 v5, 0x1f4

    if-lt v3, v6, :cond_19

    if-ne v3, v6, :cond_62

    if-gez p2, :cond_62

    :cond_19
    move v0, v1

    :goto_1a
    mul-int/2addr v0, p2

    add-int/2addr v0, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v4, v2

    .line 556
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fx_ms_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fxMs:[I

    aget v3, v3, v2

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 557
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fxSt:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    aget-object v0, v0, v2

    if-eqz v0, :cond_61

    .line 558
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fxSt:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fxMs:[I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :cond_61
    :goto_61
    return-void

    .line 555
    :cond_62
    const/16 v0, 0x32

    goto :goto_1a

    .line 562
    :cond_65
    packed-switch p1, :pswitch_data_122

    .line 582
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    add-int/2addr v3, p2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    .line 584
    :goto_7d
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v0

    .line 585
    if-eqz v0, :cond_91

    iget v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->hitArmed:I

    if-ltz v1, :cond_91

    .line 586
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->setHitBase(I)V

    .line 587
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->renderHit()V

    .line 589
    :cond_91
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->safe()V

    .line 590
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveChanged()V

    .line 591
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->renderPult()V

    goto :goto_61

    .line 565
    :pswitch_9d
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->freqCode()I

    move-result v3

    move v0, v2

    move v1, v2

    .line 566
    :goto_a3
    sget-object v4, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->FREQS:[I

    array-length v4, v4

    if-ge v0, v4, :cond_b2

    .line 567
    sget-object v4, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->FREQS:[I

    aget v4, v4, v0

    if-ne v4, v3, :cond_af

    move v1, v0

    .line 566
    :cond_af
    add-int/lit8 v0, v0, 0x1

    goto :goto_a3

    .line 571
    :cond_b2
    sget-object v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->FREQS:[I

    sget-object v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->FREQS:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v1, p2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget v0, v0, v1

    .line 572
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    if-gez v0, :cond_c9

    neg-int v2, v0

    :cond_c9
    iput v2, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->beatTenths:I

    .line 573
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    if-gez v0, :cond_d1

    const/16 v0, 0x13

    :cond_d1
    iput v0, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->carrier:I

    .line 574
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->carrier:I

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mode:I

    .line 575
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mode"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_7d

    .line 578
    :pswitch_eb
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->onMs:I

    invoke-static {v1, p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tenths(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->onMs:I

    goto :goto_7d

    .line 579
    :pswitch_f8
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->offMs:I

    invoke-static {v1, p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tenths(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->offMs:I

    goto/16 :goto_7d

    .line 580
    :pswitch_106
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->upMs:I

    invoke-static {v1, p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tenths(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->upMs:I

    goto/16 :goto_7d

    .line 581
    :pswitch_114
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->downMs:I

    invoke-static {v1, p2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tenths(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->downMs:I

    goto/16 :goto_7d

    .line 562
    :pswitch_data_122
    .packed-switch 0x1e
        :pswitch_9d
        :pswitch_eb
        :pswitch_f8
        :pswitch_106
        :pswitch_114
    .end packed-switch
.end method

.method pultTile(Landroid/widget/LinearLayout;Ljava/lang/String;I)V
    .registers 11

    .prologue
    const/high16 v6, 0x41200000    # 10.0f

    .line 486
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 487
    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v2

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 488
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1, p2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 489
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    const-string v3, ""

    const/high16 v4, 0x41e00000    # 28.0f

    new-instance v5, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ModStep;

    invoke-direct {v5, p0, p3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ModStep;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;I)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v1

    .line 490
    iget-object v2, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveSt:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    add-int/lit8 v3, p3, -0x1e

    aput-object v1, v2, v3

    .line 492
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 493
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_5e

    .line 494
    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 496
    :cond_5e
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    return-void
.end method

.method refreshFields(Landroid/view/ViewGroup;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 1206
    move v2, v3

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_47

    .line 1207
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1208
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3d

    instance-of v0, v1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3d

    .line 1209
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v0, v1

    .line 1210
    check-cast v0, Landroid/widget/LinearLayout;

    .line 1211
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1212
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fieldValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1206
    :cond_39
    :goto_39
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 1213
    :cond_3d
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_39

    .line 1214
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->refreshFields(Landroid/view/ViewGroup;)V

    goto :goto_39

    .line 1217
    :cond_47
    return-void
.end method

.method render()V
    .registers 13

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1385
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->closed:Z

    if-eqz v0, :cond_c

    .line 1485
    :goto_b
    return-void

    .line 1388
    :cond_c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v6

    .line 1389
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    if-nez v0, :cond_1d2

    .line 1390
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->unitName:Landroid/widget/TextView;

    const-string v4, "MASTOGO H-024B"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1391
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->linkBadge:Landroid/widget/TextView;

    const-string v4, "\u0442\u044a\u0440\u0441\u044f\u2026"

    const-string v7, "searching\u2026"

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->setBadge(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 1402
    :goto_2a
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->battery:Landroid/widget/TextView;

    if-eqz v6, :cond_220

    iget v0, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->battery:I

    if-ltz v0, :cond_220

    .line 1403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u0411\u0430\u0442\u0435\u0440\u0438\u044f "

    const-string v8, "Battery "

    .line 1402
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->battery:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " %"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1403
    iget-wide v8, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->batteryV:D

    const-wide/16 v10, 0x0

    cmpl-double v0, v8, v10

    if-lez v0, :cond_21c

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, " \u00b7 %.2f V"

    new-array v9, v5, [Ljava/lang/Object;

    iget-wide v10, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->batteryV:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-static {v0, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_69
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1402
    :goto_71
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1404
    if-eqz v6, :cond_224

    iget v0, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->contact:I

    if-nez v0, :cond_224

    .line 1405
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->contact:Landroid/widget/TextView;

    const-string v4, "\u26a0 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435 \u043d\u0435 \u0434\u043e\u043f\u0438\u0440\u0430\u0442"

    const-string v7, "\u26a0 pads not touching"

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1406
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->contact:Landroid/widget/TextView;

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1413
    :goto_8e
    if-eqz v6, :cond_249

    iget v0, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->level:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1414
    :goto_96
    iget v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tab:I

    if-nez v4, :cond_24c

    if-eqz v6, :cond_a0

    iget-boolean v4, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-nez v4, :cond_24c

    .line 1415
    :cond_a0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->level:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v4, v4, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "\u0441\u0438\u043b\u0430 \u0432 \u0438\u043c\u043f\u0443\u043b\u0441\u0430 \u00b7 \u043e\u0442 25"

    const-string v8, "impulse strength \u00b7 of 25"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    :goto_b5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->level:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iget-object v4, v0, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_2b6

    move v0, v2

    :goto_bc
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1424
    if-eqz v6, :cond_2b9

    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->secondsLeft()I

    move-result v0

    .line 1425
    :goto_c5
    if-eqz v6, :cond_2bc

    iget-boolean v4, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-eqz v4, :cond_2bc

    if-ltz v0, :cond_2bc

    .line 1426
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->clock:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->mmss(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1427
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->clockLabel:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u043e\u0441\u0442\u0430\u0432\u0430\u0442 \u00b7 "

    const-string v8, "left \u00b7 "

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mode:I

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->moduleText(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1432
    :goto_fa
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1433
    if-eqz v6, :cond_169

    .line 1434
    const-string v0, "\u041d\u0430 \u0430\u043f\u0430\u0440\u0430\u0442\u0447\u0435\u0442\u043e: "

    const-string v7, "On the unit: "

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v0, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mode:I

    if-ltz v0, :cond_2e9

    .line 1435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mode:I

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->moduleText(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " ("

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v8, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mode:I

    invoke-static {v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->groupOf(I)I

    move-result v8

    invoke-static {v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->groupName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ")"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1434
    :goto_13e
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1436
    iget v0, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->switches:I

    if-lez v0, :cond_156

    .line 1437
    const-string v0, " \u00b7 \u0441\u043c\u0435\u043d\u0438 "

    const-string v7, " \u00b7 changes "

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->switches:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1439
    :cond_156
    iget v0, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->offReason:I

    if-ltz v0, :cond_169

    .line 1440
    const-string v0, " \u00b7 "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->offReason:I

    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->offName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    :cond_169
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->facts:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1445
    if-eqz v6, :cond_2ed

    iget-boolean v0, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-eqz v0, :cond_2ed

    move v4, v5

    .line 1446
    :goto_179
    if-eqz v4, :cond_17c

    const/4 v1, 0x4

    .line 1447
    :cond_17c
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->goStyle:I

    if-eq v1, v0, :cond_19c

    .line 1448
    iput v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->goStyle:I

    .line 1449
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v7, ""

    invoke-static {v0, v7, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 1450
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->go:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1451
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->go:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1453
    :cond_19c
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->go:Landroid/widget/TextView;

    if-eqz v4, :cond_2f0

    const-string v0, "\u25a0 \u0421\u043f\u0440\u0438"

    const-string v7, "\u25a0 Stop"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1a8
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1454
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->go:Landroid/widget/TextView;

    if-eqz v6, :cond_2fa

    iget-boolean v1, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probing:Z

    if-nez v1, :cond_2fa

    :goto_1b3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1456
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hintText:Ljava/lang/String;

    if-eqz v0, :cond_2fd

    .line 1457
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hintText:Ljava/lang/String;

    .line 1479
    :goto_1bc
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hint:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1480
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->env:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;

    if-eqz v0, :cond_1ca

    .line 1481
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->env:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->invalidate()V

    .line 1483
    :cond_1ca
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->renderPult()V

    .line 1484
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->renderExplore()V

    goto/16 :goto_b

    .line 1393
    :cond_1d2
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->unitName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1394
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->state:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1f3

    .line 1395
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->linkBadge:Landroid/widget/TextView;

    const-string v4, "\u2713 \u0441\u0432\u044a\u0440\u0437\u0430\u043d"

    const-string v7, "\u2713 linked"

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v0, v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->setBadge(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto/16 :goto_2a

    .line 1396
    :cond_1f3
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->state:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_20b

    .line 1397
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->linkBadge:Landroid/widget/TextView;

    const-string v4, "\u2298 \u0432\u0440\u044a\u0437\u043a\u0430\u0442\u0430 \u043f\u0430\u0434\u043d\u0430"

    const-string v7, "\u2298 link lost"

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {v0, v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->setBadge(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto/16 :goto_2a

    .line 1399
    :cond_20b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->linkBadge:Landroid/widget/TextView;

    const-string v4, "\u0441\u0432\u044a\u0440\u0437\u0432\u0430\u043c\u2026"

    const-string v7, "linking\u2026"

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->setBadge(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto/16 :goto_2a

    .line 1403
    :cond_21c
    const-string v0, ""

    goto/16 :goto_69

    :cond_220
    const-string v0, ""

    goto/16 :goto_71

    .line 1407
    :cond_224
    if-eqz v6, :cond_240

    iget-boolean v0, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-eqz v0, :cond_240

    .line 1408
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->contact:Landroid/widget/TextView;

    const-string v4, "\u2713 \u0434\u043e\u043f\u0438\u0440"

    const-string v7, "\u2713 contact"

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1409
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->contact:Landroid/widget/TextView;

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_8e

    .line 1411
    :cond_240
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->contact:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8e

    :cond_249
    move v0, v1

    .line 1413
    goto/16 :goto_96

    .line 1416
    :cond_24c
    if-eqz v6, :cond_26b

    iget-boolean v4, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-nez v4, :cond_26b

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->modOn:Z

    if-nez v4, :cond_26b

    .line 1417
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->level:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iget v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->startLevel:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "\u0442\u0440\u044a\u0433\u0432\u0430 \u0440\u044f\u0437\u043a\u043e \u043d\u0430 \u0442\u0430\u0437\u0438 \u0441\u0438\u043b\u0430"

    const-string v8, "starts sharply at this level"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b5

    .line 1419
    :cond_26b
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->level:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_2ad

    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    move-result-object v0

    if-eqz v0, :cond_2ad

    .line 1420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u0441\u0438\u043b\u0430 \u00b7 \u0438\u043c\u043f\u0443\u043b\u0441 "

    const-string v9, "strength \u00b7 impulse "

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->active()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    move-result-object v8

    iget v8, v8, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "\u2013"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->active()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    move-result-object v8

    iget v8, v8, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1419
    :goto_2a8
    invoke-virtual {v4, v7, v0}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b5

    .line 1421
    :cond_2ad
    const-string v0, "\u0441\u0438\u043b\u0430 \u043e\u0442 25"

    const-string v8, "strength of 25"

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a8

    :cond_2b6
    move v0, v3

    .line 1423
    goto/16 :goto_bc

    .line 1424
    :cond_2b9
    const/4 v0, -0x1

    goto/16 :goto_c5

    .line 1429
    :cond_2bc
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->clock:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->minutes:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " \u043c\u0438\u043d"

    const-string v8, " min"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1430
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->clockLabel:Landroid/widget/TextView;

    iget v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mode:I

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->moduleText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_fa

    .line 1435
    :cond_2e9
    const-string v0, "\u2014"

    goto/16 :goto_13e

    :cond_2ed
    move v4, v1

    .line 1445
    goto/16 :goto_179

    .line 1453
    :cond_2f0
    const-string v0, "\u25b6 \u041f\u0443\u0441\u043d\u0438"

    const-string v7, "\u25b6 Start"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1a8

    :cond_2fa
    move v2, v3

    .line 1454
    goto/16 :goto_1b3

    .line 1458
    :cond_2fd
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    if-eqz v0, :cond_315

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->shell:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeSuspended()Z

    move-result v0

    if-eqz v0, :cond_315

    .line 1459
    const-string v0, "\u0410\u043f\u0430\u0440\u0430\u0442\u0447\u0435\u0442\u043e \u0441\u0435 \u0438\u0437\u043a\u043b\u044e\u0447\u0438 \u0441\u0430\u043c\u043e (\u0434\u044a\u043b\u0433\u043e \u0431\u0435\u0437 \u0442\u043e\u043a). \u0412\u043a\u043b\u044e\u0447\u0438 \u0433\u043e \u2014 \u0438\u0437\u0441\u043b\u0435\u0434\u0432\u0430\u043d\u0435\u0442\u043e \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430 \u043e\u0442\u0442\u0430\u043c."

    const-string v1, "The unit switched itself off (idle). Switch it on \u2014 the search goes on from there."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1bc

    .line 1461
    :cond_315
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    if-nez v0, :cond_323

    .line 1462
    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0438 \u0430\u043f\u0430\u0440\u0430\u0442\u0447\u0435\u0442\u043e (\u0437\u0430\u0434\u0440\u044a\u0436 \u0431\u0443\u0442\u043e\u043d\u0430 \u043c\u0443) \u2014 \u0441\u0432\u044a\u0440\u0437\u0432\u0430 \u0441\u0435 \u0441\u0430\u043c\u043e."

    const-string v1, "Switch the unit on (hold its button) \u2014 it links by itself."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1bc

    .line 1464
    :cond_323
    if-nez v6, :cond_32f

    .line 1465
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043c \u0441\u0435\u2026"

    const-string v1, "Linking\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1bc

    .line 1466
    :cond_32f
    iget-boolean v0, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probing:Z

    if-eqz v0, :cond_33d

    .line 1467
    const-string v0, "\u0422\u044a\u0440\u0441\u044f \u043a\u043e\u043c\u0430\u043d\u0434\u0438 \u2014 \u0438\u0437\u0445\u043e\u0434\u044a\u0442 \u0435 \u0441\u043f\u0440\u044f\u043d."

    const-string v1, "Searching commands \u2014 output paused."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1bc

    .line 1468
    :cond_33d
    iget v0, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->hitArmed:I

    if-ltz v0, :cond_34b

    .line 1469
    const-string v0, "\u0423\u0434\u0430\u0440 \u0433\u043e\u0442\u043e\u0432 \u2014 \u0442\u0430\u043f\u043d\u0438 \u0423\u0414\u0410\u0420. \u25a0 \u0441\u043f\u0438\u0440\u0430."

    const-string v1, "Hit ready \u2014 tap HIT. \u25a0 stops."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1bc

    .line 1470
    :cond_34b
    if-eqz v4, :cond_400

    .line 1471
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveRun:Z

    if-eqz v0, :cond_3a4

    .line 1472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041f\u0443\u043b\u0442: "

    const-string v2, "Panel: "

    .line 1471
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->carrier:I

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->hz(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->onMs:I

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->secs(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->offMs:I

    .line 1472
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->secs(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u0441 \u2014 \u043f\u0438\u043f\u0430\u0439 \u043d\u0430 \u0436\u0438\u0432\u043e"

    const-string v2, " s \u2014 change it live"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1bc

    .line 1473
    :cond_3a4
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->modOn:Z

    if-eqz v0, :cond_3f6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0418\u043c\u043f\u0443\u043b\u0441: "

    const-string v2, "Impulse: "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->shapeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    array-length v0, v0

    if-le v0, v5, :cond_3f3

    .line 1474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \u00b7 \u043c\u043e\u0434\u0443\u043b\u0438 "

    const-string v3, " \u00b7 modules "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->rotateText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3e9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1bc

    :cond_3f3
    const-string v0, ""

    goto :goto_3e9

    :cond_3f6
    const-string v0, "\u0420\u0430\u0431\u043e\u0442\u0438."

    const-string v1, "Running."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1bc

    .line 1476
    :cond_400
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e. \u2212 / + \u0437\u0430\u0434\u0430\u0432\u0430\u0442 \u0441\u0438\u043b\u0430\u0442\u0430, \u25b6 \u0442\u0440\u044a\u0433\u0432\u0430 \u0440\u044f\u0437\u043a\u043e \u043d\u0430 \u043d\u0435\u044f."

    const-string v1, "Ready. \u2212 / + set the strength, \u25b6 starts sharply at it."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1bc
.end method

.method renderConsole()V
    .registers 5

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->consoleView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 1380
    :goto_4
    return-void

    .line 1374
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1375
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->console:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1376
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 1378
    :cond_26
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->consoleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1379
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->consoleScroll:Landroid/widget/ScrollView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ScrollDown;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->consoleScroll:Landroid/widget/ScrollView;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$ScrollDown;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method renderExplore()V
    .registers 16

    .prologue
    const/4 v14, -0x2

    const/high16 v13, 0x41500000    # 13.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1291
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeBtn:Landroid/widget/TextView;

    if-nez v0, :cond_c

    .line 1368
    :cond_b
    :goto_b
    return-void

    .line 1294
    :cond_c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v9

    .line 1295
    if-eqz v9, :cond_110

    iget-boolean v0, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probing:Z

    if-eqz v0, :cond_110

    move v0, v1

    .line 1296
    :goto_17
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    if-eqz v3, :cond_113

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget-object v3, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->shell:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeSuspended()Z

    move-result v3

    if-eqz v3, :cond_113

    move v8, v1

    .line 1297
    :goto_26
    if-nez v0, :cond_2a

    if-eqz v8, :cond_116

    :cond_2a
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget-object v3, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->shell:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeWrite:Z

    move v7, v3

    .line 1299
    :goto_31
    if-eqz v7, :cond_11b

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->writeBtn:Landroid/widget/TextView;

    move-object v6, v3

    .line 1300
    :goto_36
    if-eqz v7, :cond_120

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeBtn:Landroid/widget/TextView;

    move-object v5, v3

    .line 1301
    :goto_3b
    if-nez v0, :cond_43

    if-nez v8, :cond_43

    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeArmed:Z

    if-eqz v3, :cond_125

    :cond_43
    const/16 v3, 0x8

    :goto_45
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1302
    if-eqz v7, :cond_128

    const-string v3, "\u0422\u044a\u0440\u0441\u0438 \u0441\u043a\u0440\u0438\u0442\u0438 \u043a\u043e\u043c\u0430\u043d\u0434\u0438"

    const-string v10, "Search hidden commands"

    invoke-static {v3, v10}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_52
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1304
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1305
    if-eqz v7, :cond_132

    const-string v3, " \u0437\u0430\u043f\u0438\u0441\u0430"

    const-string v10, " writes"

    invoke-static {v3, v10}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1306
    :goto_62
    if-eqz v8, :cond_13c

    .line 1307
    const-string v0, "\u25a0 \u0421\u043f\u0440\u0438 \u0442\u044a\u0440\u0441\u0435\u043d\u0435\u0442\u043e"

    const-string v3, "\u25a0 Stop the search"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1308
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u0427\u0430\u043a\u0430\u043c \u0430\u043f\u0430\u0440\u0430\u0442\u0447\u0435\u0442\u043e \u0434\u0430 \u0441\u0435 \u0432\u043a\u043b\u044e\u0447\u0438 \u2014 "

    const-string v10, "Waiting for the unit \u2014 "

    invoke-static {v7, v10}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget-object v7, v7, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->shell:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    iget v7, v7, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeDone:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " / "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget-object v7, v7, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->shell:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    iget v7, v7, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeTotal:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1334
    :goto_a3
    if-nez v9, :cond_26e

    if-nez v8, :cond_26e

    const v0, 0x3ecccccd    # 0.4f

    .line 1335
    :goto_aa
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1336
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1337
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hitList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1338
    if-eqz v9, :cond_271

    .line 1339
    iget-object v0, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->hits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_bd
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_271

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1340
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 1341
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    aget-object v7, v0, v2

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v6, v7, v13, v8, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    .line 1342
    sget-object v7, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1343
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x432a0000    # 170.0f

    invoke-virtual {p0, v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v8

    invoke-direct {v7, v8, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1344
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    aget-object v0, v0, v1

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v6, v0, v13, v7, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1345
    sget-object v6, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1346
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v2, v14, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1347
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hitList:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_bd

    :cond_110
    move v0, v2

    .line 1295
    goto/16 :goto_17

    :cond_113
    move v8, v2

    .line 1296
    goto/16 :goto_26

    .line 1297
    :cond_116
    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->armWrite:Z

    move v7, v3

    goto/16 :goto_31

    .line 1299
    :cond_11b
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeBtn:Landroid/widget/TextView;

    move-object v6, v3

    goto/16 :goto_36

    .line 1300
    :cond_120
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->writeBtn:Landroid/widget/TextView;

    move-object v5, v3

    goto/16 :goto_3b

    :cond_125
    move v3, v2

    .line 1301
    goto/16 :goto_45

    .line 1303
    :cond_128
    const-string v3, "\u0418\u0437\u0441\u043b\u0435\u0434\u0432\u0430\u043d\u0435 \u043d\u0430 \u0437\u0430\u043f\u0438\u0441"

    const-string v10, "Write exploration"

    invoke-static {v3, v10}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_52

    .line 1305
    :cond_132
    const-string v3, " \u043a\u043e\u043c\u0430\u043d\u0434\u0438"

    const-string v10, " commands"

    invoke-static {v3, v10}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_62

    .line 1310
    :cond_13c
    if-eqz v0, :cond_1a2

    .line 1311
    const-string v0, "\u25a0 \u0421\u043f\u0440\u0438 \u0442\u044a\u0440\u0441\u0435\u043d\u0435\u0442\u043e"

    const-string v10, "\u25a0 Stop the search"

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1312
    iget-object v10, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeText:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u041f\u0440\u043e\u0431\u0432\u0430\u043c "

    const-string v12, "Trying "

    invoke-static {v11, v12}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v11, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeDone:I

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " / "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v11, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeTotal:I

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u00b7 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->hits:Ljava/util/List;

    .line 1313
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v7, :cond_199

    const-string v0, " \u043f\u043e\u0437\u043d\u0430\u0442\u0438"

    const-string v7, " known"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_18c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1312
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a3

    .line 1313
    :cond_199
    const-string v0, " \u043e\u0442\u0433\u043e\u0432\u043e\u0440\u0438\u043b\u0438"

    const-string v7, " answered"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18c

    .line 1314
    :cond_1a2
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeArmed:Z

    if-eqz v0, :cond_1cb

    .line 1315
    const-string v0, "\u2713 \u0415\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435 \u0441\u0430 \u0441\u0432\u0430\u043b\u0435\u043d\u0438 \u00b7 \u0437\u0430\u043f\u043e\u0447\u043d\u0438"

    const-string v3, "\u2713 Pads are off \u00b7 start"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1316
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeText:Landroid/widget/TextView;

    if-eqz v7, :cond_1c2

    .line 1317
    const-string v0, "\u0421\u0432\u0430\u043b\u0438 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435 \u043e\u0442 \u0442\u044f\u043b\u043e\u0442\u043e: \u043f\u043e\u0437\u043d\u0430\u0442\u0430 \u043a\u043e\u043c\u0430\u043d\u0434\u0430 \u043c\u043e\u0436\u0435 \u0434\u0430 \u043f\u0440\u0438\u0435\u043c\u0435 \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442\u0442\u0430 (50 Hz, 200 \u00b5s)."

    const-string v7, "Take the pads off the body: a known command may take the value (50 Hz, 200 \u00b5s)."

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1316
    :goto_1bd
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a3

    .line 1319
    :cond_1c2
    const-string v0, "\u0421\u0432\u0430\u043b\u0438 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435 \u043e\u0442 \u0442\u044f\u043b\u043e\u0442\u043e: \u043d\u044f\u043a\u043e\u044f \u043d\u0435\u043f\u043e\u0437\u043d\u0430\u0442\u0430 \u043a\u043e\u043c\u0430\u043d\u0434\u0430 \u043c\u043e\u0436\u0435 \u0434\u0430 \u043f\u0443\u0441\u043d\u0435 \u0442\u043e\u043a."

    const-string v7, "Take the pads off the body: an unknown command might start the output."

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1bd

    .line 1322
    :cond_1cb
    if-eqz v7, :cond_24f

    const-string v0, "\u0418\u0437\u0441\u043b\u0435\u0434\u0432\u0430\u043d\u0435 \u043d\u0430 \u0437\u0430\u043f\u0438\u0441"

    const-string v3, "Write exploration"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1d5
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1324
    if-eqz v9, :cond_26b

    iget v0, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeTotal:I

    if-lez v0, :cond_26b

    .line 1327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1325
    iget-boolean v0, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeWrite:Z

    if-eqz v0, :cond_259

    const-string v0, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u043e (\u0437\u0430\u043f\u0438\u0441): "

    const-string v7, "Last (write): "

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1ef
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeDone:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " / "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeTotal:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u00b7 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->hits:Ljava/util/List;

    .line 1326
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1327
    iget-boolean v0, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->probeWrite:Z

    if-eqz v0, :cond_262

    const-string v0, " \u043f\u043e\u0437\u043d\u0430\u0442\u0438"

    const-string v7, " known"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_221
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1329
    :goto_22f
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->probeText:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\u0422\u044a\u0440\u0441\u0435\u043d\u0435: ~600 \u0432\u044a\u043f\u0440\u043e\u0441\u0430 (?, =?), ~2 \u043c\u0438\u043d. \u0417\u0430\u043f\u0438\u0441: ~320 \u043a\u043e\u043c\u0430\u043d\u0434\u0438 \u0441\u044a\u0441 \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442 (\u043d\u0430\u043f\u0440. AT+CFRQ=0,50), ~1 \u043c\u0438\u043d \u2014 \u043d\u0435\u043f\u043e\u0437\u043d\u0430\u0442\u0430 = ERROR:104. \u0421\u0438\u043b\u0430\u0442\u0430 \u0435 0 \u043f\u0440\u0435\u0437 \u0446\u044f\u043b\u043e\u0442\u043e \u0432\u0440\u0435\u043c\u0435."

    const-string v10, "Search: ~600 queries (?, =?), ~2 min. Write: ~320 commands with a value (e.g. AT+CFRQ=0,50), ~1 min \u2014 unknown = ERROR:104. Strength stays 0 throughout."

    invoke-static {v7, v10}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a3

    .line 1323
    :cond_24f
    const-string v0, "\u0422\u044a\u0440\u0441\u0438 \u0441\u043a\u0440\u0438\u0442\u0438 \u043a\u043e\u043c\u0430\u043d\u0434\u0438"

    const-string v3, "Search hidden commands"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1d5

    .line 1325
    :cond_259
    const-string v0, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u043e: "

    const-string v7, "Last: "

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1ef

    .line 1327
    :cond_262
    const-string v0, " \u043e\u0442\u0433\u043e\u0432\u043e\u0440\u0438\u043b\u0438"

    const-string v7, " answered"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_221

    .line 1328
    :cond_26b
    const-string v0, ""

    goto :goto_22f

    :cond_26e
    move v0, v4

    .line 1334
    goto/16 :goto_aa

    .line 1350
    :cond_271
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->feedback:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 1351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1352
    if-eqz v9, :cond_338

    .line 1353
    iget-object v0, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->tags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_286
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1354
    const/16 v1, 0x2b

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_286

    .line 1356
    :cond_2b8
    iget v0, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttCount:I

    if-lez v0, :cond_319

    .line 1357
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u043e\u0442\u0433\u043e\u0432\u043e\u0440 "

    const-string v3, "reply "

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttMin:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2013

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttMax:J

    .line 1358
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0441\u0440\u0435\u0434\u043d\u043e "

    const-string v3, "avg "

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttSum:J

    iget v1, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->rttCount:I

    int-to-long v6, v1

    div-long/2addr v4, v6

    .line 1359
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->sentCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2191 "

    .line 1360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->recvCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2193"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    :cond_319
    iget-wide v0, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->heartMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_338

    .line 1363
    const-string v0, " \u00b7 \u043f\u0443\u043b\u0441 \u043d\u0430 \u0432\u0440\u044a\u0437\u043a\u0430\u0442\u0430 "

    const-string v1, " \u00b7 heartbeat "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v9, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->heartMs:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    :cond_338
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->feedback:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_349

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_344
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    :cond_349
    const-string v0, "\u2014"

    goto :goto_344
.end method

.method renderHit()V
    .registers 7

    .prologue
    .line 657
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hitInfo:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 667
    :goto_4
    return-void

    .line 660
    :cond_5
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v0

    .line 661
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hitInfo:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0421\u0438\u043b\u0430 = \u0432\u0434\u044f\u0441\u043d\u043e ("

    const-string v4, "Strength = on the right ("

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), \u043e\u0441\u043d\u043e\u0432\u0430 = \u0441\u0438\u043b\u0430\u0442\u0430 \u0432 \u043f\u0430\u0443\u0437\u0430\u0442\u0430 ("

    const-string v4, "), base = the pause strength ("

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") \u2014 \u043f\u043e-\u0432\u0438\u0441\u043e\u043a\u0430 \u043e\u0441\u043d\u043e\u0432\u0430, \u043f\u043e-\u0441\u0438\u043b\u043d\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435. \u0421\u043c\u044f\u043d\u0430 \u043d\u0430 \u0432\u0438\u0434\u0430 = \u0441\u043c\u044f\u043d\u0430 \u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430: \u043f\u044a\u0440\u0432\u0438\u044f\u0442 \u043c\u0443 \u043f\u044a\u0442 ~0.5 \u0441, \u043f\u043e\u0441\u043b\u0435 \u0432\u0435\u0434\u043d\u0430\u0433\u0430. "

    const-string v4, ") \u2014 a higher base, a stronger feel. Another kind = another program: its first time ~0.5 s, then at once. "

    .line 662
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 665
    if-eqz v0, :cond_7d

    iget v3, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->hitArmed:I

    if-ltz v3, :cond_7d

    .line 666
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0413\u043e\u0442\u043e\u0432\u043e \u00b7 \u0441\u044a\u0431\u0438\u0442\u0438\u044f: "

    const-string v5, "Ready \u00b7 events: "

    .line 665
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->hitCount:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u00b7 \u0430\u043f\u0430\u0440\u0430\u0442\u0447\u0435\u0442\u043e \u0441\u0435 \u0434\u044a\u0440\u0436\u0438 \u0431\u0443\u0434\u043d\u043e."

    const-string v4, " \u00b7 the unit is kept awake."

    .line 666
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_71
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 661
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 666
    :cond_7d
    const-string v0, ""

    goto :goto_71
.end method

.method renderPult()V
    .registers 13

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 500
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveSt:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    aget-object v0, v0, v2

    if-nez v0, :cond_b

    .line 549
    :goto_a
    return-void

    .line 503
    :cond_b
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v3

    .line 504
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v4, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->carrier:I

    .line 505
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->beatTenths:I

    if-lez v0, :cond_202

    .line 506
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveSt:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    aget-object v0, v0, v2

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.1f Hz"

    new-array v7, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v8, v8, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->beatTenths:I

    int-to-float v8, v8

    const/high16 v9, 0x41200000    # 10.0f

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u0443\u0434\u0430\u0440\u0438: \u043f\u043e \u0435\u0434\u0438\u043d \u0438\u043c\u043f\u0443\u043b\u0441 \u043e\u0442 "

    const-string v8, "beats: one pulse of "

    .line 507
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->name(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 506
    invoke-virtual {v0, v5, v3}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :goto_55
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveSt:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    aget-object v0, v0, v1

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->onMs:I

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->secs(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\u0441\u0435\u043a\u0443\u043d\u0434\u0438"

    const-string v6, "seconds"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveSt:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    aget-object v3, v0, v11

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->offMs:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->secs(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->offMs:I

    if-nez v0, :cond_23d

    const-string v0, "\u0431\u0435\u0437 \u043f\u0430\u0443\u0437\u0430"

    const-string v6, "no pause"

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_86
    invoke-virtual {v3, v5, v0}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveSt:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    aget-object v0, v0, v10

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->upMs:I

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->secs(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\u0441\u0435\u043a\u0443\u043d\u0434\u0438"

    const-string v6, "seconds"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveSt:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    const/4 v3, 0x4

    aget-object v0, v0, v3

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->downMs:I

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->secs(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\u0441\u0435\u043a\u0443\u043d\u0434\u0438"

    const-string v6, "seconds"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveSt:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    const/4 v3, 0x5

    aget-object v0, v0, v3

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u043e\u0442 "

    const-string v7, "of "

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v6, v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u0432 \u0438\u043c\u043f\u0443\u043b\u0441\u0430"

    const-string v7, " in the impulse"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v3

    .line 518
    if-eqz v3, :cond_247

    iget-boolean v0, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-eqz v0, :cond_247

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveRun:Z

    if-eqz v0, :cond_247

    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    move-result-object v0

    if-eqz v0, :cond_247

    move v0, v1

    .line 519
    :goto_106
    if-eqz v0, :cond_274

    .line 520
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->modElapsed()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->phaseOf(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;J)[I

    move-result-object v3

    .line 521
    aget v0, v3, v11

    aget v5, v3, v1

    sub-int/2addr v0, v5

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 522
    aget v0, v3, v2

    if-ne v0, v1, :cond_24a

    const-string v0, "\u0418\u041c\u041f\u0423\u041b\u0421 "

    const-string v6, "IMPULSE "

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 525
    :goto_127
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->phaseText:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%.1f"

    new-array v1, v1, [Ljava/lang/Object;

    int-to-float v5, v5

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v7, v8, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u0441"

    const-string v5, " s"

    .line 526
    invoke-static {v1, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 525
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->phaseText:Landroid/widget/TextView;

    aget v0, v3, v2

    if-ne v0, v10, :cond_270

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    :goto_165
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 533
    :goto_168
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->phase:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PhaseView;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PhaseView;->invalidate()V

    .line 534
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveInfo:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tiltOn:Z

    if-eqz v0, :cond_2c7

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041d\u0430\u043a\u043b\u043e\u043d "

    const-string v5, "Tilt "

    .line 534
    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tiltDeg:F

    const/4 v5, 0x0

    iget v6, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tiltZero:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u00b0 \u2192 \u0441\u0438\u043b\u0430 "

    const-string v5, "\u00b0 \u2192 strength "

    .line 535
    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    iget v5, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tiltHi:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u043e\u0442 "

    const-string v5, " of "

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 536
    :goto_1d7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->beatTenths:I

    if-lez v0, :cond_2cb

    .line 537
    const-string v0, "\u0421\u0438\u043c\u0443\u043b\u0438\u0440\u0430\u043d\u0430 \u0447\u0435\u0441\u0442\u043e\u0442\u0430: \u0432 \u0438\u043c\u043f\u0443\u043b\u0441\u0430 \u0438\u0437\u0445\u043e\u0434\u044a\u0442 \u0441\u0435 \u043f\u0443\u0441\u043a\u0430 \u0437\u0430 0.2 \u0441 \u043d\u0430 \u0432\u0441\u0435\u043a\u0438 \u0443\u0434\u0430\u0440 \u2014 \u043c\u0438\u043d\u0430\u0432\u0430 \u043f\u043e \u0435\u0434\u0438\u043d \u0438\u043c\u043f\u0443\u043b\u0441 \u043d\u0430 \u201e\u0422\u043e\u043d\u0443\u0441\u201c. \u0414\u043e 4 \u0443\u0434\u0430\u0440\u0430 \u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0430 (\u0442\u043e\u043b\u043a\u043e\u0432\u0430 \u043a\u043e\u043c\u0430\u043d\u0434\u0438 \u043f\u043e\u0435\u043c\u0430 \u0432\u0440\u044a\u0437\u043a\u0430\u0442\u0430). "

    const-string v3, "Simulated frequency: inside the impulse the output is let through for 0.2 s per beat \u2014 one pulse of \"Toning\" passes. Up to 4 beats a second (what the link carries). "

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    :goto_1e9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u041f\u0430\u0443\u0437\u0430\u0442\u0430 \u0441\u043f\u0438\u0440\u0430 \u0438\u0437\u0445\u043e\u0434\u0430, \u0438\u043c\u043f\u0443\u043b\u0441\u044a\u0442 \u0442\u0440\u044a\u0433\u0432\u0430 \u0440\u044f\u0437\u043a\u043e \u043d\u0430 \u0441\u0438\u043b\u0430\u0442\u0430 \u0432\u0434\u044f\u0441\u043d\u043e (\u0438\u043b\u0438 \u043f\u043e \u0442\u0432\u043e\u0435\u0442\u043e \u043d\u0430\u0440\u0430\u0441\u0442\u0432\u0430\u043d\u0435). \u0412\u0441\u0438\u0447\u043a\u043e \u0432\u0430\u0436\u0438 \u0432\u0435\u0434\u043d\u0430\u0433\u0430; \u043d\u043e\u0441\u0438\u0442\u0435\u043b\u044f\u0442 \u0441\u0435 \u0441\u043c\u0435\u043d\u044f \u0432 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0430\u0442\u0430 \u043f\u0430\u0443\u0437\u0430."

    const-string v3, "The pause stops the output, the impulse starts sharp at the strength on the right (or by your rise). Everything applies at once; the carrier changes in the next pause."

    .line 545
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 534
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 509
    :cond_202
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveSt:[Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    aget-object v5, v0, v2

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->hz(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->steady(I)Z

    move-result v0

    if-eqz v0, :cond_23a

    const-string v0, "\u2248 "

    :goto_217
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->name(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u00b7 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 510
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->width(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 509
    invoke-virtual {v5, v6, v0}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_55

    :cond_23a
    const-string v0, "\u25c6 "

    goto :goto_217

    .line 513
    :cond_23d
    const-string v0, "\u0441\u0435\u043a\u0443\u043d\u0434\u0438"

    const-string v6, "seconds"

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_86

    :cond_247
    move v0, v2

    .line 518
    goto/16 :goto_106

    .line 523
    :cond_24a
    aget v0, v3, v2

    if-ne v0, v10, :cond_258

    const-string v0, "\u041f\u0410\u0423\u0417\u0410 "

    const-string v6, "PAUSE "

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_127

    .line 524
    :cond_258
    aget v0, v3, v2

    if-nez v0, :cond_266

    const-string v0, "\u041d\u0410\u0420\u0410\u0421\u0422\u0412\u0410\u041d\u0415 "

    const-string v6, "RISE "

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_127

    :cond_266
    const-string v0, "\u0421\u041f\u0410\u0414\u0410\u041d\u0415 "

    const-string v6, "FALL "

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_127

    .line 527
    :cond_270
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto/16 :goto_165

    .line 529
    :cond_274
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->phaseText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0418\u043c\u043f\u0443\u043b\u0441 "

    const-string v3, "Impulse "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v2, v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->onMs:I

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->secs(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u0441 \u00b7 \u043f\u0430\u0443\u0437\u0430 "

    const-string v3, " s \u00b7 pause "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v2, v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->offMs:I

    .line 530
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->secs(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u0441"

    const-string v3, " s"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 529
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->phaseText:Landroid/widget/TextView;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_168

    .line 536
    :cond_2c7
    const-string v0, ""

    goto/16 :goto_1d7

    .line 541
    :cond_2cb
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->steady(I)Z

    move-result v0

    if-eqz v0, :cond_2db

    .line 542
    const-string v0, "\u2248 \u041f\u043e\u0441\u0442\u043e\u044f\u043d\u0435\u043d \u043d\u043e\u0441\u0438\u0442\u0435\u043b \u2014 \u0446\u0438\u043a\u044a\u043b\u044a\u0442 \u0435 \u0438\u0437\u0446\u044f\u043b\u043e \u0442\u0432\u043e\u0439. "

    const-string v3, "\u2248 Steady carrier \u2014 the cycle is all yours. "

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1e9

    .line 543
    :cond_2db
    const-string v0, "\u25c6 \u0422\u0440\u044a\u0433\u0432\u0430 \u0440\u044f\u0437\u043a\u043e, \u043d\u043e \u0438\u043c\u0430 \u0441\u0432\u043e\u0438 \u043f\u0430\u043a\u0435\u0442\u0438 \u2014 \u0442\u0435 \u0432\u044a\u0440\u0432\u044f\u0442 \u0432 \u0438\u043c\u043f\u0443\u043b\u0441\u0430. "

    const-string v3, "\u25c6 Starts sharp but has its own bursts \u2014 they run inside the impulse. "

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1e9
.end method

.method renderSteps()V
    .registers 11

    .prologue
    const v9, -0x587406

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 951
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->stepRow:Landroid/widget/LinearLayout;

    if-nez v0, :cond_a

    .line 990
    :goto_9
    return-void

    .line 954
    :cond_a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->step()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    move-result-object v5

    .line 955
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->stepRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v1, v2

    .line 956
    :goto_14
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_c5

    .line 957
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->steps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    .line 958
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u00b7 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->mode:I

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v8

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->name(IZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->mode:I

    .line 959
    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->hz(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->onMs:I

    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->secs(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u0441 / "

    const-string v8, " s / "

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->offMs:I

    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->secs(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u0441 \u00b7 \u0441\u0438\u043b\u0430 "

    const-string v8, " s \u00b7 level "

    .line 960
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->hi:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u00d7 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->reps:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->stepSel:I

    if-ne v1, v0, :cond_c3

    move v0, v3

    .line 958
    :goto_a6
    invoke-static {v4, v6, v0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 961
    const/high16 v4, 0x41480000    # 12.5f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 962
    new-instance v4, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StepPick;

    invoke-direct {v4, p0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StepPick;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;I)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 963
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->stepRow:Landroid/widget/LinearLayout;

    invoke-static {v4, v6, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 956
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_14

    :cond_c3
    move v0, v2

    .line 960
    goto :goto_a6

    .line 965
    :cond_c5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->carrierRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v4, v2

    .line 966
    :goto_cb
    const/4 v0, 0x2

    if-ge v4, v0, :cond_101

    move v1, v2

    .line 967
    :goto_cf
    const/16 v0, 0x1a

    if-ge v1, v0, :cond_fd

    .line 968
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->steady(I)Z

    move-result v6

    if-nez v4, :cond_e0

    move v0, v3

    :goto_da
    if-eq v6, v0, :cond_e2

    .line 967
    :goto_dc
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_cf

    :cond_e0
    move v0, v2

    .line 968
    goto :goto_da

    .line 971
    :cond_e2
    iget v0, v5, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->mode:I

    if-ne v1, v0, :cond_fb

    move v0, v3

    :goto_e7
    invoke-virtual {p0, v1, v0, v9}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->moduleChip(IZI)Landroid/widget/TextView;

    move-result-object v0

    .line 972
    new-instance v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StepCarrier;

    invoke-direct {v6, p0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StepCarrier;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;I)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 973
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->carrierRow:Landroid/widget/LinearLayout;

    invoke-static {v6, v7, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    goto :goto_dc

    :cond_fb
    move v0, v2

    .line 971
    goto :goto_e7

    .line 966
    :cond_fd
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_cb

    .line 976
    :cond_101
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->stepFields:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 977
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 978
    const-string v1, "\u041d\u0430\u0440\u0430\u0441\u0442\u0432\u0430\u043d\u0435"

    const-string v4, "Rise"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xc

    invoke-virtual {p0, v0, v1, v4, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->addField(Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 979
    const-string v1, "\u0418\u043c\u043f\u0443\u043b\u0441"

    const-string v4, "Impulse"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xd

    invoke-virtual {p0, v0, v1, v4, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->addField(Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 980
    const-string v1, "\u0421\u043f\u0430\u0434\u0430\u043d\u0435"

    const-string v4, "Fall"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xe

    invoke-virtual {p0, v0, v1, v4, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->addField(Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 981
    const-string v1, "\u041f\u0430\u0443\u0437\u0430"

    const-string v4, "Pause"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xf

    invoke-virtual {p0, v0, v1, v4, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->addField(Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 982
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->stepFields:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 983
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 984
    const-string v1, "\u0421\u0438\u043b\u0430 \u0432 \u0438\u043c\u043f\u0443\u043b\u0441\u0430"

    const-string v4, "Impulse strength"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xb

    invoke-virtual {p0, v0, v1, v4, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->addField(Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 985
    const-string v1, "\u0421\u0438\u043b\u0430 \u0432 \u043f\u0430\u0443\u0437\u0430\u0442\u0430"

    const-string v2, "Pause strength"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->addField(Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 986
    const-string v1, "\u041f\u043e\u0432\u0442\u043e\u0440\u0435\u043d\u0438\u044f"

    const-string v2, "Repeats"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->addField(Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 987
    const-string v1, "\u041e\u043f\u0440\u0435\u0441\u043d\u044f\u0432\u0430\u043d\u0435"

    const-string v2, "Refresh"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->addField(Landroid/widget/LinearLayout;Ljava/lang/String;IZ)V

    .line 988
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->stepFields:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 989
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->stepSum:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->stepSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9
.end method

.method rotateText()Ljava/lang/String;
    .registers 8

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_11

    .line 1042
    const-string v0, "\u0418\u0437\u0431\u0435\u0440\u0438 2 \u0438\u043b\u0438 \u043f\u043e\u0432\u0435\u0447\u0435 \u043c\u043e\u0434\u0443\u043b\u0430: \u0432\u0441\u0435\u043a\u0438 \u043f\u043e\u0435\u043c\u0430 \u0441\u043b\u0435\u0434 \u043f\u0430\u0443\u0437\u0430\u0442\u0430 (\u0430\u043f\u0430\u0440\u0430\u0442\u0447\u0435\u0442\u043e \u0441\u043c\u0435\u043d\u044f \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u0441\u0430\u043c\u043e \u0431\u0435\u0437 \u0442\u043e\u043a). \u0415\u0434\u0438\u043d \u0438\u043b\u0438 \u043d\u0438\u0442\u043e \u0435\u0434\u0438\u043d \u2014 \u043c\u043e\u0434\u0443\u043b\u044a\u0442 \u043e\u0442 \u201e\u041c\u043e\u0434\u0443\u043b\u0438\u201c \u043e\u0441\u0442\u0430\u0432\u0430."

    const-string v1, "Pick 2 or more modules: each takes over after the pause (the unit changes program only without output). One or none \u2014 the module from \"Modules\" stays."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1054
    :goto_10
    return-object v0

    .line 1047
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1048
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->rotate:[I

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1c
    if-ge v0, v3, :cond_47

    aget v4, v2, v0

    .line 1049
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2b

    .line 1050
    const-string v5, " \u2192 "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    :cond_2b
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoModes;->hz(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1048
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 1054
    :cond_47
    const-string v0, " \u2192 \u2026"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method sendRaw(Landroid/widget/EditText;)V
    .registers 6

    .prologue
    .line 1658
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v1

    .line 1659
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1660
    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1d

    .line 1668
    :cond_1c
    :goto_1c
    return-void

    .line 1663
    :cond_1d
    const-string v2, "AT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 1664
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AT+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1666
    :cond_38
    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->raw(Ljava/lang/String;)V

    .line 1667
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c
.end method

.method setTab(I)V
    .registers 7

    .prologue
    .line 358
    iput p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tab:I

    .line 359
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tab"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 360
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 361
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u041f\u0443\u043b\u0442"

    const-string v3, "Panel"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u041c\u043e\u0434\u0443\u043b\u0438"

    const-string v3, "Modules"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u0418\u043c\u043f\u0443\u043b\u0441"

    const-string v3, "Impulse"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u0418\u0437\u0441\u043b\u0435\u0434\u0432\u0430\u043d\u0435"

    const-string v3, "Explore"

    .line 362
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 363
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabHolder:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    iget v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tab:I

    new-instance v4, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tab;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tab;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V

    invoke-static {v2, v0, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 364
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fillTab()V

    .line 365
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    .line 366
    return-void
.end method

.method sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;
    .registers 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->link:Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoLink;->shell:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method show()V
    .registers 13

    .prologue
    const/4 v11, 0x4

    const/4 v10, -0x2

    const/high16 v9, 0x42600000    # 56.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 275
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 276
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v1, "Mastogo"

    const-string v2, "TENS / EMS \u0430\u043f\u0430\u0440\u0430\u0442\u0447\u0435 H-024B \u2014 \u043e\u0442\u0434\u0435\u043b\u043d\u043e \u043e\u0442 \u043a\u043e\u0441\u0442\u044e\u043c\u0430"

    const-string v3, "H-024B TENS / EMS unit \u2014 apart from the suit"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x500

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 278
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_5d

    .line 280
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 281
    const/high16 v2, 0x44a00000    # 1280.0f

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v2

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    const v4, 0x3f75c28f    # 0.96f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    const v3, 0x3f70a3d7    # 0.94f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 282
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 283
    const v2, 0x3ee66666    # 0.45f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 284
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 286
    :cond_5d
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Info;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Info;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 291
    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "\u041f\u0443\u043b\u0442"

    const-string v4, "Panel"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x1

    const-string v4, "\u041c\u043e\u0434\u0443\u043b\u0438"

    const-string v5, "Modules"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "\u0418\u043c\u043f\u0443\u043b\u0441"

    const-string v5, "Impulse"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "\u0418\u0437\u0441\u043b\u0435\u0434\u0432\u0430\u043d\u0435"

    const-string v5, "Explore"

    .line 292
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 293
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabHolder:Landroid/widget/LinearLayout;

    .line 294
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabHolder:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    iget v5, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tab:I

    new-instance v6, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tab;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tab;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V

    invoke-static {v4, v2, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 295
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    .line 297
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/16 v4, 0xe

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const v3, 0x3faccccd    # 1.35f

    invoke-direct {v2, v7, v10, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->unitCard()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 300
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 301
    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 302
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v2, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v2, v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hint:Landroid/widget/TextView;

    .line 306
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hint:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 307
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hint:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    invoke-direct {v2, v7, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v1, ""

    invoke-static {v0, v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->go:Landroid/widget/TextView;

    .line 309
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->go:Landroid/widget/TextView;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Go;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Go;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x43820000    # 260.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v1

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 311
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 312
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->go:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fillTab()V

    .line 315
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    .line 316
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Dismissed;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Dismissed;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 317
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 318
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tick;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tick;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 319
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StartScan;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$StartScan;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 320
    return-void
.end method

.method startScan()V
    .registers 3

    .prologue
    .line 1684
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->closed:Z

    if-eqz v0, :cond_5

    .line 1692
    :cond_4
    :goto_4
    return-void

    .line 1687
    :cond_5
    new-instance v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan$Listener;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;

    .line 1688
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->scan:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScan;->start()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1689
    const-string v0, "Bluetooth \u0435 \u0438\u0437\u043a\u043b\u044e\u0447\u0435\u043d."

    const-string v1, "Bluetooth is off."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hintText:Ljava/lang/String;

    .line 1690
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    goto :goto_4
.end method

.method step()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;
    .registers 4

    .prologue
    .line 915
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->stepSel:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->stepSel:I

    .line 916
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->steps:Ljava/util/List;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->stepSel:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    return-object v0
.end method

.method step(I)V
    .registers 7

    .prologue
    const/16 v4, 0x19

    .line 1528
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v0

    .line 1529
    if-nez v0, :cond_9

    .line 1562
    :goto_8
    return-void

    .line 1532
    :cond_9
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hintText:Ljava/lang/String;

    .line 1533
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveRun:Z

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    move-result-object v1

    if-nez v1, :cond_22

    :cond_16
    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tab:I

    if-nez v1, :cond_1e

    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-eqz v1, :cond_22

    :cond_1e
    iget v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->hitArmed:I

    if-ltz v1, :cond_54

    .line 1534
    :cond_22
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v2, v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    add-int/2addr v3, p1

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    .line 1535
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->safe()V

    .line 1536
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveChanged()V

    .line 1537
    iget v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->hitArmed:I

    if-ltz v1, :cond_4a

    .line 1538
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->setHitLevel(I)V

    .line 1540
    :cond_4a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->renderPult()V

    .line 1541
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->renderHit()V

    .line 1561
    :cond_50
    :goto_50
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    goto :goto_8

    .line 1542
    :cond_54
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    move-result-object v1

    if-eqz v1, :cond_8b

    .line 1543
    if-lez p1, :cond_62

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    if-lt v0, v4, :cond_6a

    :cond_62
    if-gez p1, :cond_78

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    if-lez v0, :cond_78

    .line 1544
    :cond_6a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    .line 1545
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    .line 1547
    :cond_78
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->safe()V

    .line 1548
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->modChanged()V

    .line 1549
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tab:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_50

    .line 1550
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tabBody:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->refreshFields(Landroid/view/ViewGroup;)V

    goto :goto_50

    .line 1553
    :cond_8b
    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-nez v1, :cond_b3

    .line 1554
    const/4 v0, 0x1

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->startLevel:I

    add-int/2addr v1, p1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->startLevel:I

    .line 1555
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "start_level"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->startLevel:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1556
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    goto/16 :goto_8

    .line 1559
    :cond_b3
    const/4 v1, 0x0

    iget v2, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->level:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->setLevel(I)V

    goto :goto_50
.end method

.method stepAdd(Z)V
    .registers 5

    .prologue
    .line 1002
    if-eqz p1, :cond_34

    .line 1003
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_f

    .line 1015
    :goto_e
    return-void

    .line 1006
    :cond_f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->steps:Ljava/util/List;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->stepSel:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->step()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->copy()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1007
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->stepSel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->stepSel:I

    .line 1012
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->safe()V

    .line 1013
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->modChanged()V

    .line 1014
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->renderSteps()V

    goto :goto_e

    .line 1008
    :cond_34
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_28

    .line 1009
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->steps:Ljava/util/List;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->stepSel:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1010
    const/4 v0, 0x0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->stepSel:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->stepSel:I

    goto :goto_28
.end method

.method stepCarrier(I)V
    .registers 3

    .prologue
    .line 1023
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->step()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;

    move-result-object v0

    iput p1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Step;->mode:I

    .line 1024
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->safe()V

    .line 1025
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->modChanged()V

    .line 1026
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->renderSteps()V

    .line 1027
    return-void
.end method

.method stepPick(I)V
    .registers 2

    .prologue
    .line 1018
    iput p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->stepSel:I

    .line 1019
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->renderSteps()V

    .line 1020
    return-void
.end method

.method stepSummary()Ljava/lang/String;
    .registers 5

    .prologue
    .line 993
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    .line 994
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0426\u0435\u043b\u0438\u044f\u0442 \u0446\u0438\u043a\u044a\u043b: "

    const-string v3, "Whole cycle: "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->secs(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u0441. \u0421\u043c\u044f\u043d\u0430 \u043d\u0430 \u043d\u043e\u0441\u0438\u0442\u0435\u043b \u0441\u0442\u0430\u0432\u0430 \u0432 \u043f\u0430\u0443\u0437\u0430\u0442\u0430 \u043f\u0440\u0435\u0434\u0438 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0430\u0442\u0430 \u0441\u0442\u044a\u043f\u043a\u0430 (\u043f\u043e\u043d\u0435 0.5 \u0441). \u041d\u043e\u0441\u0438\u0442\u0435\u043b \u0431\u0435\u0437 \u2248 \u0434\u043e\u0431\u0430\u0432\u044f \u0441\u0432\u043e\u0438\u0442\u0435 \u043f\u0430\u043a\u0435\u0442\u0438 \u0438 \u043f\u0430\u0443\u0437\u0438 \u0432\u044a\u0440\u0445\u0443 \u0442\u0432\u043e\u044f \u0446\u0438\u043a\u044a\u043b. \u0421\u0438\u043b\u0430\u0442\u0430 \u0441\u0435 \u043a\u0430\u0447\u0432\u0430 \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e \u0441 3 \u043d\u0438\u0432\u0430 \u043d\u0430 \u043e\u043f\u0440\u0435\u0441\u043d\u044f\u0432\u0430\u043d\u0435."

    const-string v2, " s. A carrier changes in the pause before the next step (at least 0.5 s). A carrier without \u2248 adds its own bursts and pauses on top of your cycle. Strength rises at most 3 levels per refresh."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method tick()V
    .registers 5

    .prologue
    .line 1671
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->closed:Z

    if-eqz v0, :cond_5

    .line 1679
    :goto_4
    return-void

    .line 1674
    :cond_5
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v0

    .line 1675
    if-eqz v0, :cond_16

    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->env:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;

    if-eqz v1, :cond_16

    .line 1676
    :cond_13
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    .line 1678
    :cond_16
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->main:Landroid/os/Handler;

    new-instance v3, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tick;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tick;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tab:I

    if-nez v1, :cond_2d

    if-eqz v0, :cond_2d

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-eqz v0, :cond_2d

    const-wide/16 v0, 0xc8

    :goto_29
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_2d
    const-wide/16 v0, 0x1f4

    goto :goto_29
.end method

.method tiltOff()V
    .registers 3

    .prologue
    .line 728
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tilt:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tilt;

    if-eqz v0, :cond_18

    .line 729
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 730
    if-eqz v0, :cond_15

    .line 731
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tilt:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tilt;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 733
    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tilt:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tilt;

    .line 735
    :cond_18
    return-void
.end method

.method tiltToggle(Z)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 705
    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tiltOn:Z

    .line 706
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tiltZero:F

    .line 707
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tiltHi:I

    .line 708
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 709
    if-eqz p1, :cond_49

    .line 710
    if-eqz v0, :cond_32

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 711
    :goto_1c
    if-nez v1, :cond_34

    .line 712
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tiltOn:Z

    .line 713
    const-string v0, "\u0422\u0430\u0431\u043b\u0435\u0442\u044a\u0442 \u043d\u044f\u043c\u0430 \u0441\u0435\u043d\u0437\u043e\u0440 \u0437\u0430 \u043d\u0430\u043a\u043b\u043e\u043d."

    const-string v1, "The tablet has no tilt sensor."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hintText:Ljava/lang/String;

    .line 714
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fillTab()V

    .line 715
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    .line 725
    :goto_31
    return-void

    .line 710
    :cond_32
    const/4 v1, 0x0

    goto :goto_1c

    .line 718
    :cond_34
    new-instance v2, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tilt;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tilt;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tilt:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tilt;

    .line 719
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tilt:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tilt;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->main:Landroid/os/Handler;

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 723
    :goto_42
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveChanged()V

    .line 724
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->render()V

    goto :goto_31

    .line 721
    :cond_49
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->tiltOff()V

    goto :goto_42
.end method

.method unitCard()Landroid/widget/LinearLayout;
    .registers 11

    .prologue
    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/high16 v7, 0x41500000    # 13.0f

    const/4 v6, 0x0

    .line 323
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 324
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v1

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 325
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 326
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 327
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v3, "MASTOGO H-024B"

    const/high16 v4, 0x41880000    # 17.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->unitName:Landroid/widget/TextView;

    .line 328
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->unitName:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->linkBadge:Landroid/widget/TextView;

    .line 330
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->linkBadge:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 331
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 333
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 334
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v2, v3, v7, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->battery:Landroid/widget/TextView;

    .line 335
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v2, v3, v7, v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->contact:Landroid/widget/TextView;

    .line 336
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->battery:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->contact:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 338
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v2, "0"

    const-string v3, "\u0441\u0438\u043b\u0430 \u043e\u0442 25"

    const-string v4, "strength of 25"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x42600000    # 56.0f

    new-instance v5, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Step;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Step;-><init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->level:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 341
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->level:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xe

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 344
    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 345
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v3, "\u2014"

    const/high16 v4, 0x42080000    # 34.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v4, v5, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->clock:Landroid/widget/TextView;

    .line 346
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v3, ""

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v2, v3, v7, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->clockLabel:Landroid/widget/TextView;

    .line 347
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->clockLabel:Landroid/widget/TextView;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v3

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->dp(F)I

    move-result v4

    invoke-virtual {v2, v3, v6, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 348
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->clock:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 349
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->clockLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 350
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const-string v2, ""

    const/high16 v3, 0x41480000    # 12.5f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {v1, v2, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->facts:Landroid/widget/TextView;

    .line 353
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->facts:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->a:Landroid/app/Activity;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    return-object v0
.end method
