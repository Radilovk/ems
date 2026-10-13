.class public final Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;
.super Ljava/lang/Object;
.source "BluetensShell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Io;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Timeout;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$KeepAlive;
    }
.end annotation


# static fields
.field static final BAT:I = 0x2

.field static final CAT:I = 0x5

.field public static final KEEP_ALIVE_MS:J = 0x4e20L

.field public static final MAX_STRENGTH:I = 0x3c

.field static final MD5:I = 0x4

.field public static final NOTICE_ERROR:I = 0x4

.field public static final NOTICE_FULL:I = 0x5

.field public static final NOTICE_LOW:I = 0x2

.field public static final NOTICE_NOLOAD:I = 0x1

.field public static final NOTICE_OFF:I = 0x3

.field public static final NOTICE_STOP:I = 0x6

.field static final OSTO:I = 0x8

.field static final SSTA:I = 0x6

.field static final STAT:I = 0x3

.field static final STR:I = 0x7

.field public static final TIMEOUT_MS:J = 0x1f40L

.field static final VER:I = 0x1


# instance fields
.field public batteryMv:I

.field closed:Z

.field cr:Z

.field cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

.field final ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

.field final io:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Io;

.field keepAliveToken:I

.field final line:Ljava/lang/StringBuilder;

.field final queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;",
            ">;"
        }
    .end annotation
.end field

.field public running:Z

.field public strength:I

.field public tickS:I

.field token:I

.field public uploading:Z

.field public final v2:Z

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Io;Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;Z)V
    .registers 5

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->version:Ljava/lang/String;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->batteryMv:I

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->line:Ljava/lang/StringBuilder;

    .line 70
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->io:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Io;

    .line 71
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    .line 72
    iput-boolean p3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->v2:Z

    .line 73
    return-void
.end method

.method public static ascii(Ljava/lang/String;)[B
    .registers 4

    .prologue
    .line 496
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [B

    .line 497
    const/4 v0, 0x0

    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_14

    .line 498
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 497
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 500
    :cond_14
    return-object v1
.end method

.method public static batteryOf(Ljava/lang/String;Z)I
    .registers 5

    .prologue
    .line 448
    if-nez p1, :cond_d

    const-string v0, "32769:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 449
    const/16 v0, 0x1388

    .line 458
    :goto_c
    return v0

    .line 451
    :cond_d
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 452
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2f

    const-string v1, "mv"

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 454
    const/4 v1, 0x0

    :try_start_23
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_2c} :catch_2e

    move-result v0

    goto :goto_c

    .line 455
    :catch_2e
    move-exception v0

    .line 458
    :cond_2f
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public static md5([B)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 505
    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 507
    array-length v3, v1

    :goto_11
    if-ge v0, v3, :cond_2f

    aget-byte v4, v1, v0

    .line 508
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v6, "%02X"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 510
    :cond_2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_32} :catch_34

    move-result-object v0

    .line 512
    :goto_33
    return-object v0

    .line 511
    :catch_34
    move-exception v0

    .line 512
    const-string v0, ""

    goto :goto_33
.end method

.method public static status(Ljava/lang/String;)I
    .registers 4

    .prologue
    const/high16 v0, -0x80000000

    .line 435
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 436
    if-gtz v1, :cond_b

    .line 442
    :goto_a
    return v0

    .line 440
    :cond_b
    const/4 v2, 0x0

    :try_start_c
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_17} :catch_19

    move-result v0

    goto :goto_a

    .line 441
    :catch_19
    move-exception v1

    goto :goto_a
.end method

.method public static strengthOf(Ljava/lang/String;)I
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, -0x1

    .line 463
    const-string v1, "="

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 464
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_20

    const-string v2, "str"

    aget-object v3, v1, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    aget-object v1, v1, v5

    .line 465
    :goto_1d
    if-nez v1, :cond_28

    .line 471
    :goto_1f
    return v0

    .line 464
    :cond_20
    array-length v2, v1

    if-ne v2, v5, :cond_26

    aget-object v1, v1, v4

    goto :goto_1d

    :cond_26
    const/4 v1, 0x0

    goto :goto_1d

    .line 469
    :cond_28
    :try_start_28
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_2f} :catch_31

    move-result v0

    goto :goto_1f

    .line 470
    :catch_31
    move-exception v1

    goto :goto_1f
.end method

.method public static versionOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 479
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 480
    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v0, v2, :cond_43

    .line 481
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 482
    :goto_21
    const/16 v6, 0x30

    if-lt v2, v6, :cond_32

    const/16 v6, 0x39

    if-gt v2, v6, :cond_32

    .line 483
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 480
    :cond_2c
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 481
    :cond_2f
    const/16 v2, 0x20

    goto :goto_21

    .line 484
    :cond_32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2c

    .line 485
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2c

    .line 489
    :cond_43
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    :goto_4e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_70

    .line 490
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6d

    const-string v0, "."

    :goto_5c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4e

    .line 490
    :cond_6d
    const-string v0, ""

    goto :goto_5c

    .line 492
    :cond_70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method add(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;)V
    .registers 3

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->closed:Z

    if-eqz v0, :cond_5

    .line 170
    :goto_4
    return-void

    .line 168
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->next()V

    goto :goto_4
.end method

.method public battery()V
    .registers 4

    .prologue
    .line 135
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    const/4 v1, 0x2

    const-string v2, ">bat"

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->add(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;)V

    .line 136
    return-void
.end method

.method public batteryPct()I
    .registers 4

    .prologue
    .line 152
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->batteryMv:I

    if-gez v0, :cond_6

    .line 153
    const/4 v0, -0x1

    .line 159
    :goto_5
    return v0

    .line 155
    :cond_6
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->v2:Z

    if-eqz v0, :cond_1c

    .line 156
    const/4 v0, 0x0

    const/16 v1, 0x64

    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->batteryMv:I

    mul-int/lit8 v2, v2, 0x64

    div-int/lit16 v2, v2, 0x1388

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_5

    .line 158
    :cond_1c
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->batteryMv:I

    const/16 v1, 0xed8

    if-gt v0, v1, :cond_26

    const/4 v0, 0x1

    .line 159
    :goto_23
    mul-int/lit8 v0, v0, 0x19

    goto :goto_5

    .line 158
    :cond_26
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->batteryMv:I

    const/16 v1, 0x1130

    if-gt v0, v1, :cond_2e

    const/4 v0, 0x2

    goto :goto_23

    :cond_2e
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->batteryMv:I

    const/16 v1, 0x125c

    if-gt v0, v1, :cond_36

    const/4 v0, 0x3

    goto :goto_23

    :cond_36
    const/4 v0, 0x4

    goto :goto_23
.end method

.method public close()V
    .registers 2

    .prologue
    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->closed:Z

    .line 144
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    .line 146
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->token:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->token:I

    .line 147
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->keepAliveToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->keepAliveToken:I

    .line 148
    return-void
.end method

.method done()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 197
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    .line 198
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    .line 199
    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->token:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->token:I

    .line 200
    if-eqz v0, :cond_1a

    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1a

    .line 201
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->uploading:Z

    .line 202
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    invoke-interface {v0, p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onUpload(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;Z)V

    .line 204
    :cond_1a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->next()V

    .line 205
    return-void
.end method

.method dropStart()V
    .registers 4

    .prologue
    .line 225
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_27

    .line 226
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    .line 227
    const/4 v2, 0x6

    if-eq v0, v2, :cond_1e

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1e

    const/4 v2, 0x7

    if-ne v0, v2, :cond_23

    .line 228
    :cond_1e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 225
    :cond_23
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 231
    :cond_27
    return-void
.end method

.method public hello()V
    .registers 4

    .prologue
    .line 93
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    const/4 v1, 0x1

    const-string v2, ">ver"

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->add(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;)V

    .line 94
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    const/4 v1, 0x2

    const-string v2, ">bat"

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->add(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;)V

    .line 95
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    const/4 v1, 0x3

    const-string v2, ">stat"

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->add(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;)V

    .line 96
    return-void
.end method

.method public idle()Z
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method keepAlive(I)V
    .registers 6

    .prologue
    .line 422
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->keepAliveToken:I

    if-ne p1, v0, :cond_c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->closed:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-nez v0, :cond_d

    .line 429
    :cond_c
    :goto_c
    return-void

    .line 425
    :cond_d
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->idle()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 426
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->battery()V

    .line 428
    :cond_16
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->io:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Io;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$KeepAlive;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$KeepAlive;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;I)V

    const-wide/16 v2, 0x4e20

    invoke-interface {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Io;->later(Ljava/lang/Runnable;J)V

    goto :goto_c
.end method

.method next()V
    .registers 9

    .prologue
    const/4 v6, 0x5

    const/4 v3, 0x1

    .line 173
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->closed:Z

    if-eqz v0, :cond_13

    .line 190
    :cond_12
    :goto_12
    return-void

    .line 176
    :cond_13
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    .line 177
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->token:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->token:I

    .line 178
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_62

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">str "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->send(Ljava/lang/String;)V

    .line 188
    :goto_45
    const-wide/16 v4, 0x1f40

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    if-ne v0, v6, :cond_88

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->content:[B

    array-length v0, v0

    int-to-long v0, v0

    const-wide/16 v6, 0x4

    mul-long/2addr v0, v6

    :goto_56
    add-long/2addr v0, v4

    .line 189
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->io:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Io;

    new-instance v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Timeout;

    invoke-direct {v4, p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Timeout;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;I)V

    invoke-interface {v3, v4, v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Io;->later(Ljava/lang/Runnable;J)V

    goto :goto_12

    .line 180
    :cond_62
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    if-ne v0, v6, :cond_80

    .line 181
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->uploading:Z

    .line 182
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    invoke-interface {v0, p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onUpload(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;Z)V

    .line 183
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->cmd:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->send(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->io:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Io;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->content:[B

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Io;->send([B)V

    goto :goto_45

    .line 186
    :cond_80
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->cmd:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->send(Ljava/lang/String;)V

    goto :goto_45

    .line 188
    :cond_88
    const-wide/16 v0, 0x0

    goto :goto_56
.end method

.method notify(Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 360
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 361
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 362
    const-string v2, "strength"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    array-length v2, v0

    if-le v2, v3, :cond_2b

    .line 364
    const/4 v1, 0x1

    :try_start_16
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 365
    if-ltz v0, :cond_2a

    .line 366
    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    .line 367
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onStrength(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;IZ)V
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_2a} :catch_98

    .line 388
    :cond_2a
    :goto_2a
    return-void

    .line 371
    :cond_2b
    const-string v0, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 372
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->setStopped()V

    .line 373
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onNotice(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;I)V

    goto :goto_2a

    .line 374
    :cond_3d
    const-string v0, "noload"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 375
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    invoke-interface {v0, p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onNotice(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;I)V

    goto :goto_2a

    .line 376
    :cond_4b
    const-string v0, "low"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 377
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->setStopped()V

    .line 378
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onNotice(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;I)V

    goto :goto_2a

    .line 379
    :cond_5d
    const-string v0, "shutdown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    const-string v0, "disconnect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 380
    :cond_6d
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->setStopped()V

    .line 381
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onNotice(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;I)V

    goto :goto_2a

    .line 382
    :cond_77
    const-string v0, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 383
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->setStopped()V

    .line 384
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onNotice(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;I)V

    goto :goto_2a

    .line 385
    :cond_89
    const-string v0, "insufficient"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 386
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onNotice(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;I)V

    goto :goto_2a

    .line 369
    :catch_98
    move-exception v0

    goto :goto_2a
.end method

.method public onBytes([B)V
    .registers 9

    .prologue
    const/16 v6, 0xd

    const/4 v1, 0x0

    .line 236
    if-eqz p1, :cond_9

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->closed:Z

    if-eqz v0, :cond_a

    .line 261
    :cond_9
    return-void

    .line 239
    :cond_a
    array-length v2, p1

    move v0, v1

    :goto_c
    if-ge v0, v2, :cond_9

    aget-byte v3, p1, v0

    .line 240
    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    .line 241
    const/16 v4, 0xa

    if-ne v3, v4, :cond_2e

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cr:Z

    if-eqz v4, :cond_2e

    .line 242
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cr:Z

    .line 243
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->line:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 244
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->line:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 245
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->onLine(Ljava/lang/String;)V

    .line 239
    :cond_2b
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 246
    :cond_2e
    if-ne v3, v6, :cond_3d

    .line 247
    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cr:Z

    if-eqz v3, :cond_39

    .line 248
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->line:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    :cond_39
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cr:Z

    goto :goto_2b

    .line 252
    :cond_3d
    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cr:Z

    if-eqz v4, :cond_48

    .line 253
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->line:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cr:Z

    .line 256
    :cond_48
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->line:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/16 v5, 0x400

    if-ge v4, v5, :cond_2b

    .line 257
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->line:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2b
.end method

.method onLine(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/high16 v3, -0x80000000

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 264
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    .line 357
    :cond_e
    :goto_e
    return-void

    .line 268
    :cond_f
    const-string v1, "NOTIFY "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 269
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->notify(Ljava/lang/String;)V

    goto :goto_e

    .line 272
    :cond_24
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    if-eqz v1, :cond_e

    .line 275
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    packed-switch v1, :pswitch_data_12e

    goto :goto_e

    .line 277
    :pswitch_30
    const-string v1, "v."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_40

    const-string v1, "ver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 278
    :cond_40
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->versionOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->version:Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    invoke-interface {v0, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onInfo(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;)V

    .line 280
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->done()V

    goto :goto_e

    .line 284
    :pswitch_4f
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->v2:Z

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->batteryOf(Ljava/lang/String;Z)I

    move-result v0

    .line 285
    if-ltz v0, :cond_e

    .line 286
    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->batteryMv:I

    .line 287
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    invoke-interface {v0, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onInfo(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;)V

    .line 288
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->done()V

    goto :goto_e

    .line 293
    :pswitch_62
    const-string v1, "tick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_72

    const-string v1, "md5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 294
    :cond_72
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->stat(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->done()V

    goto :goto_e

    .line 299
    :pswitch_79
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    .line 300
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 301
    iget-object v2, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->md5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_be

    .line 302
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">cat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->file:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -l="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->content:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;-><init>(ILjava/lang/String;)V

    .line 303
    iget-object v2, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->file:Ljava/lang/String;

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->file:Ljava/lang/String;

    .line 304
    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->content:[B

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->content:[B

    .line 305
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    invoke-interface {v1, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 307
    :cond_be
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->done()V

    goto/16 :goto_e

    .line 311
    :pswitch_c3
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->status(Ljava/lang/String;)I

    move-result v0

    .line 312
    const/4 v1, 0x3

    if-ne v0, v1, :cond_cf

    .line 313
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->done()V

    goto/16 :goto_e

    .line 314
    :cond_cf
    if-gez v0, :cond_e

    if-eq v0, v3, :cond_e

    .line 315
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->dropStart()V

    .line 316
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    const-string v1, "cat"

    invoke-interface {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onFailed(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->done()V

    goto/16 :goto_e

    .line 322
    :pswitch_e2
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->status(Ljava/lang/String;)I

    move-result v0

    .line 323
    if-eq v0, v3, :cond_e

    .line 324
    if-ltz v0, :cond_102

    .line 325
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    .line 326
    iput v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    .line 327
    iput v5, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->tickS:I

    .line 328
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    invoke-interface {v0, p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onRunning(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;Z)V

    .line 329
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    invoke-interface {v0, p0, v2, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onStrength(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;IZ)V

    .line 330
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->startKeepAlive()V

    .line 335
    :goto_fd
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->done()V

    goto/16 :goto_e

    .line 332
    :cond_102
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->dropStart()V

    .line 333
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    const-string v1, "ssta"

    invoke-interface {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onFailed(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;Ljava/lang/String;)V

    goto :goto_fd

    .line 340
    :pswitch_10d
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strengthOf(Ljava/lang/String;)I

    move-result v0

    .line 341
    if-ltz v0, :cond_e

    .line 342
    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    .line 343
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    invoke-interface {v1, p0, v0, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onStrength(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;IZ)V

    .line 344
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->done()V

    goto/16 :goto_e

    .line 349
    :pswitch_11f
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->status(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_e

    .line 350
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->setStopped()V

    .line 351
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->done()V

    goto/16 :goto_e

    .line 275
    nop

    :pswitch_data_12e
    .packed-switch 0x1
        :pswitch_30
        :pswitch_4f
        :pswitch_62
        :pswitch_79
        :pswitch_c3
        :pswitch_e2
        :pswitch_10d
        :pswitch_11f
    .end packed-switch
.end method

.method send(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 193
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->io:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Io;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ascii(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Io;->send([B)V

    .line 194
    return-void
.end method

.method setStopped()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 391
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->keepAliveToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->keepAliveToken:I

    .line 392
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v0, :cond_12

    .line 393
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    .line 394
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    invoke-interface {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onRunning(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;Z)V

    .line 396
    :cond_12
    return-void
.end method

.method public start(Ljava/lang/String;[B)V
    .registers 7

    .prologue
    .line 100
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">md5 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;-><init>(ILjava/lang/String;)V

    .line 101
    iput-object p1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->file:Ljava/lang/String;

    .line 102
    iput-object p2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->content:[B

    .line 103
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->md5([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->md5:Ljava/lang/String;

    .line 104
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->add(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;)V

    .line 105
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">ssta "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;-><init>(ILjava/lang/String;)V

    .line 106
    iput-object p1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->file:Ljava/lang/String;

    .line 107
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->add(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;)V

    .line 108
    return-void
.end method

.method startKeepAlive()V
    .registers 5

    .prologue
    .line 418
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->io:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Io;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$KeepAlive;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->keepAliveToken:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->keepAliveToken:I

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$KeepAlive;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;I)V

    const-wide/16 v2, 0x4e20

    invoke-interface {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Io;->later(Ljava/lang/Runnable;J)V

    .line 419
    return-void
.end method

.method stat(Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 399
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_9
    if-ge v0, v3, :cond_4e

    aget-object v4, v2, v0

    .line 400
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 401
    array-length v5, v4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1a

    .line 399
    :cond_17
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 404
    :cond_1a
    aget-object v5, v4, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 406
    :try_start_20
    const-string v6, "tick"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 407
    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->tickS:I

    goto :goto_17

    .line 411
    :catch_36
    move-exception v4

    goto :goto_17

    .line 408
    :cond_38
    const-string v6, "str"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 409
    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I
    :try_end_4d
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_4d} :catch_36

    goto :goto_17

    .line 414
    :cond_4e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    invoke-interface {v0, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onInfo(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;)V

    .line 415
    return-void
.end method

.method public stop()V
    .registers 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_2a

    .line 126
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    .line 127
    const/4 v2, 0x7

    if-eq v0, v2, :cond_21

    const/4 v2, 0x6

    if-eq v0, v2, :cond_21

    const/4 v2, 0x4

    if-eq v0, v2, :cond_21

    const/4 v2, 0x5

    if-ne v0, v2, :cond_26

    .line 128
    :cond_21
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 125
    :cond_26
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 131
    :cond_2a
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    const/16 v1, 0x8

    const-string v2, ">osto"

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->add(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;)V

    .line 132
    return-void
.end method

.method public strength(I)V
    .registers 7

    .prologue
    const/4 v4, 0x7

    .line 112
    const/4 v0, 0x1

    const/16 v1, 0x3c

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 113
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    .line 114
    iget v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    if-ne v3, v4, :cond_12

    .line 115
    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->value:I

    .line 122
    :goto_24
    return-void

    .line 119
    :cond_25
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    const-string v2, ">str"

    invoke-direct {v0, v4, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;-><init>(ILjava/lang/String;)V

    .line 120
    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->value:I

    .line 121
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->add(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;)V

    goto :goto_24
.end method

.method timedOut(I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 208
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->token:I

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    if-nez v0, :cond_a

    .line 221
    :cond_9
    :goto_9
    return-void

    .line 211
    :cond_a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    .line 212
    iget v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1c

    .line 213
    iget v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->value:I

    iput v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    .line 214
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    invoke-interface {v1, p0, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onStrength(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;IZ)V

    .line 216
    :cond_1c
    iget v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2b

    iget v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2b

    iget v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2e

    .line 217
    :cond_2b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->dropStart()V

    .line 219
    :cond_2e
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->cmd:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-interface {v1, p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onFailed(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->done()V

    goto :goto_9
.end method
