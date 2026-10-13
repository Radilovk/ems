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

.field static final FLUSH:I = 0x9

.field static final FLUSH_MS:J = 0x1f4L

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

.field public swapping:Z

.field public tickS:I

.field token:I

.field public uploading:Z

.field public final v2:Z

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Io;Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;Z)V
    .registers 5

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->version:Ljava/lang/String;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->batteryMv:I

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->line:Ljava/lang/StringBuilder;

    .line 73
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->io:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Io;

    .line 74
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    .line 75
    iput-boolean p3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->v2:Z

    .line 76
    return-void
.end method

.method public static ascii(Ljava/lang/String;)[B
    .registers 4

    .prologue
    .line 605
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [B

    .line 606
    const/4 v0, 0x0

    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_14

    .line 607
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 606
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 609
    :cond_14
    return-object v1
.end method

.method public static batteryOf(Ljava/lang/String;Z)I
    .registers 5

    .prologue
    .line 557
    if-nez p1, :cond_d

    const-string v0, "32769:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 558
    const/16 v0, 0x1388

    .line 567
    :goto_c
    return v0

    .line 560
    :cond_d
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 561
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2f

    const-string v1, "mv"

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 563
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

    .line 564
    :catch_2e
    move-exception v0

    .line 567
    :cond_2f
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public static md5([B)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 614
    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 616
    array-length v3, v1

    :goto_11
    if-ge v0, v3, :cond_2f

    aget-byte v4, v1, v0

    .line 617
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

    .line 616
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 619
    :cond_2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_32} :catch_34

    move-result-object v0

    .line 621
    :goto_33
    return-object v0

    .line 620
    :catch_34
    move-exception v0

    .line 621
    const-string v0, ""

    goto :goto_33
.end method

.method public static status(Ljava/lang/String;)I
    .registers 4

    .prologue
    const/high16 v0, -0x80000000

    .line 544
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 545
    if-gtz v1, :cond_b

    .line 551
    :goto_a
    return v0

    .line 549
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

    .line 550
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

    .line 572
    const-string v1, "="

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 573
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

    .line 574
    :goto_1d
    if-nez v1, :cond_28

    .line 580
    :goto_1f
    return v0

    .line 573
    :cond_20
    array-length v2, v1

    if-ne v2, v5, :cond_26

    aget-object v1, v1, v4

    goto :goto_1d

    :cond_26
    const/4 v1, 0x0

    goto :goto_1d

    .line 578
    :cond_28
    :try_start_28
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_2f} :catch_31

    move-result v0

    goto :goto_1f

    .line 579
    :catch_31
    move-exception v1

    goto :goto_1f
.end method

.method public static versionOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 586
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 587
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 588
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 589
    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v0, v2, :cond_43

    .line 590
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 591
    :goto_21
    const/16 v6, 0x30

    if-lt v2, v6, :cond_32

    const/16 v6, 0x39

    if-gt v2, v6, :cond_32

    .line 592
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 589
    :cond_2c
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 590
    :cond_2f
    const/16 v2, 0x20

    goto :goto_21

    .line 593
    :cond_32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2c

    .line 594
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2c

    .line 598
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

    .line 599
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

    .line 598
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4e

    .line 599
    :cond_6d
    const-string v0, ""

    goto :goto_5c

    .line 601
    :cond_70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method add(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;)V
    .registers 3

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->closed:Z

    if-eqz v0, :cond_5

    .line 214
    :goto_4
    return-void

    .line 212
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->next()V

    goto :goto_4
.end method

.method addSwap(Ljava/lang/String;[BIZ)V
    .registers 10

    .prologue
    const/4 v4, 0x1

    .line 137
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">cat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -l="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;-><init>(ILjava/lang/String;)V

    .line 138
    iput-object p1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->file:Ljava/lang/String;

    .line 139
    iput-object p2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->content:[B

    .line 140
    iput-boolean v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->swap:Z

    .line 141
    iput-boolean p4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->retried:Z

    .line 142
    iput p3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->value:I

    .line 143
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->add(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;)V

    .line 144
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

    .line 145
    iput-object p1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->file:Ljava/lang/String;

    .line 146
    iput-boolean v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->swap:Z

    .line 147
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->add(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;)V

    .line 148
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    const/4 v1, 0x7

    const-string v2, ">str"

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;-><init>(ILjava/lang/String;)V

    .line 149
    iput p3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->value:I

    .line 150
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->add(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;)V

    .line 151
    return-void
.end method

.method public battery()V
    .registers 4

    .prologue
    .line 179
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    const/4 v1, 0x2

    const-string v2, ">bat"

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->add(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;)V

    .line 180
    return-void
.end method

.method public batteryPct()I
    .registers 4

    .prologue
    .line 196
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->batteryMv:I

    if-gez v0, :cond_6

    .line 197
    const/4 v0, -0x1

    .line 203
    :goto_5
    return v0

    .line 199
    :cond_6
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->v2:Z

    if-eqz v0, :cond_1c

    .line 200
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

    .line 202
    :cond_1c
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->batteryMv:I

    const/16 v1, 0xed8

    if-gt v0, v1, :cond_26

    const/4 v0, 0x1

    .line 203
    :goto_23
    mul-int/lit8 v0, v0, 0x19

    goto :goto_5

    .line 202
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
    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->closed:Z

    .line 188
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    .line 190
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->token:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->token:I

    .line 191
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->keepAliveToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->keepAliveToken:I

    .line 192
    return-void
.end method

.method done()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 245
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    .line 246
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    .line 247
    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->token:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->token:I

    .line 248
    if-eqz v0, :cond_1a

    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1a

    .line 249
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->uploading:Z

    .line 250
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    invoke-interface {v0, p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onUpload(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;Z)V

    .line 252
    :cond_1a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->next()V

    .line 253
    return-void
.end method

.method dropStart()V
    .registers 4

    .prologue
    .line 309
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_27

    .line 310
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    .line 311
    const/4 v2, 0x6

    if-eq v0, v2, :cond_1e

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1e

    const/4 v2, 0x7

    if-ne v0, v2, :cond_23

    .line 312
    :cond_1e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 309
    :cond_23
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 315
    :cond_27
    return-void
.end method

.method endSwap()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 299
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->swapping:Z

    if-eqz v0, :cond_10

    .line 300
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->swapping:Z

    .line 301
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-nez v0, :cond_10

    .line 302
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    invoke-interface {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onRunning(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;Z)V

    .line 305
    :cond_10
    return-void
.end method

.method public hello()V
    .registers 4

    .prologue
    .line 99
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    const/4 v1, 0x1

    const-string v2, ">ver"

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->add(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;)V

    .line 100
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    const/4 v1, 0x2

    const-string v2, ">bat"

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->add(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;)V

    .line 101
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    const/4 v1, 0x3

    const-string v2, ">stat"

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->add(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;)V

    .line 102
    return-void
.end method

.method public idle()Z
    .registers 2

    .prologue
    .line 183
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
    .line 531
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->keepAliveToken:I

    if-ne p1, v0, :cond_c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->closed:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-nez v0, :cond_d

    .line 538
    :cond_c
    :goto_c
    return-void

    .line 534
    :cond_d
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->idle()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 535
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->battery()V

    .line 537
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

    .line 217
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->closed:Z

    if-eqz v0, :cond_13

    .line 238
    :cond_12
    :goto_12
    return-void

    .line 220
    :cond_13
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    .line 221
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->token:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->token:I

    .line 222
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_62

    .line 223
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

    .line 236
    :goto_45
    const-wide/16 v4, 0x1f40

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    if-ne v0, v6, :cond_a9

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->content:[B

    array-length v0, v0

    int-to-long v0, v0

    const-wide/16 v6, 0x4

    mul-long/2addr v0, v6

    :goto_56
    add-long/2addr v0, v4

    .line 237
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->io:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Io;

    new-instance v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Timeout;

    invoke-direct {v4, p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Timeout;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;I)V

    invoke-interface {v3, v4, v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Io;->later(Ljava/lang/Runnable;J)V

    goto :goto_12

    .line 224
    :cond_62
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    if-ne v0, v6, :cond_80

    .line 225
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->uploading:Z

    .line 226
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    invoke-interface {v0, p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onUpload(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;Z)V

    .line 227
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->cmd:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->send(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->io:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Io;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->content:[B

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Io;->send([B)V

    goto :goto_45

    .line 229
    :cond_80
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_a1

    .line 230
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->io:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Io;

    const-string v1, "\r\n"

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ascii(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Io;->send([B)V

    .line 231
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->io:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Io;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Timeout;

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Timeout;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;I)V

    const-wide/16 v2, 0x1f4

    invoke-interface {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Io;->later(Ljava/lang/Runnable;J)V

    goto/16 :goto_12

    .line 234
    :cond_a1
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->cmd:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->send(Ljava/lang/String;)V

    goto :goto_45

    .line 236
    :cond_a9
    const-wide/16 v0, 0x0

    goto :goto_56
.end method

.method notify(Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 464
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 465
    aget-object v1, v0, v3

    .line 466
    const-string v2, "strength"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    array-length v2, v0

    if-le v2, v4, :cond_2b

    .line 468
    const/4 v1, 0x1

    :try_start_16
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 469
    if-ltz v0, :cond_2a

    .line 470
    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    .line 471
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onStrength(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;IZ)V
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_2a} :catch_9e

    .line 495
    :cond_2a
    :goto_2a
    return-void

    .line 475
    :cond_2b
    const-string v0, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 476
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->setStopped()V

    .line 477
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onNotice(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;I)V

    goto :goto_2a

    .line 478
    :cond_3d
    const-string v0, "noload"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 479
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    invoke-interface {v0, p0, v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onNotice(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;I)V

    goto :goto_2a

    .line 480
    :cond_4b
    const-string v0, "low"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 481
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->swapping:Z

    .line 482
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->setStopped()V

    .line 483
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onNotice(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;I)V

    goto :goto_2a

    .line 484
    :cond_5f
    const-string v0, "shutdown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    const-string v0, "disconnect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 485
    :cond_6f
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->swapping:Z

    .line 486
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->setStopped()V

    .line 487
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onNotice(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;I)V

    goto :goto_2a

    .line 488
    :cond_7b
    const-string v0, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 489
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->swapping:Z

    .line 490
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->setStopped()V

    .line 491
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onNotice(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;I)V

    goto :goto_2a

    .line 492
    :cond_8f
    const-string v0, "insufficient"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 493
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onNotice(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;I)V

    goto :goto_2a

    .line 473
    :catch_9e
    move-exception v0

    goto :goto_2a
.end method

.method public onBytes([B)V
    .registers 9

    .prologue
    const/16 v6, 0xd

    const/4 v1, 0x0

    .line 320
    if-eqz p1, :cond_9

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->closed:Z

    if-eqz v0, :cond_a

    .line 345
    :cond_9
    return-void

    .line 323
    :cond_a
    array-length v2, p1

    move v0, v1

    :goto_c
    if-ge v0, v2, :cond_9

    aget-byte v3, p1, v0

    .line 324
    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    .line 325
    const/16 v4, 0xa

    if-ne v3, v4, :cond_2e

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cr:Z

    if-eqz v4, :cond_2e

    .line 326
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cr:Z

    .line 327
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->line:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 328
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->line:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 329
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->onLine(Ljava/lang/String;)V

    .line 323
    :cond_2b
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 330
    :cond_2e
    if-ne v3, v6, :cond_3d

    .line 331
    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cr:Z

    if-eqz v3, :cond_39

    .line 332
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->line:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 334
    :cond_39
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cr:Z

    goto :goto_2b

    .line 336
    :cond_3d
    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cr:Z

    if-eqz v4, :cond_48

    .line 337
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->line:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cr:Z

    .line 340
    :cond_48
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->line:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/16 v5, 0x400

    if-ge v4, v5, :cond_2b

    .line 341
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

    .line 348
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    .line 461
    :cond_e
    :goto_e
    return-void

    .line 352
    :cond_f
    const-string v1, "NOTIFY "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 353
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->notify(Ljava/lang/String;)V

    goto :goto_e

    .line 356
    :cond_24
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    if-eqz v1, :cond_e

    .line 359
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    packed-switch v1, :pswitch_data_158

    goto :goto_e

    .line 361
    :pswitch_30
    const-string v1, "v."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_40

    const-string v1, "ver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 362
    :cond_40
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->versionOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->version:Ljava/lang/String;

    .line 363
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    invoke-interface {v0, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onInfo(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;)V

    .line 364
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->done()V

    goto :goto_e

    .line 368
    :pswitch_4f
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->v2:Z

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->batteryOf(Ljava/lang/String;Z)I

    move-result v0

    .line 369
    if-ltz v0, :cond_e

    .line 370
    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->batteryMv:I

    .line 371
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    invoke-interface {v0, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onInfo(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;)V

    .line 372
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->done()V

    goto :goto_e

    .line 377
    :pswitch_62
    const-string v1, "tick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_72

    const-string v1, "md5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 378
    :cond_72
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->stat(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->done()V

    goto :goto_e

    .line 383
    :pswitch_79
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    .line 384
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 385
    iget-object v2, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->md5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_be

    .line 386
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

    .line 387
    iget-object v2, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->file:Ljava/lang/String;

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->file:Ljava/lang/String;

    .line 388
    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->content:[B

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->content:[B

    .line 389
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    invoke-interface {v1, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 391
    :cond_be
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->done()V

    goto/16 :goto_e

    .line 395
    :pswitch_c3
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->status(Ljava/lang/String;)I

    move-result v0

    .line 396
    const/4 v1, 0x3

    if-ne v0, v1, :cond_cf

    .line 397
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->done()V

    goto/16 :goto_e

    .line 398
    :cond_cf
    if-gez v0, :cond_e

    if-eq v0, v3, :cond_e

    .line 399
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    .line 400
    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->swap:Z

    if-eqz v1, :cond_e5

    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->retried:Z

    if-nez v1, :cond_e5

    .line 403
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->retrySwap(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;)V

    .line 409
    :goto_e0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->done()V

    goto/16 :goto_e

    .line 405
    :cond_e5
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->dropStart()V

    .line 406
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->endSwap()V

    .line 407
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    const-string v1, "cat"

    invoke-interface {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onFailed(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;Ljava/lang/String;)V

    goto :goto_e0

    .line 414
    :pswitch_f3
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->status(Ljava/lang/String;)I

    move-result v0

    .line 415
    if-eq v0, v3, :cond_e

    .line 416
    if-ltz v0, :cond_125

    .line 417
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    .line 418
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    .line 419
    iput v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    .line 420
    iput v5, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->tickS:I

    .line 421
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->swap:Z

    if-eqz v1, :cond_11a

    .line 422
    iput-boolean v5, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->swapping:Z

    .line 423
    if-nez v0, :cond_112

    .line 424
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    invoke-interface {v0, p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onRunning(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;Z)V

    .line 430
    :cond_112
    :goto_112
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->startKeepAlive()V

    .line 436
    :goto_115
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->done()V

    goto/16 :goto_e

    .line 427
    :cond_11a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    invoke-interface {v0, p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onRunning(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;Z)V

    .line 428
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    invoke-interface {v0, p0, v2, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onStrength(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;IZ)V

    goto :goto_112

    .line 432
    :cond_125
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->dropStart()V

    .line 433
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->endSwap()V

    .line 434
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    const-string v1, "ssta"

    invoke-interface {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onFailed(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;Ljava/lang/String;)V

    goto :goto_115

    .line 441
    :pswitch_133
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strengthOf(Ljava/lang/String;)I

    move-result v0

    .line 442
    if-ltz v0, :cond_e

    .line 443
    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    .line 444
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    invoke-interface {v1, p0, v0, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onStrength(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;IZ)V

    .line 445
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->done()V

    goto/16 :goto_e

    .line 450
    :pswitch_145
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->done()V

    goto/16 :goto_e

    .line 453
    :pswitch_14a
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->status(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_e

    .line 454
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->setStopped()V

    .line 455
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->done()V

    goto/16 :goto_e

    .line 359
    :pswitch_data_158
    .packed-switch 0x1
        :pswitch_30
        :pswitch_4f
        :pswitch_62
        :pswitch_79
        :pswitch_c3
        :pswitch_f3
        :pswitch_133
        :pswitch_14a
        :pswitch_145
    .end packed-switch
.end method

.method retrySwap(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 277
    const/4 v1, 0x0

    .line 278
    iget v2, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->value:I

    .line 279
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_d
    if-ltz v3, :cond_2e

    .line 280
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    .line 281
    iget v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_23

    iget-boolean v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->swap:Z

    if-eqz v4, :cond_23

    if-nez v1, :cond_23

    move-object v1, v0

    .line 284
    :cond_23
    iget v4, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_5a

    .line 285
    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->value:I

    .line 279
    :goto_2a
    add-int/lit8 v3, v3, -0x1

    move v2, v0

    goto :goto_d

    .line 288
    :cond_2e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->dropStart()V

    .line 289
    if-eqz v1, :cond_58

    .line 292
    :goto_33
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    new-instance v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    const/16 v4, 0x8

    const-string v5, ">osto"

    invoke-direct {v3, v4, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v6, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 293
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    new-instance v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    const/16 v4, 0x9

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v6, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 294
    iget-object v0, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->file:Ljava/lang/String;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->content:[B

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->addSwap(Ljava/lang/String;[BIZ)V

    .line 295
    return-void

    :cond_58
    move-object v1, p1

    goto :goto_33

    :cond_5a
    move v0, v2

    goto :goto_2a
.end method

.method send(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 241
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

    .line 242
    return-void
.end method

.method setStopped()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 498
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->keepAliveToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->keepAliveToken:I

    .line 499
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    if-eqz v0, :cond_16

    .line 500
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->running:Z

    .line 501
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->swapping:Z

    if-nez v0, :cond_16

    .line 502
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    invoke-interface {v0, p0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onRunning(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;Z)V

    .line 505
    :cond_16
    return-void
.end method

.method public start(Ljava/lang/String;[B)V
    .registers 7

    .prologue
    .line 106
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

    .line 107
    iput-object p1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->file:Ljava/lang/String;

    .line 108
    iput-object p2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->content:[B

    .line 109
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->md5([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->md5:Ljava/lang/String;

    .line 110
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->add(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;)V

    .line 111
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

    .line 112
    iput-object p1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->file:Ljava/lang/String;

    .line 113
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->add(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;)V

    .line 114
    return-void
.end method

.method startKeepAlive()V
    .registers 5

    .prologue
    .line 527
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->io:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Io;

    new-instance v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$KeepAlive;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->keepAliveToken:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->keepAliveToken:I

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$KeepAlive;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;I)V

    const-wide/16 v2, 0x4e20

    invoke-interface {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Io;->later(Ljava/lang/Runnable;J)V

    .line 528
    return-void
.end method

.method stat(Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 508
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_9
    if-ge v0, v3, :cond_4e

    aget-object v4, v2, v0

    .line 509
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 510
    array-length v5, v4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1a

    .line 508
    :cond_17
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 513
    :cond_1a
    aget-object v5, v4, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 515
    :try_start_20
    const-string v6, "tick"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 516
    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->tickS:I

    goto :goto_17

    .line 520
    :catch_36
    move-exception v4

    goto :goto_17

    .line 517
    :cond_38
    const-string v6, "str"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 518
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

    .line 523
    :cond_4e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    invoke-interface {v0, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onInfo(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;)V

    .line 524
    return-void
.end method

.method public stop()V
    .registers 4

    .prologue
    .line 168
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_2a

    .line 169
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    .line 170
    const/4 v2, 0x7

    if-eq v0, v2, :cond_21

    const/4 v2, 0x6

    if-eq v0, v2, :cond_21

    const/4 v2, 0x4

    if-eq v0, v2, :cond_21

    const/4 v2, 0x5

    if-ne v0, v2, :cond_26

    .line 171
    :cond_21
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 168
    :cond_26
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 174
    :cond_2a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->swapping:Z

    .line 175
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    const/16 v1, 0x8

    const-string v2, ">osto"

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->add(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;)V

    .line 176
    return-void
.end method

.method public strength(I)V
    .registers 7

    .prologue
    const/4 v4, 0x7

    .line 155
    const/4 v0, 0x1

    const/16 v1, 0x3c

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 156
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

    .line 157
    iget v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    if-ne v3, v4, :cond_12

    .line 158
    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->value:I

    .line 165
    :goto_24
    return-void

    .line 162
    :cond_25
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    const-string v2, ">str"

    invoke-direct {v0, v4, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;-><init>(ILjava/lang/String;)V

    .line 163
    iput v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->value:I

    .line 164
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->add(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;)V

    goto :goto_24
.end method

.method public swap(Ljava/lang/String;[B)V
    .registers 10

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x1

    .line 122
    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    .line 123
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_d
    if-ltz v2, :cond_39

    .line 124
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    .line 125
    iget v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    if-ne v3, v6, :cond_1d

    .line 126
    iget v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->value:I

    .line 128
    :cond_1d
    iget v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    if-eq v3, v6, :cond_30

    iget v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_30

    iget v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_30

    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_35

    .line 129
    :cond_30
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->queue:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 123
    :cond_35
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_d

    .line 132
    :cond_39
    iput-boolean v5, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->swapping:Z

    .line 133
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->addSwap(Ljava/lang/String;[BIZ)V

    .line 134
    return-void
.end method

.method timedOut(I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 256
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->token:I

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    if-nez v0, :cond_a

    .line 274
    :cond_9
    :goto_9
    return-void

    .line 259
    :cond_a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->cur:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;

    .line 260
    iget v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_16

    .line 261
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->done()V

    goto :goto_9

    .line 264
    :cond_16
    iget v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_26

    .line 265
    iget v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->value:I

    iput v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    .line 266
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->ev:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->strength:I

    invoke-interface {v1, p0, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Events;->onStrength(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;IZ)V

    .line 268
    :cond_26
    iget v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_35

    iget v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_35

    iget v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3b

    .line 269
    :cond_35
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->dropStart()V

    .line 270
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->endSwap()V

    .line 272
    :cond_3b
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

    .line 273
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->done()V

    goto :goto_9
.end method
