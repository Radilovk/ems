.class public Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;
.super Ljava/lang/Object;
.source "ICLVGLImageConv.java"


# static fields
.field public static final CF_ALPHA_1_BIT:I = 0x4

.field public static final CF_ALPHA_2_BIT:I = 0x5

.field public static final CF_ALPHA_4_BIT:I = 0x6

.field public static final CF_ALPHA_8_BIT:I = 0x7

.field public static final CF_INDEXED_1_BIT:I = 0x8

.field public static final CF_INDEXED_2_BIT:I = 0x9

.field public static final CF_INDEXED_4_BIT:I = 0xa

.field public static final CF_INDEXED_8_BIT:I = 0xb

.field public static final CF_RAW:I = 0xc

.field public static final CF_RAW_ALPHA:I = 0xd

.field public static final CF_RAW_CHROMA:I = 0xc

.field public static final CF_TRUE_COLOR:I = 0x64

.field public static final CF_TRUE_COLOR_332:I = 0x0

.field public static final CF_TRUE_COLOR_565:I = 0x1

.field public static final CF_TRUE_COLOR_565_SWAP:I = 0x2

.field public static final CF_TRUE_COLOR_888:I = 0x3

.field public static final CF_TRUE_COLOR_ALPHA:I = 0x65

.field public static final CF_TRUE_COLOR_CHROMA:I = 0x66


# instance fields
.field alpha:Z

.field b_act:I

.field b_earr:[B

.field b_nerr:I

.field cf:I

.field chroma:Ljava/lang/String;

.field d_out:[B

.field d_out_index:I

.field d_out_length:I

.field dith:Z

.field earr_length:I

.field g_act:I

.field g_earr:[B

.field g_nerr:I

.field h:I

.field img:Landroid/graphics/Bitmap;

.field imgData:[I

.field out_name:Ljava/lang/String;

.field path:Ljava/lang/String;

.field r_act:I

.field r_earr:[B

.field r_nerr:I

.field rowBytesLength:I

.field w:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->dith:Z

    iput v0, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->w:I

    iput v0, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->h:I

    return-void
.end method

.method private addOut(I)V
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->d_out:[B

    iget v1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->d_out_index:I

    int-to-byte p1, p1

    .line 316
    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->d_out_index:I

    return-void
.end method

.method private classify_pixel(II)I
    .registers 4

    rsub-int/lit8 p2, p2, 0x8

    const/4 v0, 0x1

    shl-int p2, v0, p2

    .line 218
    div-int/2addr p1, p2

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int p1, p1, p2

    if-gez p1, :cond_10

    const/4 p1, 0x0

    :cond_10
    return p1
.end method

.method private conv_px(II)V
    .registers 7

    iget v0, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->rowBytesLength:I

    mul-int p2, p2, v0

    .line 321
    div-int/lit8 p2, p2, 0x4

    add-int/2addr p2, p1

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->imgData:[I

    .line 322
    aget p2, v0, p2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->alpha:Z

    const/16 v1, 0xff

    if-eqz v0, :cond_15

    const v0, 0x10000ff

    goto :goto_17

    :cond_15
    const/16 v0, 0xff

    :goto_17
    const/high16 v2, 0xff0000

    and-int/2addr v2, p2

    shr-int/lit8 v2, v2, 0x10

    const v3, 0xff00

    and-int/2addr v3, p2

    shr-int/lit8 v3, v3, 0x8

    and-int/2addr p2, v1

    .line 336
    invoke-direct {p0, v2, v3, p2, p1}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->dith_next(IIII)V

    iget p1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->cf:I

    const/4 p2, 0x3

    if-nez p1, :cond_49

    iget p1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_act:I

    iget v1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_act:I

    shr-int/lit8 p2, v1, 0x3

    or-int/2addr p1, p2

    iget p2, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->b_act:I

    shr-int/lit8 p2, p2, 0x6

    or-int/2addr p1, p2

    iget-object p2, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->d_out:[B

    iget v1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->d_out_index:I

    int-to-byte v2, p1

    .line 340
    aput-byte v2, p2, v1

    .line 341
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->addOut(I)V

    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->alpha:Z

    if-eqz p1, :cond_a2

    .line 343
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->addOut(I)V

    goto :goto_a2

    :cond_49
    const/4 v2, 0x1

    if-ne p1, v2, :cond_6c

    iget p1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_act:I

    shl-int/lit8 p1, p1, 0x8

    iget v2, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_act:I

    shl-int/2addr v2, p2

    or-int/2addr p1, v2

    iget v2, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->b_act:I

    shr-int/lit8 p2, v2, 0x3

    or-int/2addr p1, p2

    and-int/lit16 p2, p1, 0xff

    .line 347
    invoke-direct {p0, p2}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->addOut(I)V

    shr-int/lit8 p1, p1, 0x8

    and-int/2addr p1, v1

    .line 348
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->addOut(I)V

    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->alpha:Z

    if-eqz p1, :cond_a2

    .line 350
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->addOut(I)V

    goto :goto_a2

    :cond_6c
    const/4 v2, 0x2

    if-ne p1, v2, :cond_8e

    iget p1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_act:I

    shl-int/lit8 p1, p1, 0x8

    iget v0, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_act:I

    shl-int/2addr v0, p2

    or-int/2addr p1, v0

    iget v0, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->b_act:I

    shr-int/lit8 p2, v0, 0x3

    or-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x8

    and-int/2addr p2, v1

    .line 354
    invoke-direct {p0, p2}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->addOut(I)V

    and-int/2addr p1, v1

    .line 355
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->addOut(I)V

    iget-boolean p2, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->alpha:Z

    if-eqz p2, :cond_a2

    .line 357
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->addOut(I)V

    goto :goto_a2

    :cond_8e
    if-ne p1, p2, :cond_a2

    iget p1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->b_act:I

    .line 360
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->addOut(I)V

    iget p1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_act:I

    .line 361
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->addOut(I)V

    iget p1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_act:I

    .line 362
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->addOut(I)V

    .line 363
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->addOut(I)V

    :cond_a2
    :goto_a2
    return-void
.end method

.method private dith_next(IIII)V
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-boolean v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->dith:Z

    const/4 v5, 0x1

    const/16 v6, 0xc0

    const/4 v8, 0x2

    const/16 v9, 0x8

    const/16 v10, 0xf8

    const/4 v11, 0x5

    const/16 v12, 0xe0

    const/4 v13, 0x3

    const/16 v14, 0xff

    if-eqz v4, :cond_187

    iget v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_nerr:I

    add-int/2addr v4, v1

    iget-object v15, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_earr:[B

    add-int/lit8 v16, p4, 0x1

    .line 228
    aget-byte v17, v15, v16

    add-int v4, v4, v17

    iput v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_act:I

    const/16 v17, 0x0

    .line 229
    aput-byte v17, v15, v16

    iget v15, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_nerr:I

    add-int/2addr v15, v2

    iget-object v7, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_earr:[B

    .line 231
    aget-byte v18, v7, v16

    add-int v15, v15, v18

    iput v15, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_act:I

    .line 232
    aput-byte v17, v7, v16

    iget v7, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->b_nerr:I

    add-int/2addr v7, v3

    iget-object v15, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->b_earr:[B

    .line 234
    aget-byte v18, v15, v16

    add-int v7, v7, v18

    iput v7, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->b_act:I

    .line 235
    aput-byte v17, v15, v16

    iget v7, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->cf:I

    if-nez v7, :cond_70

    .line 238
    invoke-direct {v0, v4, v13}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->classify_pixel(II)I

    move-result v4

    iput v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_act:I

    iget v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_act:I

    .line 239
    invoke-direct {v0, v4, v13}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->classify_pixel(II)I

    move-result v4

    iput v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_act:I

    iget v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->b_act:I

    .line 240
    invoke-direct {v0, v4, v8}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->classify_pixel(II)I

    move-result v4

    iput v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->b_act:I

    iget v5, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_act:I

    if-le v5, v12, :cond_65

    iput v12, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_act:I

    :cond_65
    iget v5, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_act:I

    if-le v5, v12, :cond_6b

    iput v12, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_act:I

    :cond_6b
    if-le v4, v6, :cond_c6

    iput v6, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->b_act:I

    goto :goto_c6

    :cond_70
    if-eq v7, v5, :cond_9e

    if-ne v7, v8, :cond_75

    goto :goto_9e

    :cond_75
    if-ne v7, v13, :cond_c6

    .line 256
    invoke-direct {v0, v4, v9}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->classify_pixel(II)I

    move-result v4

    iput v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_act:I

    iget v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_act:I

    .line 257
    invoke-direct {v0, v4, v9}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->classify_pixel(II)I

    move-result v4

    iput v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_act:I

    iget v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->b_act:I

    .line 258
    invoke-direct {v0, v4, v9}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->classify_pixel(II)I

    move-result v4

    iput v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->b_act:I

    iget v5, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_act:I

    if-le v5, v14, :cond_93

    iput v14, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_act:I

    :cond_93
    iget v5, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_act:I

    if-le v5, v14, :cond_99

    iput v14, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_act:I

    :cond_99
    if-le v4, v14, :cond_c6

    iput v14, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->b_act:I

    goto :goto_c6

    .line 247
    :cond_9e
    :goto_9e
    invoke-direct {v0, v4, v11}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->classify_pixel(II)I

    move-result v4

    iput v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_act:I

    iget v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_act:I

    .line 248
    invoke-direct {v0, v4, v11}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->classify_pixel(II)I

    move-result v4

    iput v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_act:I

    iget v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->b_act:I

    .line 249
    invoke-direct {v0, v4, v11}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->classify_pixel(II)I

    move-result v4

    iput v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->b_act:I

    iget v5, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_act:I

    if-le v5, v10, :cond_ba

    iput v10, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_act:I

    :cond_ba
    iget v5, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_act:I

    const/16 v6, 0xfc

    if-le v5, v6, :cond_c2

    iput v6, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_act:I

    :cond_c2
    if-le v4, v10, :cond_c6

    iput v10, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->b_act:I

    :cond_c6
    :goto_c6
    iget v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_act:I

    sub-int/2addr v1, v4

    iget v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_act:I

    sub-int/2addr v2, v4

    iget v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->b_act:I

    sub-int/2addr v3, v4

    mul-int/lit8 v4, v1, 0x7

    .line 269
    div-int/lit8 v4, v4, 0x10

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_nerr:I

    mul-int/lit8 v4, v2, 0x7

    .line 270
    div-int/lit8 v4, v4, 0x10

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_nerr:I

    mul-int/lit8 v4, v3, 0x7

    .line 271
    div-int/lit8 v4, v4, 0x10

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->b_nerr:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_earr:[B

    .line 273
    aget-byte v5, v4, p4

    mul-int/lit8 v6, v1, 0x3

    div-int/lit8 v6, v6, 0x10

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, p4

    iget-object v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_earr:[B

    .line 274
    aget-byte v5, v4, p4

    mul-int/lit8 v6, v2, 0x3

    div-int/lit8 v6, v6, 0x10

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, p4

    iget-object v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->b_earr:[B

    .line 275
    aget-byte v5, v4, p4

    mul-int/lit8 v6, v3, 0x3

    div-int/lit8 v6, v6, 0x10

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, p4

    iget-object v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_earr:[B

    .line 277
    aget-byte v5, v4, v16

    mul-int/lit8 v6, v1, 0x5

    div-int/lit8 v6, v6, 0x10

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v16

    iget-object v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_earr:[B

    .line 278
    aget-byte v5, v4, v16

    mul-int/lit8 v6, v2, 0x5

    div-int/lit8 v6, v6, 0x10

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v16

    iget-object v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->b_earr:[B

    .line 279
    aget-byte v5, v4, v16

    mul-int/lit8 v6, v3, 0x5

    div-int/lit8 v6, v6, 0x10

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v16

    iget-object v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_earr:[B

    add-int/lit8 v5, p4, 0x2

    .line 281
    aget-byte v6, v4, v5

    div-int/lit8 v1, v1, 0x10

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v6, v1

    int-to-byte v1, v6

    aput-byte v1, v4, v5

    iget-object v1, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_earr:[B

    .line 282
    aget-byte v4, v1, v5

    div-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v4, v2

    int-to-byte v2, v4

    aput-byte v2, v1, v5

    iget-object v1, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->b_earr:[B

    .line 283
    aget-byte v2, v1, v5

    div-int/lit8 v3, v3, 0x10

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    goto/16 :goto_1fd

    :cond_187
    iget v4, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->cf:I

    if-nez v4, :cond_1ae

    .line 286
    invoke-direct {v0, v1, v13}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->classify_pixel(II)I

    move-result v1

    iput v1, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_act:I

    .line 287
    invoke-direct {v0, v2, v13}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->classify_pixel(II)I

    move-result v1

    iput v1, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_act:I

    .line 288
    invoke-direct {v0, v3, v8}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->classify_pixel(II)I

    move-result v1

    iput v1, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->b_act:I

    iget v2, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_act:I

    if-le v2, v12, :cond_1a3

    iput v12, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_act:I

    :cond_1a3
    iget v2, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_act:I

    if-le v2, v12, :cond_1a9

    iput v12, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_act:I

    :cond_1a9
    if-le v1, v6, :cond_1fd

    iput v6, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->b_act:I

    goto :goto_1fd

    :cond_1ae
    if-eq v4, v5, :cond_1d8

    if-ne v4, v8, :cond_1b3

    goto :goto_1d8

    :cond_1b3
    if-ne v4, v13, :cond_1fd

    .line 304
    invoke-direct {v0, v1, v9}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->classify_pixel(II)I

    move-result v1

    iput v1, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_act:I

    .line 305
    invoke-direct {v0, v2, v9}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->classify_pixel(II)I

    move-result v1

    iput v1, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_act:I

    .line 306
    invoke-direct {v0, v3, v9}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->classify_pixel(II)I

    move-result v1

    iput v1, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->b_act:I

    iget v2, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_act:I

    if-le v2, v14, :cond_1cd

    iput v14, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_act:I

    :cond_1cd
    iget v2, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_act:I

    if-le v2, v14, :cond_1d3

    iput v14, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_act:I

    :cond_1d3
    if-le v1, v14, :cond_1fd

    iput v14, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->b_act:I

    goto :goto_1fd

    .line 295
    :cond_1d8
    :goto_1d8
    invoke-direct {v0, v1, v11}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->classify_pixel(II)I

    move-result v1

    iput v1, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_act:I

    const/4 v1, 0x6

    .line 296
    invoke-direct {v0, v2, v1}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->classify_pixel(II)I

    move-result v1

    iput v1, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_act:I

    .line 297
    invoke-direct {v0, v3, v11}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->classify_pixel(II)I

    move-result v1

    iput v1, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->b_act:I

    iget v2, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_act:I

    if-le v2, v10, :cond_1f1

    iput v10, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_act:I

    :cond_1f1
    iget v2, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_act:I

    const/16 v3, 0xfc

    if-le v2, v3, :cond_1f9

    iput v3, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_act:I

    :cond_1f9
    if-le v1, v10, :cond_1fd

    iput v10, v0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->b_act:I

    :cond_1fd
    :goto_1fd
    return-void
.end method

.method private dith_reset()V
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->dith:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    iput v0, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_nerr:I

    iput v0, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_nerr:I

    iput v0, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->b_nerr:I

    :cond_b
    return-void
.end method


# virtual methods
.method public convert(IZ)[B
    .registers 10

    iput p1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->cf:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->d_out:[B

    iput-boolean p2, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->alpha:Z

    const/16 v1, 0xc

    if-eq p1, v1, :cond_9b

    const/16 v2, 0xd

    if-eq p1, v2, :cond_9b

    if-ne p1, v1, :cond_13

    goto/16 :goto_9b

    :cond_13
    const/4 v0, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez p1, :cond_1e

    if-eqz p2, :cond_1c

    goto :goto_2f

    :cond_1c
    const/4 v4, 0x1

    goto :goto_2f

    :cond_1e
    const/4 v6, 0x3

    if-ne p1, v5, :cond_25

    if-eqz p2, :cond_2f

    :goto_23
    const/4 v4, 0x3

    goto :goto_2f

    :cond_25
    if-ne p1, v4, :cond_2a

    if-eqz p2, :cond_2f

    goto :goto_23

    :cond_2a
    if-ne p1, v6, :cond_2e

    const/4 v4, 0x4

    goto :goto_2f

    :cond_2e
    const/4 v4, 0x0

    :cond_2f
    :goto_2f
    const/16 p2, 0x8

    packed-switch p1, :pswitch_data_9c

    packed-switch p1, :pswitch_data_b0

    :pswitch_37
    const/4 v1, 0x4

    goto :goto_50

    :pswitch_39
    const/4 v1, 0x6

    goto :goto_50

    :pswitch_3b
    const/4 v1, 0x5

    goto :goto_50

    :pswitch_3d
    const/16 v1, 0xa

    goto :goto_50

    :pswitch_40
    const/16 v1, 0x9

    goto :goto_50

    :pswitch_43
    const/16 v1, 0x8

    goto :goto_50

    :pswitch_46
    const/4 v1, 0x7

    goto :goto_50

    :pswitch_48
    const/16 v1, 0xe

    goto :goto_50

    :pswitch_4b
    const/16 v1, 0xd

    goto :goto_50

    :pswitch_4e
    const/16 v1, 0xb

    :goto_50
    :pswitch_50
    iget p1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->w:I

    shl-int/lit8 v2, p1, 0xa

    add-int/2addr v1, v2

    iget v2, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->h:I

    shl-int/lit8 v5, v2, 0x15

    add-int/2addr v1, v5

    mul-int v4, v4, v2

    mul-int v4, v4, p1

    add-int/2addr v4, v3

    iput v4, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->d_out_length:I

    .line 188
    new-array p1, v4, [B

    iput-object p1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->d_out:[B

    and-int/lit16 p1, v1, 0xff

    .line 191
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->addOut(I)V

    const p1, 0xff00

    and-int/2addr p1, v1

    shr-int/2addr p1, p2

    .line 192
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->addOut(I)V

    const/high16 p1, 0xff0000

    and-int/2addr p1, v1

    shr-int/lit8 p1, p1, 0x10

    .line 193
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->addOut(I)V

    const/high16 p1, -0x1000000

    and-int/2addr p1, v1

    shr-int/lit8 p1, p1, 0x18

    .line 194
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->addOut(I)V

    const/4 p1, 0x0

    :goto_83
    iget p2, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->h:I

    if-ge p1, p2, :cond_98

    .line 198
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->dith_reset()V

    const/4 p2, 0x0

    :goto_8b
    iget v1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->w:I

    if-ge p2, v1, :cond_95

    .line 201
    invoke-direct {p0, p2, p1}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->conv_px(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_8b

    :cond_95
    add-int/lit8 p1, p1, 0x1

    goto :goto_83

    :cond_98
    iget-object p1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->d_out:[B

    return-object p1

    :cond_9b
    :goto_9b
    return-object v0

    :pswitch_data_9c
    .packed-switch 0x4
        :pswitch_4e
        :pswitch_50
        :pswitch_4b
        :pswitch_48
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
    .end packed-switch

    :pswitch_data_b0
    .packed-switch 0x64
        :pswitch_37
        :pswitch_3b
        :pswitch_39
    .end packed-switch
.end method

.method public initWithImage(Landroid/graphics/Bitmap;)Z
    .registers 12

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->dith:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->out_name:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->w:I

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->h:I

    iput v0, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->d_out_index:I

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v1, v2, :cond_1d

    return v0

    .line 75
    :cond_1d
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    iput v1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->rowBytesLength:I

    iget v8, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->w:I

    iget v9, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->h:I

    mul-int v1, v8, v9

    .line 77
    new-array v1, v1, [I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, v1

    move v5, v8

    .line 78
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->imgData:[I

    iget p1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->w:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->earr_length:I

    .line 83
    new-array v1, p1, [B

    iput-object v1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_earr:[B

    .line 84
    new-array v1, p1, [B

    iput-object v1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_earr:[B

    .line 85
    new-array p1, p1, [B

    iput-object p1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->b_earr:[B

    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->dith:Z

    if-eqz p1, :cond_60

    const/4 p1, 0x0

    :goto_4d
    iget v1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->earr_length:I

    if-ge p1, v1, :cond_60

    iget-object v1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_earr:[B

    .line 90
    aput-byte v0, v1, p1

    iget-object v1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_earr:[B

    .line 91
    aput-byte v0, v1, p1

    iget-object v1, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->b_earr:[B

    .line 92
    aput-byte v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4d

    :cond_60
    iput v0, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->r_nerr:I

    iput v0, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->g_nerr:I

    iput v0, p0, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->b_nerr:I

    const/4 p1, 0x1

    return p1
.end method
