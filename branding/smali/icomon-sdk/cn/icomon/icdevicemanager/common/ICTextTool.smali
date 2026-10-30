.class public Lcn/icomon/icdevicemanager/common/ICTextTool;
.super Ljava/lang/Object;
.source "ICTextTool.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createImageWithColor(III)Landroid/graphics/Bitmap;
    .registers 7

    .line 19
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 20
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 21
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 22
    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    new-instance p0, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {p0, v3, v3, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, p0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static image2Bitmap(Landroid/graphics/Bitmap;)[B
    .registers 18

    .line 133
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 134
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 135
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_12

    const/4 v0, 0x0

    return-object v0

    :cond_12
    mul-int v0, v8, v9

    .line 140
    new-array v10, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 141
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 147
    div-int/lit8 v0, v8, 0x8

    .line 148
    rem-int/lit8 v1, v8, 0x8

    if-eqz v1, :cond_2a

    add-int/lit8 v0, v0, 0x1

    .line 151
    :cond_2a
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    mul-int v0, v0, v9

    .line 153
    new-array v0, v0, [B

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    :goto_39
    if-ge v4, v9, :cond_7f

    const/4 v11, 0x0

    :goto_3c
    if-ge v11, v8, :cond_6c

    mul-int v12, v4, v8

    add-int/2addr v12, v11

    .line 158
    aget v12, v10, v12

    int-to-long v12, v12

    const-wide/32 v14, 0xffffff

    and-long/2addr v12, v14

    const-wide/16 v14, 0x80

    cmp-long v16, v12, v14

    if-lez v16, :cond_57

    const/4 v12, 0x1

    shl-int/2addr v12, v6

    or-int/2addr v5, v12

    const-string v12, "1"

    .line 163
    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5c

    :cond_57
    const-string v12, "0"

    .line 167
    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5c
    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_69

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 174
    aput-byte v5, v0, v7

    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x7

    :cond_69
    add-int/lit8 v11, v11, 0x1

    goto :goto_3c

    :cond_6c
    if-eq v6, v2, :cond_77

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 182
    aput-byte v5, v0, v7

    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x7

    :cond_77
    const-string v11, "\n"

    .line 185
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 187
    :cond_7f
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v2, "TTTTT"

    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static image2BitmapFont(Landroid/graphics/Bitmap;)[B
    .registers 18

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_15

    const/4 v0, 0x0

    return-object v0

    :cond_15
    mul-int v0, v8, v9

    .line 67
    new-array v10, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 68
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 74
    div-int/lit8 v0, v8, 0x8

    .line 75
    rem-int/lit8 v1, v8, 0x8

    if-eqz v1, :cond_2d

    add-int/lit8 v0, v0, 0x1

    :cond_2d
    const/16 v1, 0x12

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->createWithSize(Ljava/lang/Integer;)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    move-result-object v2

    const/4 v3, 0x0

    .line 80
    invoke-virtual {v2, v3}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->SetLittleEndian(Z)V

    const/16 v4, 0x41

    .line 81
    invoke-virtual {v2, v4}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    .line 82
    invoke-virtual {v2, v3}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    .line 83
    invoke-virtual {v2, v4}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    .line 84
    invoke-virtual {v2, v3}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    const/4 v4, 0x1

    .line 85
    invoke-virtual {v2, v4}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteInt(I)I

    const/16 v5, 0xc

    .line 86
    invoke-virtual {v2, v5}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteInt(I)I

    mul-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    .line 87
    invoke-virtual {v2, v5}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    .line 88
    invoke-virtual {v2, v5}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    int-to-byte v5, v9

    .line 89
    invoke-virtual {v2, v5}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    .line 90
    invoke-virtual {v2, v3}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    .line 91
    invoke-virtual {v2, v3}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    .line 92
    invoke-virtual {v2, v3}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    mul-int v0, v0, v9

    add-int/2addr v0, v1

    .line 94
    new-array v0, v0, [B

    .line 95
    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->GetBuffer()[B

    move-result-object v1

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->GetSize()I

    move-result v5

    invoke-static {v1, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->GetSize()I

    move-result v1

    const/4 v2, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x7

    :goto_80
    if-ge v5, v9, :cond_b6

    const/4 v11, 0x0

    :goto_83
    if-ge v11, v8, :cond_a8

    mul-int v12, v5, v8

    add-int/2addr v12, v11

    .line 100
    aget v12, v10, v12

    int-to-long v12, v12

    const-wide/32 v14, 0xffffff

    and-long/2addr v12, v14

    const-wide/16 v14, 0x80

    cmp-long v16, v12, v14

    if-lez v16, :cond_98

    shl-int v12, v4, v7

    or-int/2addr v6, v12

    :cond_98
    add-int/lit8 v7, v7, -0x1

    if-gez v7, :cond_a5

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 114
    aput-byte v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x7

    :cond_a5
    add-int/lit8 v11, v11, 0x1

    goto :goto_83

    :cond_a8
    if-eq v7, v2, :cond_b3

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 122
    aput-byte v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x7

    :cond_b3
    add-int/lit8 v5, v5, 0x1

    goto :goto_80

    :cond_b6
    return-object v0
.end method

.method public static printBitmap(II[B)V
    .registers 11

    .line 196
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, p0, :cond_33

    const/4 v4, 0x0

    :goto_c
    if-ge v4, p1, :cond_2d

    mul-int v5, p1, v3

    add-int/2addr v5, v4

    .line 201
    aget-byte v5, p2, v5

    const/4 v6, 0x7

    :goto_14
    if-ltz v6, :cond_2a

    shr-int v7, v5, v6

    and-int/lit8 v7, v7, 0x1

    if-lez v7, :cond_22

    const-string v7, "1"

    .line 205
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_27

    :cond_22
    const-string v7, "0"

    .line 209
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_27
    add-int/lit8 v6, v6, -0x1

    goto :goto_14

    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 215
    :cond_2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 218
    :cond_33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "TTTTTTT"

    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static text2Image(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 8

    .line 32
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v0

    iget v0, v0, Lcn/icomon/icdevicemanager/common/ICConfigManager;->textFontSize:I

    .line 34
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, -0x1

    .line 35
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 38
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    int-to-float v0, v0

    .line 39
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 40
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 43
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v2

    iget v2, v2, Lcn/icomon/icdevicemanager/common/ICConfigManager;->textImageHeight:I

    const/high16 v3, -0x1000000

    invoke-static {v3, v0, v2}, Lcn/icomon/icdevicemanager/common/ICTextTool;->createImageWithColor(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 45
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 47
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    .line 48
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 49
    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    iget v3, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v5, v4, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget v3, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 52
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    int-to-float v2, v2

    .line 53
    invoke-virtual {v3, p0, v4, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v0
.end method
