.class public final Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;
.super Ljava/lang/Object;
.source "MastogoShell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mod"
.end annotation


# static fields
.field public static final PULSE:I = 0x1

.field public static final RAMP:I = 0x2

.field public static final RANDOM:I = 0x4

.field public static final TRIANGLE:I = 0x3

.field public static final WAVE:I


# instance fields
.field public duty:I

.field public hi:I

.field public lo:I

.field public periodMs:I

.field public shape:I

.field public stepMs:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    .line 442
    const/4 v0, 0x2

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    .line 444
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    .line 446
    const/16 v0, 0x32

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->duty:I

    .line 448
    const/16 v0, 0xc8

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->stepMs:I

    return-void
.end method

.method public static decode(Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;
    .registers 4

    .prologue
    .line 474
    new-instance v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;-><init>()V

    .line 476
    :try_start_5
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 477
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    .line 478
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    .line 479
    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    .line 480
    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    .line 481
    const/4 v2, 0x4

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->duty:I

    .line 482
    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->stepMs:I
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_41} :catch_45

    .line 486
    :goto_41
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->safe()V

    .line 487
    return-object v0

    .line 483
    :catch_45
    move-exception v0

    .line 484
    new-instance v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;-><init>()V

    goto :goto_41
.end method


# virtual methods
.method public copy()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;
    .registers 3

    .prologue
    .line 451
    new-instance v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;-><init>()V

    .line 452
    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    .line 453
    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    .line 454
    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    .line 455
    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    .line 456
    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->duty:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->duty:I

    .line 457
    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->stepMs:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->stepMs:I

    .line 458
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .registers 3

    .prologue
    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->shape:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->duty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->stepMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public safe()V
    .registers 4

    .prologue
    const/16 v2, 0x19

    .line 462
    const/4 v0, 0x0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    .line 463
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->lo:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->hi:I

    .line 464
    const/16 v0, 0xc8

    const v1, 0x1d4c0

    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    .line 465
    const/4 v0, 0x5

    const/16 v1, 0x5f

    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->duty:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->duty:I

    .line 466
    const/16 v0, 0x64

    const/16 v1, 0x7d0

    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->stepMs:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->stepMs:I

    .line 467
    return-void
.end method
