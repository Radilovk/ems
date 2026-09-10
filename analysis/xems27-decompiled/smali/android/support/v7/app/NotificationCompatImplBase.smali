.class Landroid/support/v7/app/NotificationCompatImplBase;
.super Ljava/lang/Object;
.source "NotificationCompatImplBase.java"


# static fields
.field private static final MAX_ACTION_BUTTONS:I = 0x3

.field static final MAX_MEDIA_BUTTONS:I = 0x5

.field static final MAX_MEDIA_BUTTONS_IN_COMPACT:I = 0x3


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyStandardTemplate(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIIIZ)Landroid/widget/RemoteViews;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentTitle"    # Ljava/lang/CharSequence;
    .param p2, "contentText"    # Ljava/lang/CharSequence;
    .param p3, "contentInfo"    # Ljava/lang/CharSequence;
    .param p4, "number"    # I
    .param p5, "smallIcon"    # I
    .param p6, "largeIcon"    # Landroid/graphics/Bitmap;
    .param p7, "subText"    # Ljava/lang/CharSequence;
    .param p8, "useChronometer"    # Z
    .param p9, "when"    # J
    .param p11, "priority"    # I
    .param p12, "color"    # I
    .param p13, "resId"    # I
    .param p14, "fitIn1U"    # Z

    .line 272
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p9

    move/from16 v10, p12

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 273
    .local v11, "res":Landroid/content/res/Resources;
    new-instance v12, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move/from16 v14, p13

    invoke-direct {v12, v13, v14}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 274
    .local v12, "contentView":Landroid/widget/RemoteViews;
    const/4 v13, 0x0

    .line 275
    .local v13, "showLine3":Z
    const/4 v15, 0x0

    .line 277
    .local v15, "showLine2":Z
    move/from16 v16, v13

    .end local v13    # "showLine3":Z
    .local v16, "showLine3":Z
    const/4 v13, -0x1

    move/from16 v14, p11

    if-ge v14, v13, :cond_0

    const/16 v17, 0x1

    goto :goto_0

    :cond_0
    const/16 v17, 0x0

    :goto_0
    move/from16 v21, v17

    .line 278
    .local v21, "minPriority":Z
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x10

    if-lt v13, v14, :cond_2

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x15

    if-ge v13, v14, :cond_2

    .line 280
    const-string v13, "setBackgroundResource"

    if-eqz v21, :cond_1

    .line 281
    sget v14, Landroid/support/v7/appcompat/R$id;->notification_background:I

    move/from16 v19, v15

    .end local v15    # "showLine2":Z
    .local v19, "showLine2":Z
    sget v15, Landroid/support/v7/appcompat/R$drawable;->notification_bg_low:I

    invoke-virtual {v12, v14, v13, v15}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 283
    sget v14, Landroid/support/v7/appcompat/R$id;->icon:I

    sget v15, Landroid/support/v7/appcompat/R$drawable;->notification_template_icon_low_bg:I

    invoke-virtual {v12, v14, v13, v15}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_1

    .line 286
    .end local v19    # "showLine2":Z
    .restart local v15    # "showLine2":Z
    :cond_1
    move/from16 v19, v15

    .end local v15    # "showLine2":Z
    .restart local v19    # "showLine2":Z
    sget v14, Landroid/support/v7/appcompat/R$id;->notification_background:I

    sget v15, Landroid/support/v7/appcompat/R$drawable;->notification_bg:I

    invoke-virtual {v12, v14, v13, v15}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 288
    sget v14, Landroid/support/v7/appcompat/R$id;->icon:I

    sget v15, Landroid/support/v7/appcompat/R$drawable;->notification_template_icon_bg:I

    invoke-virtual {v12, v14, v13, v15}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_1

    .line 278
    .end local v19    # "showLine2":Z
    .restart local v15    # "showLine2":Z
    :cond_2
    move/from16 v19, v15

    .line 293
    .end local v15    # "showLine2":Z
    .restart local v19    # "showLine2":Z
    :goto_1
    const/16 v13, 0x8

    if-eqz v6, :cond_6

    .line 296
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x10

    if-lt v14, v15, :cond_3

    .line 297
    sget v14, Landroid/support/v7/appcompat/R$id;->icon:I

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 298
    sget v14, Landroid/support/v7/appcompat/R$id;->icon:I

    invoke-virtual {v12, v14, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_2

    .line 300
    :cond_3
    sget v14, Landroid/support/v7/appcompat/R$id;->icon:I

    invoke-virtual {v12, v14, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 302
    :goto_2
    if-eqz v5, :cond_5

    .line 303
    sget v14, Landroid/support/v7/appcompat/R$dimen;->notification_right_icon_size:I

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 305
    .local v14, "backgroundSize":I
    sget v15, Landroid/support/v7/appcompat/R$dimen;->notification_small_icon_background_padding:I

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    mul-int/lit8 v15, v15, 0x2

    sub-int v15, v14, v15

    .line 307
    .local v15, "iconSize":I
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v13, v8, :cond_4

    .line 308
    invoke-static {v0, v5, v14, v15, v10}, Landroid/support/v7/app/NotificationCompatImplBase;->createIconWithBackground(Landroid/content/Context;IIII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 313
    .local v8, "smallBit":Landroid/graphics/Bitmap;
    sget v9, Landroid/support/v7/appcompat/R$id;->right_icon:I

    invoke-virtual {v12, v9, v8}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 314
    .end local v8    # "smallBit":Landroid/graphics/Bitmap;
    goto :goto_3

    .line 315
    :cond_4
    sget v8, Landroid/support/v7/appcompat/R$id;->right_icon:I

    .line 316
    const/4 v9, -0x1

    invoke-static {v0, v5, v9}, Landroid/support/v7/app/NotificationCompatImplBase;->createColoredBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 315
    invoke-virtual {v12, v8, v9}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 318
    :goto_3
    sget v8, Landroid/support/v7/appcompat/R$id;->right_icon:I

    const/4 v9, 0x0

    invoke-virtual {v12, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 319
    .end local v14    # "backgroundSize":I
    .end local v15    # "iconSize":I
    goto :goto_4

    .line 302
    :cond_5
    const/4 v9, 0x0

    goto :goto_4

    .line 320
    :cond_6
    const/4 v9, 0x0

    if-eqz v5, :cond_8

    .line 321
    sget v8, Landroid/support/v7/appcompat/R$id;->icon:I

    invoke-virtual {v12, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 322
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_7

    .line 323
    sget v8, Landroid/support/v7/appcompat/R$dimen;->notification_large_icon_width:I

    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sget v9, Landroid/support/v7/appcompat/R$dimen;->notification_big_circle_margin:I

    .line 325
    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    sub-int/2addr v8, v9

    .line 326
    .local v8, "backgroundSize":I
    sget v9, Landroid/support/v7/appcompat/R$dimen;->notification_small_icon_size_as_large:I

    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 328
    .local v9, "iconSize":I
    invoke-static {v0, v5, v8, v9, v10}, Landroid/support/v7/app/NotificationCompatImplBase;->createIconWithBackground(Landroid/content/Context;IIII)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 333
    .local v13, "smallBit":Landroid/graphics/Bitmap;
    sget v14, Landroid/support/v7/appcompat/R$id;->icon:I

    invoke-virtual {v12, v14, v13}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 334
    .end local v8    # "backgroundSize":I
    .end local v9    # "iconSize":I
    .end local v13    # "smallBit":Landroid/graphics/Bitmap;
    goto :goto_4

    .line 335
    :cond_7
    sget v8, Landroid/support/v7/appcompat/R$id;->icon:I

    .line 336
    const/4 v9, -0x1

    invoke-static {v0, v5, v9}, Landroid/support/v7/app/NotificationCompatImplBase;->createColoredBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 335
    invoke-virtual {v12, v8, v9}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 339
    :cond_8
    :goto_4
    if-eqz v1, :cond_9

    .line 340
    sget v8, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {v12, v8, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 342
    :cond_9
    if-eqz v2, :cond_a

    .line 343
    sget v8, Landroid/support/v7/appcompat/R$id;->text:I

    invoke-virtual {v12, v8, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 344
    const/4 v13, 0x1

    .end local v16    # "showLine3":Z
    .local v13, "showLine3":Z
    goto :goto_5

    .line 342
    .end local v13    # "showLine3":Z
    .restart local v16    # "showLine3":Z
    :cond_a
    move/from16 v13, v16

    .line 347
    .end local v16    # "showLine3":Z
    .restart local v13    # "showLine3":Z
    :goto_5
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-ge v8, v9, :cond_b

    if-eqz v6, :cond_b

    const/4 v8, 0x1

    goto :goto_6

    :cond_b
    const/4 v8, 0x0

    .line 348
    .local v8, "hasRightSide":Z
    :goto_6
    if-eqz v3, :cond_c

    .line 349
    sget v9, Landroid/support/v7/appcompat/R$id;->info:I

    invoke-virtual {v12, v9, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 350
    sget v9, Landroid/support/v7/appcompat/R$id;->info:I

    const/4 v14, 0x0

    invoke-virtual {v12, v9, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 351
    const/4 v13, 0x1

    .line 352
    const/4 v8, 0x1

    goto :goto_8

    .line 353
    :cond_c
    if-lez v4, :cond_e

    .line 354
    sget v9, Landroid/support/v7/appcompat/R$integer;->status_bar_notification_info_maxnum:I

    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 356
    .local v9, "tooBig":I
    if-le v4, v9, :cond_d

    .line 357
    sget v14, Landroid/support/v7/appcompat/R$id;->info:I

    sget v15, Landroid/support/v7/appcompat/R$string;->status_bar_notification_info_overflow:I

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_7

    .line 360
    :cond_d
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v14

    .line 361
    .local v14, "f":Ljava/text/NumberFormat;
    sget v15, Landroid/support/v7/appcompat/R$id;->info:I

    int-to-long v0, v4

    invoke-virtual {v14, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v15, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 363
    .end local v14    # "f":Ljava/text/NumberFormat;
    :goto_7
    sget v0, Landroid/support/v7/appcompat/R$id;->info:I

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 364
    const/4 v13, 0x1

    .line 365
    const/4 v8, 0x1

    .line 366
    .end local v9    # "tooBig":I
    goto :goto_8

    .line 367
    :cond_e
    sget v0, Landroid/support/v7/appcompat/R$id;->info:I

    const/16 v1, 0x8

    invoke-virtual {v12, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 371
    :goto_8
    if-eqz v7, :cond_10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_10

    .line 372
    sget v0, Landroid/support/v7/appcompat/R$id;->text:I

    invoke-virtual {v12, v0, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 373
    if-eqz v2, :cond_f

    .line 374
    sget v0, Landroid/support/v7/appcompat/R$id;->text2:I

    invoke-virtual {v12, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 375
    sget v0, Landroid/support/v7/appcompat/R$id;->text2:I

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 376
    const/4 v15, 0x1

    move v0, v15

    const/16 v1, 0x8

    .end local v19    # "showLine2":Z
    .local v15, "showLine2":Z
    goto :goto_a

    .line 378
    .end local v15    # "showLine2":Z
    .restart local v19    # "showLine2":Z
    :cond_f
    sget v0, Landroid/support/v7/appcompat/R$id;->text2:I

    const/16 v1, 0x8

    invoke-virtual {v12, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_9

    .line 371
    :cond_10
    const/16 v1, 0x8

    .line 383
    :goto_9
    move/from16 v0, v19

    .end local v19    # "showLine2":Z
    .local v0, "showLine2":Z
    :goto_a
    if-eqz v0, :cond_12

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x10

    if-lt v9, v14, :cond_12

    .line 384
    if-eqz p14, :cond_11

    .line 386
    sget v9, Landroid/support/v7/appcompat/R$dimen;->notification_subtext_size:I

    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    .line 388
    .local v9, "subTextSize":F
    sget v14, Landroid/support/v7/appcompat/R$id;->text:I

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15, v9}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 391
    .end local v9    # "subTextSize":F
    :cond_11
    sget v16, Landroid/support/v7/appcompat/R$id;->line1:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v12

    invoke-virtual/range {v15 .. v20}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 394
    :cond_12
    const-wide/16 v14, 0x0

    move-wide/from16 v1, p9

    cmp-long v9, v1, v14

    if-eqz v9, :cond_14

    .line 395
    if-eqz p8, :cond_13

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x10

    if-lt v9, v14, :cond_13

    .line 396
    sget v9, Landroid/support/v7/appcompat/R$id;->chronometer:I

    const/4 v14, 0x0

    invoke-virtual {v12, v9, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 397
    sget v9, Landroid/support/v7/appcompat/R$id;->chronometer:I

    .line 398
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v14, v14, v16

    add-long/2addr v14, v1

    .line 397
    move/from16 v16, v0

    .end local v0    # "showLine2":Z
    .local v16, "showLine2":Z
    const-string v0, "setBase"

    invoke-virtual {v12, v9, v0, v14, v15}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 399
    sget v0, Landroid/support/v7/appcompat/R$id;->chronometer:I

    const-string v9, "setStarted"

    const/4 v14, 0x1

    invoke-virtual {v12, v0, v9, v14}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    const/4 v15, 0x0

    goto :goto_b

    .line 395
    .end local v16    # "showLine2":Z
    .restart local v0    # "showLine2":Z
    :cond_13
    move/from16 v16, v0

    .line 401
    .end local v0    # "showLine2":Z
    .restart local v16    # "showLine2":Z
    sget v0, Landroid/support/v7/appcompat/R$id;->time:I

    const/4 v15, 0x0

    invoke-virtual {v12, v0, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 402
    sget v0, Landroid/support/v7/appcompat/R$id;->time:I

    const-string v9, "setTime"

    invoke-virtual {v12, v0, v9, v1, v2}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 404
    :goto_b
    const/4 v8, 0x1

    goto :goto_c

    .line 394
    .end local v16    # "showLine2":Z
    .restart local v0    # "showLine2":Z
    :cond_14
    move/from16 v16, v0

    const/4 v15, 0x0

    .line 406
    .end local v0    # "showLine2":Z
    .restart local v16    # "showLine2":Z
    :goto_c
    sget v0, Landroid/support/v7/appcompat/R$id;->right_side:I

    if-eqz v8, :cond_15

    const/4 v9, 0x0

    goto :goto_d

    :cond_15
    const/16 v9, 0x8

    :goto_d
    invoke-virtual {v12, v0, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 407
    sget v0, Landroid/support/v7/appcompat/R$id;->line3:I

    if-eqz v13, :cond_16

    const/4 v14, 0x0

    goto :goto_e

    :cond_16
    const/16 v14, 0x8

    :goto_e
    invoke-virtual {v12, v0, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 408
    return-object v12
.end method

.method public static applyStandardTemplateWithActions(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIIIZLjava/util/ArrayList;)Landroid/widget/RemoteViews;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentTitle"    # Ljava/lang/CharSequence;
    .param p2, "contentText"    # Ljava/lang/CharSequence;
    .param p3, "contentInfo"    # Ljava/lang/CharSequence;
    .param p4, "number"    # I
    .param p5, "smallIcon"    # I
    .param p6, "largeIcon"    # Landroid/graphics/Bitmap;
    .param p7, "subText"    # Ljava/lang/CharSequence;
    .param p8, "useChronometer"    # Z
    .param p9, "when"    # J
    .param p11, "priority"    # I
    .param p12, "color"    # I
    .param p13, "resId"    # I
    .param p14, "fitIn1U"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "II",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJIIIZ",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;)",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    .line 199
    .local p15, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/NotificationCompat$Action;>;"
    move-object/from16 v0, p15

    invoke-static/range {p0 .. p14}, Landroid/support/v7/app/NotificationCompatImplBase;->applyStandardTemplate(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIIIZ)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 202
    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    sget v2, Landroid/support/v7/appcompat/R$id;->actions:I

    invoke-virtual {v1, v2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 203
    const/4 v2, 0x0

    .line 204
    .local v2, "actionsVisible":Z
    if-eqz v0, :cond_3

    .line 205
    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 206
    .local v3, "N":I
    if-lez v3, :cond_2

    .line 207
    const/4 v2, 0x1

    .line 208
    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    const/4 v3, 0x3

    .line 209
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 210
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/NotificationCompat$Action;

    move-object v6, p0

    invoke-static {p0, v5}, Landroid/support/v7/app/NotificationCompatImplBase;->generateActionButton(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;

    move-result-object v5

    .line 211
    .local v5, "button":Landroid/widget/RemoteViews;
    sget v7, Landroid/support/v7/appcompat/R$id;->actions:I

    invoke-virtual {v1, v7, v5}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 209
    .end local v5    # "button":Landroid/widget/RemoteViews;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v6, p0

    goto :goto_1

    .line 206
    .end local v4    # "i":I
    :cond_2
    move-object v6, p0

    goto :goto_1

    .line 204
    .end local v3    # "N":I
    :cond_3
    move-object v6, p0

    .line 215
    :goto_1
    if-eqz v2, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    const/16 v3, 0x8

    .line 216
    .local v3, "actionVisibility":I
    :goto_2
    sget v4, Landroid/support/v7/appcompat/R$id;->actions:I

    invoke-virtual {v1, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 217
    sget v4, Landroid/support/v7/appcompat/R$id;->action_divider:I

    invoke-virtual {v1, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 218
    return-object v1
.end method

.method public static buildIntoRemoteViews(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "outerView"    # Landroid/widget/RemoteViews;
    .param p2, "innerView"    # Landroid/widget/RemoteViews;

    .line 429
    invoke-static {p1}, Landroid/support/v7/app/NotificationCompatImplBase;->hideNormalContent(Landroid/widget/RemoteViews;)V

    .line 430
    sget v0, Landroid/support/v7/appcompat/R$id;->notification_main_column:I

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 431
    sget v0, Landroid/support/v7/appcompat/R$id;->notification_main_column:I

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 432
    sget v0, Landroid/support/v7/appcompat/R$id;->notification_main_column:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 433
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 435
    sget v3, Landroid/support/v7/appcompat/R$id;->notification_main_column_container:I

    const/4 v4, 0x0

    .line 436
    invoke-static {p0}, Landroid/support/v7/app/NotificationCompatImplBase;->calculateTopPadding(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 435
    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 438
    :cond_0
    return-void
.end method

.method public static calculateTopPadding(Landroid/content/Context;)I
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .line 447
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$dimen;->notification_top_pad:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 448
    .local v0, "padding":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$dimen;->notification_top_pad_large_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 450
    .local v1, "largePadding":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 451
    .local v2, "fontScale":F
    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3fa66666    # 1.3f

    invoke-static {v2, v3, v4}, Landroid/support/v7/app/NotificationCompatImplBase;->constrain(FFF)F

    move-result v4

    sub-float/2addr v4, v3

    const v5, 0x3e999998    # 0.29999995f

    div-float/2addr v4, v5

    .line 455
    .local v4, "largeFactor":F
    sub-float/2addr v3, v4

    int-to-float v5, v0

    mul-float v3, v3, v5

    int-to-float v5, v1

    mul-float v5, v5, v4

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    return v3
.end method

.method public static constrain(FFF)F
    .locals 1
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .line 459
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method private static createColoredBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iconId"    # I
    .param p2, "color"    # I

    .line 241
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/support/v7/app/NotificationCompatImplBase;->createColoredBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createColoredBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iconId"    # I
    .param p2, "color"    # I
    .param p3, "size"    # I

    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 246
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez p3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p3

    .line 247
    .local v1, "width":I
    :goto_0
    if-nez p3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, p3

    .line 248
    .local v2, "height":I
    :goto_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 249
    .local v3, "resultBitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 250
    if-eqz p2, :cond_2

    .line 251
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, p2, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 254
    :cond_2
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 255
    .local v4, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 256
    return-object v3
.end method

.method public static createIconWithBackground(Landroid/content/Context;IIII)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "iconId"    # I
    .param p2, "size"    # I
    .param p3, "iconSize"    # I
    .param p4, "color"    # I

    .line 413
    sget v0, Landroid/support/v7/appcompat/R$drawable;->notification_icon_background:I

    if-nez p4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, p4

    :goto_0
    invoke-static {p0, v0, v1, p2}, Landroid/support/v7/app/NotificationCompatImplBase;->createColoredBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 415
    .local v0, "coloredBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 416
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 417
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 418
    sub-int v3, p2, p3

    div-int/lit8 v3, v3, 0x2

    .line 419
    .local v3, "inset":I
    add-int v4, p3, v3

    add-int v5, p3, v3

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 420
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const/4 v5, -0x1

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 421
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 422
    return-object v0
.end method

.method private static generateActionButton(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Landroid/support/v4/app/NotificationCompat$Action;

    .line 223
    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 224
    .local v0, "tombstone":Z
    :goto_0
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 225
    invoke-static {}, Landroid/support/v7/app/NotificationCompatImplBase;->getActionTombstoneLayoutResource()I

    move-result v3

    goto :goto_1

    .line 226
    :cond_1
    invoke-static {}, Landroid/support/v7/app/NotificationCompatImplBase;->getActionLayoutResource()I

    move-result v3

    :goto_1
    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 227
    .local v1, "button":Landroid/widget/RemoteViews;
    sget v2, Landroid/support/v7/appcompat/R$id;->action_image:I

    .line 228
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getIcon()I

    move-result v3

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$color;->notification_action_color_filter:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 228
    invoke-static {p0, v3, v4}, Landroid/support/v7/app/NotificationCompatImplBase;->createColoredBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 227
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 230
    sget v2, Landroid/support/v7/appcompat/R$id;->action_text:I

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 231
    if-nez v0, :cond_2

    .line 232
    sget v2, Landroid/support/v7/appcompat/R$id;->action_container:I

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 234
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_3

    .line 235
    sget v2, Landroid/support/v7/appcompat/R$id;->action_container:I

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 237
    :cond_3
    return-object v1
.end method

.method private static generateContentViewMedia(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJILjava/util/List;[IZLandroid/app/PendingIntent;Z)Landroid/widget/RemoteViews;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentTitle"    # Ljava/lang/CharSequence;
    .param p2, "contentText"    # Ljava/lang/CharSequence;
    .param p3, "contentInfo"    # Ljava/lang/CharSequence;
    .param p4, "number"    # I
    .param p5, "largeIcon"    # Landroid/graphics/Bitmap;
    .param p6, "subText"    # Ljava/lang/CharSequence;
    .param p7, "useChronometer"    # Z
    .param p8, "when"    # J
    .param p10, "priority"    # I
    .param p12, "actionsToShowInCompact"    # [I
    .param p13, "showCancelButton"    # Z
    .param p14, "cancelButtonIntent"    # Landroid/app/PendingIntent;
    .param p15, "isDecoratedCustomView"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJI",
            "Ljava/util/List<",
            "TT;>;[IZ",
            "Landroid/app/PendingIntent;",
            "Z)",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    .line 81
    .local p11, "actions":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object/from16 v0, p12

    if-eqz p15, :cond_0

    sget v1, Landroid/support/v7/appcompat/R$layout;->notification_template_media_custom:I

    goto :goto_0

    :cond_0
    sget v1, Landroid/support/v7/appcompat/R$layout;->notification_template_media:I

    :goto_0
    move v15, v1

    const/16 v16, 0x1

    const/4 v7, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-wide/from16 v11, p8

    move/from16 v13, p10

    invoke-static/range {v2 .. v16}, Landroid/support/v7/app/NotificationCompatImplBase;->applyStandardTemplate(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIIIZ)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 88
    .local v1, "view":Landroid/widget/RemoteViews;
    invoke-interface/range {p11 .. p11}, Ljava/util/List;->size()I

    move-result v2

    .line 89
    .local v2, "numActions":I
    const/4 v3, 0x0

    if-nez v0, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    array-length v4, v0

    const/4 v5, 0x3

    .line 91
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_1
    nop

    .line 92
    .local v4, "N":I
    sget v5, Landroid/support/v7/appcompat/R$id;->media_actions:I

    invoke-virtual {v1, v5}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 93
    if-lez v4, :cond_4

    .line 94
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v4, :cond_3

    .line 95
    if-ge v5, v2, :cond_2

    .line 101
    aget v6, v0, v5

    move-object/from16 v7, p11

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/NotificationCompatBase$Action;

    .line 102
    .local v6, "action":Landroid/support/v4/app/NotificationCompatBase$Action;
    move-object/from16 v8, p0

    invoke-static {v8, v6}, Landroid/support/v7/app/NotificationCompatImplBase;->generateMediaActionButton(Landroid/content/Context;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/widget/RemoteViews;

    move-result-object v9

    .line 103
    .local v9, "button":Landroid/widget/RemoteViews;
    sget v10, Landroid/support/v7/appcompat/R$id;->media_actions:I

    invoke-virtual {v1, v10, v9}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 94
    .end local v6    # "action":Landroid/support/v4/app/NotificationCompatBase$Action;
    .end local v9    # "button":Landroid/widget/RemoteViews;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 96
    :cond_2
    move-object/from16 v8, p0

    move-object/from16 v7, p11

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 98
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    add-int/lit8 v3, v2, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v10, 0x1

    aput-object v3, v9, v10

    .line 96
    const-string v3, "setShowActionsInCompactView: action %d out of bounds (max %d)"

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 94
    :cond_3
    move-object/from16 v8, p0

    move-object/from16 v7, p11

    goto :goto_3

    .line 93
    .end local v5    # "i":I
    :cond_4
    move-object/from16 v8, p0

    move-object/from16 v7, p11

    .line 106
    :goto_3
    const/16 v5, 0x8

    if-eqz p13, :cond_5

    .line 107
    sget v6, Landroid/support/v7/appcompat/R$id;->end_padder:I

    invoke-virtual {v1, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 108
    sget v5, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    invoke-virtual {v1, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 109
    sget v3, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    move-object/from16 v6, p14

    invoke-virtual {v1, v3, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 110
    sget v3, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v9, Landroid/support/v7/appcompat/R$integer;->cancel_button_image_alpha:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 110
    const-string v9, "setAlpha"

    invoke-virtual {v1, v3, v9, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_4

    .line 113
    :cond_5
    move-object/from16 v6, p14

    sget v9, Landroid/support/v7/appcompat/R$id;->end_padder:I

    invoke-virtual {v1, v9, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 114
    sget v3, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    invoke-virtual {v1, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 116
    :goto_4
    return-object v1
.end method

.method private static generateMediaActionButton(Landroid/content/Context;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/widget/RemoteViews;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Landroid/support/v4/app/NotificationCompatBase$Action;

    .line 168
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 169
    .local v0, "tombstone":Z
    :goto_0
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v3, Landroid/support/v7/appcompat/R$layout;->notification_media_action:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 171
    .local v1, "button":Landroid/widget/RemoteViews;
    sget v2, Landroid/support/v7/appcompat/R$id;->action0:I

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getIcon()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 172
    if-nez v0, :cond_1

    .line 173
    sget v2, Landroid/support/v7/appcompat/R$id;->action0:I

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 175
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_2

    .line 176
    sget v2, Landroid/support/v7/appcompat/R$id;->action0:I

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 178
    :cond_2
    return-object v1
.end method

.method public static generateMediaBigView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIILjava/util/List;ZLandroid/app/PendingIntent;Z)Landroid/widget/RemoteViews;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentTitle"    # Ljava/lang/CharSequence;
    .param p2, "contentText"    # Ljava/lang/CharSequence;
    .param p3, "contentInfo"    # Ljava/lang/CharSequence;
    .param p4, "number"    # I
    .param p5, "largeIcon"    # Landroid/graphics/Bitmap;
    .param p6, "subText"    # Ljava/lang/CharSequence;
    .param p7, "useChronometer"    # Z
    .param p8, "when"    # J
    .param p10, "priority"    # I
    .param p11, "color"    # I
    .param p13, "showCancelButton"    # Z
    .param p14, "cancelButtonIntent"    # Landroid/app/PendingIntent;
    .param p15, "decoratedCustomView"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJII",
            "Ljava/util/List<",
            "TT;>;Z",
            "Landroid/app/PendingIntent;",
            "Z)",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    .line 141
    .local p12, "actions":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface/range {p12 .. p12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 142
    .local v0, "actionCount":I
    nop

    .line 144
    move/from16 v1, p15

    invoke-static {v1, v0}, Landroid/support/v7/app/NotificationCompatImplBase;->getBigMediaLayoutResource(ZI)I

    move-result v15

    .line 142
    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-wide/from16 v11, p8

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-static/range {v2 .. v16}, Landroid/support/v7/app/NotificationCompatImplBase;->applyStandardTemplate(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIIIZ)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 147
    .local v2, "big":Landroid/widget/RemoteViews;
    sget v3, Landroid/support/v7/appcompat/R$id;->media_actions:I

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 148
    if-lez v0, :cond_1

    .line 149
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 150
    move-object/from16 v4, p12

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/NotificationCompatBase$Action;

    move-object/from16 v6, p0

    invoke-static {v6, v5}, Landroid/support/v7/app/NotificationCompatImplBase;->generateMediaActionButton(Landroid/content/Context;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/widget/RemoteViews;

    move-result-object v5

    .line 151
    .local v5, "button":Landroid/widget/RemoteViews;
    sget v7, Landroid/support/v7/appcompat/R$id;->media_actions:I

    invoke-virtual {v2, v7, v5}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 149
    .end local v5    # "button":Landroid/widget/RemoteViews;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v6, p0

    move-object/from16 v4, p12

    goto :goto_1

    .line 148
    .end local v3    # "i":I
    :cond_1
    move-object/from16 v6, p0

    move-object/from16 v4, p12

    .line 154
    :goto_1
    if-eqz p13, :cond_2

    .line 155
    sget v3, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 156
    sget v3, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Landroid/support/v7/appcompat/R$integer;->cancel_button_image_alpha:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 156
    const-string v7, "setAlpha"

    invoke-virtual {v2, v3, v7, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 158
    sget v3, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    move-object/from16 v5, p14

    invoke-virtual {v2, v3, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_2

    .line 160
    :cond_2
    move-object/from16 v5, p14

    sget v3, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const/16 v7, 0x8

    invoke-virtual {v2, v3, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 162
    :goto_2
    return-object v2
.end method

.method private static getActionLayoutResource()I
    .locals 1

    .line 260
    sget v0, Landroid/support/v7/appcompat/R$layout;->notification_action:I

    return v0
.end method

.method private static getActionTombstoneLayoutResource()I
    .locals 1

    .line 264
    sget v0, Landroid/support/v7/appcompat/R$layout;->notification_action_tombstone:I

    return v0
.end method

.method private static getBigMediaLayoutResource(ZI)I
    .locals 1
    .param p0, "decoratedCustomView"    # Z
    .param p1, "actionCount"    # I

    .line 183
    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    .line 184
    if-eqz p0, :cond_0

    sget v0, Landroid/support/v7/appcompat/R$layout;->notification_template_big_media_narrow_custom:I

    goto :goto_0

    :cond_0
    sget v0, Landroid/support/v7/appcompat/R$layout;->notification_template_big_media_narrow:I

    :goto_0
    return v0

    .line 188
    :cond_1
    if-eqz p0, :cond_2

    sget v0, Landroid/support/v7/appcompat/R$layout;->notification_template_big_media_custom:I

    goto :goto_1

    :cond_2
    sget v0, Landroid/support/v7/appcompat/R$layout;->notification_template_big_media:I

    :goto_1
    return v0
.end method

.method private static hideNormalContent(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p0, "outerView"    # Landroid/widget/RemoteViews;

    .line 441
    sget v0, Landroid/support/v7/appcompat/R$id;->title:I

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 442
    sget v0, Landroid/support/v7/appcompat/R$id;->text2:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 443
    sget v0, Landroid/support/v7/appcompat/R$id;->text:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 444
    return-void
.end method

.method public static overrideContentViewMedia(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJILjava/util/List;[IZLandroid/app/PendingIntent;Z)Landroid/widget/RemoteViews;
    .locals 3
    .param p0, "builder"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentTitle"    # Ljava/lang/CharSequence;
    .param p3, "contentText"    # Ljava/lang/CharSequence;
    .param p4, "contentInfo"    # Ljava/lang/CharSequence;
    .param p5, "number"    # I
    .param p6, "largeIcon"    # Landroid/graphics/Bitmap;
    .param p7, "subText"    # Ljava/lang/CharSequence;
    .param p8, "useChronometer"    # Z
    .param p9, "when"    # J
    .param p11, "priority"    # I
    .param p13, "actionsToShowInCompact"    # [I
    .param p14, "showCancelButton"    # Z
    .param p15, "cancelButtonIntent"    # Landroid/app/PendingIntent;
    .param p16, "isDecoratedCustomView"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJI",
            "Ljava/util/List<",
            "TT;>;[IZ",
            "Landroid/app/PendingIntent;",
            "Z)",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    .line 63
    .local p12, "actions":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static/range {p1 .. p16}, Landroid/support/v7/app/NotificationCompatImplBase;->generateContentViewMedia(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJILjava/util/List;[IZLandroid/app/PendingIntent;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 67
    .local v0, "views":Landroid/widget/RemoteViews;
    invoke-interface {p0}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 68
    if-eqz p14, :cond_0

    .line 69
    invoke-interface {p0}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 71
    :cond_0
    return-object v0
.end method

.method public static overrideMediaBigContentView(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIILjava/util/List;ZLandroid/app/PendingIntent;Z)V
    .locals 2
    .param p0, "n"    # Landroid/app/Notification;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentTitle"    # Ljava/lang/CharSequence;
    .param p3, "contentText"    # Ljava/lang/CharSequence;
    .param p4, "contentInfo"    # Ljava/lang/CharSequence;
    .param p5, "number"    # I
    .param p6, "largeIcon"    # Landroid/graphics/Bitmap;
    .param p7, "subText"    # Ljava/lang/CharSequence;
    .param p8, "useChronometer"    # Z
    .param p9, "when"    # J
    .param p11, "priority"    # I
    .param p12, "color"    # I
    .param p14, "showCancelButton"    # Z
    .param p15, "cancelButtonIntent"    # Landroid/app/PendingIntent;
    .param p16, "decoratedCustomView"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/app/Notification;",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJII",
            "Ljava/util/List<",
            "TT;>;Z",
            "Landroid/app/PendingIntent;",
            "Z)V"
        }
    .end annotation

    .line 126
    .local p13, "actions":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v0, p0

    invoke-static/range {p1 .. p16}, Landroid/support/v7/app/NotificationCompatImplBase;->generateMediaBigView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIILjava/util/List;ZLandroid/app/PendingIntent;Z)Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 129
    if-eqz p14, :cond_0

    .line 130
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 132
    :cond_0
    return-void
.end method
