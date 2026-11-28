.class public final Lcom/isaigu/gymapp/ai/Kws$Detector;
.super Ljava/lang/Object;
.source "Kws.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/Kws;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Detector"
.end annotation


# instance fields
.field at:I

.field final feat:[F

.field fill:I

.field final fr:[F

.field frames:I

.field final im:[F

.field last:F

.field public lastScore:F

.field final lin:[F

.field final m:Lcom/isaigu/gymapp/ai/Kws;

.field final pre:[F

.field final preRing:[F

.field prev:F

.field final re:[F

.field rest:I

.field final ring:[F

.field since:I


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/ai/Kws;)V
    .registers 6

    .prologue
    const/16 v3, 0x680

    const/16 v2, 0x200

    const/16 v1, 0x190

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->pre:[F

    .line 390
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->preRing:[F

    .line 391
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->re:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->im:[F

    .line 392
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->ring:[F

    .line 393
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->lin:[F

    .line 394
    sget v0, Lcom/isaigu/gymapp/ai/Kws;->DIM:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->feat:[F

    .line 395
    const/16 v0, 0x1a

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->fr:[F

    .line 401
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->m:Lcom/isaigu/gymapp/ai/Kws;

    .line 402
    return-void
.end method


# virtual methods
.method public model()Lcom/isaigu/gymapp/ai/Kws;
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->m:Lcom/isaigu/gymapp/ai/Kws;

    return-object v0
.end method

.method public push(S)Z
    .registers 11

    .prologue
    const/16 v4, 0xa0

    const/16 v8, 0x40

    const/16 v7, 0x1a

    const/16 v5, 0x190

    const/4 v1, 0x0

    .line 410
    int-to-float v2, p1

    .line 411
    iget v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->fill:I

    if-nez v0, :cond_2e

    move v0, v2

    .line 412
    :goto_f
    iput v2, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->prev:F

    .line 413
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->preRing:[F

    iget v3, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->at:I

    aput v0, v2, v3

    .line 414
    iget v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->at:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x190

    iput v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->at:I

    .line 415
    iget v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->fill:I

    if-ge v0, v5, :cond_39

    .line 416
    iget v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->fill:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->fill:I

    .line 417
    iget v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->fill:I

    if-ge v0, v5, :cond_37

    .line 451
    :cond_2d
    :goto_2d
    return v1

    .line 411
    :cond_2e
    const v0, 0x3f7851ec    # 0.97f

    iget v3, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->prev:F

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    goto :goto_f

    .line 420
    :cond_37
    iput v4, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->since:I

    .line 422
    :cond_39
    iget v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->since:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->since:I

    if-lt v0, v4, :cond_2d

    .line 425
    iput v1, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->since:I

    move v0, v1

    .line 426
    :goto_44
    if-ge v0, v5, :cond_56

    .line 427
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->pre:[F

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->preRing:[F

    iget v4, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->at:I

    add-int/2addr v4, v0

    rem-int/lit16 v4, v4, 0x190

    aget v3, v3, v4

    aput v3, v2, v0

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 429
    :cond_56
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->pre:[F

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->re:[F

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->im:[F

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->fr:[F

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/Kws;->frame([FI[F[F[FI)V

    .line 430
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->fr:[F

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->ring:[F

    iget v3, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->frames:I

    rem-int/lit8 v3, v3, 0x40

    mul-int/lit8 v3, v3, 0x1a

    invoke-static {v0, v1, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 431
    iget v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->frames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->frames:I

    .line 432
    iget v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->rest:I

    if-lez v0, :cond_7f

    .line 433
    iget v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->rest:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->rest:I

    .line 435
    :cond_7f
    iget v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->frames:I

    if-lt v0, v8, :cond_2d

    iget v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->frames:I

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_2d

    .line 438
    iget v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->frames:I

    rem-int/lit8 v2, v0, 0x40

    move v0, v1

    .line 439
    :goto_8e
    if-ge v0, v8, :cond_a2

    .line 440
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->ring:[F

    add-int v4, v2, v0

    rem-int/lit8 v4, v4, 0x40

    mul-int/lit8 v4, v4, 0x1a

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->lin:[F

    mul-int/lit8 v6, v0, 0x1a

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_8e

    .line 442
    :cond_a2
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->lin:[F

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->feat:[F

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/Kws;->window([FI[F)V

    .line 443
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->m:Lcom/isaigu/gymapp/ai/Kws;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->feat:[F

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/Kws;->score([F)F

    move-result v0

    .line 444
    iput v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->lastScore:F

    .line 445
    iget v2, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->rest:I

    if-nez v2, :cond_ca

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->m:Lcom/isaigu/gymapp/ai/Kws;

    iget v2, v2, Lcom/isaigu/gymapp/ai/Kws;->threshold:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_ca

    iget v2, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->last:F

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->m:Lcom/isaigu/gymapp/ai/Kws;

    iget v3, v3, Lcom/isaigu/gymapp/ai/Kws;->threshold:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_ca

    const/4 v1, 0x1

    .line 446
    :cond_ca
    iput v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->last:F

    .line 447
    if-eqz v1, :cond_2d

    .line 448
    const/16 v0, 0x78

    iput v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->rest:I

    .line 449
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/Kws$Detector;->last:F

    goto/16 :goto_2d
.end method
