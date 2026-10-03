.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Assembler;
.super Ljava/lang/Object;
.source "ScaleSenssun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Assembler"
.end annotation


# instance fields
.field buf:[B

.field have:I

.field need:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add([B)[B
    .registers 9

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 292
    if-eqz p1, :cond_9

    array-length v0, p1

    if-nez v0, :cond_a

    .line 315
    :cond_9
    :goto_9
    return-object v4

    .line 295
    :cond_a
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->isXs([B)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 296
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->headV11([B)Z

    move-result v0

    if-eqz v0, :cond_24

    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    :goto_1a
    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Assembler;->need:I

    .line 297
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Assembler;->need:I

    const/4 v3, 0x6

    if-ge v0, v3, :cond_29

    .line 298
    iput-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Assembler;->buf:[B

    goto :goto_9

    .line 296
    :cond_24
    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    goto :goto_1a

    .line 301
    :cond_29
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Assembler;->need:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Assembler;->buf:[B

    .line 302
    iput v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Assembler;->have:I

    .line 306
    :cond_31
    array-length v0, p1

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Assembler;->need:I

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Assembler;->have:I

    sub-int/2addr v3, v5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 307
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Assembler;->buf:[B

    iget v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Assembler;->have:I

    invoke-static {p1, v6, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Assembler;->have:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Assembler;->have:I

    .line 309
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Assembler;->have:I

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Assembler;->need:I

    if-lt v0, v3, :cond_9

    .line 312
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Assembler;->buf:[B

    .line 313
    iput-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Assembler;->buf:[B

    .line 314
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->headV11([B)Z

    move-result v0

    .line 315
    if-eqz v0, :cond_70

    move v0, v1

    :goto_58
    array-length v1, v3

    add-int/lit8 v1, v1, -0x2

    invoke-static {v3, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;->sum([BII)I

    move-result v0

    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    if-ne v0, v1, :cond_72

    move-object v0, v3

    :goto_69
    move-object v4, v0

    goto :goto_9

    .line 303
    :cond_6b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Assembler;->buf:[B

    if-nez v0, :cond_31

    goto :goto_9

    :cond_70
    move v0, v2

    .line 315
    goto :goto_58

    :cond_72
    move-object v0, v4

    goto :goto_69
.end method
