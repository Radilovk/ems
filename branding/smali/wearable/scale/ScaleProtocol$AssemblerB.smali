.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;
.super Ljava/lang/Object;
.source "ScaleProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssemblerB"
.end annotation


# instance fields
.field private buf:[B

.field private have:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add([B)[B
    .registers 8

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 271
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;->validB([B)Z

    move-result v1

    if-nez v1, :cond_c

    .line 294
    :cond_b
    :goto_b
    return-object v0

    .line 274
    :cond_c
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 275
    const/4 v2, 0x2

    aget-byte v2, p1, v2

    if-nez v2, :cond_47

    .line 276
    if-gt v1, v5, :cond_1e

    .line 277
    new-array v0, v1, [B

    .line 278
    invoke-static {p1, v4, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b

    .line 281
    :cond_1e
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;->buf:[B

    .line 282
    iput v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;->have:I

    .line 286
    :cond_24
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;->buf:[B

    array-length v1, v1

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;->have:I

    sub-int/2addr v1, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 287
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;->buf:[B

    iget v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;->have:I

    invoke-static {p1, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;->have:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;->have:I

    .line 289
    iget v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;->have:I

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;->buf:[B

    array-length v2, v2

    if-lt v1, v2, :cond_b

    .line 290
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;->buf:[B

    .line 291
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;->buf:[B

    move-object v0, v1

    .line 292
    goto :goto_b

    .line 283
    :cond_47
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$AssemblerB;->buf:[B

    if-nez v1, :cond_24

    goto :goto_b
.end method
