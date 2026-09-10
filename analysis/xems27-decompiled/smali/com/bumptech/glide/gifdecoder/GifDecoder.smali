.class public Lcom/bumptech/glide/gifdecoder/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
    }
.end annotation


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final DISPOSAL_BACKGROUND:I = 0x2

.field private static final DISPOSAL_NONE:I = 0x1

.field private static final DISPOSAL_PREVIOUS:I = 0x3

.field private static final DISPOSAL_UNSPECIFIED:I = 0x0

.field private static final INITIAL_FRAME_POINTER:I = -0x1

.field private static final MAX_STACK_SIZE:I = 0x1000

.field private static final NULL_CODE:I = -0x1

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OPEN_ERROR:I = 0x2

.field public static final STATUS_PARTIAL_DECODE:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private act:[I

.field private bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

.field private final block:[B

.field private data:[B

.field private framePointer:I

.field private header:Lcom/bumptech/glide/gifdecoder/GifHeader;

.field private mainPixels:[B

.field private mainScratch:[I

.field private parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

.field private pixelStack:[B

.field private prefix:[S

.field private previousImage:Landroid/graphics/Bitmap;

.field private rawData:Ljava/nio/ByteBuffer;

.field private savePrevious:Z

.field private status:I

.field private suffix:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    .line 104
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V
    .locals 1
    .param p1, "provider"    # Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->block:[B

    .line 155
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 156
    new-instance v0, Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {v0}, Lcom/bumptech/glide/gifdecoder/GifHeader;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 157
    return-void
.end method

.method private decodeBitmapData(Lcom/bumptech/glide/gifdecoder/GifFrame;)V
    .locals 26
    .param p1, "frame"    # Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 523
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_0

    .line 525
    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    iget v3, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->bufferFrameStart:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 528
    :cond_0
    if-nez v1, :cond_1

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    goto :goto_0

    :cond_1
    iget v2, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    iget v3, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    :goto_0
    mul-int v2, v2, v3

    .line 532
    .local v2, "npix":I
    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    if-eqz v3, :cond_2

    array-length v3, v3

    if-ge v3, v2, :cond_3

    .line 534
    :cond_2
    new-array v3, v2, [B

    iput-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    .line 536
    :cond_3
    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    const/16 v4, 0x1000

    if-nez v3, :cond_4

    .line 537
    new-array v3, v4, [S

    iput-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    .line 539
    :cond_4
    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    if-nez v3, :cond_5

    .line 540
    new-array v3, v4, [B

    iput-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    .line 542
    :cond_5
    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    if-nez v3, :cond_6

    .line 543
    const/16 v3, 0x1001

    new-array v3, v3, [B

    iput-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    .line 547
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->read()I

    move-result v3

    .line 548
    .local v3, "dataSize":I
    const/4 v5, 0x1

    shl-int v6, v5, v3

    .line 549
    .local v6, "clear":I
    add-int/lit8 v7, v6, 0x1

    .line 550
    .local v7, "endOfInformation":I
    add-int/lit8 v8, v6, 0x2

    .line 551
    .local v8, "available":I
    const/4 v9, -0x1

    .line 552
    .local v9, "oldCode":I
    add-int/lit8 v10, v3, 0x1

    .line 553
    .local v10, "codeSize":I
    shl-int v11, v5, v10

    sub-int/2addr v11, v5

    .line 554
    .local v11, "codeMask":I
    const/4 v12, 0x0

    .local v12, "code":I
    :goto_1
    const/4 v13, 0x0

    if-ge v12, v6, :cond_7

    .line 556
    iget-object v14, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    aput-short v13, v14, v12

    .line 557
    iget-object v13, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    int-to-byte v14, v12

    aput-byte v14, v13, v12

    .line 554
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 561
    :cond_7
    move v14, v13

    .local v14, "bi":I
    move v15, v13

    .local v15, "pi":I
    move/from16 v16, v13

    .local v16, "top":I
    move/from16 v17, v13

    .local v17, "first":I
    move/from16 v18, v13

    .local v18, "count":I
    move/from16 v19, v13

    .local v19, "bits":I
    move/from16 v20, v13

    .line 562
    .local v20, "datum":I
    const/16 v21, 0x0

    move/from16 v13, v21

    .local v13, "i":I
    :goto_2
    if-ge v13, v2, :cond_15

    .line 564
    const/4 v4, 0x3

    if-nez v18, :cond_9

    .line 566
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->readBlock()I

    move-result v18

    .line 567
    if-gtz v18, :cond_8

    .line 568
    iput v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 569
    move/from16 v23, v3

    move/from16 v24, v6

    goto/16 :goto_8

    .line 571
    :cond_8
    const/4 v14, 0x0

    .line 574
    :cond_9
    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->block:[B

    aget-byte v4, v4, v14

    and-int/lit16 v4, v4, 0xff

    shl-int v4, v4, v19

    add-int v20, v20, v4

    .line 575
    add-int/lit8 v19, v19, 0x8

    .line 576
    add-int/2addr v14, v5

    .line 577
    const/4 v4, -0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v22, v17

    move/from16 v4, v19

    .line 579
    .end local v17    # "first":I
    .end local v19    # "bits":I
    .local v4, "bits":I
    .local v22, "first":I
    :goto_3
    if-lt v4, v10, :cond_14

    .line 581
    and-int v12, v20, v11

    .line 582
    shr-int v20, v20, v10

    .line 583
    sub-int/2addr v4, v10

    .line 586
    if-ne v12, v6, :cond_a

    .line 588
    add-int/lit8 v10, v3, 0x1

    .line 589
    shl-int v17, v5, v10

    add-int/lit8 v11, v17, -0x1

    .line 590
    add-int/lit8 v8, v6, 0x2

    .line 591
    const/4 v9, -0x1

    .line 592
    goto :goto_3

    .line 595
    :cond_a
    if-le v12, v8, :cond_b

    .line 596
    const/4 v5, 0x3

    iput v5, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 597
    goto :goto_4

    .line 600
    :cond_b
    const/4 v5, 0x3

    if-ne v12, v7, :cond_c

    .line 601
    nop

    .line 562
    :goto_4
    move/from16 v19, v4

    move/from16 v17, v22

    const/16 v4, 0x1000

    const/4 v5, 0x1

    goto :goto_2

    .line 604
    :cond_c
    const/4 v5, -0x1

    if-ne v9, v5, :cond_d

    .line 605
    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "top":I
    .local v17, "top":I
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    aget-byte v1, v1, v12

    aput-byte v1, v5, v16

    .line 606
    move v9, v12

    .line 607
    move/from16 v22, v12

    .line 608
    move-object/from16 v1, p1

    move/from16 v16, v17

    const/4 v5, 0x1

    goto :goto_3

    .line 610
    .end local v17    # "top":I
    .restart local v16    # "top":I
    :cond_d
    move v1, v12

    .line 611
    .local v1, "inCode":I
    if-lt v12, v8, :cond_e

    .line 612
    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    add-int/lit8 v17, v16, 0x1

    move/from16 v23, v3

    move/from16 v3, v22

    move/from16 v22, v4

    .end local v4    # "bits":I
    .end local v16    # "top":I
    .local v3, "first":I
    .restart local v17    # "top":I
    .local v22, "bits":I
    .local v23, "dataSize":I
    int-to-byte v4, v3

    aput-byte v4, v5, v16

    .line 613
    move v4, v9

    move v12, v4

    move/from16 v16, v17

    .end local v12    # "code":I
    .local v4, "code":I
    goto :goto_5

    .line 611
    .end local v17    # "top":I
    .end local v23    # "dataSize":I
    .local v3, "dataSize":I
    .local v4, "bits":I
    .restart local v12    # "code":I
    .restart local v16    # "top":I
    .local v22, "first":I
    :cond_e
    move/from16 v23, v3

    move/from16 v3, v22

    move/from16 v22, v4

    .line 615
    .end local v4    # "bits":I
    .local v3, "first":I
    .local v22, "bits":I
    .restart local v23    # "dataSize":I
    :goto_5
    if-lt v12, v6, :cond_f

    .line 616
    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    add-int/lit8 v5, v16, 0x1

    move/from16 v17, v3

    .end local v3    # "first":I
    .end local v16    # "top":I
    .local v5, "top":I
    .local v17, "first":I
    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    aget-byte v3, v3, v12

    aput-byte v3, v4, v16

    .line 617
    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    aget-short v12, v3, v12

    move/from16 v16, v5

    move/from16 v3, v17

    goto :goto_5

    .line 619
    .end local v5    # "top":I
    .end local v17    # "first":I
    .restart local v3    # "first":I
    .restart local v16    # "top":I
    :cond_f
    move/from16 v17, v3

    .end local v3    # "first":I
    .restart local v17    # "first":I
    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    aget-byte v4, v3, v12

    and-int/lit16 v4, v4, 0xff

    .line 620
    .end local v17    # "first":I
    .local v4, "first":I
    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    add-int/lit8 v17, v16, 0x1

    move/from16 v24, v6

    .end local v6    # "clear":I
    .end local v16    # "top":I
    .local v17, "top":I
    .local v24, "clear":I
    int-to-byte v6, v4

    aput-byte v6, v5, v16

    .line 623
    const/16 v5, 0x1000

    if-ge v8, v5, :cond_11

    .line 624
    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    int-to-short v6, v9

    aput-short v6, v5, v8

    .line 625
    int-to-byte v5, v4

    aput-byte v5, v3, v8

    .line 626
    add-int/lit8 v8, v8, 0x1

    .line 627
    and-int v3, v8, v11

    if-nez v3, :cond_10

    const/16 v3, 0x1000

    if-ge v8, v3, :cond_12

    .line 628
    add-int/lit8 v10, v10, 0x1

    .line 629
    add-int/2addr v11, v8

    goto :goto_6

    .line 627
    :cond_10
    const/16 v3, 0x1000

    goto :goto_6

    .line 623
    :cond_11
    const/16 v3, 0x1000

    .line 632
    :cond_12
    :goto_6
    move v9, v1

    move/from16 v16, v17

    .line 634
    .end local v17    # "top":I
    .restart local v16    # "top":I
    :goto_7
    if-lez v16, :cond_13

    .line 636
    add-int/lit8 v16, v16, -0x1

    .line 637
    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    add-int/lit8 v6, v15, 0x1

    .end local v15    # "pi":I
    .local v6, "pi":I
    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    aget-byte v3, v3, v16

    aput-byte v3, v5, v15

    .line 638
    add-int/lit8 v13, v13, 0x1

    move v15, v6

    const/16 v3, 0x1000

    goto :goto_7

    .line 634
    .end local v6    # "pi":I
    .restart local v15    # "pi":I
    :cond_13
    move-object/from16 v1, p1

    move/from16 v3, v23

    move/from16 v6, v24

    const/4 v5, 0x1

    move/from16 v25, v22

    move/from16 v22, v4

    move/from16 v4, v25

    goto/16 :goto_3

    .line 579
    .end local v1    # "inCode":I
    .end local v23    # "dataSize":I
    .end local v24    # "clear":I
    .local v3, "dataSize":I
    .local v4, "bits":I
    .local v6, "clear":I
    .local v22, "first":I
    :cond_14
    move/from16 v23, v3

    move/from16 v24, v6

    move/from16 v17, v22

    .end local v3    # "dataSize":I
    .end local v6    # "clear":I
    .end local v22    # "first":I
    .local v17, "first":I
    .restart local v23    # "dataSize":I
    .restart local v24    # "clear":I
    move-object/from16 v1, p1

    move/from16 v19, v4

    const/16 v4, 0x1000

    const/4 v5, 0x1

    goto/16 :goto_2

    .line 562
    .end local v4    # "bits":I
    .end local v23    # "dataSize":I
    .end local v24    # "clear":I
    .restart local v3    # "dataSize":I
    .restart local v6    # "clear":I
    .restart local v19    # "bits":I
    :cond_15
    move/from16 v23, v3

    move/from16 v24, v6

    .line 644
    .end local v3    # "dataSize":I
    .end local v6    # "clear":I
    .restart local v23    # "dataSize":I
    .restart local v24    # "clear":I
    :goto_8
    move v1, v15

    .end local v13    # "i":I
    .local v1, "i":I
    :goto_9
    if-ge v1, v2, :cond_16

    .line 645
    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    const/4 v4, 0x0

    aput-byte v4, v3, v1

    .line 644
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 647
    :cond_16
    return-void
.end method

.method private getHeaderParser()Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    if-nez v0, :cond_0

    .line 384
    new-instance v0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    invoke-direct {v0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    return-object v0
.end method

.method private getNextBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 688
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    sget-object v3, Lcom/bumptech/glide/gifdecoder/GifDecoder;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, v1, v2, v3}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 689
    .local v0, "result":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 690
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    sget-object v3, Lcom/bumptech/glide/gifdecoder/GifDecoder;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 692
    :cond_0
    invoke-static {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->setAlpha(Landroid/graphics/Bitmap;)V

    .line 693
    return-object v0
.end method

.method private read()I
    .locals 3

    .line 653
    const/4 v0, 0x0

    .line 655
    .local v0, "curByte":I
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v1, 0xff

    .line 658
    goto :goto_0

    .line 656
    :catch_0
    move-exception v1

    .line 657
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    iput v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 659
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private readBlock()I
    .locals 5

    .line 668
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->read()I

    move-result v0

    .line 669
    .local v0, "blockSize":I
    const/4 v1, 0x0

    .line 670
    .local v1, "n":I
    if-lez v0, :cond_1

    .line 673
    :goto_0
    if-ge v1, v0, :cond_0

    .line 674
    sub-int v2, v0, v1

    .line 675
    .local v2, "count":I
    :try_start_0
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->block:[B

    invoke-virtual {v3, v4, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    add-int/2addr v1, v2

    goto :goto_0

    .line 679
    .end local v2    # "count":I
    :catch_0
    move-exception v2

    .line 680
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const-string v4, "Error Reading Block"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 681
    const/4 v3, 0x1

    iput v3, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    goto :goto_1

    .line 682
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    nop

    .line 684
    :cond_1
    :goto_1
    return v1
.end method

.method private static setAlpha(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 698
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 699
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 701
    :cond_0
    return-void
.end method

.method private setPixels(Lcom/bumptech/glide/gifdecoder/GifFrame;Lcom/bumptech/glide/gifdecoder/GifFrame;)Landroid/graphics/Bitmap;
    .locals 19
    .param p1, "currentFrame"    # Lcom/bumptech/glide/gifdecoder/GifFrame;
    .param p2, "previousFrame"    # Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 426
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    .line 427
    .local v3, "width":I
    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v12, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    .line 430
    .local v12, "height":I
    iget-object v13, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    .line 433
    .local v13, "dest":[I
    const/4 v14, 0x3

    const/4 v15, 0x2

    if-eqz v2, :cond_2

    iget v4, v2, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    if-lez v4, :cond_2

    .line 436
    iget v4, v2, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    if-ne v4, v15, :cond_1

    .line 438
    const/4 v4, 0x0

    .line 439
    .local v4, "c":I
    iget-boolean v5, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z

    if-nez v5, :cond_0

    .line 440
    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v4, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgColor:I

    .line 442
    :cond_0
    invoke-static {v13, v4}, Ljava/util/Arrays;->fill([II)V

    .end local v4    # "c":I
    goto :goto_0

    .line 443
    :cond_1
    iget v4, v2, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    if-ne v4, v14, :cond_2

    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 445
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v13

    move v7, v3

    move v10, v3

    move v11, v12

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    nop

    .line 450
    :cond_2
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->decodeBitmapData(Lcom/bumptech/glide/gifdecoder/GifFrame;)V

    .line 453
    const/4 v4, 0x1

    .line 454
    .local v4, "pass":I
    const/16 v5, 0x8

    .line 455
    .local v5, "inc":I
    const/4 v6, 0x0

    .line 456
    .local v6, "iline":I
    const/4 v7, 0x0

    move/from16 v16, v4

    move/from16 v17, v5

    move v11, v6

    .end local v4    # "pass":I
    .end local v5    # "inc":I
    .end local v6    # "iline":I
    .local v7, "i":I
    .local v11, "iline":I
    .local v16, "pass":I
    .local v17, "inc":I
    :goto_1
    iget v4, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    if-ge v7, v4, :cond_b

    .line 457
    move v4, v7

    .line 458
    .local v4, "line":I
    iget-boolean v5, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->interlace:Z

    if-eqz v5, :cond_7

    .line 459
    iget v5, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    if-lt v11, v5, :cond_6

    .line 460
    add-int/lit8 v5, v16, 0x1

    .line 461
    .end local v16    # "pass":I
    .local v5, "pass":I
    if-eq v5, v15, :cond_5

    if-eq v5, v14, :cond_4

    const/4 v6, 0x4

    if-eq v5, v6, :cond_3

    move/from16 v16, v5

    goto :goto_2

    .line 470
    :cond_3
    const/4 v11, 0x1

    .line 471
    const/16 v17, 0x2

    .line 472
    move/from16 v16, v5

    goto :goto_2

    .line 466
    :cond_4
    const/4 v11, 0x2

    .line 467
    const/16 v17, 0x4

    .line 468
    move/from16 v16, v5

    goto :goto_2

    .line 463
    :cond_5
    const/4 v11, 0x4

    .line 464
    move/from16 v16, v5

    .line 477
    .end local v5    # "pass":I
    .restart local v16    # "pass":I
    :cond_6
    :goto_2
    move v4, v11

    .line 478
    add-int v11, v11, v17

    .line 480
    :cond_7
    iget v5, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iy:I

    add-int/2addr v4, v5

    .line 481
    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    if-ge v4, v5, :cond_a

    .line 482
    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    mul-int v5, v5, v4

    .line 484
    .local v5, "k":I
    iget v6, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->ix:I

    add-int/2addr v6, v5

    .line 486
    .local v6, "dx":I
    iget v8, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    add-int/2addr v8, v6

    .line 487
    .local v8, "dlim":I
    iget-object v9, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v9, v9, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    add-int/2addr v9, v5

    if-ge v9, v8, :cond_8

    .line 489
    iget-object v9, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v9, v9, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    add-int v8, v5, v9

    .line 492
    :cond_8
    iget v9, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    mul-int v9, v9, v7

    .line 493
    .local v9, "sx":I
    :goto_3
    if-ge v6, v8, :cond_a

    .line 495
    iget-object v10, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    add-int/lit8 v18, v9, 0x1

    .end local v9    # "sx":I
    .local v18, "sx":I
    aget-byte v9, v10, v9

    and-int/lit16 v9, v9, 0xff

    .line 496
    .local v9, "index":I
    iget-object v10, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    aget v10, v10, v9

    .line 497
    .local v10, "c":I
    if-eqz v10, :cond_9

    .line 498
    aput v10, v13, v6

    .line 500
    :cond_9
    nop

    .end local v9    # "index":I
    .end local v10    # "c":I
    add-int/lit8 v6, v6, 0x1

    .line 501
    move/from16 v9, v18

    goto :goto_3

    .line 456
    .end local v4    # "line":I
    .end local v5    # "k":I
    .end local v6    # "dx":I
    .end local v8    # "dlim":I
    .end local v18    # "sx":I
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 506
    .end local v7    # "i":I
    :cond_b
    iget-boolean v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    if-eqz v4, :cond_c

    iget v4, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    if-eqz v4, :cond_d

    :cond_c
    iget v4, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f

    .line 507
    :cond_d
    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-nez v4, :cond_e

    .line 508
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 510
    :cond_e
    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v13

    move v7, v3

    move v10, v3

    move v14, v11

    .end local v11    # "iline":I
    .local v14, "iline":I
    move v11, v12

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_4

    .line 506
    .end local v14    # "iline":I
    .restart local v11    # "iline":I
    :cond_f
    move v14, v11

    .line 514
    .end local v11    # "iline":I
    .restart local v14    # "iline":I
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    .line 515
    .local v15, "result":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v15

    move-object v5, v13

    move v7, v3

    move v10, v3

    move v11, v12

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 516
    return-object v15
.end method


# virtual methods
.method public advance()V
    .locals 2

    .line 187
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    .line 188
    return-void
.end method

.method public clear()V
    .locals 3

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 348
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->data:[B

    .line 349
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    .line 350
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    .line 351
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 352
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    invoke-interface {v2, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->release(Landroid/graphics/Bitmap;)V

    .line 354
    :cond_0
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 355
    return-void
.end method

.method public getCurrentFrameIndex()I
    .locals 1

    .line 230
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    return v0
.end method

.method public getData()[B
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->data:[B

    return-object v0
.end method

.method public getDelay(I)I
    .locals 2
    .param p1, "n"    # I

    .line 197
    const/4 v0, -0x1

    .line 198
    .local v0, "delay":I
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-ge p1, v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/gifdecoder/GifFrame;

    iget v0, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->delay:I

    .line 201
    :cond_0
    return v0
.end method

.method public getFrameCount()I
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    return v0
.end method

.method public getLoopCount()I
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    return v0
.end method

.method public getNextDelay()I
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    if-gez v0, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getDelay(I)I

    move-result v0

    return v0

    .line 209
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized getNextFrame()Landroid/graphics/Bitmap;
    .locals 10

    monitor-enter p0

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    if-gez v0, :cond_2

    .line 253
    .end local p0    # "this":Lcom/bumptech/glide/gifdecoder/GifDecoder;
    :cond_0
    sget-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    sget-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to decode frame, frameCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " framePointer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_1
    iput v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 258
    :cond_2
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_b

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    goto/16 :goto_1

    .line 264
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 266
    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    iget v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 267
    .local v4, "currentFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    const/4 v5, 0x0

    .line 268
    .local v5, "previousFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    iget v6, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    sub-int/2addr v6, v2

    .line 269
    .local v6, "previousIndex":I
    if-ltz v6, :cond_4

    .line 270
    iget-object v7, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v7, v7, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bumptech/glide/gifdecoder/GifFrame;

    move-object v5, v7

    .line 274
    :cond_4
    iget-object v7, v4, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    if-nez v7, :cond_5

    .line 275
    iget-object v7, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v7, v7, Lcom/bumptech/glide/gifdecoder/GifHeader;->gct:[I

    iput-object v7, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    goto :goto_0

    .line 277
    :cond_5
    iget-object v7, v4, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    iput-object v7, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    .line 278
    iget-object v7, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v7, v7, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgIndex:I

    iget v8, v4, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    if-ne v7, v8, :cond_6

    .line 279
    iget-object v7, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iput v0, v7, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgColor:I

    .line 283
    :cond_6
    :goto_0
    const/4 v7, 0x0

    .line 284
    .local v7, "save":I
    iget-boolean v8, v4, Lcom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z

    if-eqz v8, :cond_7

    .line 285
    iget-object v8, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    iget v9, v4, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    aget v8, v8, v9

    move v7, v8

    .line 287
    iget-object v8, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    iget v9, v4, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    aput v0, v8, v9

    .line 289
    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    if-nez v0, :cond_9

    .line 290
    sget-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 291
    sget-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const-string v1, "No Valid Color Table"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_8
    iput v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    monitor-exit p0

    return-object v3

    .line 299
    :cond_9
    :try_start_1
    invoke-direct {p0, v4, v5}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->setPixels(Lcom/bumptech/glide/gifdecoder/GifFrame;Lcom/bumptech/glide/gifdecoder/GifFrame;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 302
    .local v0, "result":Landroid/graphics/Bitmap;
    iget-boolean v1, v4, Lcom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z

    if-eqz v1, :cond_a

    .line 303
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    iget v2, v4, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    aput v7, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    :cond_a
    monitor-exit p0

    return-object v0

    .line 259
    .end local v0    # "result":Landroid/graphics/Bitmap;
    .end local v4    # "currentFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    .end local v5    # "previousFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    .end local v6    # "previousIndex":I
    .end local v7    # "save":I
    :cond_b
    :goto_1
    :try_start_2
    sget-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 260
    sget-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to decode frame, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    :cond_c
    monitor-exit p0

    return-object v3

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStatus()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    return v0
.end method

.method public read(Ljava/io/InputStream;I)I
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "contentLength"    # I

    .line 316
    if-eqz p1, :cond_2

    .line 318
    const/16 v0, 0x4000

    if-lez p2, :cond_0

    add-int/lit16 v1, p2, 0x1000

    goto :goto_0

    :cond_0
    const/16 v1, 0x4000

    .line 319
    .local v1, "capacity":I
    :goto_0
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 321
    .local v2, "buffer":Ljava/io/ByteArrayOutputStream;
    new-array v0, v0, [B

    .line 322
    .local v0, "data":[B
    :goto_1
    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    move v5, v3

    .local v5, "nRead":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    .line 323
    invoke-virtual {v2, v0, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 325
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 327
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    nop

    .end local v0    # "data":[B
    .end local v1    # "capacity":I
    .end local v2    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "nRead":I
    goto :goto_2

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const-string v2, "Error reading data from stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 332
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 336
    :goto_2
    if-eqz p1, :cond_3

    .line 337
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 339
    :catch_1
    move-exception v0

    .line 340
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const-string v2, "Error closing stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 341
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :goto_3
    nop

    .line 343
    :goto_4
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    return v0
.end method

.method public read([B)I
    .locals 4
    .param p1, "data"    # [B

    .line 396
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->data:[B

    .line 397
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getHeaderParser()Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->setData([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->parseHeader()Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 398
    if-eqz p1, :cond_1

    .line 400
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 401
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 402
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 405
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int v0, v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    .line 406
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    .line 409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    .line 410
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 411
    .local v1, "frame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    iget v2, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 412
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    .line 413
    goto :goto_1

    .end local v1    # "frame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    :cond_0
    goto :goto_0

    .line 418
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    return v0
.end method

.method public resetFrameIndex()V
    .locals 1

    .line 234
    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    .line 235
    return-void
.end method

.method public setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V
    .locals 4
    .param p1, "header"    # Lcom/bumptech/glide/gifdecoder/GifHeader;
    .param p2, "data"    # [B

    .line 358
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 359
    iput-object p2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->data:[B

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 361
    const/4 v1, -0x1

    iput v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    .line 363
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 364
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 365
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 369
    iput-boolean v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    .line 370
    iget-object v0, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 371
    .local v1, "frame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    iget v2, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 372
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    .line 373
    goto :goto_1

    .end local v1    # "frame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    :cond_0
    goto :goto_0

    .line 378
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    iget v0, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget v1, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int v0, v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    .line 379
    iget v0, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget v1, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    .line 380
    return-void
.end method
