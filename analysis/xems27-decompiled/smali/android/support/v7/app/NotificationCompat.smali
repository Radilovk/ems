.class public Landroid/support/v7/app/NotificationCompat;
.super Landroid/support/v4/app/NotificationCompat;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/NotificationCompat$DecoratedMediaCustomViewStyle;,
        Landroid/support/v7/app/NotificationCompat$DecoratedCustomViewStyle;,
        Landroid/support/v7/app/NotificationCompat$MediaStyle;,
        Landroid/support/v7/app/NotificationCompat$Api24Extender;,
        Landroid/support/v7/app/NotificationCompat$LollipopExtender;,
        Landroid/support/v7/app/NotificationCompat$JellybeanExtender;,
        Landroid/support/v7/app/NotificationCompat$IceCreamSandwichExtender;,
        Landroid/support/v7/app/NotificationCompat$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat;-><init>()V

    .line 698
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/app/NotificationCompat$MessagingStyle;)Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/app/NotificationCompat$MessagingStyle;

    .line 52
    invoke-static {p0}, Landroid/support/v7/app/NotificationCompat;->findLatestIncomingMessage(Landroid/support/v4/app/NotificationCompat$MessagingStyle;)Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationCompat$MessagingStyle;Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p1, "x1"    # Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    .param p2, "x2"    # Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    .line 52
    invoke-static {p0, p1, p2}, Landroid/support/v7/app/NotificationCompat;->makeMessageLine(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationCompat$MessagingStyle;Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
    .param p1, "x1"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .line 52
    invoke-static {p0, p1}, Landroid/support/v7/app/NotificationCompat;->addStyleGetContentViewIcs(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
    .param p1, "x1"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .line 52
    invoke-static {p0, p1}, Landroid/support/v7/app/NotificationCompat;->addStyleGetContentViewJellybean(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Notification;
    .param p1, "x1"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .line 52
    invoke-static {p0, p1}, Landroid/support/v7/app/NotificationCompat;->addBigStyleToBuilderJellybean(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V

    return-void
.end method

.method static synthetic access$600(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
    .param p1, "x1"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .line 52
    invoke-static {p0, p1}, Landroid/support/v7/app/NotificationCompat;->addStyleGetContentViewLollipop(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Notification;
    .param p1, "x1"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .line 52
    invoke-static {p0, p1}, Landroid/support/v7/app/NotificationCompat;->addBigStyleToBuilderLollipop(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V

    return-void
.end method

.method static synthetic access$800(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Notification;
    .param p1, "x1"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .line 52
    invoke-static {p0, p1}, Landroid/support/v7/app/NotificationCompat;->addHeadsUpToBuilderLollipop(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V

    return-void
.end method

.method static synthetic access$900(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
    .param p1, "x1"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .line 52
    invoke-static {p0, p1}, Landroid/support/v7/app/NotificationCompat;->addStyleToBuilderApi24(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)V

    return-void
.end method

.method private static addBigStyleToBuilderJellybean(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 21
    .param p0, "n"    # Landroid/app/Notification;
    .param p1, "b"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .line 251
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    instance-of v1, v1, Landroid/support/v7/app/NotificationCompat$MediaStyle;

    if-eqz v1, :cond_3

    .line 252
    iget-object v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    check-cast v1, Landroid/support/v7/app/NotificationCompat$MediaStyle;

    .line 253
    .local v1, "mediaStyle":Landroid/support/v7/app/NotificationCompat$MediaStyle;
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 254
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    :goto_0
    nop

    .line 256
    .local v2, "innerView":Landroid/widget/RemoteViews;
    iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    instance-of v3, v3, Landroid/support/v7/app/NotificationCompat$DecoratedMediaCustomViewStyle;

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .local v3, "isDecorated":Z
    :goto_1
    move/from16 v20, v3

    .line 258
    iget-object v5, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    iget-object v7, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    iget-object v8, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    iget v9, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    iget-object v10, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    iget-object v11, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    iget-boolean v12, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    .line 260
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getPriority()I

    move-result v15

    const/16 v16, 0x0

    iget-object v4, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    move-object/from16 v17, v4

    iget-boolean v4, v1, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mShowCancelButton:Z

    move/from16 v18, v4

    iget-object v4, v1, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mCancelButtonIntent:Landroid/app/PendingIntent;

    move-object/from16 v19, v4

    .line 258
    move-object/from16 v4, p0

    invoke-static/range {v4 .. v20}, Landroid/support/v7/app/NotificationCompatImplBase;->overrideMediaBigContentView(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIILjava/util/List;ZLandroid/app/PendingIntent;Z)V

    .line 263
    if-eqz v3, :cond_2

    .line 264
    iget-object v4, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v5, p0

    iget-object v6, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-static {v4, v6, v2}, Landroid/support/v7/app/NotificationCompatImplBase;->buildIntoRemoteViews(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    goto :goto_2

    .line 263
    :cond_2
    move-object/from16 v5, p0

    goto :goto_2

    .line 267
    .end local v1    # "mediaStyle":Landroid/support/v7/app/NotificationCompat$MediaStyle;
    .end local v2    # "innerView":Landroid/widget/RemoteViews;
    .end local v3    # "isDecorated":Z
    :cond_3
    move-object/from16 v5, p0

    iget-object v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    instance-of v1, v1, Landroid/support/v7/app/NotificationCompat$DecoratedCustomViewStyle;

    if-eqz v1, :cond_4

    .line 268
    invoke-static/range {p0 .. p1}, Landroid/support/v7/app/NotificationCompat;->addDecoratedBigStyleToBuilderJellybean(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V

    goto :goto_3

    .line 267
    :cond_4
    :goto_2
    nop

    .line 270
    :goto_3
    return-void
.end method

.method private static addBigStyleToBuilderLollipop(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 18
    .param p0, "n"    # Landroid/app/Notification;
    .param p1, "b"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .line 327
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 328
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    :goto_0
    move-object v14, v1

    .line 330
    .local v14, "innerView":Landroid/widget/RemoteViews;
    iget-object v1, v15, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    instance-of v1, v1, Landroid/support/v7/app/NotificationCompat$DecoratedMediaCustomViewStyle;

    if-eqz v1, :cond_1

    if-eqz v14, :cond_1

    .line 331
    iget-object v1, v15, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    iget-object v2, v15, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    iget-object v3, v15, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    iget-object v4, v15, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    iget v5, v15, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    iget-object v6, v15, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    iget-object v7, v15, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    iget-boolean v8, v15, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    .line 333
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getPriority()I

    move-result v11

    const/4 v12, 0x0

    iget-object v13, v15, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    const/16 v16, 0x0

    move-object/from16 v17, v14

    .end local v14    # "innerView":Landroid/widget/RemoteViews;
    .local v17, "innerView":Landroid/widget/RemoteViews;
    move/from16 v14, v16

    const/16 v16, 0x0

    move-object/from16 v15, v16

    const/16 v16, 0x1

    .line 331
    move-object/from16 v0, p0

    invoke-static/range {v0 .. v16}, Landroid/support/v7/app/NotificationCompatImplBase;->overrideMediaBigContentView(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIILjava/util/List;ZLandroid/app/PendingIntent;Z)V

    .line 336
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v2, p0

    iget-object v3, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v4, v17

    .end local v17    # "innerView":Landroid/widget/RemoteViews;
    .local v4, "innerView":Landroid/widget/RemoteViews;
    invoke-static {v1, v3, v4}, Landroid/support/v7/app/NotificationCompatImplBase;->buildIntoRemoteViews(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 338
    iget-object v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    iget-object v3, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getColor()I

    move-result v5

    invoke-static {v1, v3, v5}, Landroid/support/v7/app/NotificationCompat;->setBackgroundColor(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    goto :goto_1

    .line 330
    .end local v4    # "innerView":Landroid/widget/RemoteViews;
    .restart local v14    # "innerView":Landroid/widget/RemoteViews;
    :cond_1
    move-object v2, v0

    move-object v4, v14

    move-object v0, v15

    .line 339
    .end local v14    # "innerView":Landroid/widget/RemoteViews;
    .restart local v4    # "innerView":Landroid/widget/RemoteViews;
    iget-object v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    instance-of v1, v1, Landroid/support/v7/app/NotificationCompat$DecoratedCustomViewStyle;

    if-eqz v1, :cond_2

    .line 340
    invoke-static/range {p0 .. p1}, Landroid/support/v7/app/NotificationCompat;->addDecoratedBigStyleToBuilderJellybean(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 342
    :cond_2
    :goto_1
    return-void
.end method

.method private static addDecoratedBigStyleToBuilderJellybean(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 21
    .param p0, "n"    # Landroid/app/Notification;
    .param p1, "b"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .line 291
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    .line 292
    .local v2, "bigContentView":Landroid/widget/RemoteViews;
    if-eqz v2, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v3

    .line 293
    .local v3, "innerView":Landroid/widget/RemoteViews;
    :goto_0
    if-nez v3, :cond_1

    .line 295
    return-void

    .line 297
    :cond_1
    iget-object v4, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    iget-object v5, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    iget-object v6, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    iget-object v7, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    iget v8, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    iget v9, v0, Landroid/app/Notification;->icon:I

    iget-object v10, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    iget-object v11, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    iget-boolean v12, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    .line 299
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v13

    .line 300
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getPriority()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getColor()I

    move-result v16

    sget v17, Landroid/support/v7/appcompat/R$layout;->notification_template_custom_big:I

    const/16 v18, 0x0

    move-object/from16 v20, v2

    .end local v2    # "bigContentView":Landroid/widget/RemoteViews;
    .local v20, "bigContentView":Landroid/widget/RemoteViews;
    iget-object v2, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 297
    move-object/from16 v19, v2

    invoke-static/range {v4 .. v19}, Landroid/support/v7/app/NotificationCompatImplBase;->applyStandardTemplateWithActions(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIIIZLjava/util/ArrayList;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 302
    .local v2, "remoteViews":Landroid/widget/RemoteViews;
    iget-object v4, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v3}, Landroid/support/v7/app/NotificationCompatImplBase;->buildIntoRemoteViews(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 303
    iput-object v2, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 304
    return-void
.end method

.method private static addDecoratedHeadsUpToBuilderLollipop(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 21
    .param p0, "n"    # Landroid/app/Notification;
    .param p1, "b"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .line 309
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    .line 310
    .local v2, "headsUp":Landroid/widget/RemoteViews;
    if-eqz v2, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v3

    .line 311
    .local v3, "innerView":Landroid/widget/RemoteViews;
    :goto_0
    if-nez v2, :cond_1

    .line 313
    return-void

    .line 315
    :cond_1
    iget-object v4, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    iget-object v5, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    iget-object v6, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    iget-object v7, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    iget v8, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    iget v9, v0, Landroid/app/Notification;->icon:I

    iget-object v10, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    iget-object v11, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    iget-boolean v12, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    .line 317
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getPriority()I

    move-result v15

    .line 318
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getColor()I

    move-result v16

    sget v17, Landroid/support/v7/appcompat/R$layout;->notification_template_custom_big:I

    const/16 v18, 0x0

    move-object/from16 v20, v2

    .end local v2    # "headsUp":Landroid/widget/RemoteViews;
    .local v20, "headsUp":Landroid/widget/RemoteViews;
    iget-object v2, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 315
    move-object/from16 v19, v2

    invoke-static/range {v4 .. v19}, Landroid/support/v7/app/NotificationCompatImplBase;->applyStandardTemplateWithActions(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIIIZLjava/util/ArrayList;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 320
    .local v2, "remoteViews":Landroid/widget/RemoteViews;
    iget-object v4, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v3}, Landroid/support/v7/app/NotificationCompatImplBase;->buildIntoRemoteViews(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 321
    iput-object v2, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 322
    return-void
.end method

.method private static addHeadsUpToBuilderLollipop(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 20
    .param p0, "n"    # Landroid/app/Notification;
    .param p1, "b"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .line 355
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 356
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    goto :goto_0

    .line 357
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    :goto_0
    nop

    .line 358
    .local v2, "innerView":Landroid/widget/RemoteViews;
    iget-object v3, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    instance-of v3, v3, Landroid/support/v7/app/NotificationCompat$DecoratedMediaCustomViewStyle;

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 359
    iget-object v4, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    iget-object v5, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    iget-object v6, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    iget-object v7, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    iget v8, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    iget-object v9, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    iget-object v10, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    iget-boolean v11, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    .line 361
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v12

    .line 362
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getPriority()I

    move-result v14

    const/4 v15, 0x0

    iget-object v3, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    .line 359
    move-object/from16 v16, v3

    invoke-static/range {v4 .. v19}, Landroid/support/v7/app/NotificationCompatImplBase;->generateMediaBigView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIILjava/util/List;ZLandroid/app/PendingIntent;Z)Landroid/widget/RemoteViews;

    move-result-object v3

    iput-object v3, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 364
    iget-object v3, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-static {v3, v4, v2}, Landroid/support/v7/app/NotificationCompatImplBase;->buildIntoRemoteViews(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 366
    iget-object v3, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getColor()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/support/v7/app/NotificationCompat;->setBackgroundColor(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    goto :goto_1

    .line 367
    :cond_1
    iget-object v3, v1, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    instance-of v3, v3, Landroid/support/v7/app/NotificationCompat$DecoratedCustomViewStyle;

    if-eqz v3, :cond_2

    .line 368
    invoke-static/range {p0 .. p1}, Landroid/support/v7/app/NotificationCompat;->addDecoratedHeadsUpToBuilderLollipop(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 370
    :cond_2
    :goto_1
    return-void
.end method

.method private static addMessagingFallBackStyle(Landroid/support/v4/app/NotificationCompat$MessagingStyle;Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 9
    .param p0, "style"    # Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    .param p1, "builder"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
    .param p2, "b"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .line 197
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 198
    .local v0, "completeMessage":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object v1

    .line 199
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;>;"
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->getConversationTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 200
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/app/NotificationCompat;->hasMessagesWithoutSender(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 201
    .local v2, "showNames":Z
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_4

    .line 202
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    .line 204
    .local v6, "m":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    if-eqz v2, :cond_2

    invoke-static {p2, p0, v6}, Landroid/support/v7/app/NotificationCompat;->makeMessageLine(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationCompat$MessagingStyle;Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_3

    :cond_2
    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 205
    .local v7, "line":Ljava/lang/CharSequence;
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v4

    if-eq v5, v8, :cond_3

    .line 206
    const-string v8, "\n"

    invoke-virtual {v0, v3, v8}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 208
    :cond_3
    invoke-virtual {v0, v3, v7}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 201
    .end local v6    # "m":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    .end local v7    # "line":Ljava/lang/CharSequence;
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 210
    .end local v5    # "i":I
    :cond_4
    invoke-static {p1, v0}, Landroid/support/v7/app/NotificationCompatImplJellybean;->addBigTextStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Ljava/lang/CharSequence;)V

    .line 211
    return-void
.end method

.method private static addStyleGetContentViewIcs(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;
    .locals 20
    .param p0, "builder"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
    .param p1, "b"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .line 228
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    instance-of v1, v1, Landroid/support/v7/app/NotificationCompat$MediaStyle;

    if-eqz v1, :cond_2

    .line 229
    iget-object v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    check-cast v1, Landroid/support/v7/app/NotificationCompat$MediaStyle;

    .line 230
    .local v1, "mediaStyle":Landroid/support/v7/app/NotificationCompat$MediaStyle;
    iget-object v2, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    instance-of v2, v2, Landroid/support/v7/app/NotificationCompat$DecoratedMediaCustomViewStyle;

    if-eqz v2, :cond_0

    .line 231
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .local v2, "isDecorated":Z
    :goto_0
    move/from16 v19, v2

    .line 232
    iget-object v4, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    iget-object v5, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    iget-object v7, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    iget v8, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    iget-object v9, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    iget-object v10, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    iget-boolean v11, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    .line 234
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v12

    .line 235
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getPriority()I

    move-result v14

    iget-object v15, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v3, v1, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    move-object/from16 v16, v3

    iget-boolean v3, v1, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mShowCancelButton:Z

    move/from16 v17, v3

    iget-object v3, v1, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mCancelButtonIntent:Landroid/app/PendingIntent;

    move-object/from16 v18, v3

    .line 232
    move-object/from16 v3, p0

    invoke-static/range {v3 .. v19}, Landroid/support/v7/app/NotificationCompatImplBase;->overrideContentViewMedia(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJILjava/util/List;[IZLandroid/app/PendingIntent;Z)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 237
    .local v3, "contentViewMedia":Landroid/widget/RemoteViews;
    if-eqz v2, :cond_1

    .line 238
    iget-object v4, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 239
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v5

    .line 238
    invoke-static {v4, v3, v5}, Landroid/support/v7/app/NotificationCompatImplBase;->buildIntoRemoteViews(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 240
    return-object v3

    .line 237
    .end local v1    # "mediaStyle":Landroid/support/v7/app/NotificationCompat$MediaStyle;
    .end local v2    # "isDecorated":Z
    .end local v3    # "contentViewMedia":Landroid/widget/RemoteViews;
    :cond_1
    goto :goto_1

    .line 242
    :cond_2
    iget-object v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    instance-of v1, v1, Landroid/support/v7/app/NotificationCompat$DecoratedCustomViewStyle;

    if-eqz v1, :cond_3

    .line 243
    invoke-static/range {p1 .. p1}, Landroid/support/v7/app/NotificationCompat;->getDecoratedContentView(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1

    .line 242
    :cond_3
    :goto_1
    nop

    .line 245
    const/4 v1, 0x0

    return-object v1
.end method

.method private static addStyleGetContentViewJellybean(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "builder"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
    .param p1, "b"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .line 141
    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    instance-of v0, v0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    check-cast v0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;

    invoke-static {v0, p0, p1}, Landroid/support/v7/app/NotificationCompat;->addMessagingFallBackStyle(Landroid/support/v4/app/NotificationCompat$MessagingStyle;Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 144
    :cond_0
    invoke-static {p0, p1}, Landroid/support/v7/app/NotificationCompat;->addStyleGetContentViewIcs(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private static addStyleGetContentViewLollipop(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;
    .locals 23
    .param p0, "builder"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
    .param p1, "b"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .line 102
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    instance-of v1, v1, Landroid/support/v7/app/NotificationCompat$MediaStyle;

    if-eqz v1, :cond_7

    .line 103
    iget-object v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    check-cast v1, Landroid/support/v7/app/NotificationCompat$MediaStyle;

    .line 104
    .local v1, "mediaStyle":Landroid/support/v7/app/NotificationCompat$MediaStyle;
    iget-object v2, v1, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    iget-object v3, v1, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 106
    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 104
    :goto_0
    move-object/from16 v5, p0

    invoke-static {v5, v2, v3}, Landroid/support/v7/app/NotificationCompatImpl21;->addMediaStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;[ILjava/lang/Object;)V

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 112
    .local v2, "hasContentView":Z
    :goto_1
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_2

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-gt v7, v8, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    move/from16 v22, v7

    .line 114
    .local v22, "isMorL":Z
    if-nez v2, :cond_4

    if-eqz v22, :cond_3

    .line 115
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;

    move-result-object v7

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    nop

    .line 116
    .local v3, "createCustomContent":Z
    :goto_4
    iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    instance-of v6, v6, Landroid/support/v7/app/NotificationCompat$DecoratedMediaCustomViewStyle;

    if-eqz v6, :cond_6

    if-eqz v3, :cond_6

    .line 117
    iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    iget-object v7, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    iget-object v8, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    iget-object v9, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    iget v10, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    iget-object v11, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    iget-object v12, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    iget-boolean v13, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    .line 120
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getPriority()I

    move-result v16

    iget-object v4, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    move-object/from16 v17, v4

    iget-object v4, v1, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    move-object/from16 v18, v4

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 117
    move-object/from16 v5, p0

    move/from16 v21, v2

    invoke-static/range {v5 .. v21}, Landroid/support/v7/app/NotificationCompatImplBase;->overrideContentViewMedia(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJILjava/util/List;[IZLandroid/app/PendingIntent;Z)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 123
    .local v4, "contentViewMedia":Landroid/widget/RemoteViews;
    if-eqz v2, :cond_5

    .line 124
    iget-object v5, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v6

    .line 124
    invoke-static {v5, v4, v6}, Landroid/support/v7/app/NotificationCompatImplBase;->buildIntoRemoteViews(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 127
    :cond_5
    iget-object v5, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getColor()I

    move-result v6

    invoke-static {v5, v4, v6}, Landroid/support/v7/app/NotificationCompat;->setBackgroundColor(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 128
    return-object v4

    .line 130
    .end local v4    # "contentViewMedia":Landroid/widget/RemoteViews;
    :cond_6
    return-object v4

    .line 131
    .end local v1    # "mediaStyle":Landroid/support/v7/app/NotificationCompat$MediaStyle;
    .end local v2    # "hasContentView":Z
    .end local v3    # "createCustomContent":Z
    .end local v22    # "isMorL":Z
    :cond_7
    iget-object v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    instance-of v1, v1, Landroid/support/v7/app/NotificationCompat$DecoratedCustomViewStyle;

    if-eqz v1, :cond_8

    .line 132
    invoke-static/range {p1 .. p1}, Landroid/support/v7/app/NotificationCompat;->getDecoratedContentView(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1

    .line 134
    :cond_8
    invoke-static/range {p0 .. p1}, Landroid/support/v7/app/NotificationCompat;->addStyleGetContentViewJellybean(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method private static addStyleToBuilderApi24(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 1
    .param p0, "builder"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
    .param p1, "b"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .line 89
    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    instance-of v0, v0, Landroid/support/v7/app/NotificationCompat$DecoratedCustomViewStyle;

    if-eqz v0, :cond_0

    .line 90
    invoke-static {p0}, Landroid/support/v7/app/NotificationCompatImpl24;->addDecoratedCustomViewStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    instance-of v0, v0, Landroid/support/v7/app/NotificationCompat$DecoratedMediaCustomViewStyle;

    if-eqz v0, :cond_1

    .line 92
    invoke-static {p0}, Landroid/support/v7/app/NotificationCompatImpl24;->addDecoratedMediaCustomViewStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    instance-of v0, v0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;

    if-nez v0, :cond_2

    .line 94
    invoke-static {p0, p1}, Landroid/support/v7/app/NotificationCompat;->addStyleGetContentViewLollipop(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;

    .line 96
    :cond_2
    :goto_0
    return-void
.end method

.method private static findLatestIncomingMessage(Landroid/support/v4/app/NotificationCompat$MessagingStyle;)Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    .locals 4
    .param p0, "style"    # Landroid/support/v4/app/NotificationCompat$MessagingStyle;

    .line 148
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object v0

    .line 149
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 150
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    .line 152
    .local v2, "m":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 153
    return-object v2

    .line 149
    .end local v2    # "m":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 156
    .end local v1    # "i":I
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 158
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    return-object v1

    .line 160
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getDecoratedContentView(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;
    .locals 18
    .param p0, "b"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .line 274
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    if-nez v1, :cond_0

    .line 276
    const/4 v1, 0x0

    return-object v1

    .line 278
    :cond_0
    iget-object v2, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    iget-object v4, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    iget-object v5, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    iget v6, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    iget-object v1, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v7, v1, Landroid/app/Notification;->icon:I

    iget-object v8, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    iget-object v9, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    iget-boolean v10, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    .line 281
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/NotificationCompat$Builder;->getPriority()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/NotificationCompat$Builder;->getColor()I

    move-result v14

    sget v15, Landroid/support/v7/appcompat/R$layout;->notification_template_custom_big:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 278
    invoke-static/range {v2 .. v17}, Landroid/support/v7/app/NotificationCompatImplBase;->applyStandardTemplateWithActions(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIIIZLjava/util/ArrayList;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 283
    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    iget-object v2, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 284
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v3

    .line 283
    invoke-static {v2, v1, v3}, Landroid/support/v7/app/NotificationCompatImplBase;->buildIntoRemoteViews(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 285
    return-object v1
.end method

.method public static getMediaSession(Landroid/app/Notification;)Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 4
    .param p0, "notification"    # Landroid/app/Notification;

    .line 63
    invoke-static {p0}, Landroid/support/v7/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    .line 64
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 65
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const-string v3, "android.mediaSession"

    if-lt v1, v2, :cond_1

    .line 66
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 67
    .local v1, "tokenInner":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 68
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->fromToken(Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v2

    return-object v2

    .line 70
    .end local v1    # "tokenInner":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 71
    :cond_1
    invoke-static {v0, v3}, Landroid/support/v4/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 72
    .local v1, "tokenInner":Landroid/os/IBinder;
    if-eqz v1, :cond_2

    .line 73
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 74
    .local v2, "p":Landroid/os/Parcel;
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 75
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    sget-object v3, Landroid/support/v4/media/session/MediaSessionCompat$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 77
    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 78
    .local v3, "token":Landroid/support/v4/media/session/MediaSessionCompat$Token;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 79
    return-object v3

    .line 83
    .end local v1    # "tokenInner":Landroid/os/IBinder;
    .end local v2    # "p":Landroid/os/Parcel;
    .end local v3    # "token":Landroid/support/v4/media/session/MediaSessionCompat$Token;
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static hasMessagesWithoutSender(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;",
            ">;)Z"
        }
    .end annotation

    .line 215
    .local p0, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 216
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    .line 217
    .local v2, "m":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_0

    .line 218
    return v1

    .line 215
    .end local v2    # "m":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 221
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static makeFontColorSpan(I)Landroid/text/style/TextAppearanceSpan;
    .locals 7
    .param p0, "color"    # I

    .line 191
    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v6
.end method

.method private static makeMessageLine(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationCompat$MessagingStyle;Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;)Ljava/lang/CharSequence;
    .locals 11
    .param p0, "b"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p1, "style"    # Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    .param p2, "m"    # Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    .line 166
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v0

    .line 167
    .local v0, "bidi":Landroid/support/v4/text/BidiFormatter;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 168
    .local v1, "sb":Landroid/text/SpannableStringBuilder;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 169
    .local v2, "afterLollipop":Z
    :goto_0
    if-nez v2, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-gt v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/high16 v3, -0x1000000

    .line 171
    .local v3, "color":I
    :goto_2
    invoke-virtual {p2}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v4

    .line 172
    .local v4, "replyName":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, ""

    if-eqz v5, :cond_5

    .line 173
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->getUserDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_3

    move-object v5, v6

    goto :goto_3

    .line 174
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->getUserDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    :goto_3
    move-object v4, v5

    .line 175
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Builder;->getColor()I

    move-result v5

    if-eqz v5, :cond_4

    .line 176
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Builder;->getColor()I

    move-result v5

    goto :goto_4

    :cond_4
    move v5, v3

    :goto_4
    move v3, v5

    .line 179
    :cond_5
    invoke-virtual {v0, v4}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 180
    .local v5, "senderText":Ljava/lang/CharSequence;
    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 181
    invoke-static {v3}, Landroid/support/v7/app/NotificationCompat;->makeFontColorSpan(I)Landroid/text/style/TextAppearanceSpan;

    move-result-object v7

    .line 182
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v9

    sub-int/2addr v8, v9

    .line 183
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const/16 v10, 0x21

    .line 181
    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 185
    invoke-virtual {p2}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p2}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 186
    .local v6, "text":Ljava/lang/CharSequence;
    :goto_5
    const-string v7, "  "

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v0, v6}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 187
    return-object v1
.end method

.method private static setBackgroundColor(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "views"    # Landroid/widget/RemoteViews;
    .param p2, "color"    # I

    .line 345
    if-nez p2, :cond_0

    .line 346
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$color;->notification_material_background_media_default_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 349
    :cond_0
    sget v0, Landroid/support/v7/appcompat/R$id;->status_bar_latest_event_content:I

    const-string v1, "setBackgroundColor"

    invoke-virtual {p1, v0, v1, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 350
    return-void
.end method
